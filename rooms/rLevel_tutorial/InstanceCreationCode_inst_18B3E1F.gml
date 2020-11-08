open_condition = function blood_door_open_condition() {
	if(instance_exists(inst_131CCDD2) && inst_131CCDD2.stains <= 10) return true;
	else return false;
}