event_inherited();

enum TEAM {
	WHITE,	
	BLACK,
	NONE
}

helmat = false;
if(irandom_range(1, 100) < 50) helmat = true;

states = {
	decide: soldier_state_decidie,	
	shoot: soldier_state_shoot,
	flee: soldier_state_exit
}

state = states.decide;

// gun
function gun(gun_name, bullet_projectile, bullet_spread, gun_recharge_time, burst_amount, gun_burst_time, gun_sprite, gun_range, shoot_time, gun_kickback, gun_sound) constructor {
	name = gun_name;
	bullet = bullet_projectile;
	spread = bullet_spread;
	recharge_time = gun_recharge_time;
	burst = burst_amount;
	burst_time = gun_burst_time;
	sprite = gun_sprite;
	range = gun_range;
	time = shoot_time;
	kickback = gun_kickback;
	sound = gun_sound;
	
	burst_timer = 0;
	bursts_left = burst;
}

guns = [
	new gun(
		"Rifle",		// name
		oRifle_shot,	// bullet
		5,				// bullet spread
		room_speed,		// recharge time
		2,				// burst
		10,				// burst time
		sRifle,			// sprite
		300,			// range
		room_speed*6,	// time out of cover
		5,				// gun kick
		sdRifle			// sound
	),
	
	new gun(
		"Laser Gun",
		oLaser_shot,
		0,
		room_speed * 1.5,
		1,
		1,
		sLaser_gun,
		300,
		room_speed * 10,
		3,
		sdLaser_rifle
	),
	
	new gun(
		"Sniper",
		oSniper_shot,
		0,
		room_speed * 3,
		1,
		1,
		sSniper_rifle,
		500,
		room_speed * 10,
		8,
		sdSniper
	),
	
	new gun(
		"Submachine Gun",
		oSubmachine_gun_shot,
		10,
		room_speed,
		4,
		5,
		sSubmachine_gun,
		250,
		room_speed * 4,
		2,
		sdLaser_rifle
	),
	
	new gun(
		"Laser Canon",
		oLaser_canon_shot,
		0,
		room_speed * 5,
		1,
		1,
		sLaser_canon,
		600,
		room_speed * 10,
		12,
		sdLaser_canon
	)
]

gun_using = guns[irandom_range(0, array_length(guns)-1)];
gun_height = 5;
gun_angle = 0;
gun_angle_real = 0;
gun_target = noone;
gun_shoot_recharge = 0;
gun_kick = 0;

// decide
decide_timer = 0;

// cover
cover = noone;
cover_side = 0;

function new_cover() {	
	var covers = ds_list_create();
	
	var v_side;
	if(team == TEAM.WHITE) v_side = 1;
	else v_side = 0;
	
	if(instance_exists(cover)) {
		cover.sides[v_side][clamp(cover_side, 0, 1)] = noone;	
	}
	
	cover_side = 0;
	
	var sz = collision_circle_list(x, y, max(room_width, room_height), oCover, false, true, covers, true);
	var result = array_create(0);
	for(var i = 0; i < sz; i++) {
		if(covers[| i] != cover && covers[| i].team == team) {
			var cover_data = [-1, 0];
			if(covers[| i].sides[v_side][0] == noone) cover_data[1] = -1;
			else if(covers[| i].sides[v_side][1] == noone) cover_data[1] = 1;
			
			if(cover_data[1] != 0) {
				cover_data[0] = covers[| i];
				result[array_length(result)] = cover_data;
			}
		}
	}
	ds_list_destroy(covers);
	
	if(array_length(result) > 0) {
		var rand_cover_index = irandom_range(0, array_length(result)-1);
		cover = result[rand_cover_index][0];
		cover_side = result[rand_cover_index][1];
		cover.sides[v_side][clamp(cover_side, 0, 1)] = id;
	
		cover_point.x = cover.x - cover.sprite_xoffset + cover.sprite_width/2 + cover_side*10;
	
		if(team == TEAM.WHITE) cover_point.y = cover.bbox_bottom + 8;
		else cover_point.y = cover.bbox_top - 8;
	}
	
}

// movement
cover_point = {
	x: 0,
	y: 0
};
exit_point = {
	x: 0,
	y: 0
}

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
	
	// helmat
	if(helmat) {
		var helmat_spr = noone;
		if(team == TEAM.BLACK) helmat_spr = sSoldier_black_mask;
		else if(team == TEAM.WHITE) helmat_spr = sSoldier_white_mask;
	
		if(helmat_spr != noone) draw_sprite_ext(helmat_spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}

// hp regen
max_hp = 3;
hp = max_hp;
hp_regen_time = room_speed;
hp_regen_timer = hp_regen_time;