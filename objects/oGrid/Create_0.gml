cell_size = 16;
offshoot = 3;
global.grid = mp_grid_create(-offshoot * cell_size, -offshoot * cell_size, ceil(room_width/cell_size) + offshoot*2, ceil(room_height/cell_size) + offshoot*2, cell_size, cell_size);