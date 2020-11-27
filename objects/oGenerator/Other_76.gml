switch(event_data[? "message"]) {
	case "Pulse": audio_play_sound_on(audio_emitter, sdGenerator_pulse, false, SOUNDPRIORITY.AMBIENCE); break;
	case "Steam": audio_play_sound_on(audio_emitter, sdGenerator_steam_released, false, SOUNDPRIORITY.AMBIENCE); break;
}