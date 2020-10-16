event_inherited();

if(broken) {
	image_speed = 1;
	if(image_index < max_charge + 1) image_index = max_charge + 1;	
}
else {
	image_index = charge;
	image_speed = 0;	
}