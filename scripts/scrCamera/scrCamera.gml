function screen_shake(force, deterioration_time) {
	with(oCamera) {
		force *= global.screenshake;
		deterioration_time *= global.screenshake;
		if(force > screen_shake_force) screen_shake_force = force;
		if(deterioration_time > screen_shake_time) screen_shake_time = deterioration_time;
		screen_shake_timer = screen_shake_time;
	}
	
}