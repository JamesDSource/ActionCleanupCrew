if(surface_exists(global.liquid_surf)) {
	if(instance_exists(oCamera)) {
		draw_surface(global.liquid_surf, 0, 0);
	}
}
else global.liquid_surf = surface_create(room_width, room_height);