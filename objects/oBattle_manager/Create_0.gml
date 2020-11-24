started = false;

frames_left = mins * 60 * room_speed;

global.white_kills = 0;
global.black_kills = 0;
global.game_score = {
	level: "level " + room_get_name(room),
	life: 100,
	blood: 100,
	ash: 100,
	bits: 100,
	bodies: 100,
	total: 0,
	finished: false	
};

retreat_time = 30;

// auto kill
autokill_time = room_speed * 30;
autokill_timer = autokill_time;

function soldier(obj, point_cost, soldier_probability) constructor {
	entity = obj;
	cost = point_cost;
	probability = soldier_probability;
}

enemies = ds_map_create();

enemies[? "standard"] = new soldier(
	oSoldier,
	1,
	4
);
enemies[? "claw"] = new soldier(
	oClaw,
	3,
	1
);
enemies[? "voliore"] = new soldier(
	oVoliore,
	2,
	1
);

function spawn_enemy(spawn_team) {
	var spawns;
	if(spawn_team == TEAM.WHITE) spawns = white_spawns;
	else spawns = black_spawns;
	
	ds_list_shuffle(spawns);
	var spawn = spawns[| 0];
	var possible_enemies = array_create(0);
	for(var i = 0; i < array_length(enemies_available); i++) {
		repeat(enemies[? enemies_available[i]].probability) {
			possible_enemies[array_length(possible_enemies)] = enemies[? enemies_available[i]];
		}
	}
	if(array_length(possible_enemies) > 0) {
		var spawn_obj = possible_enemies[irandom_range(0, array_length(possible_enemies) - 1)].entity;
		with(instance_create_layer(spawn.x, spawn.y, "Instances", spawn_obj)) team = spawn_team;
	}
}

function start() {
	started = true;

	white_points = 0;
	black_points = 0;
	
	random_tick_time = room_speed * 2;
	random_tick_timer = random_tick_time;

	white_spawns = ds_list_create();
	black_spawns = ds_list_create();

	with(oSpawn_point) {
		if(team == TEAM.WHITE) ds_list_add(other.white_spawns, id);	
		else if(team == TEAM.BLACK) ds_list_add(other.black_spawns, id);	
	}
}

start_lines = array_create(0);