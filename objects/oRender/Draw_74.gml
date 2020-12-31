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
	if(surface_exists(global.view_surface)) {
		var ax = 0, ay = 0;
		if(instance_exists(oCamera)) {
			ax = camera_get_view_x(view_camera[0]) - oCamera.x;
			ay = camera_get_view_y(view_camera[0]) - oCamera.y;
		}
		draw_surface(global.view_surface, ax, ay);
	}
}
shader_reset();