global.grid = mp_grid_create(0, 0, ceil(room_width/16), ceil(room_height/16), 16, 16);
mp_grid_add_instances(global.grid, oSolid, false);