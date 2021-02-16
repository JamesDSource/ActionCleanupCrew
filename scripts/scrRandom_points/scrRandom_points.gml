function random_point_rectange(x1, y1, x2, y2) {
	var point = {
		x: irandom_range(x1, x2),
		y: irandom_range(y1, y2)
	};
	return point;
}

function random_point_room() {
	if(instance_exists(oPlay_area)) {
		with(oPlay_area) {
			return random_point_rectange(bbox_left, bbox_top, bbox_right, bbox_bottom);
		}
	}
	else return {x: 0, y: 0};
}
