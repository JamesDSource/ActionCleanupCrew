if(started) letter_scale = approach(letter_scale, 1, letter_spd);

if(letter_scale == 1 && !transitioned) {
	if(transition_timer > 0) transition_timer--;
	else {
		transition_to(rHub);
		transitioned = true;
	}
}