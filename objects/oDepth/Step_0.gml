amount = instance_number(oDepth_object);
ds_grid_resize(depth_grid, 2, amount);

var index = 0;
with(oDepth_object) {
	var bottom_y_pos = bbox_bottom;
	if([bbox_left, bbox_top] == [bbox_right, bbox_bottom]) bottom_y_pos = y - sprite_yoffset + sprite_height;
	other.depth_grid[# 0, index] = bottom_y_pos;
	other.depth_grid[# 1, index] = id;
	index++;
}
ds_grid_sort(depth_grid, 0, true);