event_inherited();

if(turn_timer > 0) turn_timer--;
else {
	turn_dir *= -1;
	turn_timer = room_speed/irandom_range(3, 4);
}

ang += turn_dir*5;