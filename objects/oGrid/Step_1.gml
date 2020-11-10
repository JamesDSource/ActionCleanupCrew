mp_grid_clear_all(global.grid);
mp_grid_add_instances(global.grid, oSolid, false);
if(instance_exists(oSolid)) {
	with(oSolid) {
		if(!solid_enabled || player_only || (variable_instance_exists(id, "auto_open") && auto_open)) {
			mp_grid_clear_rectangle(global.grid, bbox_left, bbox_top, bbox_right, bbox_bottom);	
		}
	}
}