var channel = animcurve_get_channel(aLevel_select, "toggle");
var curve = animcurve_channel_evaluate(channel, progress);
current_w = max(w*curve, 1);

draw_set_color(c_black);
nine_slice_streach(sNine_slice_level, dw/2 - current_w/2, y_org, current_w, h)

if(progress == 1) {
	draw_set_color(c_white);
	draw_set_font(fLevel_select);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	for(var i = 0; i < array_length(global.levels); i++) {
		if(i <= global.level_lock) draw_text_transformed(x_org + global.levels[i].x_pos, y_org + 15, global.levels[i].name, global.levels[i].scale, global.levels[i].scale, 0);
	}
	
	var hs_y_margin = 40;
	var hs_x_margin = -20;
	var hs_str = "High Score:";
	draw_set_halign(fa_right);
	draw_text(x_org + w + hs_x_margin, y_org + hs_y_margin, hs_str);
	var hs_name = "level " + room_get_name(global.levels[level_index].room_index);
	if(variable_struct_exists(global.highest_grades, hs_name)) {
		var hs_index = variable_struct_get(global.highest_grades, hs_name);
		hs_index = grade_index_from_percent(hs_index);
		var hs_spr_x = x_org + w + hs_x_margin - string_width(hs_str)/2;
		var hs_spr_y = y_org + hs_y_margin + sprite_get_height(sGrade_letter)/2 + string_height(hs_str);
		draw_sprite(sGrade_letter, hs_index, hs_spr_x, hs_spr_y);
	}
}

var prompt_margin = 5;
draw_key_prompt(sPrompt_a, ord("A"), prompt_margin, 0);
draw_key_prompt(sPrompt_d, ord("D"), display_get_gui_width() - prompt_margin, 0);
draw_key_prompt(sPrompt_space, vk_space, display_get_gui_width()/2, sprite_get_height(sPrompt_space));