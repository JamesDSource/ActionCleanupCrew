if(surface_exists(global.liquid_surf)) {
	if(instance_exists(oCamera)) {
		var cam_x = oCamera.x;
		var cam_y = oCamera.y;
		var x1 = cam_x - VIEWWIDTH/2;
		var y1 = cam_y - VIEWHEIGHT/2;
		
		draw_surface_part(global.liquid_surf, x1, y1, VIEWWIDTH, VIEWHEIGHT, x1, y1);
	}
}
else global.liquid_surf = surface_create(room_width, room_height);