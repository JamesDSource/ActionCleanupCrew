#macro SETPUSHOUT set_position(push_out(oSolid, x, y));

function set_position(pos) {
	x = pos.x;
	y = pos.y;
}

function push_out(obj, x_pos, y_pos) {
	var new_point = {x: x_pos, y: y_pos};
	if(place_meeting(x_pos ,y_pos, obj)) {
		for(var i = 0; i < 100; i++) {
			// right
			if(!place_meeting(x_pos + i, y_pos, obj)) {
				new_point.x += i;
				break;
			}
			// left
			if(!place_meeting(x_pos - i, y_pos, obj)) {
				new_point.x -= i;
				break;
			}
			// top
			if(!place_meeting(x_pos, y_pos - i, obj)) {
				new_point.y -= i;
				break;
			}
			// down
			if(!place_meeting(x_pos, y_pos + i, obj)) {
				new_point.y += i;
				break;
			}
			// top left
			if(!place_meeting(x_pos - i, y_pos - i, obj)) {
				new_point.x -= i;
				new_point.y -= i;
				break;
			}
				// top right
			if(!place_meeting(x_pos + i, y_pos - i, obj)) {
				new_point.x += i;
				new_point.y -= i;
				break;
			}
			// down left
			if(!place_meeting(x_pos - i, y_pos + i, obj)) {
				new_point.x -= i;
				new_point.y += i;
				break;
			}
			// down right
			if(!place_meeting(x_pos + i, y_pos + i, obj)) {
				new_point.x += i;
				new_point.y += i;
				break; 
			}		
		}
	}
	return new_point;
}

function get_push_offset(x_pos, y_pos, obj) {
	var offset_found = false;
	var offset = {
		x: 0,
		y: 0
	};
	for(var i = 0; i <= 1000; i++) {
		for(var j = 0; j < 360; j += 45) {
			var offset_x = lengthdir_x(i, j);
			var offset_y = lengthdir_y(i, j);
			if(!place_meeting(x_pos + offset_x, y_pos + offset_y, obj)) {
				offset.x = offset_x;
				offset.y = offset_y;
				offset_found = true;
				break;
			}
		} 
		if(offset_found) break;
	}
	return offset;
}