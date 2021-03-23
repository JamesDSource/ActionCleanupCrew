event_inherited();

enum TEAM {
	WHITE,	
	BLACK,
	NONE
}

// helmet and hp
helmet = false;
max_hp = 3;
if(irandom_range(1, 100) < 50) {
	helmet = true;
}
hp = max_hp;
hp_regen_time = room_speed * 2;
hp_regen_timer = hp_regen_time;


debug_string = "";

#region Behavior leaf nodes

// Has the soldier attacking 
behavior_node_attack = function() {
	var bn = new behavior_node();
	
	with(bn) {
		gun_target = noone;
		gun_shoot_recharge = 0;
		x = 0;
		y = 0;
		
		node_update = function() {
			var gun_using = parent_obj.gun_using;
			var p_team = parent_obj.team;
			
			x = parent_obj.x;
			y = parent_obj.y;
			
			// Finding targets
			gun_target = noone;
			var gun_targets = ds_list_create();
			collision_circle_list(x, y, gun_using.range, oEntity, false, true, gun_targets, true);
			var highest_priority = -1;
			for(var i = 0; i < ds_list_size(gun_targets); i++) {
				var current_gun_target = gun_targets[| i];
				if(current_gun_target.team != p_team && collision_line(x, y, current_gun_target.x, current_gun_target.y, oSolid, false, true) == noone && current_gun_target.priority > highest_priority) {
					gun_target = current_gun_target;	
					highest_priority = gun_target.priority;
				}
			}
			ds_list_destroy(gun_targets);
			
			if(instance_exists(gun_target)) {
				parent_obj.gun_angle = point_direction(x, y - parent_obj.gun_height, gun_target.x, gun_target.y);
				
				// recharge timer
				if(gun_shoot_recharge <= 0) {
					// burst timer
					if(gun_using.burst_timer <= 0) {
						// repeating shooting for each shot
						repeat(gun_using.shots) {
							var bullet_spread = irandom_range(-gun_using.spread, gun_using.spread);
							with(instance_create_layer(x + lengthdir_x(parent_obj.gun_bullet_offset, parent_obj.gun_angle_real), y + lengthdir_y(parent_obj.gun_bullet_offset, parent_obj.gun_angle_real), "Instances", gun_using.bullet)) {
								z = other.parent_obj.gun_height;
								team = p_team
								ang = other.parent_obj.gun_angle_real + bullet_spread;
								image_angle = ang;
							}
						}
						
						audio_play_sound_on(parent_obj.audio_emitter, gun_using.sound, false, SOUNDPRIORITY.GUNS);
						parent_obj.gun_kick = gun_using.kickback;
						parent_obj.gun_flash = parent_obj.gun_flash_time;
						
						gun_using.burst_timer = gun_using.burst_time;
						gun_using.bursts_left--;
						if(gun_using.bursts_left == 0) {
							gun_shoot_recharge = gun_using.recharge_time;
							gun_using.bursts_left = gun_using.burst;
						}
					}
					else gun_using.burst_timer--;
				}
				else gun_shoot_recharge--;
			}
			
			
			return BEHAVIORNODERESULT.CONTINUE;	
		}
	}
	
	return bn;
}

// Makes the soldier find cover
behavior_node_cover = function() {
	var bn = new behavior_node();
	
	with(bn) {
		node_update = function() {
			parent_obj.debug_string = "Cover";
			
			if(instance_exists(oGrid)) {
				var cell_size = oGrid.cell_size,
					grid_x = parent_obj.x div cell_size,
					grid_y = parent_obj.y div cell_size,
					grid_node = oGrid.get_grid_node(grid_x, grid_y);
				
				if(grid_node == undefined) {
					return BEHAVIORNODERESULT.FALURE;	
				}
				
				var connecting = oGrid.get_free_connecting(grid_x, grid_y),
					team_lookout = parent_obj.team == TEAM.WHITE ? TEAM.BLACK : TEAM.WHITE,
					highest_distance = -infinity,
					lowest_sightlines = grid_node.sights[$ team_lookout],
					canidates = [],
					best_nodes = [];
					
				// Return a success if you have found cover
				if(lowest_sightlines == 0) {
					parent_obj.hsp = 0;
					parent_obj.vsp = 0;
					return BEHAVIORNODERESULT.SUCCESS;
				}
				
				// Find the connecting nodes with the lowest sightlines on enemies
				for(var i = 0; i < array_length(connecting); i++) {
					var neighbor = connecting[i];
					
					var sightlines = neighbor.sights[$ team_lookout];
					if(sightlines == lowest_sightlines) {
						array_push(canidates, neighbor);	
					}
					else if(sightlines < lowest_sightlines) {
						canidates = [neighbor];
						lowest_sightlines = sightlines;
					}
				}
				
				// Loop through canidates and find the one with the highest distance
				for(var i = 0; i < array_length(canidates); i++) {
					var canidate = canidates[i];
					
					if(canidate.enemy_distance == highest_distance) {
						array_push(best_nodes, canidate);	
					}
					else if(canidate.enemy_distance > highest_distance) {
						best_nodes = [canidate];
						highest_distance = canidate.enemy_distance;
					}
				}
				
				if(array_length(best_nodes) > 0) {
					var target_node = best_nodes[irandom_range(0, array_length(best_nodes) - 1)];
					var run_direction = point_direction(grid_node.x, grid_node.y, target_node.x, target_node.y);
					parent_obj.hsp = lengthdir_x(parent_obj.path_movement_speed, run_direction);
					parent_obj.vsp = lengthdir_y(parent_obj.path_movement_speed, run_direction);
					return BEHAVIORNODERESULT.CONTINUE;
				}
				else {
					parent_obj.hsp = 0;
					parent_obj.vsp = 0;
					return BEHAVIORNODERESULT.SUCCESS;
				}
				
			}
			return BEHAVIORNODERESULT.FALURE;	
		}
	}
	
	return bn;
}

