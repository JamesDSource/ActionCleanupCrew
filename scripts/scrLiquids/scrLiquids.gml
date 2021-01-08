function get_stain_pixels(start_x, start_y, end_x, end_y, buffer) {
	var stain_count = 0;
	if(surface_exists(global.liquid_surf)) {
		for(var i = start_x; i <= end_x; i++) {
			for(var j = start_y; j <= end_y; j++) {
				var offset = 4 * (i + (j * room_width));
				var alpha = buffer_peek(buffer, offset + 3, buffer_u8);
				if(alpha > 50) stain_count++;
			}
		}
	}
	return stain_count;
}

function draw_sprite_on_liquid(x_pos, y_pos, spr, subimage, xscale, yscale, subtractive) {
	if(surface_exists(global.liquid_surf) && instance_exists(oLiquids) && sprite_exists(spr)) {
		// draw the sprite
		surface_set_target(global.liquid_surf);
		if(subtractive) {
			gpu_set_blendmode(bm_subtract);
			gpu_set_colorwriteenable(false, false, false, true);
		}
		draw_sprite_ext(spr, subimage, x_pos, y_pos, xscale, yscale, 0, c_white, draw_get_alpha());
		if(subtractive) {
			gpu_set_blendmode(bm_normal);
			gpu_set_colorwriteenable(true, true, true, true);
		}
		surface_reset_target();
		
		with(oLiquids) {
			var origin = {x: x_pos - sprite_get_xoffset(spr), y: y_pos - sprite_get_yoffset(spr)}
			var w = sprite_get_width(spr);
			var h = sprite_get_height(spr);
			var points = [
				origin,										// Top left
				{x: origin.x + w, y: origin.y},				// Top Right
				{x: origin.x, y: origin.y + h},				// Bottom left
				{x: origin.x + w, y: origin.y + h}			// Bottom right
			];
			
			// Getting all the cells that the sprite encompasses
			var extents = {
				lx: infinity,
				hx: -infinity,
				ly: infinity,
				hy: -infinity
			}
			// Getting the highest and lowest points
			var has_values = false;
			for(var i = 0; i < array_length(points); i++) {
				var cell_pos = {
					x: points[i].x div stain_cell_size,
					y: points[i].y div stain_cell_size
				}
				
				if(cell_pos.x > 0 && cell_pos.x < ds_grid_width(stain_cells) && cell_pos.y > 0 && cell_pos.y < ds_grid_height(stain_cells)) {
					if(cell_pos.x < extents.lx) extents.lx = cell_pos.x;
					if(cell_pos.x > extents.hx) extents.hx = cell_pos.x;
					if(cell_pos.y < extents.ly) extents.ly = cell_pos.y;
					if(cell_pos.y > extents.hy) extents.hy = cell_pos.y;
					has_values = true;
				}
			}
			
			// Calling subtraction functions on nearby solids
			if(!subtractive) {
				var collision_list = ds_list_create();
				collision_rectangle_list(extents.lx*stain_cell_size, extents.ly*stain_cell_size, extents.hx*stain_cell_size, extents.hy*stain_cell_size, oSolid, false, true, collision_list, false);
				for(var i = 0; i < ds_list_size(collision_list); i++) {
					collision_list[| i].overley_mask_on_liquids();
				}
				ds_list_destroy(collision_list);
			}
			
			// Updating the cell stain grid
			for(var i = extents.lx; i <= extents.hx; i++) {
				for(var j = extents.ly; j <= extents.hy; j++) {
					if(has_values) {
						var unique = true;
						for(var c = 0; c < array_length(stain_cells_marked); c++) {
							if(stain_cells_marked[c].x == i && stain_cells_marked[c].y == j) {
								unique = false;
								break;
							}
						}
						if(unique) {
							array_push(stain_cells_marked, {x: i, y: j});
						}
					}
				}
			}
		}
	}
}