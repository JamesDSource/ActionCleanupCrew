if(surface_exists(global.liquid_surf)) {
	draw_surface(global.liquid_surf, 0, 0);
}
else {
	global.liquid_surf = surface_create(room_width, room_height);
	buffer_set_surface(failsafe_buffer, global.liquid_surf, 0);
}

if(frame%50 == 0 && array_length(stain_cells_marked) > 0) {
	var buffer = buffer_create(4 * room_width * room_height, buffer_fixed, 1);
	buffer_get_surface(buffer, global.liquid_surf, 0);
	for(var i = 0; i < array_length(stain_cells_marked); i++) {
		var marked = stain_cells_marked[i];
		/**
		var count_surface = surface_create(1, 1);
		surface_set_target(count_surface);
		
		shader_set(shStain_count);
		
		// Texture
		var tex = surface_get_texture(global.liquid_surf);
		texture_set_stage(u_surface, tex);
		
		// UVs
		var tex_uvs = texture_get_uvs(tex);
		shader_set_uniform_f(u_texel_size, tex_uvs[2] - tex_uvs[0], tex_uvs[3] - tex_uvs[1]);
		
		// Origin
		shader_set_uniform_f(u_cell_origin, marked.x, marked.y);
		
		// Size
		shader_set_uniform_f(u_cell_size, stain_cell_size);
		
		// Threashold
		shader_set_uniform_f(u_alpha_threashold, 0.2);
		
		draw_point(0, 0);
		
		shader_reset();
		surface_reset_target();
		var color = surface_getpixel(count_surface, 0, 0);
		surface_free(count_surface);
		
		var stain_pixels = (color_get_red(color)/255)*power(stain_cell_size, 2);**/
		var stain_pixels = get_stain_pixels(marked.x*stain_cell_size, marked.y*stain_cell_size, (marked.x + 1)*stain_cell_size - 1, (marked.y + 1)*stain_cell_size - 1, buffer);
		stain_cells[# marked.x, marked.y] = stain_pixels;
	}
	buffer_delete(buffer);
	global.stain_pixels = ds_grid_get_sum(stain_cells, 0, 0, ds_grid_width(stain_cells)-1, ds_grid_height(stain_cells)-1);
	stain_cells_marked = [];
}