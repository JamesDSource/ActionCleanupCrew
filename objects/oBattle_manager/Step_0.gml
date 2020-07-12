if(started) {
	white_soldiers = instance_number(oSoldier_white);
	black_soldiers = instance_number(oSoldier_black);

	if(random_tick_timer > 0) random_tick_timer--;
	else if(frames_left > 30*room_speed) {
		if(white_soldiers < ideal_soldiers) {
			ds_list_shuffle(white_spawns);
			var spawn = white_spawns[| 0];
			instance_create_layer(spawn.x, spawn.y, "Instances", oSoldier_white);
		}
	
		if(black_soldiers < ideal_soldiers) {
			ds_list_shuffle(black_spawns);
			var spawn = black_spawns[| 0];
			instance_create_layer(spawn.x, spawn.y, "Instances", oSoldier_black);
		}
		random_tick_timer = random_tick_time;	
	}
	
	if(frames_left > 0) frames_left--;
	else if(!global.game_score.finished){
		// blood
		var buffer = buffer_create(4 * room_width * room_height, buffer_fixed, 1);
		buffer_get_surface(buffer, global.liquid_surf, buffer_surface_copy, 0, 0);
		
		var red_count = 0;
		for(var i = 0; i < room_width; i++) {
			for(var j = 0; j < room_height; j++) {
				var offset = 4 * (i + (j * room_width));
				var alpha = buffer_peek(buffer, offset + 3, buffer_u8);
				if(alpha > 0) red_count++;
			}
		}
		buffer_delete(buffer);
		min_score = 8000;
		red_count = clamp(red_count, 0, min_score);
		global.game_score.blood *= 1 - red_count/min_score;
		// ash piles
		global.game_score.ash -= clamp(instance_number(oAsh_pile)*20, 0, 100);
		// bits
		global.game_score.bits -= clamp(instance_number(oBit)*4, 0, 100);
		
		global.game_score.total = round((global.game_score.blood + global.game_score.ash + global.game_score.bits)/3.0);
		global.game_score.finished = true;
		
		transition_to(rResults);
	}
	
	if(frames_left <= 30*room_speed) {
		var winner;
		var exit_points;
		if(global.white_kills < global.black_kills) {
			winner = TEAM.BLACK;
			exit_points = white_spawns;
		}
		else {
			winner = TEAM.WHITE;
			exit_points = black_spawns;			
		}
		
		with(oSoldier) {
			if(state != states.flee) {
				if(winner != team) movement_speed = 2;
				
				ds_list_shuffle(exit_points);
				var flee_point = exit_points[| 0];
				exit_point.x = flee_point.x;
				exit_point.y = flee_point.y;
				state = states.flee;
			}
		}
	}
}