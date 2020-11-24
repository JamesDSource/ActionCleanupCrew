function get_stain_pixels(start_x, start_y, end_x, end_y) {
	var stain_count = 0;
	if(surface_exists(global.liquid_surf)) {
		var buffer = buffer_create(4 * room_width * room_height, buffer_fixed, 1);
		buffer_get_surface(buffer, global.liquid_surf, 0);
	
		for(var i = start_x; i <= end_x; i++) {
			for(var j = start_y; j <= end_y; j++) {
				var offset = 4 * (i + (j * room_width));
				var alpha = buffer_peek(buffer, offset + 3, buffer_u8);
				if(alpha > 50) stain_count++;
			}
		}
		buffer_delete(buffer);	
	}
	return stain_count;
}