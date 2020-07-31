draw_sprite_ext(sprite_index, image_index, x, y-z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if(hit) {
	surface_set_target(global.liquid_surf);
	gpu_set_blendmode(bm_max);
	draw_sprite(sBlood_splatter, irandom_range(0, sprite_get_number(sBlood_splatter)-1), x, y);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	instance_destroy();	
}