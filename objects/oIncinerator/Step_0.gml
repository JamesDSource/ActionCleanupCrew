if(burn_timer > 0) {
	hatch_index = 0;
	burn_timer--;
	is_interactable = false;
	if(burn_timer == 0) audio_play_sound_on(emitter, sdDing, false, SOUNDPRIORITY.IMPORTANT)
}
else {
	hatch_index = 1;
	is_interactable = true;
}

if(instance_exists(oPlayer) && instance_exists(oPlayer.obj_held) && oPlayer.obj_held.object_index == oBody && burn_timer <= 0) is_interactable = true;
else is_interactable = false;