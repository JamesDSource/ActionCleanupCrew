if(free_state == "attack") {
	path_movement_speed = spd;
	interest_timer = interest_time;
	target = noone;
	can_attack = true;
	free_state = "roam";
}