if(DEVBUILD && keyboard_check_pressed(vk_f2)) {
	record = !record;
	
	if(record) {
		gif = gif_open(VIEWWIDTH, VIEWHEIGHT);
	}
	else {
		var gif_name = get_filename("gif") + ".gif";
		gif_save(gif, gif_name);
	}
}
else if(record && surface_exists(global.view_surface)) gif_add_surface(gif, global.view_surface, 2);