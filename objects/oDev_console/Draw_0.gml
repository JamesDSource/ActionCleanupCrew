if(blood_fill || blood_clear) {
	if(surface_exists(global.liquid_surf)) {
		surface_set_target(global.liquid_surf);
		var a = 0;
		if(blood_fill) a = 0.8;
		draw_clear_alpha(c_red, a);
		surface_reset_target();
	}
	blood_clear = false;
	blood_fill = false;
}