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

		if(instance_exists(oEntity) && !node.is_solid) {
			with(oEntity) {
				if(team == TEAM.BLACK || team == TEAM.WHITE) {
					var ex = x div other.cell_size;
					var ey = y div other.cell_size;
	
					if(other.is_visible_from(ex, ey, node.x, node.y)) {
						node.sights[$ team]++;	
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