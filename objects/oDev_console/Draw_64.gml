if(open) {
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	draw_set_font(fDev_console);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	var draw_y = height;
	var pipe = "";
	if(pipe_flash) pipe = "|";
	draw_set_color(c_white);
	draw_text(0, draw_y, input_string + pipe);
	draw_y -= string_height(input_string + "|");
	for(var i = ds_list_size(log) - 1; i >= 0; i--) {
		if(draw_y <= 0) break;
		else {
			var col;
			var pretext = "";
			switch(log[| i][0]) {
				case LOGTYPE.CMD: col = c_yellow; break;
				case LOGTYPE.ERROR: 
					col = c_red; 
					pretext = "ERROR: ";
					break;
				case LOGTYPE.CHANGE: 
					col = c_lime; 
					pretext = "CMD: "
					break;
				default: col = c_white; break;
			}
			draw_set_color(col);
			
			draw_text(0, draw_y, pretext + log[| i][1]);
			draw_y -= string_height(pretext + log[| i][1]);
		}
	}
}