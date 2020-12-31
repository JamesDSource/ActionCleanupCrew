if(tool_using == TOOL.VACUUM) {
	draw_sprite_ext(sVacuum_pack, 0, x, y - 10, image_xscale, image_yscale, image_angle, image_blend, image_alpha);	
}

event_inherited();

if(global.gp_connected) {
	var axis_h = gamepad_axis_value(global.gp_slot, gp_axisrh);
	var axis_v = gamepad_axis_value(global.gp_slot, gp_axisrv);
	if(max(abs(axis_h), abs(axis_v)) > GPDEADZONE)tool_angle = point_direction(0, 0, axis_h, axis_v);
}
else tool_angle = point_direction(x, y - tool_height, global.mouse_position.x, global.mouse_position.y);
switch(tool_using) {
	case TOOL.MOP:
		var tool_offset_target = 0;
		if(using_tool) {
			var clean_pos = {
				x: x + lengthdir_x(14, tool_angle),
				y: y - tool_height + lengthdir_y(14, tool_angle)
			}
			surface_set_target(global.liquid_surf);
			gpu_set_blendmode(bm_subtract);
			gpu_set_colorwriteenable(false, false, false, true);
			draw_sprite(sMop_mask, 0, clean_pos.x, clean_pos.y);
			gpu_set_colorwriteenable(true, true, true, true);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
			tool_offset_target = 4;
		}
		tool_offset.magnitude = approach(tool_offset.magnitude, tool_offset_target, 0.3);
		tool_offset.x = lengthdir_x(tool_offset_target, tool_angle);
		tool_offset.y = lengthdir_y(tool_offset_target, tool_angle);
		
		draw_sprite_ext(sMop, 0, x + tool_offset.x, y - tool_height + tool_offset.y, image_xscale, image_yscale, tool_angle, image_blend, image_alpha);	
		break;
	
	case TOOL.VACUUM:
		if(using_tool) {
			tool_offset.x = irandom_range(-1, 1);	
			tool_offset.y = irandom_range(-1, 1);	
		}
		draw_sprite_ext(sVacuum_toob, 0, x + tool_offset.x, y - tool_height + tool_offset.y, image_xscale, image_yscale, tool_angle, image_blend, image_alpha);	
		break;
}