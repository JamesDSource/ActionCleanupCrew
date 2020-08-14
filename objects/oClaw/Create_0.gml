event_inherited();
target = noone;
detection_range = 400;
free_state = "roam";
spd = 0.8;
path_movement_speed = spd;
can_attack = true;
entity_states.free = function claw_state_free() {
	switch(free_state) {
		case "attack":
			if(round(image_index) == 15 && can_attack) {
				var damage_rad = 40;
				screen_shake(4, 5);
				var entities = ds_list_create();
				collision_circle_list(x, y, damage_rad, oEntity, false, true, entities, false);
				for(var i = 0; i < ds_list_size(entities); i++) {
					if(entities[| i].team != team) entities[| i].kill_function(DEATHTYPE.PIERCING);
				}
				ds_list_destroy(entities);
				can_attack = false;	
			}
			break;
		case "chase":
			if(instance_exists(target)) {
				var offsets = get_push_offset(target.x, target.y, oSolid);
				new_move_point(target.x + offsets.x, target.y + offsets.y);
				var attack_range = 20;
				if(collision_circle(x, y, attack_range * 5, target, false, true) != noone) {
					path_movement_speed = spd + 0.4;
				}
				else path_movement_speed = spd;
				
				if(collision_circle(x, y, attack_range, target, false, true) != noone) {
					path_movement_speed = 0;
					free_state = "attack";
				}
			}
			else free_state = "roam";
			break;
		case "roam":
			// moving a random point in the room
			if(point_distance(move_point.x, move_point.y, x, y) <= 1) {
				var new_point = {
					x: 0,
					y: 0
				}
				var vq = 0;
				if(team == TEAM.WHITE) vq = 1;
				else vq = 2;
				var tries = 300;
				while(tries > 0) {
					new_point = random_point_room_quadrent(0, vq);
					if(!place_meeting(new_point.x, new_point.y, oSolid)) {
						new_move_point(new_point.x, new_point.y);
						delete new_point;
						break;	
					}
					tries--;
				}
				if(tries <= 0) {
					var rand_point = random_point_room();
					new_move_point(rand_point.x, rand_point.y);
				}
			}
		
			// choosing a target
			var detection_collisions = ds_list_create();
			collision_circle_list(x, y, detection_range, oEntity, false, true, detection_collisions, true);
			ds_list_shuffle(detection_collisions);
			var highest_priority = -1;
			for(var i = 0; i < ds_list_size(detection_collisions); i++) {
				var target_inst = detection_collisions[| i];
				if(target_inst.team != team && target_inst.priority > highest_priority && collision_line(x, y, target_inst.x, target_inst.y, oSolid, false, true) == noone) {
					highest_priority = target_inst.priority;
					target = target_inst;
					break;
				}
			}
			ds_list_destroy(detection_collisions);
			
			if(instance_exists(target)) free_state = "chase";
			break;
	}
}

state = entity_states.free;