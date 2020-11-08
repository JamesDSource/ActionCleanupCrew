event_inherited();

open_condition = function default_open_condition() {
	// replace with something else
	return false;
}
if(auto_open) {
	open_condition = function auto_open_condition() {
		var radius = 40;
		var collision_result = collision_rectangle(bbox_left - radius, bbox_top - radius, bbox_right + radius, bbox_bottom + radius, oEntity, false, true);
		if(collision_result != noone) return true;
		return false;
	}
}