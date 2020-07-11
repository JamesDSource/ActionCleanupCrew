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
	shoot: soldier_state_shoot
}

state = states.decide;

// gun
function gun(gun_name, bullet_projectile, bullet_speed, gun_recharge_time, gun_sprite, gun_range, shoot_time) constructor {
	name = gun_name;
	bullet = bullet_projectile;
	spd = bullet_speed;
	recharge_time = gun_recharge_time;
	sprite = gun_sprite;
	range = gun_range;
	time = shoot_time;
}

guns = [
	new gun(
		"Rifle",
		oRifle_shot,
		3,
		room_speed,
		sRifle,
		200,
		room_speed*3
	),
	
	new gun(
		"Laser Gun",
		oLaser_shot,
		3,
		room_speed * 1.5,
		sLaser_gun,
		200,
		room_speed * 5
	)
]

gun_using = guns[irandom_range(0, array_length(guns)-1)];
gun_height = 5;
gun_angle = 0;
gun_angle_real = 0;
gun_target = noone;
gun_shoot_recharge = 0;

// decide
decide_timer = 0;

// cover
cover = noone;
cover_side = 0;

function new_cover() {
	cover_side = 0;
	var covers = ds_list_create();
	
	var v_side;
	if(team == TEAM.WHITE) v_side = 1;
	else v_side = 0;
	
	var sz = collision_circle_list(x, y, max(room_width, room_height), oCover, false, true, covers, true);
	var result = array_create(0);
	for(var i = 0; i < sz; i++) {
		if(covers[| i] != cover && covers[| i].team == team) {
			var cover_data = [-1, -1];
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

path = -1;
point = 0;

// shoot state
shoot_timer = -1;