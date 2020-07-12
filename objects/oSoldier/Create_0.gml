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
function gun(gun_name, bullet_projectile, bullet_speed, gun_recharge_time, gun_sprite, gun_range, shoot_time, gun_kickback, gun_sound) constructor {
	name = gun_name;
	bullet = bullet_projectile;
	spd = bullet_speed;
	recharge_time = gun_recharge_time;
	sprite = gun_sprite;
	range = gun_range;
	time = shoot_time;
	kickback = gun_kickback;
	sound = gun_sound;
}

guns = [
	new gun(
		"Rifle",		// name
		oRifle_shot,	// bullet
		1.5,			// speed
		room_speed,		// recharge time
		sRifle,			// sprite
		200,			// range
		room_speed*6,	// time out of cover
		5,				// gun kick
		sdRifle			// sound
	),
	
	new gun(
		"Laser Gun",
		oLaser_shot,
		1.5,
		room_speed * 1.5,
		sLaser_gun,
		200,
		room_speed * 10,
		3,
		sdLaser_rifle
	),
	
	new gun(
		"Sniper",
		oSniper_shot,
		3,
		room_speed * 3,
		sSniper_rifle,
		400,
		room_speed * 10,
		8,
		sdSniper
	),
	
	new gun(
		"Submachine Gun",
		oSubmachine_gun_shot,
		1,
		room_speed /3,
		sSubmachine_gun,
		150,
		room_speed * 4,
		2,
		sdLaser_rifle
	),
	
	new gun(
		"Laser Canon",
		oLaser_canon_shot,
		1,
		room_speed * 5,
		sLaser_canon,
		500,
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
	
		cover_point.x = cover.x - cover.sprite_xoffset + cover.sprite_width/2 + cover_side*8;
	
		if(team == TEAM.WHITE) cover_point.y = cover.bbox_bottom + 8;
		else cover_point.y = cover.bbox_top - 8;
	}
	
}

// movement
move_point = {
	x: 0,
	y: 0
};
cover_point = {
	x: 0,
	y: 0
};
exit_point = {
	x: 0,
	y: 0
}

path = -1;
point = 0;
movement_speed = 1;

function new_move_point(x_pos, y_pos) {
	if(point_distance(move_point.x, move_point.y, x_pos, y_pos) >= 1) {
		move_point.x = x_pos;
		move_point.y = y_pos;
		if(path_exists(path)) path_delete(path);
	}
}

// shoot state
shoot_timer = -1;