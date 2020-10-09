var page_height = 0;
var margin_x = 5;
var margin_y = 15;
var box_padding = 4;

draw_set_font(fMenu);
for(var i = 0; i < array_length(page); i++) {
	page_height += margin_y + string_height(page[i].str); 	
}
page_height -= margin_y;

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
	
	draw_rectangle_border(-box_padding, draw_y - box_padding, string_width(page[i].str) + margin_x + box_padding*2 + x_offset, string_height(page[i].str) + box_padding*2, 1, c_black, c_white);
	draw_text(margin_x + x_offset, draw_y, page[i].str);
	draw_y += margin_y + string_height(page[i].str);
}

var key_margin = 5;
var key_draw_x = display_get_gui_width() - key_margin;
if(global.gp_connected) {
	draw_key_prompt(sPrompt_gp_dpad_up, gp_padu, key_draw_x, key_margin, fa_right, fa_top, true);
	key_draw_x -= key_margin + sprite_get_width(sPrompt_gp_dpad_up);
	draw_key_prompt(sPrompt_gp_dpad_down, gp_padd, key_draw_x, key_margin, fa_right, fa_top, true);
	key_draw_x -= key_margin + sprite_get_width(sPrompt_gp_dpad_down);
	draw_key_prompt(sPrompt_gp_a, gp_face1, key_draw_x, key_margin, fa_right, fa_top, true);
	key_draw_x -= sprite_get_width(sPrompt_gp_a) + key_margin
}
else {
	draw_key_prompt(sPrompt_w, ord("W"), key_draw_x, key_margin, fa_right, fa_top, false);
	key_draw_x -= key_margin + sprite_get_width(sPrompt_w);
	draw_key_prompt(sPrompt_s, ord("S"), key_draw_x, key_margin, fa_right, fa_top, false);
	key_draw_x -= key_margin + sprite_get_width(sPrompt_s);
	draw_key_prompt(sPrompt_space, vk_space, key_draw_x, key_margin, fa_right, fa_top, false);
	key_draw_x -= sprite_get_width(sPrompt_space) + key_margin
}
if(show_horizontal_controls) {
	if(global.gp_connected) {
		draw_key_prompt(sPrompt_gp_dpad_right, gp_padr, key_draw_x, key_margin, fa_right, fa_top, true);
		key_draw_x -= sprite_get_width(sPrompt_gp_dpad_right) + key_margin;
		draw_key_prompt(sPrompt_gp_dpad_left, gp_padl, key_draw_x, key_margin, fa_right, fa_top, true);
	}
	else {
		draw_key_prompt(sPrompt_d, ord("D"), key_draw_x, key_margin, fa_right, fa_top, false);
		key_draw_x -= sprite_get_width(sPrompt_d) + key_margin;
		draw_key_prompt(sPrompt_a, ord("A"), key_draw_x, key_margin, fa_right, fa_top, false);
	}
	show_horizontal_controls = false;
}