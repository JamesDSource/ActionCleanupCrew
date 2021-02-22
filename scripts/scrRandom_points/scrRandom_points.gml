function random_point_rectange(x1, y1, x2, y2) {
	var point = {
		x: irandom_range(x1, x2),
		y: irandom_range(y1, y2)
	};
	return point;
}

function random_point_room() {
	var areas = [];
	
	if(instance_exists(oPlay_area)) {
		with(oPlay_area) {
			array_push(areas, id);
		}
	}
	else return {x: 0, y: 0};
	
	var area = areas[irandom_range(0, array_length(areas) - 1)];
	return random_point_rectange(area.bbox_left, area.bbox_top, area.bbox_right, area.bbox_bottom);
}


function random_point_team(team) {
	var valid_regions = [];
	if(instance_exists(oTeam_region)) {
		with(oTeam_region) {
			if(id.team == team) {
				array_push(valid_regions, id);	
			}
		}
	}
	
	if(array_length(valid_regions) == 0) {
		return {x: 0, y: 0};	
	}
	else {
		var region = valid_regions[irandom_range(0, array_length(valid_regions) - 1)];	
		return random_point_rectange(region.bbox_left, region.bbox_top, region.bbox_right, region.bbox_bottom);
	}
}