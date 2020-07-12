if(!mask_on) {
	var str = "Recharging Mask..."
	
	var margin = 10;
	draw_set_font(fHUD);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_text(margin, margin, str);
	
	var progress = 1 - (mask_timer/mask_time);
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