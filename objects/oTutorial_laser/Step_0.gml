if(laser_active) {
	var vsp = move_dir * spd;
	if(place_meeting(x, y + vsp, oSolid)) {
		move_dir *= -1;	
	}
	y += vsp;
	
	distance_from_wall = 0;
	while(distance_from_wall < 500) {
		if(collision_line(x + sprite_width, y, x + sprite_width + distance_from_wall, y, oSolid, false, true) != noone) {
			break;			
		}
		else distance_from_wall++;
	}
	
	laser_progress = min(laser_progress + laser_progress_spd, 1);
	
	if(spark_frame_timer > 0) spark_frame_timer--;
	else {
		if(spark_frame == 1) spark_frame = 0;
		else spark_frame = 1;
		spark_frame_timer = spark_frame_time;	
	}
	
	var player_detection = collision_line(x, y, x + sprite_width + distance_from_wall, y, oPlayer, false, true);
	if(player_detection != noone) player_detection.kill_function(DEATHTYPE.BURN);
}