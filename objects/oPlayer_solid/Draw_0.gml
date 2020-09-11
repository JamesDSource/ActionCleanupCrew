event_inherited();

if(surface_exists(global.liquid_surf)) {
	surface_set_target(global.liquid_surf);
	gpu_set_blendmode(bm_subtract);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_function();
	if(mask_index == sSolid || mask_index == sSolid_short) {
		draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	}
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
}