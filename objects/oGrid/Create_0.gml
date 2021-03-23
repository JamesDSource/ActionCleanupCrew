cell_size = 32;
offshoot = 3;

global.grid = mp_grid_create(-offshoot * cell_size, -offshoot * cell_size, ceil(room_width/cell_size) + offshoot*2, ceil(room_height/cell_size) + offshoot*2, cell_size, cell_size);

function director_node() constructor {
	is_solid = false;
	sights = {};
	enemy_distance = infinity;
	x = 0;
	y = 0;
	clear_region_index = [];
}

director_grid = ds_grid_create(room_width div cell_size, room_height div cell_size);
director_node_list = ds_list_create();
director_col = 0;
director_row = 0;
director_iterations = max(round(ds_grid_width(director_grid)*ds_grid_height(director_grid)/220), 1);
director_init = false;

debug_region_colors = [];

function get_grid_node(px, py) {
	if(director_init) {
		if(	px >= 0 && 
			px < ds_grid_width(director_grid) && 
			py >= 0 && 
			py < ds_grid_height(director_grid)) 
		{
			return director_node_list[| director_grid[# px, py]];	
		}
	}
	return undefined;
}

function check_is_solid(px, py) {
	if(director_init) {
		if(	px >= 0 && 
			px < ds_grid_width(director_grid) && 
			py >= 0 && 
			py < ds_grid_height(director_grid)) 
		{
			return director_node_list[| director_grid[# px, py]].is_solid;	
		}
		return true;
	}
	return false;
}

// Bresenham's line algorithm
function get_points_between(p1x, p1y, p2x, p2y) {
	// Checking if they are the same point
	if(p1x == p2x && p1y == p2y) {
		return [{x: p1x, y: p1y}];	
	}
	
	var dx = p2x - p1x,
		sx = dx < 0 ? -1 : 1,
		dy = p2y - p1y,
		sy = dy < 0 ? -1 : 1,
		return_list = [];
	
	if(abs(dy) < abs(dx)) { // Rise over run
		var slope = dy/dx,
			pitch = p1y - slope*p1x;
		
		while(true) {
			var point = {x: p1x, y: round(slope*p1x + pitch)};
			array_push(return_list, point);
			if(p1x == p2x) {
				break;	
			}
			p1x += sx;
		}
	}
	else { // Run over rise
		var slope = dx/dy,
			pitch = p1x - slope*p1y;
		
		while(true) {
			var point = {x: round(slope*p1y + pitch), y: p1y};
			array_push(return_list, point);
			if(p1y == p2y) {
				break;	
			}
			p1y += sy;
		}
	}
	return return_list;	
}

function get_free_connecting(px, py) {
	var return_list = [];
	
	var check_points = [
		{x: px + 1,	y: py},
		{x: px - 1,	y: py},
		{x: px,		y: py + 1},
		{x: px,		y: py - 1},
		{x: px + 1,	y: py + 1},
		{x: px - 1,	y: py + 1},
		{x: px + 1,	y: py - 1},
		{x: px - 1, y: py - 1}
	];
	
	for(var i = 0; i < array_length(check_points); i++) {
		var point = check_points[i];
		
		if(	!check_is_solid(point.x, point.y) && 
			(point.x == px || point.y == py) || (!check_is_solid(point.x, py) && 
			!check_is_solid(px, point.y)))
		{
			array_push(return_list, get_grid_node(point.x, point.y));
		}
	}
	
	return return_list;
}

function is_visible(p1x, p1y, p2x, p2y) {
	
	// Checking if they are the same point
	if(p1x == p2x && p1y == p2y) {
		return true;	
	}
	
	var dx = p2x - p1x,
		sx = dx < 0 ? -1 : 1,
		dy = p2y - p1y,
		sy = dy < 0 ? -1 : 1;
	
	if(abs(dy) < abs(dx)) { // Rise over run
		var slope = dy/dx,
			pitch = p1y - slope*p1x;
		
		while(true) {
			var point = {x: p1x, y: round(slope*p1x + pitch)};
			if(check_is_solid(point.x, point.y)) {
				return false;	
			}
			if(p1x == p2x) {
				break;	
			}
			p1x += sx;
		}
	}
	else { // Run over rise
		var slope = dx/dy,
			pitch = p1x - slope*p1y;
		
		while(true) {
			var point = {x: round(slope*p1y + pitch), y: p1y};
			if(check_is_solid(point.x, point.y)) {
				return false;	
			}
			if(p1y == p2y) {
				break;	
			}
			p1y += sy;
		}
	}
	return true;
}

alarm[0] = 1;