open_condition = function blood_door_open_condition() {
	return (instance_exists(oStain_counter) && oStain_counter.stains < 8);
}