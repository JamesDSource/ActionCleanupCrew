event_inherited();

free_state = "wander";
target = noone;
range = 300;
shots = 3;
shot_time = room_speed/2;
shot_timer = shot_time;
can_shoot_time = room_speed * 4;
can_shoot_timer = can_shoot_time;
spd = 1;

entity_states.free = function voliore_state_free() {
	switch(free_state) {
		case "suicide":
			if(instance_exists(target)) {
				new_move_point(target.x, target.y);
				if(point_distance(x, y, target.x, target.y) <= 10) kill_function(DEATHTYPE.EXPLOSION);
			}
			else free_state = "wander";
			break;
		case "shoot":
			path_movement_speed = 0;
			if(shots > 0 && instance_exists(target)) {
				if(shot_timer > 0) shot_timer--;
				else {
					var shoot_ang = point_direction(x, y, target.x, target.y);
					audio_play_sound_on(audio_emitter, sdVoliore_goop, false, SOUNDPRIORITY.GUNS);
					with(instance_create_layer(x, y, "Instances", oAcid_ball)) {
						z = 8;
						ang = shoot_ang;
						team = other.team;
					}
					shots--;
					shot_timer = shot_time;
				}
			}
			else {
				free_state = "wander";
				shots = 3;
				path_movement_speed = spd;
			}
			break;
		case "wander":
			if(point_distance(x, y, move_point.x, move_point.y) <= 1) {
				var np_found = false;
				var np_attempts = 100;
				var np_quad_verticle = 1;
				if(team == TEAM.WHITE) np_quad_verticle = 2;
				var new_mp = {
					x: x,
					y: y
				}
				
				while(!np_found) {
					new_mp = random_point_room_quadrent(0, np_quad_verticle);
					if(!place_meeting(new_mp.x, new_mp.y, oSolid)) {
						new_move_point(new_mp.x, new_mp.y);
						break;
					}
					
					if(np_attempts > 0) np_attempts--;
					else break;
				}
				
			}
			
			target = noone;
			var target_collisions = ds_list_create();
			collision_circle_list(x, y, range, oEntity, false, true, target_collisions, true);
			var highest_priority = -1;
			for(var i = ds_list_size(target_collisions) - 1; i >= 0; i--) {
				if(target_collisions[| i].priority >= highest_priority && target_collisions[| i].team != team && collision_line(target_collisions[| i].x, target_collisions[| i].y, x, y, oSolid, false, true) == noone) {
					target = target_collisions[| i];
					highest_priority = target_collisions[| i].priority;
				}
			}
			ds_list_destroy(target_collisions);
			
			if(can_shoot_timer > 0 && hp > 2) can_shoot_timer--;
			else if(instance_exists(target)) {
				if(hp > 2) free_state = "shoot";
				else free_state = "suicide";
				can_shoot_timer = can_shoot_time;
			}
			break;
	}
	
}

state = entity_states.free;

kill_function = function kill_voliore(death_type) {
	kill(death_type);
	if(hp == 1) instance_create_layer(x, y, "Instances", oExplosion);
}