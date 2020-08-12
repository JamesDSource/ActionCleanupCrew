event_inherited();
entity_states.free = function claw_state_free() {
	// moving a random point in the room
	if(point_distance(move_point.x, move_point.y, x, y) <= 1) {
		var new_point = {
			x: 0,
			y: 0
		}
		var vq = 0;
		if(team == TEAM.WHITE) vq = 1;
		else vq = 2;
		var tries = 300;
		while(tries > 0) {
			new_point = random_point_room_quadrent(0, vq);
			if(!place_meeting(new_point.x, new_point.y, oSolid)) {
				new_move_point(new_point.x, new_point.y);
				delete new_point;
				break;	
			}
			tries--;
		}
		if(tries <= 0) {
			var rand_point = random_point_room();
			new_move_point(rand_point.x, rand_point.y);
		}
	}		
}

state = entity_states.free;