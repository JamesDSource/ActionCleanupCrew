if(!helmat_on && global.hud || true) {
	
	var margin = 10;
	var progress = 1 - (helmat_timer/helmat_time);
	var angle = -90 + progress*360;
	if (angle > 180) angle = -(180 - angle%180);
	shader_set(shRotational_fill);
	var u_angle_1 = shader_get_uniform(shRotational_fill, "angle_1");
	var u_angle_2 = shader_get_uniform(shRotational_fill, "angle_2");
	var u_axis_point = shader_get_uniform(shRotational_fill, "axis_point");
	shader_set_uniform_f(u_angle_1, -90);
	shader_set_uniform_f(u_angle_2, angle);
	shader_set_uniform_f_array(u_axis_point, [margin + 8, margin + 8]);
	draw_sprite(sPlayer_helmat_icon, 0, margin, margin);
	shader_reset();
}

draw_text(30, 30, radtodeg(arctan2((mouse_y - y), (mouse_x - x))));

// dialogue box
if(state == states.read) {
	var border = 2;
	
	draw_set_font(fHUD);
	draw_set_halign(fa_left);	
	draw_set_valign(fa_top);	
	draw_set_color(c_white);
	
	draw_rectangle_border(0, display_get_gui_height() - dialogue_box_height, display_get_gui_width(), dialogue_box_height, border, c_black, c_white);
	
	var str_whole = dialogues[dialogue_index];
	var str_cut = string_copy(str_whole, 1, line_index);
	
	var str_draw_x = display_get_gui_width()/2 - string_width(str_whole)/2;
	var str_draw_y = display_get_gui_height() - dialogue_box_height/2 - string_height(str_whole)/2;
	draw_text(str_draw_x, str_draw_y, str_cut);
	
	var speaker_padding = 3;
	draw_rectangle_border(0, 0, display_get_gui_width(), string_height(dialogue_speaker) + (border + speaker_padding)*2, border, c_black, c_white);
	draw_text(border + speaker_padding, border + speaker_padding, dialogue_speaker);
}