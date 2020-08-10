if(started && global.hud) {
	var seconds = frames_left div room_speed;
	
	var mins_left = seconds div 60;
	var seconds_left = seconds - mins_left*60;
	
	var w = sprite_get_width(sDigits);
	var digit_x = display_get_gui_width();
	var digit_y = display_get_gui_height();
	var digit_index = 10;
	
	
	draw_sprite(sDigits, seconds_left%10, digit_x, digit_y);
	digit_x -= w;
	
	if(seconds_left >= 10 || mins_left > 0) digit_index = seconds_left div 10;
	else digit_index = 10;
	draw_sprite(sDigits, digit_index, digit_x, digit_y);
	digit_x -= w;
	
	draw_sprite(sDigits, 11, digit_x, digit_y);
	digit_x -= w;
	
	if(mins_left > 0) digit_index = mins_left%10;
	else digit_index = 10;
	draw_sprite(sDigits, digit_index, digit_x, digit_y);
	digit_x -= w;
	
	if(mins_left >= 10) digit_index = mins_left div 10;
	else digit_index = 10;
	draw_sprite(sDigits, digit_index, digit_x, digit_y);
}