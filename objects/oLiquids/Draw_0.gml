if(surface_exists(global.liquid_surf)) {
	draw_surface(global.liquid_surf, 0, 0);
}
else {
	global.liquid_surf = surface_create(room_width, room_height);
	buffer_set_surface(failsafe_buffer, global.liquid_surf, 0);
}