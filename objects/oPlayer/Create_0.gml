enum TOOL {
	MOP,
	VACCUM
}
tools = [TOOL.MOP, TOOL.VACCUM];
tool_index = 0;
tool_using = tools[tool_index];
tool_height = 6;
tool_offset = {
	x: 0,
	y: 0,
	magnitude: 0
}

event_inherited();

spd = 1.5;


mask_on = true;
mask_time = 5 * room_speed;
mask_timer = mask_time;


states = {
	free: player_state_free	
}
state = states.free;

kill_function = function kill_player(death_type) {
	if(mask_on) mask_on = false;
	else {
		instance_create_layer(0, 0, "Controllers", oYou_died);
		kill(death_type);
	}
}