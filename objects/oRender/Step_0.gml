if(instance_exists(oPlayer) && !oPlayer.disarmed)spr_cursor = sCursor;
else spr_cursor = noone;

if(window_get_fullscreen() != global.fullscreen) {
	window_set_fullscreen(global.fullscreen);
	if(!global.fullscreen) window_set_size(display_get_width()/2, display_get_height()/2);
}