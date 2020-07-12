vsp = 0;
hsp = 0;

enum DEATHTYPE {
	PIERCING,
	BURN,
	EXPLOSION
}

kill_function = function kill(death_type) {
	switch(death_type) {
		case DEATHTYPE.PIERCING:
			var chunks = irandom_range(40, 60);
			repeat(chunks) instance_create_layer(x, y, "Instances", oBlood_jiblet);
			break;
		
		case DEATHTYPE.BURN:
			instance_create_layer(x, y, "Instances", oAsh_pile);
			break;
	}
	instance_destroy();
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
