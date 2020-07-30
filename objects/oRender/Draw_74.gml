display_set_gui_size(surface_get_width(application_surface), surface_get_height(application_surface));
if(variable_global_exists("pause") && global.pause) draw_sprite(global.sPause, 0, 0, 0);
else {
	if(sprite_exists(global.sPause)) {
		sprite_delete(global.sPause);	
		global.sPause = noone;
	}
	draw_surface(application_surface, 0, 0);
}
display_set_gui_size(VIEWWIDTH, VIEWHEIGHT);