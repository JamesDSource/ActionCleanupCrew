function player_state_free() {
	var hDir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var vDir = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	if(hDir != 0 || vDir != 0) { 
		var ang = point_direction(0, 0, hDir, vDir);
		hsp = lengthdir_x(spd, ang);
		vsp = lengthdir_y(spd, ang);
		
		image_speed = 1;
	}
	else {
		hsp = 0;
		vsp = 0;
		image_speed = 0;
		image_index = 0;
	}
	
	event_inherited();
}