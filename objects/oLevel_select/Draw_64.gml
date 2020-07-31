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
	for(var i = 0; i < array_length(levels); i++) {
		draw_text_transformed(x_org + levels[i].x_pos, y_org + 15, levels[i].name, levels[i].scale, levels[i].scale, 0);
	}
}