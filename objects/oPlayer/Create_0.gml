enum TOOL {
	NONE,
	MOP,
	VACUUM
}
tools = [TOOL.MOP, TOOL.VACUUM];
tool_index = 0;
tool_using = tools[tool_index];
tool_height = 18;
tool_offset = {
	x: 0,
	y: 0,
	magnitude: 0
}
tool_angle = 0;

mop_using = false;
using_tool = false;
vacuum_pitch_volume = 1.0;

event_inherited();

spd = 3;

light = noone;

helmat_on = true;
helmat_time = 4 * room_speed;
helmat_timer = helmat_time;

obj_held = noone;

states = {
	free: player_state_free,
	holding: player_state_holding,
	read: player_state_read
}
state = states.free;

kill_function = function kill_player(death_type) {
	if(!global.godmode && iframes == 0) {
		screen_shake(3, 5);
		audio_play_sound(sdPlayer_hurt, SOUNDPRIORITY.IMPORTANT, false);
		if(helmat_on) {
			helmat_on = false;
			iframes = 30;
			flash_frames_left = flash_frames;
		}
		else {
			kill(death_type);
		}
	}
}

draw_function = function draw_player() {
	draw_depth_object();
	// Choosing helmat sprites
	if(helmat_on) {
		var helmat_spr = noone;
		switch(sprite_index) {
			case sPlayer_idle:
				helmat_spr = sPlayer_idle_helmat;
				break;
			case sPlayer_run:
				helmat_spr = sPlayer_run_helmat;
				break;
		}
		draw_sprite_ext(helmat_spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
	
	// Choosing hand sprites
	if(tool_using == TOOL.NONE) {
		var hands_spr = noone;
		
		if(state == states.holding) hands_spr = sPlayer_holding_hands;
		else {
			switch(sprite_index) {
				case sPlayer_idle:
					hands_spr = sPlayer_idle_hands;
					break;
				case sPlayer_run:
					hands_spr = sPlayer_run_hands;
					break;
			}
		}
		draw_sprite_ext(hands_spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}

horizontal_movement = 0;
verticle_movement = 0;
function move() {
	var is_moveing = false;
	var ang = 0;
	if(global.gp_connected) {
		var axis_h = gamepad_axis_value(global.gp_slot, gp_axislh);
		var axis_v = gamepad_axis_value(global.gp_slot, gp_axislv);
		if(max(abs(axis_h), abs(axis_v)) > GPDEADZONE) {
			ang = point_direction(0, 0, axis_h, axis_v);
			is_moveing = true;	
		}
	}
	else {
		var hDir = check_action("right", INPUTTYPE.HELD) - check_action("left", INPUTTYPE.HELD);
		var vDir = check_action("down", INPUTTYPE.HELD) - check_action("up", INPUTTYPE.HELD);
		ang = point_direction(0, 0, hDir, vDir);
		if(hDir != 0 || vDir != 0) {
			is_moveing = true;
		}
	}
	var acceleration = 0.2;
	
	// Control movement
	if(is_moveing) { 
		horizontal_movement = approach(horizontal_movement, lengthdir_x(spd, ang), acceleration);
		verticle_movement = approach(verticle_movement, lengthdir_y(spd, ang), acceleration);
		
		sprite_index = sPlayer_run; 
		if(horizontal_movement != 0) image_xscale = sign(horizontal_movement);
	}
	else {
		sprite_index = sPlayer_idle;
		horizontal_movement = 0;
		verticle_movement = 0;
	}
	
	// Belts
	var horizontal_belt_movement = 0, verticle_belt_movement = 0;
	if(layer_exists("Belts")) {
		var belts_layer = layer_get_id("Belts");
		var belts_tilemap = layer_tilemap_get_id(belts_layer);
		var belt_points_check = [
			[bbox_left, bbox_top],
			[bbox_left, bbox_bottom],
			[bbox_right, bbox_top],
			[bbox_right, bbox_bottom]
		];
		var belts_cell = -1;
		for(var i = 0; i < array_length(belt_points_check); i++) {
			var c = tilemap_get_cell_x_at_pixel(belts_tilemap, belt_points_check[i][0], belt_points_check[i][1]);
			var r = tilemap_get_cell_y_at_pixel(belts_tilemap, belt_points_check[i][0], belt_points_check[i][1]);
			var belts_cell_temp = tilemap_get(belts_tilemap, c, r);
			if(belts_cell < belts_cell_temp) belts_cell = belts_cell_temp;
		}
		if(belts_cell > 0) {
			var belt_direction_index = ceil(belts_cell/8);
			var belt_spd = 1;
			switch(belt_direction_index) {
				case 1: verticle_belt_movement = -belt_spd; break;
				case 2: horizontal_belt_movement = belt_spd; break;
				case 3: verticle_belt_movement = belt_spd; break;
				case 4: horizontal_belt_movement = -belt_spd; break;
			}
		}
	}
	hsp = horizontal_movement + horizontal_belt_movement;
	vsp = verticle_movement + verticle_belt_movement;
}

function recharge_mask() {
	// mask recharge
	if(!helmat_on && helmat_timer > 0) helmat_timer--;
	else if(!helmat_on) {
		helmat_on = true;
		helmat_timer = helmat_time;
	}
}

selected_interactable = noone;
interactable_radius = 35;
function interactables() {
	selected_interactable = noone;
	var interactable_list = ds_list_create();
	var num = collision_circle_list(x, y, interactable_radius, oDepth_object, false, true, interactable_list, true);
	for(var i = 0; i < num; i++) {
		if(interactable_list[| i].is_interactable) {
			selected_interactable = interactable_list[| i];
			break;
		}
	}
	
	if(check_action("select", INPUTTYPE.PRESSED) && instance_exists(selected_interactable)) {
		selected_interactable.interact_method();	
	}
	
	ds_list_destroy(interactable_list);
}

audio_listener_orientation(0, 1, 0, 0, 0, 1);

// read state
dialogues = array_create(0);
function play_lines(speaker_profile, lines) {
	draw_set_font(fHUD);
	dialogues = [];
	for(var i = 0 ; i < array_length(lines); i++) {
		dialogues[i] = string_resize(lines[i], display_get_gui_width()*(2/3));	
	}
	
	dialogue_speaker = speaker_profile.name;
	dialogue_portrait = speaker_profile.portriat;
	dialogue_sound = speaker_profile.sound;
	dialogue_index = 0;
	line_index = 1;
	dialogue_type_timer = dialogue_type_time;
	dialogue_ready = false;
	state = states.read;
}
dialogue_box_height = 60;
dialogue_type_time = 2;

iframes = room_speed;