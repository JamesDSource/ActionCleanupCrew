if(charges > 0) {
	sprite_index = sGenerator;
	image_speed = power_usage_timer/power_usage_time;
	if(power_usage_timer > 0) power_usage_timer--;
	else {
		charges--;
		power_usage_timer = power_usage_time;
	}
}
else {
	sprite_index = sGenerator_unpowered;
	power_usage_timer = power_usage_time;
}