function push_out(obj) {
	if(place_meeting(x ,y, obj)) {
		for(var i = 0; i < 100; i++) {
			// right
			if(!place_meeting(x + i, y, obj)) {
				x += i;
				break;
			}
			// left
			if(!place_meeting(x - i, y, obj)) {
				x -= i;
				break;
			}
			// top
			if(!place_meeting(x, y - i, obj)) {
				y -= i;
				break;
			}
			// down
			if(!place_meeting(x, y + i, obj)) {
				y += i;
				break;
			}
			// top left
			if(!place_meeting(x - i, y - i, obj)) {
				x -= i;
				y -= i;
				break;
			}
				// top right
			if(!place_meeting(x + i, y - i, obj)) {
				x += i;
				y -= i;
				break;
			}
			// down left
			if(!place_meeting(x - i, y + i, obj)) {
				x -= i;
				y += i;
				break;
			}
			// down right
			if(!place_meeting(x + i, y + i, obj)) {
				x += i;
				y += i;
				break; 
			}		
		}
	}
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