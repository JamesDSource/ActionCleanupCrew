mp_grid_clear_all(global.grid);
mp_grid_add_instances(global.grid, oSolid, false);
if(instance_exists(oSolid)) {
	with(oSolid) {
		if(!solid_enabled || player_only || (variable_instance_exists(id, "auto_open") && auto_open)) {
			mp_grid_clear_rectangle(global.grid, bbox_left, bbox_top, bbox_right, bbox_bottom);	
		}
	}
}

// Updating sightlines
if(director_init) {
	repeat(director_iterations) {
		var node = director_node_list[| director_grid[# director_col, director_row]];
		node.sights[$ TEAM.WHITE] = 0;
		node.sights[$ TEAM.BLACK] = 0;
		node.enemy_distance = infinity;
		
		var w = ds_grid_width(director_grid);
		var h = ds_grid_height(director_grid);
		var max_distance = 25;
		
		if(instance_exists(oEntity) && !node.is_solid) {
			with(oEntity) {
				if(team == TEAM.BLACK || team == TEAM.WHITE) {
					var ex = x div other.cell_size;
					var ey = y div other.cell_size;
					var ent_dist = point_distance(node.x, node.y, ex, ey);
					var is_node_visible = false;
					
					if(ent_dist <= max_distance) {
						// Checking if they are in the same clear region
						if(ex > 0 && ex < w && ey > 0 && ey < h) {
							var ent_node = other.director_node_list[| other.director_grid[# ex, ey]];
							if(array_overlap(node.clear_region_index, ent_node.clear_region_index)) {
								is_node_visible = true;
							}
						}
					
						// Checking if the two nodes are in a line of sight
						if(!is_node_visible && other.is_visible(ex, ey, node.x, node.y)) {
							is_node_visible = true;
						}
					
					
						if(is_node_visible) {
							node.sights[$ team]++;	
							node.enemy_distance = min(node.enemy_distance, ent_dist);
						}
					}
				}
			}
		}
		director_col++;
		if(director_col >= ds_grid_width(director_grid)) {
			director_col = 0;
			director_row++;
			if(director_row >= ds_grid_height(director_grid)) {
				director_row = 0;
			}
		}
	}
}