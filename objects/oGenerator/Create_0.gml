event_inherited();
powered = true;

audio_emitter = audio_emitter_create();
audio_emitter_falloff(audio_emitter, 100, 600, 1);
audio_emitter_position(audio_emitter, x, y, 0);

audio_play_sound_on(audio_emitter, sdGenerator_hum, true, SOUNDPRIORITY.AMBIENCE);
hum_pitch = 1.0;
target_hum_pitch = hum_pitch;
hum_pitch_speed = 0.01;

battery_held = instance_create_layer(x, y, "Instances", oBattery);
battery_held.charge = battery_held.max_charge;
battery_point_offset = {
	x: -9,
	y: -10
	
}
battery_depleat_time = room_speed * 5;
battery_depleat_timer = battery_depleat_time;

init_interactable(
	function generator_action() {
		battery_held = oPlayer.obj_held;
		oPlayer.obj_held = noone;
		battery_held.draw_battery = false;
	}
);

interactable_prompt_offset = {
	x: 0,
	y: 20
}