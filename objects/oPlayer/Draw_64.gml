if(global.hud && room != rHub) {
	var margin = 10;
	if(!helmat_on) {
		var progress = 1 -(helmat_timer/helmat_time);
		var cutoff_angle = 90 - progress*360;
		if(cutoff_angle < 0) cutoff_angle = 360 - abs(cutoff_angle);
		shader_set(shRotational_fill);
		var u_start_angle = shader_get_uniform(shRotational_fill, "start_angle");
		var u_end_angle = shader_get_uniform(shRotational_fill, "end_angle");
		var u_axis_point = shader_get_uniform(shRotational_fill, "axis_point");
		shader_set_uniform_f(u_start_angle, cutoff_angle);
		shader_set_uniform_f(u_end_angle, 90);
		shader_set_uniform_f_array(u_axis_point, [margin + sprite_get_width(sPlayer_helmat_icon)/2, margin + sprite_get_height(sPlayer_helmat_icon)/2]);
	}
	draw_sprite(sPlayer_helmat_icon, 0, margin, margin);
	shader_reset();
}

// dialogue box
if(state == states.read) {
	var border = 2;
	
	draw_set_font(fHUD);
	draw_set_halign(fa_left);	
	draw_set_valign(fa_top);	
	draw_set_color(UILIGHTCOL);
	
	draw_rectangle_border(0, display_get_gui_height() - dialogue_box_height, display_get_gui_width(), dialogue_box_height, border, UIDARKCOL, UILIGHTCOL);
	
	var str_whole = dialogues[dialogue_index];
	var str_cut = string_copy(str_whole, 1, line_index);
	
	var str_draw_x = display_get_gui_width()/2 - string_width(str_whole)/2;
	var str_draw_y = display_get_gui_height() - dialogue_box_height/2 - string_height(str_whole)/2;
	draw_text(str_draw_x, str_draw_y, str_cut);
	
	var speaker_padding = 3;
	draw_rectangle_border(0, 0, display_get_gui_width(), string_height(dialogue_speaker) + (border + speaker_padding)*2, border, UIDARKCOL, UILIGHTCOL);
	draw_text(border + speaker_padding, border + speaker_padding, dialogue_speaker);
}