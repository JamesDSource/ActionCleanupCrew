if(tool_using == TOOL.VACCUM) {
	draw_sprite_ext(sVaccum_pack, 0, x, y - 10, image_xscale, image_yscale, image_angle, image_blend, image_alpha);	
}

draw_self();
if(mask_on) draw_sprite_ext(sPlayer_mask, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

tool_angle = point_direction(x, y - tool_height, mouse_x, mouse_y)
switch(tool_using) {
	case TOOL.MOP:
		var tool_offset_target = 0;
		if(mouse_check_button(mb_left)) {
			surface_set_target(global.liquid_surf);
			gpu_set_blendmode(bm_subtract);
			draw_sprite(sMop_mask, 0, x + lengthdir_x(10, tool_angle), y - tool_height + lengthdir_y(10, tool_angle));
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
			
			tool_offset_target = 4;
		}
		tool_offset.magnitude = approach(tool_offset.magnitude, tool_offset_target, 0.3);
		tool_offset.x = lengthdir_x(tool_offset_target, tool_angle);
		tool_offset.y = lengthdir_y(tool_offset_target, tool_angle);
		
		draw_sprite_ext(sMop, 0, x + tool_offset.x, y - tool_height + tool_offset.y, image_xscale, image_yscale, tool_angle, image_blend, image_alpha);	
		break;
	
	case TOOL.VACCUM:
		if(mouse_check_button(mb_left)) {
			tool_offset.x = irandom_range(-1, 1);	
			tool_offset.y = irandom_range(-1, 1);	
		}
		draw_sprite_ext(sVaccum_toob, 0, x + tool_offset.x, y - tool_height + tool_offset.y, image_xscale, image_yscale, tool_angle, image_blend, image_alpha);	
		break;
}