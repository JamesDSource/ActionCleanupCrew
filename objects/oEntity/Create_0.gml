vsp = 0;
hsp = 0;

enum DEATHTYPE {
	PIERCING,
	BURN,
	EXPLOSION
}

kill_function = function kill(death_type) {
	hp--;
	flash_frames_left = flash_frames;
	if(hp <= 0) {
		switch(death_type) {
			case DEATHTYPE.PIERCING:
				var chunks = irandom_range(40, 60);
				repeat(chunks) instance_create_layer(x, y, "Instances", oBlood_jiblet);
				if(death_sprite != noone) {
					with(instance_create_layer(x, y, "Instances", oBody)) {
						sprite_index = other.death_sprite;
					}
				}
				break;
		
			case DEATHTYPE.BURN:
				instance_create_layer(x, y, "Instances", oAsh_pile);
				break;
		}
		audio_play_sound_on(audio_emitter, screams[irandom_range(0, array_length(screams)-1)], false, SOUNDPRIORITY.IMPORTANT);
		instance_destroy();
	}
}

event_inherited();

function push_out() {
	if(place_meeting(x ,y, oSolid)) {
		for(var i = 0; i < 100; i++) {
			// right
			if(!place_meeting(x + i, y, oSolid)) {
				x += i;
				break;
			}
			// left
			if(!place_meeting(x - i, y, oSolid)) {
				x -= i;
				break;
			}
			// top
			if(!place_meeting(x, y - i, oSolid)) {
				y -= i;
				break;
			}
			// down
			if(!place_meeting(x, y + i, oSolid)) {
				y += i;
				break;
			}
			// top left
			if(!place_meeting(x - i, y - i, oSolid)) {
				x -= i;
				y -= i;
				break;
			}
				// top right
			if(!place_meeting(x + i, y - i, oSolid)) {
				x += i;
				y -= i;
				break;
			}
			// down left
			if(!place_meeting(x - i, y + i, oSolid)) {
				x -= i;
				y += i;
				break;
			}
			// down right
			if(!place_meeting(x + i, y + i, oSolid)) {
				x += i;
				y += i;
				break; 
			}		
		}
	}
}

// audio
audio_emitter = audio_emitter_create();
audio_emitter_falloff(audio_emitter, 16, 1000, 1);

screams = [sdScream1, sdScream2, sdScream3];

// flash
flash_frames = 20;
flash_frames_left = 0;

// pathfinding
move_point = {
	x: 0,
	y: 0
};

path = -1;
point = 0;
path_movement_speed = 1;