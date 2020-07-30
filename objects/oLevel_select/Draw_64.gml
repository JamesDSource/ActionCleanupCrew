if(surface_exists(surf)) {
	surface_set_target(surf);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, w, h, false);
	draw_set_color(c_white);
	draw_rectangle(0, 0, w, h, true);

	if(init) {
		gpu_set_colorwriteenable(true, true, true, false);
		draw_set_font(fLevel_select);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		for(var i = 0; i < array_length(levels); i++) {
			draw_text_transformed(levels[i].x_pos, 15, levels[i].name, levels[i].scale, levels[i].scale, 0);
		}
		gpu_set_colorwriteenable(true, true, true, true);
	}
	
	surface_reset_target();
	draw_surface(surf, x_org, y_org);
}
else surf = surface_create(w, h)