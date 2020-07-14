started = true;

white_soldiers = 0;
black_soldiers = 0;

random_tick_time = room_speed * 2;
random_tick_timer = random_tick_time;

white_spawns = ds_list_create();
black_spawns = ds_list_create();

with(oSpawn_point) {
	if(team == TEAM.WHITE) ds_list_add(other.white_spawns, id);	
	else if(team == TEAM.BLACK) ds_list_add(other.black_spawns, id);	
}