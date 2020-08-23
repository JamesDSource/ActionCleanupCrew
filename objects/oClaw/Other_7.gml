if(free_state == "attack") {
	path_movement_speed = spd;
	interest_timer = interest_time;
	target = noone;
	can_attack = true;
	can_swipe = true;
	free_state = "roam";
}