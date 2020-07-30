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
	draw_set_font(fHUD);
	draw_set_halign(fa_left);	
	draw_set_valign(fa_top);	
	draw_set_color(c_white);
	
	draw_rectangle_color(0, display_get_gui_height() - dialogue_box_height, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
	draw_line(0, display_get_gui_height() - dialogue_box_height, display_get_gui_width(), display_get_gui_height() - dialogue_box_height);
	
	var str_whole = dialogues[dialogue_index];
	var str_cut = string_copy(str_whole, 1, line_index);
	
	var str_draw_x = display_get_gui_width()/2 - string_width(str_whole)/2;
	var str_draw_y = display_get_gui_height() - dialogue_box_height/2 - string_height(str_whole)/2;
	draw_text(str_draw_x, str_draw_y, str_cut);
}