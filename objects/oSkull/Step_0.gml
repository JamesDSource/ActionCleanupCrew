if(life_remaining > 0) {
	
	image_alpha = life_remaining/life;
	x = xstart;
	y = ystart;
	if(instance_exists(oCamera)) {
		var borders = {
			x1: oCamera.x - VIEWWIDTH/2,
			y1: oCamera.y - VIEWHEIGHT/2,
			x2: oCamera.x + VIEWWIDTH/2,
			y2: oCamera.y + VIEWHEIGHT/2
		}
		if(point_in_rectangle(x, y, borders.x1, borders.y1, borders.x2, borders.y2)) draw = false;
		else {
			draw = true;
			x = clamp(x, borders.x1 - sprite_xoffset + sprite_width, borders.x2 - sprite_xoffset);
			y = clamp(y, borders.y1 - sprite_yoffset + sprite_height, borders.y2 - sprite_yoffset);
		}
		life_remaining--;
	}
}
else instance_destroy();