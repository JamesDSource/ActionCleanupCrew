event_inherited();

if(team == TEAM.WHITE) {
	if(free_state == "attack") sprite_index = sClaw_red_attack;
	else sprite_index = sClaw_red;
	death_sprite = sClaw_red_dead;
}
else {
	if(free_state == "attack") sprite_index = sClaw_blue_attack;
	else sprite_index = sClaw_blue;
	death_sprite = sClaw_blue_dead;
}