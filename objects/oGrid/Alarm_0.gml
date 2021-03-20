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
					break;
				}
			}
		}
		
		ds_list_destroy(collisions);
	}
}


// Caculating clear region index
var region_index = 0;
for(var i = 0; i < ds_grid_height(director_grid); i++) {
	for(var j = 0; j < ds_grid_width(director_grid); j++) {
		var node = director_node_list[| director_grid[# j, i]];
		if(array_length(node.clear_region_index) == 0 && !node.is_solid) {
			var can_expand_h = true, can_expand_v = true,
				h_index1 = node.x, v_index1 = node.y,
				h_index2 = node.x, v_index2 = node.y;

			
			// Expand hoizontal	1
			while(can_expand_h) {
				h_index1++;
				if(h_index1 < ds_grid_width(director_grid)) {
					var exp_node = director_node_list[| director_grid[# h_index1, node.y]];
					if(exp_node.is_solid) {
						can_expand_h = false;
						h_index1--;
						break;
					}
				}
				else {
					can_expand_h = false;
					h_index1--;
				}
			}
			// Expand verticle 1
			while(can_expand_v) {
				v_index1++;
				if(v_index1 < ds_grid_height(director_grid)) {
					for(var c = node.x; c <= h_index1; c++) {
						var exp_node = director_node_list[| director_grid[# c, v_index1]];
						if(exp_node.is_solid) {
							can_expand_v = false;
							v_index1--;
							break;
						}
					}
				}
				else {
					can_expand_v = false;
					v_index1--;
				}
			}
			
			can_expand_h = true;
			can_expand_v = true;
			
			// Expand verticle 2
			while(can_expand_v) {
				v_index2++;
				if(v_index2 < ds_grid_height(director_grid)) {
					var exp_node = director_node_list[| director_grid[# node.x, v_index2]];
					if(exp_node.is_solid) {
						can_expand_v = false;
						v_index2--;
						break;
					}
				}
				else {
					can_expand_v = false;
					v_index2--;
				}
			}
			
			// Expand hoizontal	2
			while(can_expand_h) {
				h_index2++;
				if(h_index2 < ds_grid_width(director_grid)) {
					for(var c = node.y; c <= v_index2; c++) {
						var exp_node = director_node_list[| director_grid[# h_index2, c]];
						if(exp_node.is_solid) {
							can_expand_h = false;
							h_index2--;
							break;
						}
					}
				}
				else {
					can_expand_h = false;
					h_index2--;
				}
			}
			
			var area1 = (h_index1 - node.x) * (v_index1 - node.y);
			var area2 = (h_index2 - node.x) * (v_index2 - node.y);
			
			if(area1 > area2) {
				var h_index = h_index1;
				var v_index = v_index1;
			}
			else {
				var h_index = h_index2;
				var v_index = v_index2;
			}
			
			// Setting the clear region index
			if(h_index > node.x || v_index > node.y) {
				for(var c = node.x; c <= h_index; c++) {
					for(var k = node.y; k <= v_index; k++) {
						array_push(director_node_list[| director_grid[# c, k]].clear_region_index, region_index);
					}	
				}
				debug_region_colors[region_index] = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255));
				region_index++;
			}
		}
	}
}

director_init = true;