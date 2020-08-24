event_inherited();

if(hit && sprite_exists(splatter)) {
	surface_set_target(global.liquid_surf);
	//gpu_set_blendmode_ext(bm_max);
	draw_sprite(splatter, irandom_range(0, sprite_get_number(splatter)-1), x, y);
	//gpu_set_blendmode(bm_normal);
	surface_reset_target();
	instance_destroy();	
}