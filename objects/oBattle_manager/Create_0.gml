started = false;

frames_left = mins * 60 * room_speed;

global.white_kills = 0;
global.black_kills = 0;
global.game_score = {
	blood: 100,
	ash: 100,
	bits: 100,
	bodies: 100,
	total: 0,
	finished: false	
};

winner_message = "";

retreat_time = 15;

// auto kill
autokill_time = room_speed * 30;
autokill_timer = autokill_time;

function start() {
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
}