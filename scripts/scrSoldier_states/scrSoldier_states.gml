function soldier_state_decidie() {
	if(cover == noone) new_cover();
	
	if(decide_timer <= 0) {
		if(irandom_range(1, 100) < 50) {
			new_cover();
		}
		else state = states.shoot; 
		
		decide_timer = room_speed*irandom_range(1, 2);
	}
	else decide_timer--;
	
	new_move_point(cover_point.x, cover_point.y);
	gun_angle = 0;
}


function soldier_state_shoot() {
	new_move_point(cover_point.x + cover_side * 16, cover_point.y);
	
	// finding target
	var gun_targets = ds_list_create();
	collision_circle_list(x, y, gun_using.range, oEntity, false, true, gun_targets, true);
	var highest_priority = -1;
	for(var i = 0; i < ds_list_size(gun_targets); i++) {
		var current_gun_target = gun_targets[| i];
		if(current_gun_target.team != team && collision_line(x, y, current_gun_target.x, current_gun_target.y, oSolid, false, true) == noone && current_gun_target.priority > highest_priority) {
			gun_target = current_gun_target;	
			highest_priority = gun_target.priority;
		}
	}
	ds_list_destroy(gun_targets);
	
	if(instance_exists(gun_target)) {
		gun_angle = point_direction(x, y - gun_height, gun_target.x, gun_target.y);
		
		// recharge timer
		if(gun_shoot_recharge <= 0) {
			// burst timer
			if(gun_using.burst_timer <= 0) {
				// repeating shooting for each shot
				repeat(gun_using.shots) {
					var bullet_spread = irandom_range(-gun_using.spread, gun_using.spread);
					with(instance_create_layer(x + lengthdir_x(5, gun_angle_real), y + lengthdir_y(5, gun_angle_real), "Instances", gun_using.bullet)) {
						z = other.gun_height;
						team = other.team;
						ang = other.gun_angle_real + bullet_spread;
					}
				}
				
				audio_play_sound_on(audio_emitter, gun_using.sound, false, SOUNDPRIORITY.GUNS);
				gun_kick = gun_using.kickback;
				
				gun_using.burst_timer = gun_using.burst_time;
				gun_using.bursts_left--;
				if(gun_using.bursts_left == 0) {
					gun_shoot_recharge = gun_using.recharge_time;
					gun_using.bursts_left = gun_using.burst;
				}
			}
			else gun_using.burst_timer--;
		}
		else gun_shoot_recharge--;
	}
	
	if(shoot_timer == -1) shoot_timer = gun_using.time;
	if(shoot_timer == 0) {
		state = states.decide;
		shoot_timer = -1;
		gun_target = noone;
	}
	else shoot_timer--;
}

function soldier_state_exit() {
	new_move_point(exit_point.x, exit_point.y);
	gun_angle = 0;
	
	if(point_distance(x, y, exit_point.x, exit_point.y) < 1) instance_destroy(); 
}