enum TOOL {
	NONE,
	MOP,
	VACUUM
}
tools = [TOOL.MOP, TOOL.VACUUM];
tool_index = 0;
tool_using = tools[tool_index];
tool_height = 6;
tool_offset = {
	x: 0,
	y: 0,
	magnitude: 0
}

event_inherited();

spd = 1.7;


helmat_on = true;
helmat_time = 4 * room_speed;
helmat_timer = helmat_time;

body_held = noone;

states = {
	free: player_state_free,
	holding: player_state_holding,
	read: player_state_read
}
state = states.free;

kill_function = function kill_player(death_type) {
	if(helmat_on) {
		helmat_on = false;
		iframes = 30;
		flash_frames_left = flash_frames;
	}
	else if(iframes == 0){
		kill(death_type);
	}
}

draw_function = function draw_player() {
	draw_depth_object();
	if(helmat_on) draw_sprite_ext(sPlayer_helmat, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

function move() {
	var hDir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var vDir = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	if(hDir != 0 || vDir != 0) { 
		var ang = point_direction(0, 0, hDir, vDir);
		hsp = lengthdir_x(spd, ang);
		vsp = lengthdir_y(spd, ang);
		
		image_speed = 1;
	}
	else {
		hsp = 0;
		vsp = 0;
		image_speed = 0;
		image_index = 0;
	}
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
interactable_radius = 20;
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
	
	if(keyboard_check_pressed(vk_space) && instance_exists(selected_interactable)) {
		selected_interactable.interact_method();	
	}
	
	ds_list_destroy(interactable_list);
}

audio_listener_orientation(0, 1, 0, 0, 0, 1);

// read state
dialogues = array_create(0);
function play_lines(lines) {
	dialogues = lines;
	dialogue_index = 0;
	line_index = 1;
	dialogue_type_timer = dialogue_type_time;
	dialogue_ready = false;
	state = states.read;
}
dialogue_box_height = 60;
dialogue_type_time = 2;

iframes = 0;