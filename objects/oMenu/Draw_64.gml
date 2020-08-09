var page_height = 0;
var margin_x = 5;
var margin_y = 15;
var box_padding = 4;

draw_set_font(fMenu);
for(var i = 0; i < array_length(page); i++) {
	page_height += margin_y + string_height(page[i][0]); 	
}
page_height += box_padding*2;

var draw_y = display_get_gui_height()/2 - page_height/2;
for(var i = 0; i < array_length(page); i++) {
	var x_offset = 0;
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if(i == index) {
		draw_set_color(c_yellow);
		var channel = animcurve_get_channel(aMenu, "push");
		var curve = animcurve_channel_evaluate(channel, push_progress);
		x_offset = push*curve;
	}
	else draw_set_color(c_white);
	
	draw_rectange_border(-box_padding, draw_y - box_padding, string_width(page[i][0]) + margin_x + box_padding*2 + x_offset, string_height(page[i][0]) + box_padding*2, 1, c_black, c_white);
	draw_text(margin_x + x_offset, draw_y, page[i][0]);
	draw_y += margin_y + string_height(page[i][0]);
}

var key_margin = 5;
var key_draw_x = display_get_gui_width() - key_margin;
draw_key_prompt(sPrompt_w, ord("W"), key_draw_x, key_margin);
key_draw_x -= key_margin + sprite_get_width(sPrompt_w);
draw_key_prompt(sPrompt_s, ord("S"), key_draw_x, key_margin);
key_draw_x -= key_margin + sprite_get_width(sPrompt_s) + sprite_get_width(sPrompt_space)/2;
draw_key_prompt(sPrompt_space, vk_space, key_draw_x, key_margin + sprite_get_yoffset(sPrompt_space))