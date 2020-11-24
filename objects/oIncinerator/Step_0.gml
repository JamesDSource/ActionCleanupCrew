if(burn_timer > 0) {
	hatch_index = 0;
	burn_timer--;
	is_interactable = false;
	if(burn_timer == 0) {
		audio_play_sound_on(emitter, sdDing, false, SOUNDPRIORITY.IMPORTANT);
		audio_sound_gain(loop_closed, 0.0, 0.0);
		audio_sound_gain(loop, 1.0, 0.0);
	}
}
else {
	hatch_index = 1;
	is_interactable = true;
}

if(instance_exists(oPlayer) && instance_exists(oPlayer.obj_held) && oPlayer.obj_held.can_burn && burn_timer <= 0) is_interactable = true;
else is_interactable = false;