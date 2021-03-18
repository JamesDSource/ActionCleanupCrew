for(var i = 0; i < ds_grid_width(director_grid); i++) {
	for(var j = 0; j < ds_grid_height(director_grid); j++) {
		var node = new director_node();
		node.x = i;
		node.y = j;
		
		director_grid[# i,j] = ds_list_size(director_node_list);
		ds_list_add(director_node_list, node);
		
		var collisions = ds_list_create();
		var col_num = collision_rectangle_list(i*cell_size, j*cell_size, i*cell_size + cell_size - 1, j*cell_size + cell_size - 1, oSolid, false, true, collisions, false);
		if(col_num > 0) {
			for(var c = 0; c < col_num; c++) {
				var inst = collisions[| c];
				if(inst.is_cover) {
					node.is_solid = true;
					ds_list_add(director_solid_nodes, node);
					break;
				}
			}
		}
		
		ds_list_destroy(collisions);
	}
}


// Caculating clear region index
var region_index = 0;
for(var i = 0; i < ds_grid_width(director_grid); i++) {
	for(var j = 0; j < ds_grid_height(director_grid); j++) {
		var node = director_node_list[| director_grid[# i, j]];
		if(node.clear_region_index == -1 && !node.is_solid) {
			var can_expand_h = true, can_expand_v = true,
				h_index = node.x, v_index = node.y;
		
			while(can_expand_h || can_expand_v) {
				// Expand hoizontal	
				if(can_expand_h) {
					h_index++;
					if(h_index < ds_grid_width(director_grid)) {
						for(var c = node.y; c <= v_index; c++) {
							if(director_node_list[| director_grid[# h_index, c]].is_solid) {
								can_expand_h = false;
								h_index--;
								break;
							}
						}
					}
					else {
						can_expand_h = false;
						h_index--;
					}
				}
			
				// Expand verticle
				if(can_expand_v) {
					v_index++;
					if(v_index < ds_grid_height(director_grid)) {
						for(var c = node.x; c <= h_index; c++) {
							if(director_node_list[| director_grid[# c, v_index]].is_solid) {
								can_expand_v = false;
								v_index--;
								break;
							}
						}
					}
					else {
						can_expand_v = false;
						v_index--;
					}
				}
			}
		
			// Setting the clear region index
			if(h_index > node.x || v_index > node.y) {
				for(var c = node.x; c <= h_index; c++) {
					for(var k = node.y; k <= v_index; k++) {
						director_node_list[| director_grid[# c, k]].clear_region_index = region_index;
					}	
				}
				debug_region_colors[region_index] = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255));
				region_index++;
			}
		}
	}
}

director_init = true;