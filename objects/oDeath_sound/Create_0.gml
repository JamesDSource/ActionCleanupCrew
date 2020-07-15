sound_groups = ds_map_create();
sound_groups[? "man"] = [sdDeath_man1, sdDeath_man2, sdDeath_man3];
sound_time = room_speed;
s_emitter = -1;

function play_death_sound(group, emitter) {
	var sounds = sound_groups[? group];
	var sound = sounds[irandom_range(0, array_length(sounds) - 1)];
	sound_time *= audio_sound_length(sound);
	s_emitter = emitter;
	audio_play_sound_on(s_emitter, sound, false, SOUNDPRIORITY.IMPORTANT);
}