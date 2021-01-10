global.liquid_surf = -1;
global.stain_pixels = 0;

// Stain cell properties
stain_cell_size = 32;
stain_cells_width = ceil(room_width/stain_cell_size);
stain_cells_height = ceil(room_height/stain_cell_size);
stain_cells = ds_grid_create(stain_cells_width, stain_cells_height);
stain_cells_marked = [];

failsafe_buffer = buffer_create(room_width * room_height * 4, buffer_fixed, 1);
frame = 0;