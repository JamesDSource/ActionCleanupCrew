if(DEVBUILD && keyboard_check_pressed(vk_f2)) {
	record = !record;
	
	if(record) {
		gif = gif_open(surface_get_width(application_surface), surface_get_height(application_surface));
	}
	else {
		var gif_name = get_filename("gif") + ".gif";
		gif_save(gif, gif_name);
	}
}
else if(record) gif_add_surface(gif, application_surface, 2);