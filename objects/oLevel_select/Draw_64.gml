var channel = animcurve_get_channel(aLevel_select, "toggle");
var curve = animcurve_channel_evaluate(channel, progress);
current_w = max(w*curve, 1);

draw_set_color(c_black);
nine_slice_streach(sNine_slice_level, dw/2 - current_w/2 - border_w, y_org - border_w, current_w + border_w*2, h + border_w*2);

if(progress == 1) {
	var text_color = merge_color(c_green, c_white, 0.9);
	draw_set_font(fLevel_select);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	for(var i = 0; i < array_length(global.levels); i++) {
		if(global.level_target == global.levels[i]) draw_set_color(c_yellow);
		else draw_set_color(text_color);
		if(i <= global.level_lock) draw_text_transformed(x_org + global.levels[i].x_pos, y_org + h/2 + 20, global.levels[i].name, global.levels[i].scale, global.levels[i].scale, 0);
	}
	
	draw_set_color(text_color);
	draw_rectangle(x_org, y_org + h/2, x_org + w - 1, y_org + h/2 + 1, false);
	
	var hs_y_margin = 15;
	var hs_str = "High Score:";
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x_org + w/2, y_org + hs_y_margin, hs_str);
	var hs_name = "level " + room_get_name(global.levels[level_index].room_index);
	if(variable_struct_exists(global.highest_grades, hs_name)) {
		var hs_index = variable_struct_get(global.highest_grades, hs_name);
		hs_index = grade_index_from_percent(hs_index);
		var hs_spr_x = x_org + w/2;
		var hs_spr_y = y_org + hs_y_margin + sprite_get_height(sGrade_letter)/2 + string_height(hs_str)/2;
		draw_sprite(sGrade_letter, hs_index, hs_spr_x, hs_spr_y);
	}
}

var prompt_margin = 5;
draw_key_prompt(sPrompt_a, ord("A"), prompt_margin, 0);
draw_key_prompt(sPrompt_d, ord("D"), display_get_gui_width() - prompt_margin, 0);
draw_key_prompt(sPrompt_space, vk_space, display_get_gui_width()/2, sprite_get_height(sPrompt_space));
draw_key_prompt(sPrompt_esc, vk_escape, prompt_margin, dh);