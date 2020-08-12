if(started) {
	white_points = 0;
	black_points = 0;
	for(var i = 0; i < array_length(enemies_available); i++) {
		var cost = enemies[? enemies_available[i]].cost;
		with(enemies[? enemies_available[i]].entity) {
			if(team == TEAM.WHITE) other.white_points += cost;
			else if(team == TEAM.BLACK) other.black_points += cost;
		}
	}
	
	// random tick spawns soldiers if there is too little
	if(random_tick_timer > 0) random_tick_timer--;
	else if(frames_left > retreat_time*room_speed) {
		if(white_points < soldier_points) spawn_enemy(TEAM.WHITE);
		if(black_points < soldier_points) spawn_enemy(TEAM.BLACK);
		random_tick_timer = random_tick_time;	
	}
	
	if(frames_left > 0) frames_left--;
	else if(!global.game_score.finished) {
		#region scoring at the end ofd the game
			// lives
			if(instance_exists(oCloning_machine)) {
				global.game_score.life *= oCloning_machine.lives_remaining/oCloning_machine.max_lives;
			}
			// blood
			var buffer = buffer_create(4 * room_width * room_height, buffer_fixed, 1);
			buffer_get_surface(buffer, global.liquid_surf, buffer_surface_copy, 0, 0);
		
			var red_count = 0;
			for(var i = 0; i < room_width; i++) {
				for(var j = 0; j < room_height; j++) {
					var offset = 4 * (i + (j * room_width));
					var alpha = buffer_peek(buffer, offset + 3, buffer_u8);
					if(alpha > 20) red_count++;
				}
			}
			buffer_delete(buffer);
			min_score = 12000;
			show_debug_message(red_count);
			red_count = clamp(red_count, 0, min_score);
			global.game_score.blood *= 1 - red_count/min_score;
			// ash piles
			global.game_score.ash -= clamp(instance_number(oAsh_pile)*5, 0, 100);
			// bits
			global.game_score.bits -= clamp(instance_number(oBit)*2, 0, 100);
			// bodies
			global.game_score.bodies -= clamp(instance_number(oBody)*5, 0, 100);
		
			global.game_score.total = round((global.game_score.blood + global.game_score.ash + global.game_score.bits + global.game_score.bodies)/4.0);
			global.game_score.finished = true;
		
			instance_destroy(oPause);
			transition_to(rResults);
		#endregion
	}
	
	// retreating and winning sides
	if(frames_left <= retreat_time*room_speed) {
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
		
		for(var i = 0; i < array_length(enemies_available); i++) { 
			with(enemies[? enemies_available[i]].entity) {
				if(state != entity_states.flee) {
					ds_list_shuffle(exit_points);
					var flee_point = exit_points[| 0];
					new_move_point(flee_point.x, flee_point.y);
					state = entity_states.flee;
				}
			}
		}
	}
	
	// auto killing if something hasn't died in awhile
	if(autokill_timer > 0) autokill_timer--;
	else if(frames_left > retreat_time*room_speed) {
		var entities = ds_list_create();
		var kill_entity = noone;
		
		if(instance_exists(oEntity)) {
			with(oEntity) {
				ds_list_add(entities, id);	
			}
		}
		
		ds_list_shuffle(entities);
		for(var i = 0; i < ds_list_size(entities); i++) {
			with(entities[| i]) {
				var padding = 30;
				var cx = oCamera.x - VIEWWIDTH/2 - padding;
				var cy = oCamera.y - VIEWHEIGHT/2 - padding;
				if(!point_in_rectangle(x, y, cx, cy, cx + VIEWWIDTH + padding, cy + VIEWHEIGHT + padding)) {
					kill_entity = id;
				}
			}
			if(kill_entity != noone) break;
		}
		
		if(kill_entity != noone) {
			kill_entity.hp = 0;
			kill_entity.kill_function("random");
		}
		
		ds_list_destroy(entities);
	}
}
else if(instance_exists(oPlayer)) {
	if(array_length(start_lines) != 0) {
		oPlayer.play_lines("Radio", start_lines);
		start_lines = array_create(0);
	}
	else if(oPlayer.state != oPlayer.states.read) start();
}