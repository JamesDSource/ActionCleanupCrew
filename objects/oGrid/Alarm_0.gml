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

director_init = true;