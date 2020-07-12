event_inherited();

emitter = audio_emitter_create();
audio_emitter_falloff(emitter, 10, 200, 1);
audio_emitter_position(emitter, x, y, 0);
audio_play_sound_on(emitter, sdIncinerator, true, SOUNDPRIORITY.INCEN);

burn_time = room_speed * 10;
burn_timer = 0;