window_set_cursor(cr_none);
application_surface_draw_enable(false);

global.sPause = noone;
global.paused_surfaces = ds_list_create();

init_window = 15;
center_window = false;