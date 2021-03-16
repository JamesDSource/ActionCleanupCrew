event_inherited();

enum TEAM {
	WHITE,	
	BLACK,
	NONE
}

// helmet and hp
helmet = false;
max_hp = 2;
if(irandom_range(1, 100) < 50) {
	helmet = true;
}
hp = max_hp;
hp_regen_time = room_speed * 2;
hp_regen_timer = hp_regen_time;

// peeking
peek = false;
peek_recharge_min = room_speed * 5;
peek_recharge_max = room_speed * 10;
peek_timer = 0;

#region Behavior leaf nodes
behavior_node_attack = function() {
	var bn = new behavior_node();
	
	with(bn) {
		node_update = function() {
			return BEHAVIORNODERESULT.CONTINUE;	
		}
	}
	
	return bn;
}

behavior_node_cover = function() {
	var bn = new behavior_node();
	
	with(bn) {
		node_update = function() {
			return BEHAVIORNODERESULT.CONTINUE;	
		}
	}
	
	return bn;
}

behavior_node_run = function() {
	var bn = new behavior_node();
	
	with(bn) {
		node_update = function() {
			return BEHAVIORNODERESULT.CONTINUE;	
		}
	}
	
	return bn;
}

behavior_node_move_into_range = function() {
	var bn = new behavior_node();
	
	with(bn) {
		node_update = function() {
			return BEHAVIORNODERESULT.CONTINUE;	
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
		if(array_length(children) > 0 && parent_obj.hp < parent_obj.max_hp) {
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
attack_doall.children[1].add_child(behavior_node_run());

root_selector.add_child(attack_doall);

#endregion

free = function() {
	// cover
	if(!instance_exists(cover)) new_cover();

	if(cover_timer > 0) cover_timer--;
	else {
		new_cover();
		cover_timer = irandom_range(cover_time_min, cover_time_max);
	}
	
	// peeking
	if(peek_timer > 0) peek_timer--;
	else if(instance_exists(cover)) {
		peek = !peek;
		if(peek) {
			var cover_pos = cover.get_exposure_point();
			cover_point = push_out(cover_pos.x, cover_pos.y);
		}
		else {
			var cover_pos = random_point_rectange(cover.bbox_left, cover.bbox_top, cover.bbox_right, cover.bbox_bottom);
			cover_point = push_out(cover_pos.x, cover_pos.y);
		}
		peek_timer = irandom_range(peek_recharge_min, peek_recharge_max);
	}
	
	// move point
	new_move_point(cover_point.x, cover_point.y);
	
	// finding target
	gun_target = noone;
	var gun_targets = ds_list_create();
	collision_circle_list(x, y, gun_using.range, oEntity, false, true, gun_targets, true);
	var highest_priority = -1;
	for(var i = 0; i < ds_list_size(gun_targets); i++) {
		var current_gun_target = gun_targets[| i];
		if(current_gun_target.team != team && collision_line(x, y, current_gun_target.x, current_gun_target.y, oSolid, false, true) == noone && current_gun_target.priority > highest_priority) {
			gun_target = current_gun_target;	
			highest_priority = gun_target.priority;
		}
	}
	ds_list_destroy(gun_targets);
	
	if(instance_exists(gun_target)) {
		gun_angle = point_direction(x, y - gun_height, gun_target.x, gun_target.y);
		
		// recharge timer
		if(gun_shoot_recharge <= 0) {
			// burst timer
			if(gun_using.burst_timer <= 0) {
				// repeating shooting for each shot
				repeat(gun_using.shots) {
					var bullet_spread = irandom_range(-gun_using.spread, gun_using.spread);
					with(instance_create_layer(x + lengthdir_x(gun_bullet_offset, gun_angle_real), y + lengthdir_y(gun_bullet_offset, gun_angle_real), "Instances", gun_using.bullet)) {
						z = other.gun_height;
						team = other.team;
						ang = other.gun_angle_real + bullet_spread;
						image_angle = ang;
					}
				}
				
				audio_play_sound_on(audio_emitter, gun_using.sound, false, SOUNDPRIORITY.GUNS);
				gun_kick = gun_using.kickback;
				gun_flash = gun_flash_time;
				
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
}

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
	500,					// range
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
	500,					
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
	600,		
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
	600,
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
	1000,
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
	500,
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
	1200,
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
	400,
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
	400,
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
gun_target = noone;
gun_shoot_recharge = 0;
gun_kick = 0;
gun_flash_time = 3;
gun_flash = 0;
gun_bullet_offset = 6;


// cover
cover = noone;
cover_time_min = room_speed * 5;
cover_time_max = room_speed * 40;
cover_timer = irandom_range(cover_time_min, cover_time_max);

function new_cover() {	
	var covers = ds_list_create();
	var sz = collision_rectangle_list(0, 0, room_width, room_height, oCover, false, true, covers, false);
	var result = array_create(0);
	for(var i = 0; i < sz; i++) {
		if(covers[| i] != cover && covers[| i].team == team) {
			var another_using = false;
			var temp_check_path = path_add();
			var can_reach = mp_grid_path(global.grid, temp_check_path, x, y, covers[| i].x, covers[| i].y, true);
			path_delete(temp_check_path);
			with(oSoldier) if(covers[| i] == cover) another_using = true;
			if(!another_using && can_reach) result[array_length(result)] = covers[| i];
		}
	}
	ds_list_destroy(covers);
	
	if(array_length(result) > 0) {
		var rand_cover_index = irandom_range(0, array_length(result)-1);
		cover = result[rand_cover_index];
	}
	else {
		var new_point_found = false;	
		var new_point_attempts = 0;
		while(!new_point_found && new_point_attempts < 50) {
			var new_point = random_point_team(team);
			if(place_meeting(new_point.x, new_point.y, oSolid)) {
				cover_point = new_point;
				new_point_found = true;
			}
			new_point_attempts++;
		}
	}
}

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