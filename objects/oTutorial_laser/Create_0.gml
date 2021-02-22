event_inherited();

laser_active = false;
move_dir = 1;
spd = 1;

laser_progress = 0;
laser_progress_spd = 0.1;
distance_from_wall = 0;

spark_frame = 0;
spark_frame_time = 5;
spark_frame_timer = spark_frame_time;

draw_function = function draw_tutorial_laser() {
	draw_depth_object();
	if(laser_active) {
		draw_sprite_ext(sTutorial_laser_beam, 0, x + sprite_width, y, distance_from_wall * laser_progress, 1, 0, c_white, 1);
		if(laser_progress == 1) draw_sprite(sTutorial_laser_spark, spark_frame, x + sprite_width + distance_from_wall, y);
	}
}

emitter = audio_emitter_create();
audio_emitter_falloff(emitter, 200, 500, 1);
snd = audio_play_sound_on(emitter, sdTutorial_laser, true, SOUNDPRIORITY.GUNS);

snd_pitch = 0.0;
audio_sound_pitch(snd, snd_pitch);
audio_sound_gain(snd, snd_pitch, 0);