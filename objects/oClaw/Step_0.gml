event_inherited();

if(is_undefined(animations)) {
	if(team == TEAM.WHITE) {
		death_sprite = sClaw_red_dead;
		animations = {
			walk: sClaw_red,	
			eat: sClaw_red_eat,
			attack: sClaw_red_attack		
		}
		
	}
	else {
		death_sprite = sClaw_blue_dead;
		animations = {
			walk: sClaw_blue,	
			eat: sClaw_blue_eat,
			attack: sClaw_blue_attack
		}	
	}
	
}

switch(free_state) {
	case "eat": sprite_index = animations.eat; break;
	case "attack": sprite_index = animations.attack; break;
	default: sprite_index = animations.walk; break;
}

if(snort_timer > 0) snort_timer--;
else {
	audio_play_sound_on(audio_emitter, snorts[irandom_range(0, array_length(snorts)-1)], false, SOUNDPRIORITY.BARK);
	snort_timer = irandom_range(snort_timer_min, snort_timer_max);
}