mp_grid_clear_all(global.grid);
mp_grid_add_instances(global.grid, oSolid, false);
if(instance_exists(oDoor)) {
	with(oDoor) {
		if(auto_open) mp_grid_clear_rectangle(global.grid, bbox_left, bbox_top, bbox_right, bbox_bottom);	
	}
}