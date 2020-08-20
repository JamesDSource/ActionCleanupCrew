event_inherited();

if(team == TEAM.WHITE) {
	if(free_state == "attack") sprite_index = sClaw_red_attack;
	else sprite_index = sClaw_red;
	death_sprite = sClaw_red_dead;
}
else {
	if(free_state == "attack") sprite_index = sClaw_blue_attack;
	else sprite_index = sClaw_blue;
	death_sprite = sClaw_blue_dead;
}

if(snort_timer > 0) snort_timer--;
else {
	audio_play_sound_on(audio_emitter, snorts[irandom_range(0, array_length(snorts)-1)], false, SOUNDPRIORITY.BARK);
	snort_timer = irandom_range(snort_timer_min, snort_timer_max);
}