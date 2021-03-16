cell_size = 32;
offshoot = 3;

global.grid = mp_grid_create(-offshoot * cell_size, -offshoot * cell_size, ceil(room_width/cell_size) + offshoot*2, ceil(room_height/cell_size) + offshoot*2, cell_size, cell_size);

function director_node() constructor {
	is_solid = false;
	sights = {};
	enemy_distance = infinity;
	x = 0;
	y = 0;
}

director_grid = ds_grid_create(room_width div cell_size, room_height div cell_size);
director_node_list = ds_list_create();
director_solid_nodes = ds_list_create();
director_col = 0;
director_row = 0;
director_iterations = max(ds_grid_width(director_grid)*ds_grid_height(director_grid) div 140, 1);
director_init = false;

function check_is_sold(px, py) {
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
		
		while(p1x != p2x) {
			var point = {x: p1x, y: round(slope*p1x + pitch)};
			array_push(return_list, point);
			p1x += sx;
		}
	}
	else { // Run over rise
		var slope = dx/dy,
			pitch = p1x - slope*p1y;
		
		while(p1y != p2y) {
			var point = {x: round(slope*p1y + pitch), y: p1y};
			array_push(return_list, point);
			p1y += sy;
		}
	}
	return return_list;	
}

function is_visible(points) {
	
	var last_point = pointer_null;
	for(var i = 0; i < array_length(points); i++) {
		// Checks if the point is accessable
		if (
			check_is_sold(points[i].x, points[i].y) ||
			(	// Checks if the point is diagnal and is blocked off
				last_point != pointer_null && 
				last_point.x != points[i].x &&
				last_point.y != points[i].y &&
				check_is_sold(last_point.x, points[i].y) &&
				check_is_sold(points[i].x, last_point.y) && false
			)) 
		
		{
			return false;
		}
		
		last_point = points[i];
	}
	return true;
}

alarm[0] = 1;