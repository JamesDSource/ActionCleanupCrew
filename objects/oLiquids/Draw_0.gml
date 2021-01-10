if(surface_exists(global.liquid_surf)) {
	draw_surface(global.liquid_surf, 0, 0);
}
else {
	global.liquid_surf = surface_create(room_width, room_height);
	buffer_set_surface(failsafe_buffer, global.liquid_surf, 0);
}

if(frame%10 == 0 && array_length(stain_cells_marked) > 0) {
	var cells_counted = min(6, array_length(stain_cells_marked));
	var buffer = buffer_create(4 * room_width * room_height, buffer_fixed, 1);
	buffer_get_surface(buffer, global.liquid_surf, 0);
	for(var i = 0; i < cells_counted; i++) {
		var marked = stain_cells_marked[i];
		var stain_pixels = get_stain_pixels(marked.x*stain_cell_size, marked.y*stain_cell_size, (marked.x + 1)*stain_cell_size - 1, (marked.y + 1)*stain_cell_size - 1, buffer);
		stain_cells[# marked.x, marked.y] = stain_pixels;
	}
	buffer_delete(buffer);
	global.stain_pixels = ds_grid_get_sum(stain_cells, 0, 0, ds_grid_width(stain_cells)-1, ds_grid_height(stain_cells)-1);
	array_delete(stain_cells_marked, 0, cells_counted);
	stain_cells_marked = [];
}