if(instance_exists(connected_to)) {
	if(collision_circle(x, y, 3, oPlayer, false, true) == noone) {
		if(can_teleport_timer > 0 && !can_teleport) can_teleport_timer--;
		else {
			can_teleport = true;
			can_teleport_timer = can_teleport_time;
		}
	}
	else if(can_teleport) connected_to.pull_player();
}
else {
	with(oTeleporter) {
		if(group == other.group && id != other.id) {
			other.connected_to = id;	
		}
	}
}