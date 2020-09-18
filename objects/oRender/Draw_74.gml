display_set_gui_size(surface_get_width(application_surface), surface_get_height(application_surface));
shader_set(shPostprocessing);
var u_brightness = shader_get_uniform(shPostprocessing, "brightness");
var u_gamma = shader_get_uniform(shPostprocessing, "gamma");
shader_set_uniform_f(u_brightness, global.brightness);
shader_set_uniform_f(u_gamma, global.gamma);

if(variable_global_exists("pause") && global.pause) {
	draw_sprite(global.sPause, 0, 0, 0);
	for(var i = 0; i < ds_list_size(global.paused_surfaces); i++) {
		draw_surface(global.paused_surfaces[| i][0], global.paused_surfaces[| i][1], global.paused_surfaces[| i][2]);
	}
	ds_list_clear(global.paused_surfaces);
}
else {
	if(sprite_exists(global.sPause)) {
		sprite_delete(global.sPause);	
		global.sPause = noone;
	}
	draw_surface(application_surface, 0, 0);
}
display_set_gui_size(VIEWWIDTH, VIEWHEIGHT);

if(sprite_exists(spr_cursor)) {
	draw_sprite(spr_cursor, 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0));	
}
shader_reset();