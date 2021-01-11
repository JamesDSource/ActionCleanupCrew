switch(sprite_index) {
	case sDrop_pod_launch:
		sprite_index = sDrop_pod_idle_closed;
		transition_to(global.level_target.room_index);
		global.level_target = undefined;
		break;
}