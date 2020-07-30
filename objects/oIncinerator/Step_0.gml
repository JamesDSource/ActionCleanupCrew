if(burn_timer > 0) {
	sprite_index = sIncinerator_closed;
	burn_timer--;
	is_interactable = false;
	if(burn_timer == 0) audio_play_sound_on(emitter, sdDing, false, SOUNDPRIORITY.IMPORTANT)
}
else {
	sprite_index = sIncinerator_opened;
	is_interactable = true;
}