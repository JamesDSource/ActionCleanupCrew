function draw_rectangle_border(x1, y1, width, height, border, col1, col2) {
	// base
	draw_rectangle_color(x1, y1, x1 + width, y1 + height, col1, col1, col1, col1, false);
	
	// top
	draw_rectangle_color(x1, y1, x1 + width, y1 + border, col2, col2, col2, col2, false);
	// bottom
	draw_rectangle_color(x1, y1 + height - border, x1 + width, y1 + height, col2, col2, col2, col2, false);
	// left
	draw_rectangle_color(x1, y1, x1 + border, y1 + height, col2, col2, col2, col2, false);
	// right
	draw_rectangle_color(x1 + width - border, y1, x1 + width, y1 + height, col2, col2, col2, col2, false);
	
}

function nine_slice_streach(sprite, x1, y1, width, height) {
	var slice_size = sprite_get_width(sprite)/3;
	var a = draw_get_alpha();
	var xscale = max((width - slice_size*2)/slice_size, 0);
	var yscale = max((height - slice_size*2)/slice_size, 0);
	
	// middle
	draw_sprite_part_ext(sprite, 0, slice_size, slice_size, slice_size, slice_size, x1 + slice_size, y1 + slice_size, xscale, yscale, c_white, a);
	#region sides
		// top
		draw_sprite_part_ext(sprite, 0, slice_size, 0, slice_size, slice_size, x1 + slice_size, y1, xscale, 1, c_white, a);
		// bottom
		draw_sprite_part_ext(sprite, 0, slice_size, slice_size*2, slice_size, slice_size, x1 + slice_size, y1 + max(height - slice_size, slice_size), xscale, 1, c_white, a);
		// left
		draw_sprite_part_ext(sprite, 0, 0, slice_size, slice_size, slice_size, x1, y1 + slice_size, 1, yscale, c_white, a);
		// right
		draw_sprite_part_ext(sprite, 0, slice_size*2, slice_size, slice_size, slice_size, x1 + max(width - slice_size, slice_size), y1 + slice_size, 1, yscale, c_white, 1);
	#endregion
	#region corners
		// top left
		draw_sprite_part(sprite, 0, 0, 0, slice_size, slice_size, x1, y1);
		// bottom left
		draw_sprite_part(sprite, 0, 0, slice_size*2, slice_size, slice_size, x1, y1 + max(height - slice_size, slice_size));
		// top right
		draw_sprite_part(sprite, 0, slice_size*2, 0, slice_size, slice_size, x1 + max(width - slice_size, slice_size), y1);
		// bottom right
		draw_sprite_part(sprite, 0, slice_size*2, slice_size*2, slice_size, slice_size, x1 + max(width - slice_size, slice_size), y1 + max(height - slice_size, slice_size));
	#endregion
}