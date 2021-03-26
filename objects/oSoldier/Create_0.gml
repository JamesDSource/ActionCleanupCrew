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
		move_to = -1;
		
		node_update = function() {
			parent_obj.debug_string = "Cover";
			
			var cell_size = oGrid.cell_size,
				grid_x = parent_obj.x div cell_size,
				grid_y = parent_obj.y div cell_size,
				grid_node = oGrid.get_grid_node(grid_x, grid_y),
				team_lookout = parent_obj.team == TEAM.WHITE ? TEAM.BLACK : TEAM.WHITE,
				target_node = undefined;
			
			if(grid_node == undefined) {
				return BEHAVIORNODERESULT.FALURE;	
			}
			
			if(is_struct(move_to) && move_to.x == grid_x && move_to.y == grid_y) {
				move_to = -1;
			}
			
			// Move to holds the position that the soldier wants to move to
			// and only let's go of it once it's reached that position
			if(is_struct(move_to)) {
				target_node = oGrid.get_grid_node(move_to.x, move_to.y);
			}
			else {
				var connecting = oGrid.get_free_connecting(grid_x, grid_y),
					highest_distance = -infinity,
					lowest_sightlines = grid_node.sights[$ team_lookout],
					canidates = [],
					best_nodes = [];
				
				// Return a success if you have found cover
				if(lowest_sightlines == 0) {
					target_node = grid_node;
				}
				else {
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
						target_node = best_nodes[irandom_range(0, array_length(best_nodes) - 1)];
					}
					else {
						target_node = grid_node
					}	
				}
			}
			
			move_to = {x: target_node.x, y: target_node.y};
			if(target_node == grid_node) {
				parent_obj.hsp = 0;
				parent_obj.vsp = 0;
				if(grid_node.sights[$ team_lookout] == 0) {
					return BEHAVIORNODERESULT.SUCCESS;	
				}
				else {
					return BEHAVIORNODERESULT.FALURE;
				}
			}
			else if(is_struct(target_node)) {
				var run_direction = point_direction(grid_node.x, grid_node.y, target_node.x, target_node.y);
				parent_obj.hsp = lengthdir_x(parent_obj.path_movement_speed, run_direction);
				parent_obj.vsp = lengthdir_y(parent_obj.path_movement_speed, run_direction);
				return BEHAVIORNODERESULT.CONTINUE;
			}
		}
	}
	
	return bn;
}

