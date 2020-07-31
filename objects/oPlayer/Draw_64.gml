if(!helmat_on) {
	var str = "Recharging Helmat..."
	
	var margin = 10;
	draw_set_font(fHUD);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_text(margin, margin, str);
	
	var progress = 1 - (helmat_timer/helmat_time);
	var bar_w = string_width(str);
	var bar_h = 5;
	var x1 = margin;
	var y1 = margin + string_height(str);
	
	draw_set_color(c_gray);
	draw_set_alpha(0.5);
	draw_rectangle(x1, y1, x1 + bar_w, y1 + bar_h, false);
	
	draw_set_color(c_lime);
	draw_set_alpha(1);
	draw_rectangle(x1, y1, x1 + bar_w*progress, y1 + bar_h, false);
}

// dialogue box
if(state == states.read) {
	var border = 2;
	
	draw_set_font(fHUD);
	draw_set_halign(fa_left);	
	draw_set_valign(fa_top);	
	draw_set_color(c_white);
	
	draw_rectange_border(0, display_get_gui_height() - dialogue_box_height, display_get_gui_width(), dialogue_box_height, border, c_black, c_white);
	
	var str_whole = dialogues[dialogue_index];
	var str_cut = string_copy(str_whole, 1, line_index);
	
	var str_draw_x = display_get_gui_width()/2 - string_width(str_whole)/2;
	var str_draw_y = display_get_gui_height() - dialogue_box_height/2 - string_height(str_whole)/2;
	draw_text(str_draw_x, str_draw_y, str_cut);
	
	var speaker_padding = 3;
	draw_rectange_border(0, 0, display_get_gui_width(), string_height(dialogue_speaker) + (border + speaker_padding)*2, border, c_black, c_white);
	draw_text(border + speaker_padding, border + speaker_padding, dialogue_speaker);
}