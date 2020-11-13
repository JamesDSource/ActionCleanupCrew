if(live_call()) return live_result;
frame++;
if(frame == 1001) frame = 1;
if(surface_exists(global.liquid_surf) && frame%20 == 0) {
	buffer_seek(failsafe_buffer, buffer_seek_start, 0);
	buffer_get_surface(failsafe_buffer, global.liquid_surf, buffer_surface_copy, 0, 0);
}