// Makes the soldier heal
behavior_node_heal = function() {
	var bn = new behavior_node();
	
	with(bn) {
		frames = room_speed * 3;
		frames_remaining = frames;
		
		node_update = function() {
			parent_obj.debug_string = "Heal";
			
			frames_remaining--;
			
			if(frames_remaining <= 0) {
				frames_remaining = frames;
				parent_obj.hp = min(parent_obj.hp + 1, parent_obj.max_hp);
				return BEHAVIORNODERESULT.SUCCESS;
			}
			return BEHAVIORNODERESULT.CONTINUE;	
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
		
		check_for_solids = function(angle, distance) {
			var len_x = lengthdir_x(distance, angle);
			var len_y = lengthdir_y(distance, angle);
			
			return	ray_test(parent_obj.bbox_left,	parent_obj.bbox_top,	len_x, len_y, true) ||
					ray_test(parent_obj.bbox_right, parent_obj.bbox_top,	len_x, len_y, true) ||
					ray_test(parent_obj.bbox_left,	parent_obj.bbox_bottom, len_x, len_y, true) ||
					ray_test(parent_obj.bbox_right, parent_obj.bbox_bottom, len_x, len_y, true);
		}
		
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
					if(!check_for_solids(angle, check_distance)) {
						move_angle = angle;
						break;
					}
				}
			}
			
			if(move_angle == undefined) {
				return BEHAVIORNODERESULT.FALURE;	
			}
			else {
				if(check_for_solids(move_angle, check_distance)) {
					move_angle = undefined;
				}
				else {
					parent_obj.hsp = lengthdir_x(parent_obj.path_movement_speed, move_angle);
					parent_obj.vsp = lengthdir_y(parent_obj.path_movement_speed, move_angle);
				}
			}
			return BEHAVIORNODERESULT.SUCCESS;	
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

// Makes the soldier run twords enemies within the correct range of their weapon
behavior_node_move_into_range = function() {
	var bn = new behavior_node();
	
	with(bn) {
		move_to = -1;
		
		get_node_desirability = function(node, enemy_team, ideal_range) { // Ideal range is grid blocks
			var sightlines_to_enemy = node.sights[$ enemy_team];
			
			// If that node can't see any enemies, return a desirability of 0
			if(sightlines_to_enemy == 0) {
				return 0;	
			}
			
			var des_score = max(1000 - abs(node.enemy_distance - ideal_range), 1);
			
			// Cut the score in half if there is more than 3 enemies
			if(sightlines_to_enemy > 3) {
				des_score /= 2;
			}
			
			return des_score;
		}
		
		node_update = function() {
			parent_obj.debug_string = "Moving into range";
			
			var cell_size = oGrid.cell_size,
				grid_x = parent_obj.x div cell_size,
				grid_y = parent_obj.y div cell_size,
				grid_node = oGrid.get_grid_node(grid_x, grid_y),
				team_lookout = parent_obj.team == TEAM.WHITE ? TEAM.BLACK : TEAM.WHITE;
				
			
			if(grid_node == undefined) {
				return BEHAVIORNODERESULT.FALURE;	
			}
			
			// Move to holds the position that the soldier wants to move to
			// and only let's go of it once it's reached that position
			if(is_struct(move_to) && move_to.x == grid_x && move_to.y == grid_y) {
				move_to = -1;
			}
			
			if(is_struct(move_to)) {
				target_node = oGrid.get_grid_node(move_to.x, move_to.y);
			}
			else {
			
				// Loop through neighbors and find the node with the highest desirability
				var neighbor_nodes = oGrid.get_free_connecting(grid_x, grid_y),
					highest_desirability = get_node_desirability(grid_node, team_lookout, 1),
					target_node = grid_node;
			
				for(var i = 0; i < array_length(neighbor_nodes); i++) {
					var neighbor = neighbor_nodes[i];
					var des = get_node_desirability(neighbor, team_lookout, 1);
				
					if(des > highest_desirability) {
						target_node = neighbor;
						highest_desirability = des;	
					}
				}
			}
			
			move_to = {x: target_node.x, y: target_node.y};
			
			if(get_node_desirability(target_node, team_lookout, 1) == 0) {
				return BEHAVIORNODERESULT.FALURE;	
			}
			
			if(target_node == grid_node) {
				parent_obj.hsp = 0;
				parent_obj.vsp = 0;
				return BEHAVIORNODERESULT.SUCCESS;
			}
			else if(is_struct(target_node)) {
				var run_direction = point_direction(grid_node.x, grid_node.y, target_node.x, target_node.y);
				parent_obj.hsp = lengthdir_x(parent_obj.path_movement_speed, run_direction);
				parent_obj.vsp = lengthdir_y(parent_obj.path_movement_speed, run_direction);
				return BEHAVIORNODERESULT.CONTINUE;
			}
		}
	}
	
	return bn;
}
#endregion
#region Behavior tree
// Threatended branch
var check_if_threatended = new behavior_node();
with(check_if_threatended) {
	node_update = function() {
		if(array_length(children) >= 2) {
			if(parent_obj.hp < parent_obj.max_hp) {
				return children[0].node_update();
			}
			else {
				return children[1].node_update();	
			}
		}
		else {
			return BEHAVIORNODERESULT.FALURE;	
		}
	}
}

br_check.add_child(check_if_threatended);


var cover_sequence = behavior_node_sequence();

cover_sequence.add_child(behavior_node_do_all());
cover_sequence.children[0].add_child(behavior_node_attack());
cover_sequence.children[0].add_child(behavior_node_cover());

cover_sequence.add_child(behavior_node_heal());

var cft_selector = behavior_node_selector();
cft_selector.add_child(cover_sequence);
cft_selector.add_child(behavior_node_run());

check_if_threatended.add_child(cft_selector);

// Attack branch
var attack_doall = behavior_node_do_all();

attack_doall.add_child(behavior_node_attack());

attack_doall.add_child(behavior_node_selector());
attack_doall.children[1].add_child(behavior_node_move_into_range());
attack_doall.children[1].add_child(behavior_node_wander());

check_if_threatended.add_child(attack_doall);
#endregion

// Gun
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
	"Pistol",				// Name
	oPistol_shot,			// Bullet
	1,						// Bullets
	25,						// Bullet spread
	room_speed*2,			// Recharge time
	1,						// Burst
	0,						// Burst time
	sPistol,				// Sprite
	300,					// Range
	3,						// Gun kick
	sdPistol				// Sound
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

path_movement_speed = 1.5;

kill_function = function(death_type) {
	kill(death_type);
}

// draw function
draw_function = function() {
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