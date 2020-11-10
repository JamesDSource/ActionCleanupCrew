if(instance_exists(oPlayer) && !oPlayer.disarmed)spr_cursor = sCursor;
else spr_cursor = noone;

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
