dw = display_get_gui_width();
dh = display_get_gui_height();
border_w = 6;
w = dw - border_w*2;
h = dh/1.2 - border_w*2;
current_w = 1;
x_org = dw/2 - w/2;
y_org = dh/2 - h/2;

level_index = 0;
level_index_left = -1;
level_index_right = 1;

for(var i = 0; i < array_length(global.levels); i++) {
	if(global.level_target == global.levels[i]) {
		level_index = i;
		break;	
	}
}

pos_spd = 6;
scale_spd = 0.025;

init = false;

progress = 0;

locked = false;

audio_play_sound(sdLevel_select_open, SOUNDPRIORITY.MENUS, false);