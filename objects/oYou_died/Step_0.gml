if(scale == 1 && !transitioned) {
	alarm[1] = room_speed * 2;
	audio_play_sound(sdYou_died, SOUNDPRIORITY.IMPORTANT, false);
	transitioned = true;
}

if(keyboard_check_pressed(ord("R"))) room_restart();