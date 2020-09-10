
switch(free_state) {
	case "attack":
		path_movement_speed = spd;
		interest_timer = interest_time;
		target = noone;
		can_attack = true;
		can_swipe = true;
		free_state = "roam";
		break;
	case "eat":
		free_state = "roam";
		break;
}