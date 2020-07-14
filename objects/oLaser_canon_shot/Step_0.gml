event_inherited();

if(team == TEAM.WHITE) sprite_index = sLaser_canon_shot_white;
else sprite_index = sLaser_canon_shot_black;

if(instance_exists(target)) {
	var target_angle = point_direction(x, y, target.x, target.y);
	var angle_dif = angle_difference(ang, target_angle);
	ang -= min(abs(angle_dif), 3) * sign(angle_dif);
}
else {
	var possible_targets = ds_list_create(); 
	var numb = collision_line_list(x, y, x + lengthdir_x(vision_range, ang), y + lengthdir_y(vision_range, ang), oEntity, false, true, possible_targets, true);
	for(var i = 0; i < numb; i++) {
		var inst = possible_targets[| i];
		if(inst.team != team && collision_line(x, y, inst.x, inst.y, oSolid, false, true) == noone) {
			target = inst;
			break;
		}
	}
	
	ds_list_destroy(possible_targets);
}