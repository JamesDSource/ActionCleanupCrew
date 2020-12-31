var channel = animcurve_get_channel(aLevel_select, "toggle");
var curve = animcurve_channel_evaluate(channel, progress);
current_w = max(w*curve, 1);

draw_set_color(UIDARKCOL);
nine_slice_streach(sNine_slice_level, dw/2 - current_w/2 - border_w, y_org - border_w, current_w + border_w*2, h + border_w*2);

if(progress == 1) {
	var u_flicker = shader_get_uniform(shLevel_select, "flicker");
	var u_odds = shader_get_uniform(shLevel_select, "odds");
	shader_set(shLevel_select);
	if(flicker_timer > 0) flicker_timer--;
	else {
		flickering = true;
		scan_lines_odd = !scan_lines_odd;
		flicker_timer = flicker_time;
	}
	if(flickering) {
		if(t%5 == 0) {
			flicker_dim = !flicker_dim;
			if(flicker_dim) {
				flickers_remaining--;
				if(flickers_remaining <= 0) {
					flickering = false;
					flickers_remaining = irandom_range(flickers_min, flickers_max);
				}
			}
		}
		if(flicker_dim) {
			shader_set_uniform_f(u_flicker, -0.1);
		}
		else shader_set_uniform_f(u_flicker, 0.0);
	}
	
	//if(scan_lines_timer > 0) scan_lines_timer--;
	//else {
	//	scan_lines_odd = !scan_lines_odd;
	//	scan_lines_timer = scan_lines_time;
	//}
	shader_set_uniform_f(u_odds, scan_lines_odd);
	
	
	var text_color = UILIGHTCOL;
	if(show_state >= 3) {
		draw_set_font(fLevel_select);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		for(var i = 0; i < array_length(global.levels); i++) {
			draw_set_alpha(global.levels[i].alpha);
			if(global.level_target == global.levels[i]) draw_set_color(c_yellow);
			else draw_set_color(text_color);
			var level_name_string = global.levels[i].name;
			if(i > global.level_lock) level_name_string = "???";
			draw_text_transformed(x_org + global.levels[i].x_pos, y_org + h/2 + 20, level_name_string, global.levels[i].scale, global.levels[i].scale, 0);
		}
		draw_set_alpha(1.0);
	}
	
	if(show_state >= 1) {
		draw_set_color(text_color);
		draw_rectangle(x_org, y_org + h/2, x_org + w - 1, y_org + h/2 + 1, false);
	}
	
	if(show_state >= 2) {
		var hs_y_margin = 15;
		var hs_str = "High Score:";
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(x_org + w/2, y_org + hs_y_margin, hs_str);
		var hs_name = "level " + room_get_name(global.levels[level_index].room_index);
		var hs_spr_x = x_org + w/2;
		var hs_spr_y = y_org + h/4;
		if(variable_struct_exists(global.highest_grades, hs_name)) {
			var hs_index = variable_struct_get(global.highest_grades, hs_name);
			hs_index = grade_index_from_percent(hs_index);
			draw_sprite(sGrade_letter, hs_index, hs_spr_x, hs_spr_y);
		}
		else draw_sprite(sNot_applicable, 0, hs_spr_x, hs_spr_y);
	
		if(DEMO && level_index > global.demo_level_limit) {
			var demo_message_margin = 5;
			draw_set_color(make_color_rgb(236, 39, 63));
			draw_set_halign(fa_right);
			draw_set_valign(fa_top);
			draw_text(x_org + w - demo_message_margin, y_org + demo_message_margin, "Level not\navailable\nin Demo");
		}
	}
	shader_reset();
}

var prompt_margin = 5;
if(global.gp_connected) {
	draw_key_prompt(sPrompt_gp_dpad_left, gp_padl, prompt_margin, 0, fa_left, fa_top, DEVICE.GAMEPAD);
	draw_key_prompt(sPrompt_gp_dpad_right, gp_padr, display_get_gui_width() - prompt_margin, 0, fa_right, fa_top, DEVICE.GAMEPAD);
	draw_key_prompt(sPrompt_gp_a, gp_face1, display_get_gui_width()/2, 0, fa_center, fa_top, DEVICE.GAMEPAD);
	draw_key_prompt(sPrompt_gp_options, gp_start, prompt_margin, dh, fa_left, fa_bottom, DEVICE.GAMEPAD);
}
else {
	draw_key_prompt(sPrompt_a, ord("A"), prompt_margin, 0, fa_left, fa_top, DEVICE.KEYBOARD);
	draw_key_prompt(sPrompt_d, ord("D"), display_get_gui_width() - prompt_margin, 0, fa_right, fa_top, DEVICE.KEYBOARD);
	draw_key_prompt(sPrompt_space, vk_space, display_get_gui_width()/2, 0, fa_center, fa_top, DEVICE.KEYBOARD);
	draw_key_prompt(sPrompt_esc, vk_escape, prompt_margin, dh, fa_left, fa_bottom, DEVICE.KEYBOARD);
}