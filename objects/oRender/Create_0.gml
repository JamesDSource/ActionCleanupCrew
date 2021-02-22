window_set_cursor(cr_none);
application_surface_draw_enable(false);
//application_surface_enable(false);

global.sPause = noone;
global.paused_surfaces = ds_list_create();
global.view_surface = -1;

global.mouse_position = {
	x: 0,
	y: 0
}

init_window = 15;
center_window = false;

grayscale_layers = [
	"FloorTiles",
	"Carpet",
	"Hazard"
];
u_active = shader_get_uniform(shFloor_grayscale, "active");