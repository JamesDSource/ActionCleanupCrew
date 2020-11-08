row++;
if(row > bbox_bottom - bbox_top) {
	row = 0;
	stains = temp_stains
	temp_stains = 0;
}
temp_stains += get_stain_pixels(bbox_left, bbox_top + row, bbox_right, bbox_top + row);