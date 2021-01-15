if(global.transition_percent > 0) {
	var col = $653b3e;
	shader_set(shCircle_transition);
	shader_set_uniform_f(u_circle_distance, 16);
	shader_set_uniform_f(u_fill, global.transition_percent);
	shader_set_uniform_f(u_size, display_get_gui_width(), display_get_gui_height());
	shader_set_uniform_f(u_inverse, mode == TRANSITIONMODE.INTRO);
	draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), col, col, col, col, false);
	shader_reset();
}
