if(state != -1) state();

audio_listener_position(x, y, 0);
if(iframes > 0) iframes--;

var vacuum_pitch_volume_target;
if(tool_using == TOOL.VACUUM && using_tool) {
	if(!audio_is_playing(sdVacuum)) {
		audio_play_sound(sdVacuum, SOUNDPRIORITY.IMPORTANT, true);
		screen_shake(1, 10);	
	}
	vacuum_pitch_volume_target = 1.0;
}
else {
	if(audio_is_playing(sdVacuum) && vacuum_pitch_volume == 0) audio_stop_sound(sdVacuum);
	if(instance_exists(oVacuum_suction)) instance_destroy(oVacuum_suction);
	vacuum_pitch_volume_target = 0.0;
}
vacuum_pitch_volume = approach(vacuum_pitch_volume, vacuum_pitch_volume_target, 0.05);
if(vacuum_pitch_volume != audio_sound_get_gain(sdVacuum) || vacuum_pitch_volume != audio_sound_get_pitch(sdVacuum)) {
	audio_sound_gain(sdVacuum, vacuum_pitch_volume, 0.0);
	audio_sound_pitch(sdVacuum, vacuum_pitch_volume);
}
if(state != states.free) using_tool = false;