// Makes the soldier run around aimlessly 
behavior_node_wander = function() {
	var bn = new behavior_node();
	
	with(bn) {
		x = 0;
		y = 0;
		move_angle = undefined;
		
		node_update = function() {
			parent_obj.debug_string = "Wander";
			
			parent_obj.uses_pathfinding = false;
			x = parent_obj.x;
			y = parent_obj.y;
			
			var angles = array_shuffle([0, 45, 90, 135, 180, 225, 270, 315]),
				check_distance = 32;
			
			if(move_angle == undefined) {
				for(var i = 0; i < array_length(angles); i++) {
					var angle = angles[i];
					var cast_to = {
						x: x + lengthdir_x(check_distance, angle),
						y: y + lengthdir_y(check_distance, angle)
					}
					if(!ray_test(x, y, cast_to.x, cast_to.y, true)) {
						move_angle = angle;
						break;
					}
				}
			}
			
			if(move_angle == undefined) {
				return BEHAVIORNODERESULT.FALURE;	
			}
			else {
				var cast_to = {
					x: x + lengthdir_x(check_distance, move_angle),
					y: y + lengthdir_y(check_distance, move_angle)
				}
				if(ray_test(x, y, cast_to.x, cast_to.y, true)) {
					move_angle = undefined;
				}
				else {
					parent_obj.hsp = lengthdir_x(parent_obj.path_movement_speed, move_angle);
					parent_obj.vsp = lengthdir_y(parent_obj.path_movement_speed, move_angle);
				}
			}
			return BEHAVIORNODERESULT.CONTINUE;	
		}
	}
	
	return bn;
}

// Makes the soldier run from enemies
behavior_node_run = function() {
	var bn = new behavior_node();
	
	with(bn) {
		node_update = function() {
			return BEHAVIORNODERESULT.CONTINUE;	
		}
	}
	
	return bn;
}

// Makes the soldier run twords enemies
behavior_node_move_into_range = function() {
	var bn = new behavior_node();
	
	with(bn) {
		node_update = function() {
			return BEHAVIORNODERESULT.FALURE;	
		}
	}
	
	return bn;
}
#endregion
#region Behavior tree
var root_selector = behavior_node_selector();
br_check.add_child(root_selector);

// Threatended branch
var check_if_threatended = new behavior_node();
with(check_if_threatended) {
	node_update = function() {
		var cell_size = oGrid.cell_size,
			grid_x = parent_obj.x div cell_size,
			grid_y = parent_obj.y div cell_size,
			grid_node = oGrid.get_grid_node(grid_x, grid_y),
			sightlines = is_struct(grid_node) ? grid_node.sights[$ parent_obj.team == TEAM.WHITE ? TEAM.BLACK : TEAM.WHITE] : 0;
		
		if(array_length(children) > 0 && (parent_obj.hp < parent_obj.max_hp || sightlines > 2)) {
			return children[0].node_update();
		}
		else {
			return BEHAVIORNODERESULT.FALURE;	
		}
	}
}


var cft_doall = behavior_node_do_all();
cft_doall.add_child(behavior_node_attack());
cft_doall.add_child(behavior_node_sequence());
cft_doall.children[1].add_child(behavior_node_cover());
var cover_timer = behavior_node_wait();
cover_timer.set_time(5);
cft_doall.children[1].add_child(cover_timer);

var cft_selector = behavior_node_selector();
cft_selector.add_child(cft_doall);
cft_selector.add_child(behavior_node_run());

check_if_threatended.add_child(cft_selector);
root_selector.add_child(check_if_threatended);

// Attack branch
var attack_doall = behavior_node_do_all();

attack_doall.add_child(behavior_node_attack());

attack_doall.add_child(behavior_node_selector());
attack_doall.children[1].add_child(behavior_node_move_into_range());
attack_doall.children[1].add_child(behavior_node_wander());

root_selector.add_child(attack_doall);

#endregion

