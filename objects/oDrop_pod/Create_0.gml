event_inherited();

image_speed = 0;
image_index = 0;

global.level_target = noone;

init_interactable(
	function action_drop_pod() {
		instance_destroy(oPlayer);
		oCamera.follow = id;
		image_speed = 1;
		audio_play_sound(sdDrop_pod, SOUNDPRIORITY.IMPORTANT, false);
	}
);