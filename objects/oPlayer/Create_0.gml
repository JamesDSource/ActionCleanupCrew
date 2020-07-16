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


mask_on = true;
mask_time = 4 * room_speed;
mask_timer = mask_time;

body_held = noone;

states = {
	free: player_state_free,
	holding: player_state_holding,
	read: player_state_read
}
state = states.free;

kill_function = function kill_player(death_type) {
	if(mask_on) {
		mask_on = false;
		iframes = 30;
		flash_frames_left = flash_frames;
	}
	else if(iframes == 0){
		kill(death_type);
	}
}

draw_function = function draw_player() {
	draw_depth_object();
	if(mask_on) draw_sprite_ext(sPlayer_mask, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
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
	if(!mask_on && mask_timer > 0) mask_timer--;
	else if(!mask_on) {
		mask_on = true;
		mask_timer = mask_time;
	}
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