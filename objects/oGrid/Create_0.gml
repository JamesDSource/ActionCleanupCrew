cell_size = 16;
offshoot = 3;


global.grid = mp_grid_create(-offshoot * cell_size, -offshoot * cell_size, ceil(room_width/cell_size) + offshoot*2, ceil(room_height/cell_size) + offshoot*2, cell_size, cell_size);

function director_node() constructor {
	is_solid = false;
	sights[TEAM.WHITE] = 0;
	sights[TEAM.BLACK] = 0;
	x = 0;
	y = 0;
}

director_grid = ds_grid_create(room_width div cell_size, room_height div cell_size);
director_node_list = ds_list_create();
director_solid_nodes = ds_list_create();
director_init = false;

function is_visible_from(p1x, p1y, p2x, p2y) {
	
}

alarm[0] = 1;