// gun
function gun(gun_name, bullet_projectile, bullets, bullet_spread, gun_recharge_time, burst_amount, gun_burst_time, gun_sprite, gun_range, gun_kickback, gun_sound) constructor {
	name = gun_name;
	bullet = bullet_projectile;
	shots = bullets;
	spread = bullet_spread;
	recharge_time = gun_recharge_time;
	burst = burst_amount;
	burst_time = gun_burst_time;
	sprite = gun_sprite;
	range = gun_range;
	kickback = gun_kickback;
	sound = gun_sound;
	
	burst_timer = 0;
	bursts_left = burst;
}

guns = ds_map_create();

guns[? "pistol"] = new gun(
	"Pistol",				// name
	oPistol_shot,			// bullet
	1,						// bullets
	25,						// bullet spread
	room_speed*2,			// recharge time
	1,						// burst
	0,						// burst time
	sPistol,				// sprite
	300,					// range
	3,						// gun kick
	sdPistol				// sound
);

guns[? "laser_pistol"] = new gun(
	"Laser Pistol",			
	oLaser_pistol_shot,		
	1,						
	35,						
	room_speed*6,			
	6,						
	room_speed/3,			
	sLaser_pistol,				
	100,					
	3,						
	sdLaser_rifle					
);

guns[? "rifle"] = new gun(
	"Rifle",	
	oRifle_shot,
	1,			
	5,			
	room_speed,	
	2,			
	10,			
	sRifle,		
	300,		
	5,			
	sdRifle		
);
	
guns[? "laser_gun"] = new gun(
	"Laser Gun",
	oLaser_shot,
	1,
	0,
	room_speed * 1.5,
	1,
	1,
	sLaser_gun,
	400,
	3,
	sdLaser_rifle
);
	
guns[? "sniper"] = new gun(
	"Sniper",
	oSniper_shot,
	1,
	0,
	room_speed * 3,
	1,
	1,
	sSniper_rifle,
	800,
	8,
	sdSniper
);

guns[? "submachine_gun"] = new gun(
	"Submachine Gun",
	oSubmachine_gun_shot,
	1,
	10,
	room_speed*3,
	4,
	5,
	sSubmachine_gun,
	200,
	2,
	sdRifle
);
	
guns[? "laser_canon"] = new gun(
	"Laser Canon",
	oLaser_canon_shot,
	1,
	0,
	room_speed*5,
	1,
	1,
	sLaser_canon,
	800,
	12,
	sdLaser_canon
);
	
guns[? "shotgun"] = new gun(
	"Shotgun",
	oShotgun_shot,
	6,
	40,
	room_speed*4,
	3,
	room_speed*2,
	sShotgun,
	200,
	6,
	sdShotgun
);

guns[? "laser_shotgun"] = new gun(
	"Laser Shotgun",
	oLaser_shotgun_shot,
	3,
	30,
	room_speed*3,
	2,
	room_speed/2,
	sLaser_shotgun,
	200,
	4,
	sdLaser_rifle
);

guns[? "rpg"] = new gun(
	"RPG",
	oRocket,
	1,
	0,
	room_speed*6,
	1,
	0,
	sRPG_loaded,
	600,
	6,
	sdRPG
);

guns[? "cluster_rpg"] = new gun(
	"Cluster RPG",
	oCluster_rocket,
	2,
	20,
	room_speed * 9,
	2,
	room_speed/2,
	sCluster_RPG,
	600,
	6,
	sdCluster_RPG
);

if(instance_exists(oBattle_manager)) {
	var available = oBattle_manager.guns_available;
	var gun_using_name = available[irandom_range(0, array_length(available) - 1)]
	gun_using = guns[? gun_using_name];
}
else gun_using = guns[? "pistol"];
gun_height = 5;
gun_angle = 0;
gun_angle_real = 0;
gun_kick = 0;
gun_flash_time = 3;
gun_flash = 0;
gun_bullet_offset = 6;


// cover
cover = noone;
cover_time_min = room_speed * 5;
cover_time_max = room_speed * 40;
cover_timer = irandom_range(cover_time_min, cover_time_max);

// movement
cover_point = {
	x: xstart,
	y: ystart
};

path_movement_speed = 1;

kill_function = function kill_soldier(death_type) {
	hp_regen_timer = hp_regen_time;
	kill(death_type);
}

// shoot state
shoot_timer = -1;

// draw function
draw_function = function draw_soldier() {
	draw_depth_object();
	
	if(team == TEAM.WHITE) {
		sprite_index = sSoldier_white;
		if(helmet) death_sprite = sSoldier_white_corpse_helmet;
		else death_sprite = sSoldier_white_corpse;
	}
	else {
		sprite_index = sSoldier_black;
		if(helmet) death_sprite = sSoldier_black_corpse_helmet;
		else death_sprite = sSoldier_black_corpse;
	}
	
	// helmet
	if(helmet) {
		var helmet_spr = noone;
		if(team == TEAM.BLACK) helmet_spr = sSoldier_black_mask;
		else if(team == TEAM.WHITE) helmet_spr = sSoldier_white_mask;
	
		if(helmet_spr != noone) draw_sprite_ext(helmet_spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}