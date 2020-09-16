event_inherited();

enum TEAM {
	WHITE,	
	BLACK,
	NONE
}

// helmat and hp
helmat = false;
max_hp = 2;
if(irandom_range(1, 100) < 50) {
	helmat = true;
	max_hp = 3;
}
hp = max_hp;
hp_regen_time = room_speed * 2;
hp_regen_timer = hp_regen_time;

// peeking
peek = false;
peek_direction = 1;
peek_time_min = room_speed * 3;
peek_time_max = room_speed * 6;
peek_recharge_min = room_speed * 5;
peek_recharge_max = room_speed * 10;
peek_timer = 0;

entity_states.free = function soldier_state_free() {
	// cover
	if(!instance_exists(cover)) new_cover();
	if(cover_timer > 0) cover_timer--;
	else {
		new_cover();
		cover_timer = irandom_range(cover_time_min, cover_time_max);
	}
	
	// peeking
	if(peek_timer > 0) peek_timer--;
	else {
		peek = !peek;
		if(peek) {
			peek_timer = irandom_range(peek_time_min, peek_time_max);
			if(irandom_range(1, 100) < 50) peek_direction = 1;
			else peek_direction = -1;
		}
		else peek_timer = irandom_range(peek_recharge_min, peek_recharge_max);
	}
	
	// move point
	var x_offset = 0;
	if(peek && instance_exists(cover))	x_offset = peek_direction*(cover.sprite_width/2 + sprite_width);
	new_move_point(cover_point.x + x_offset, cover_point.y);
	
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

state = entity_states.free;

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
	room_speed/1.2,			// recharge time
	1,						// burst
	0,						// burst time
	sPistol,				// sprite
	250,					// range
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
	250,					
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
	300,
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
	500,
	8,
	sdSniper
);

guns[? "submachine_gun"] = new gun(
	"Submachine Gun",
	oSubmachine_gun_shot,
	1,
	10,
	room_speed,
	4,
	5,
	sSubmachine_gun,
	250,
	2,
	sdRifle
);
	
guns[? "laser_canon"] = new gun(
	"Laser Canon",
	oLaser_canon_shot,
	1,
	0,
	room_speed * 5,
	1,
	1,
	sLaser_canon,
	600,
	12,
	sdLaser_canon
);
	
guns[? "shotgun"] = new gun(
	"Shotgun",
	oShotgun_shot,
	6,
	40,
	room_speed * 2,
	3,
	room_speed,
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
	300,
	6,
	sdRPG
);

guns[? "cluster_rpg"] = new gun(
	"Cluster RPG",
	oCluster_rocket,
	4,
	20,
	room_speed * 9,
	2,
	room_speed/2,
	sCluster_RPG,
	300,
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
			with(oSoldier) if(covers[| i] == cover) another_using = true;
			if(!another_using) result[array_length(result)] = covers[| i];
		}
	}
	ds_list_destroy(covers);
	
	if(array_length(result) > 0) {
		var rand_cover_index = irandom_range(0, array_length(result)-1);
		cover = result[rand_cover_index];
		cover_point.x = cover.x - cover.sprite_xoffset + cover.sprite_width/2;
		if(team == TEAM.WHITE) cover_point.y = cover.bbox_bottom + 8;
		else cover_point.y = cover.bbox_top - 8;
	}
	else {
		var new_point_found = false;	
		var new_point_attempts = 0;
		while(!new_point_found && new_point_attempts < 50) {
			var v_quad = 1;
			if(team == TEAM.WHITE) v_quad = 2;
			var new_point = random_point_room_quadrent(0, v_quad);
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
		if(helmat) death_sprite = sSoldier_white_corpse_helmat;
		else death_sprite = sSoldier_white_corpse;
	}
	else {
		sprite_index = sSoldier_black;
		if(helmat) death_sprite = sSoldier_black_corpse_helmat;
		else death_sprite = sSoldier_black_corpse;
	}
	
	// helmat
	if(helmat) {
		var helmat_spr = noone;
		if(team == TEAM.BLACK) helmat_spr = sSoldier_black_mask;
		else if(team == TEAM.WHITE) helmat_spr = sSoldier_white_mask;
	
		if(helmat_spr != noone) draw_sprite_ext(helmat_spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}