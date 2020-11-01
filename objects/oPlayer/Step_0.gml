if(live_call()) return live_result;
if(state != -1) state();

audio_listener_position(x, y, 0);
if(iframes > 0) iframes--;

if(tool_using == TOOL.VACUUM && check_action("use", INPUTTYPE.HELD)) {
	if(!audio_is_playing(sdVacuum)) {
		audio_play_sound(sdVacuum, SOUNDPRIORITY.IMPORTANT, true);
		screen_shake(1, 10);	
	}
}
else if(audio_is_playing(sdVacuum)) audio_stop_sound(sdVacuum);