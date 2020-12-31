ds_list_destroy(global.paused_surfaces);
if(surface_exists(global.view_surface)) {
	surface_free(global.view_surface);
	global.view_surface = -1;
}