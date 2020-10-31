// states
if(uses_entity_states && is_method(state)) state();

// pathfinding
if(uses_pathfinding) {
	t++;
	if(path_update && t%10 == 0) {
		if(path_exists(path)) path_delete(path);
		path_update = false;
	}
	if(point_distance(x, y, move_point.x, move_point.y) > 1) {
		if(!path_exists(path)) {
			path = path_add();
			point = 1;
			if(!mp_grid_path(global.grid, path, x, y, move_point.x, move_point.y, true)) {
				move_point.x = x;
				move_point.y = y;	
			}
		}
		else {	
			if(point_distance(x, y, path_get_point_x(path, point), path_get_point_y(path, point)) < 1) {
				x = path_get_point_x(path, point);
				y = path_get_point_y(path, point);
				point = clamp(point + 1, 0, path_get_number(path)-1);
			}
			var temp_x = path_get_point_x(path, point);
			var temp_y = path_get_point_y(path, point);
			var ang = point_direction(x, y, temp_x, temp_y);
			var spd = min(path_movement_speed, point_distance(x, y, temp_x, temp_y));
			hsp = lengthdir_x(spd, ang);
			vsp = lengthdir_y(spd, ang);
			
			if(temp_x == 0 && temp_y == 0) {
				hsp = 0;
				vsp = 0;
			}
		}
	}
	else {
		if(path_exists(path)) path_delete(path);
		hsp = 0;
		vsp = 0;
	}
}

check_for_collisions(oSolid);
if(object_index == oPlayer) check_for_collisions(oPlayer_solid);

x += hsp;
y += vsp;

SETPUSHOUT;
if(object_index == oPlayer) set_position(push_out(oPlayer_solid, x, y));

audio_emitter_position(audio_emitter, x, y, 0);