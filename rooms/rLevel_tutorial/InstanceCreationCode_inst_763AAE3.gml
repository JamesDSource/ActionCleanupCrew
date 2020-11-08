trigger_function = function death_trigger() {
	audio_play_sound(sdPlayer_hurt, SOUNDPRIORITY.IMPORTANT, false);
	if(instance_exists(oPlayer)) with(oPlayer) kill(DEATHTYPE.PIERCING);	
}