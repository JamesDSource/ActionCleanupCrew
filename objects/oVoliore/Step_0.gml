if(team == TEAM.WHITE) {
	if(free_state == "shoot") sprite_index = sVoliore_shoot_red;
	else sprite_index = sVoliore_red;
}
else {
	if(free_state == "shoot") sprite_index = sVoliore_shoot_blue;
	else sprite_index = sVoliore_blue;
}

if(hsp != 0) image_xscale = sign(hsp); 
event_inherited();