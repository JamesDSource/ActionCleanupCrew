if(instance_exists(oPlayer) && !oPlayer.disarmed && !global.gp_connected) window_set_cursor_sprite_ext(sCursor, 0, 5, 5, c_white, 1);
else window_set_cursor_normal();

if(!is_undefined(init_window)) init_window--;

if(center_window) {
	window_center();
	center_window = false;	
}

if(window_get_fullscreen() != global.fullscreen || init_window <= 0) {
	window_set_fullscreen(global.fullscreen);
	if(!global.fullscreen) {
		window_set_size(display_get_width()/2, display_get_height()/2);
		center_window = true;	
	}
	init_window = undefined;
}

if(global.vsync != (display_get_timing_method() == tm_countvsyncs)) {
	display_set_timing_method(global.vsync);
}

// Calculates the mouse position
var cam_origin = {
	x: 0,
	y: 0
}

if(instance_exists(oCamera)) {
	cam_origin.x = oCamera.x;
	cam_origin.y = oCamera.y;
}

global.mouse_position.x = cam_origin.x + device_mouse_x_to_gui(0);
global.mouse_position.y = cam_origin.y + device_mouse_y_to_gui(0);