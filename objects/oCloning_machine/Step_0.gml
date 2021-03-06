if(sprite_index == sCloning_machine_idle && !instance_exists(oPlayer)) {
	if(respawn_timer > 0) respawn_timer--;
	else {
		lives_remaining--;
		if(lives_remaining == -1) {
			instance_create_layer(0, 0, "Controllers", oYou_died);
			instance_destroy(oPause);
			if(instance_exists(oBattle_manager)) oBattle_manager.started = false;
		}
		else if(lives_remaining >= 0) {
			sprite_index = sCloning_machine;
			if(instance_exists(oCamera)) oCamera.follow = id;
			audio_listener_position(x, y, 0);
			audio_play_sound_on(emitter, sdCloning_machine, false, SOUNDPRIORITY.IMPORTANT);
		}
		respawn_timer = respawn_time;
	}
}