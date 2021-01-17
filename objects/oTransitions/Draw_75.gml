if(global.transition_percent > 0) {
	if(!surface_exists(transition_surf)) transition_surf = surface_create(display_get_gui_width(), display_get_gui_height());
	surface_set_target(transition_surf);
	draw_clear_alpha(c_white, 0.0);
	var col = $653b3e;
	shader_set(shCircle_transition);
	shader_set_uniform_f(u_circle_distance, 16);
	shader_set_uniform_f(u_fill, global.transition_percent);
	shader_set_uniform_f(u_size, display_get_gui_width(), display_get_gui_height());
	shader_set_uniform_f(u_inverse, mode == TRANSITIONMODE.INTRO);
	draw_set_color(col);
	draw_sprite(sTransition, 0, 0, 0);
	shader_reset();
	surface_reset_target();
	
	shader_set(shOutline);
	var texture = surface_get_texture(transition_surf);
	shader_set_uniform_f(u_outline_color, 1, 1, 1);
	shader_set_uniform_f(u_texel_size, texture_get_texel_width(texture), texture_get_texel_height(texture));
	shader_set_uniform_f_array(u_uv_boundries, texture_get_uvs(texture));
	draw_surface(transition_surf, 0, 0);
	shader_reset();
}
