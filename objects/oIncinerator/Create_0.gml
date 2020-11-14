event_inherited();

emitter = audio_emitter_create();
audio_emitter_falloff(emitter, 10, 200, 1);
audio_emitter_position(emitter, x, y, 0);
audio_play_sound_on(emitter, sdIncinerator, true, SOUNDPRIORITY.AMBIENCE);

burn_time = room_speed * 8;
burn_timer = 0;

hatch_index = 0;

init_interactable(
	function action_incinerator() {
		with(oPlayer) {
			instance_destroy(obj_held);
			obj_held = noone;
			state = states.free;
			other.burn_timer = other.burn_time;
			audio_play_sound_on(other.emitter, sdIncinerator_door_close, false, SOUNDPRIORITY.IMPORTANT);
		}
	}
);

draw_function = function() {
	draw_depth_object();
	draw_sprite(sIncinerator_hatch, hatch_index, x, y);
}