if(instance_exists(follow)) {
	target_x = follow.x - (VIEWWIDTH+1)/2;	
	target_y = follow.y - (VIEWHEIGHT+1)/2;
	
	if(follow.object_index == oPlayer && !oPlayer.disarmed && oPlayer.state == oPlayer.states.free) {
		var ang = 0;
		var cam_jut = jut;
		if(global.gp_connected) {
			var axis_h = gamepad_axis_value(global.gp_slot, gp_axisrh);
			var axis_v =  gamepad_axis_value(global.gp_slot, gp_axisrv);
			ang = point_direction(0, 0, axis_h, axis_v);
			cam_jut *= point_distance(0, 0, axis_h, axis_v);
		}
		else ang = point_direction(follow.x, follow.y, global.mouse_position.x, global.mouse_position.y);
		target_x += lengthdir_x(cam_jut, ang);
		target_y += lengthdir_y(cam_jut, ang);
	}
}

x += (target_x - x)/slow;
y += (target_y - y)/slow;

if(bound) {
	x = clamp(x, 0, room_width - (VIEWWIDTH+1));	
	y = clamp(y, 0, room_height - (VIEWHEIGHT+1));	
}

if(screen_shake_force > 0) {
	if(screen_shake_timer > 0) screen_shake_timer--;
	else {
		screen_shake_force--;
		screen_shake_timer = screen_shake_time;
	}
}
else screen_shake_time = 0;