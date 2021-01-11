event_inherited();

global.level_target = undefined;

init_interactable(
	function action_drop_pod() {
		instance_destroy(oPlayer);
		oCamera.follow = id;
		sprite_index = sDrop_pod_launch;
		audio_play_sound(sdDrop_pod, SOUNDPRIORITY.IMPORTANT, false);
	}
);