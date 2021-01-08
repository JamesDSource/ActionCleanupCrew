if(instance_exists(oLiquids)) {
	var cell_size, cells;
	with(oLiquids) {
		cell_size = stain_cell_size;
		cells = stain_cells;
	}
	
	// Getting the corners
	var top_left = {
		x: bbox_left div cell_size,
		y: bbox_top div cell_size
	}
	var bottom_right = {
		x: bbox_right div cell_size,
		y: bbox_bottom div cell_size
	}
	
	stains = ds_grid_get_sum(cells, top_left.x, top_left.y, bottom_right.x, bottom_right.y);
}