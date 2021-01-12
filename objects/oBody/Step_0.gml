event_inherited();
if(being_held && irandom_range(1, 100) < 5) {
	with(instance_create_layer(x, y, "Instances", oBlood_jiblet)) {
		type = other.blood_type;
		z = 0;
		hsp = 0;
		vsp = 0;
		esp = 0;
	}
}

if(burn) {
	if(burn_sound == -1) {
		burn_sound = audio_play_sound_at(sdBody_sizzle, x, y, 0, 50, 200, 1, true, SOUNDPRIORITY.AMBIENCE);
		audio_sound_set_track_position(burn_sound, irandom_range(0, floor(audio_sound_length(burn_sound))));	
	}
	burn_progress = approach(burn_progress, 0.0, 0.01);
	if(burn_progress == 0) {
		audio_stop_sound(burn_sound);
		instance_destroy();
	}
}