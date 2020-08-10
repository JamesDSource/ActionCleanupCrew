application_surface_draw_enable(false);

global.sPause = noone;
global.paused_surfaces = ds_list_create();

draw_pause = false;
spr_cursor = noone;