#macro SETPUSHOUT set_position(push_out(x, y));

function set_position(pos) {
	x = pos.x;
	y = pos.y;
}

function push_out(x_pos, y_pos) {
	var new_point = {x: x_pos, y: y_pos};
	if(is_collision(x_pos ,y_pos)) {
		for(var i = 0; i < 100; i++) {
			// right
			if(!is_collision(x_pos + i, y_pos)) {
				new_point.x += i;
				break;
			}
			// left
			if(!is_collision(x_pos - i, y_pos)) {
				new_point.x -= i;
				break;
			}
			// top
			if(!is_collision(x_pos, y_pos - i)) {
				new_point.y -= i;
				break;
			}
			// down
			if(!is_collision(x_pos, y_pos + i)) {
				new_point.y += i;
				break;
			}
			// top left
			if(!is_collision(x_pos - i, y_pos - i)) {
				new_point.x -= i;
				new_point.y -= i;
				break;
			}
				// top right
			if(!is_collision(x_pos + i, y_pos - i)) {
				new_point.x += i;
				new_point.y -= i;
				break;
			}
			// down left
			if(!is_collision(x_pos - i, y_pos + i)) {
				new_point.x -= i;
				new_point.y += i;
				break;
			}
			// down right
			if(!is_collision(x_pos + i, y_pos + i,)) {
				new_point.x += i;
				new_point.y += i;
				break; 
			}		
		}
	}
	return new_point;
}

function is_collision(x_pos, y_pos) {
	var is_player = (!is_struct(self) || variable_struct_exists(self, "object_index")) && 
					object_index == oPlayer;
	
	var return_value = false;
	var collision_check = ds_list_create();
	instance_place_list(x_pos, y_pos, oSolid, collision_check, false);
	for(var i = 0; i < ds_list_size(collision_check); i++) {
		var current_solid = collision_check[| i];
		if(current_solid.solid_enabled && (!current_solid.player_only || is_player)) {
			return_value = true;
			break;	
		}
	}
	ds_list_destroy(collision_check);
	return return_value;
}

function ray_test(x_pos, y_pos, cast_x, cast_y) {
	var is_player = (!is_struct(self) || variable_struct_exists(self, "object_index")) && 
					object_index == oPlayer;
	
	var return_value = false;
	var collision_check = ds_list_create();
	collision_line_list(x_pos, y_pos, cast_x, cast_y, oSolid, false, true, collision_check, false);
	for(var i = 0; i < ds_list_size(collision_check); i++) {
		var current_solid = collision_check[| i];
		if(current_solid.solid_enabled && !variable_instance_get(current_solid, "auto_open") && (!current_solid.player_only || is_player)) {
			return_value = true;
			break;	
		}
	}
	ds_list_destroy(collision_check);
	return return_value;
}

function get_push_offset(x_pos, y_pos, obj) {
	var offset_found = false;
	var offset = {
		x: 0,
		y: 0
	};
	for(var i = 0; i <= 1000; i++) {
		for(var j = 0; j < 360; j += 45) {
			var offset_x = lengthdir_x(i, j);
			var offset_y = lengthdir_y(i, j);
			if(!place_meeting(x_pos + offset_x, y_pos + offset_y, obj)) {
				offset.x = offset_x;
				offset.y = offset_y;
				offset_found = true;
				break;
			}
		} 
		if(offset_found) break;
	}
	return offset;
}