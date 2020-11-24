if(follow != noone && instance_exists(follow)) {
	target_x = follow.x;	
	target_y = follow.y;
	
	if(follow.object_index == oPlayer && !oPlayer.disarmed && oPlayer.state == oPlayer.states.free) {
		var ang = 0;
		var cam_jut = jut;
		if(global.gp_connected) {
			var axis_h = gamepad_axis_value(global.gp_slot, gp_axisrh);
			var axis_v =  gamepad_axis_value(global.gp_slot, gp_axisrv);
			ang = point_direction(0, 0, axis_h, axis_v);
			cam_jut *= point_distance(0, 0, axis_h, axis_v);
		}
		else ang = point_direction(follow.x, follow.y, mouse_x, mouse_y);
		target_x += lengthdir_x(cam_jut, ang);
		target_y += lengthdir_y(cam_jut, ang);
	}
}

x += (target_x - x)/slow;
y += (target_y - y)/slow;

if(bound) {
	x = clamp(x, VIEWWIDTH/2, room_width - VIEWWIDTH/2);	
	y = clamp(y, VIEWHEIGHT/2, room_height - VIEWHEIGHT/2);	
}

if(screen_shake_force > 0) {
	if(screen_shake_timer > 0) screen_shake_timer--;
	else {
		screen_shake_force--;
		screen_shake_timer = screen_shake_time;
	}
}
else screen_shake_time = 0;

var cam_x = x + irandom_range(-screen_shake_force, screen_shake_force);
var cam_y = y + irandom_range(-screen_shake_force, screen_shake_force);

var vm = matrix_build_lookat(cam_x, cam_y, -10, cam_x, cam_y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);
