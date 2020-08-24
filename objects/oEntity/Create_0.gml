vsp = 0;
hsp = 0;

// entity states
entity_states = {
	free: -1,	
	flee: -1
}

entity_states.flee = function entity_flee() {
	if(place_meeting(x, y, oSpawn_point)) instance_destroy();
}
state = entity_states.free;

enum BLOOD {
	RED,
	GREEN	
}

enum DEATHTYPE {
	PIERCING,
	BURN,
	EXPLOSION
}
#macro DEATHS 3

function bleed(blood_min, blood_max) {
	repeat(irandom_range(blood_min, blood_max)) {
		var jib = instance_create_layer(x, y, "Instances", oBlood_jiblet);
		jib.type = blood_type;
	}
}

kill_function = function kill(death_type) {
	hp--;
	flash_frames_left = flash_frames;
	if(hp <= 0) {
		if(death_type == "random") death_type = irandom_range(0, DEATHS-1);
		switch(death_type) {
			case DEATHTYPE.PIERCING:
				bleed(40, 60);
				if(death_sprite != noone) {
					with(instance_create_layer(x, y, "Instances", oBody)) {
						sprite_index = other.death_sprite;
						blood_type = other.blood_type;
					}
				}
				break;
		
			case DEATHTYPE.BURN:
				instance_create_layer(x, y, "Instances", oAsh_pile);
				break;
				
			case DEATHTYPE.EXPLOSION:
				bleed(40, 60);
				break;
		}
		
		// reseting autokill timer
		if(instance_exists(oBattle_manager)) {
			with(oBattle_manager) {
				autokill_timer = autokill_time;	
			}
		}
		
		// death sound
		if(death_sound_type != -1) {
			var ds = instance_create_layer(x, y, "Instances", oDeath_sound);
			ds.play_death_sound(death_sound_type, audio_emitter);
		}
		else audio_emitter_free(audio_emitter);

		instance_destroy();
	}
	else bleed(0, 3);
}

event_inherited();

function check_for_collisions(obj) {
	if(place_meeting(x + hsp, y, obj)) {
		repeat(hsp) if(!place_meeting(x + sign(hsp), y, obj)) x += sign(hsp);
		hsp = 0;
	}

	if(place_meeting(x, y + vsp, obj)) {
		repeat(vsp) if(!place_meeting(x, y + sign(vsp), obj)) y += sign(vsp);
		vsp = 0;
	}
}

// audio
audio_emitter = audio_emitter_create();
audio_emitter_falloff(audio_emitter, 200, 800, 1);


// flash
flash_frames = 20;
flash_frames_left = 0;

// pathfinding
move_point = {
	x: xstart,
	y: ystart
};

path = -1;
point = 0;
path_movement_speed = 1;
path_update = false;
t = 0;

function new_move_point(x_pos, y_pos) {
	if(point_distance(move_point.x, move_point.y, x_pos, y_pos) > 0) {
		move_point.x = x_pos;
		move_point.y = y_pos;
		path_update = true;
	}
}