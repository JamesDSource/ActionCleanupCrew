if(life_remaining > 0) {
	image_alpha = life_remaining/life;
	if(instance_exists(oCamera)) {
		var borders = {
			x1: oCamera.x,
			y1: oCamera.y,
			x2: oCamera.x + VIEWWIDTH,
			y2: oCamera.y + VIEWHEIGHT
		}
		var x_offset_perc = (x - borders.x1)/VIEWWIDTH;
		var y_offset_perc = (y - borders.y1)/VIEWHEIGHT;
		
		x_offset_perc = clamp(x_offset_perc, 0, 1);
		y_offset_perc = clamp(y_offset_perc, 0, 1);
		
		draw_set_alpha(image_alpha);
		draw_sprite(sprite_index, 0, sprite_width/2 + (display_get_gui_width() - sprite_width)*x_offset_perc, sprite_height/2 + (display_get_gui_height() - sprite_height)*y_offset_perc);
		draw_set_alpha(1);
		life_remaining--;
	}
}
else instance_destroy();

