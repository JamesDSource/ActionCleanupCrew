function random_point_rectange(x1, y1, x2, y2) {
	var point = {
		x: irandom_range(x1, x2),
		y: irandom_range(y1, y2)
	};
	return point;
}

function random_point_room() {
	return random_point_rectange(0, 32, room_width, room_height);
}

function random_point_room_quadrent(q_horizontal, q_vertical) {
	var rect = {
		x1: 0,	
		y1: 0,	
		x2: 0,	
		y2: 0
	}
	
	switch(q_horizontal) {
		case 1: // left
			rect.x1 = 0;
			rect.x2 = room_width/2;
			break;
		case 2: // right
			rect.x1 = room_width/2;
			rect.x2 = room_width;
			break;
		default: // both
			rect.x1 = 0;
			rect.x2 = room_width;
			break;
	}
	
	switch(q_vertical) {
		case 1: // top
			rect.y1 = 32;
			rect.y2 = room_height/2;
			break;
		case 2: // bottom
			rect.y1 = room_height/2;
			rect.y2 = room_height;
			break;
		default: // both
			rect.y1 = 32;
			rect.y2 = room_height;
			break;
	}
	
	return random_point_rectange(rect.x1, rect.y1, rect.x2, rect.y2);
}