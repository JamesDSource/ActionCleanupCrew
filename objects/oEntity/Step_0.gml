// pathfinding
if(uses_pathfinding) {
	if(point_distance(x, y, move_point.x, move_point.y) > 1) {	
		if(!path_exists(path)) {
			path = path_add();
			point = 0;
			if(!mp_grid_path(global.grid, path, x, y, move_point.x, move_point.y, true)) {
				move_point.x = x;
				move_point.y = y;	
			}
		}
		else {	
			if(point_distance(x, y, path_get_point_x(path, point), path_get_point_y(path, point)) < 1) point = clamp(point + 1, 0, path_get_number(path)-1);
			var temp_x = path_get_point_x(path, point);
			var temp_y = path_get_point_y(path, point);
			var ang = point_direction(x, y, temp_x, temp_y);
			var spd = min(path_movement_speed, point_distance(x, y, temp_x, temp_y));
			hsp = lengthdir_x(spd, ang);
			vsp = lengthdir_y(spd, ang);
		}
	}
	else {
		if(path_exists(path)) path_delete(path);
		hsp = 0;
		vsp = 0;
	}
}

if(place_meeting(x + hsp, y, oSolid)) {
	repeat(hsp) if(!place_meeting(x + sign(hsp), y, oSolid)) x += sign(hsp);
	hsp = 0;
}

if(place_meeting(x, y + vsp, oSolid)) {
	repeat(vsp) if(!place_meeting(x, y + sign(vsp), oSolid)) y += sign(vsp);
	vsp = 0;
}

x += hsp;
y += vsp;

push_out();

audio_emitter_position(audio_emitter, x, y, 0);