event_inherited();

open_condition = function() {
	// replace with something else
	return false;
}
if(auto_open) {
	open_condition = function() {
		var radius = 80;
		var collision_result = collision_rectangle(bbox_left - radius, bbox_top - radius, bbox_right + radius, bbox_bottom + radius, oEntity, false, true);
		if(collision_result != noone) return true;
		return false;
	}
}