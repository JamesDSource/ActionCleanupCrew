amount = instance_number(oDepth_object);
ds_grid_resize(depth_grid, 2, amount);

var index = 0;
with(oDepth_object) {
	other.depth_grid[# 0, index] = bbox_bottom;
	other.depth_grid[# 1, index] = id;
	index++;
}
ds_grid_sort(depth_grid, 0, true);