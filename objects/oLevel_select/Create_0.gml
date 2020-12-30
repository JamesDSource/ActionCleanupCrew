t = 0;
dw = display_get_gui_width();
dh = display_get_gui_height();
border_w = 12;
w = dw - border_w*2;
h = dh/1.2 - border_w*2;
current_w = 1;
x_org = dw/2 - w/2;
y_org = dh/2 - h/2;

level_index = 0;
level_index_left = -1;
level_index_right = 1;

show_state_max = 3;
show_state = 0;
show_state_time = 0.1 * room_speed;
show_state_timer = show_state_time;

for(var i = 0; i < array_length(global.levels); i++) {
	if(global.level_target == global.levels[i]) {
		level_index = i;
		break;	
	}
}

pos_spd = 12;
scale_spd = 0.05;

init = false;

progress = 0;

locked = false;

scan_lines_odd = false;

flickers_min = 2;
flickers_max = 3;
flickers_remaining = irandom_range(flickers_min, flickers_max);
flicker_dim = false;
flickering = false;
flicker_time = 1.5 * room_speed;
flicker_timer = flicker_time;

audio_play_sound(sdLevel_select_open, SOUNDPRIORITY.MENUS, false);