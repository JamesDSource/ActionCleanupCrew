dw = display_get_gui_width();
dh = display_get_gui_height();
w = dw;
h = dh/1.2;
current_w = 1;
x_org = dw/2 - w/2;
y_org = dh/2 - h/2;

level_index = 0;
level_index_left = -1;
level_index_right = 1;
level_limiter = 0;

pos_spd = 5;
scale_spd = 0.05;

init = false;

progress = 0;

locked = false;

audio_play_sound(sdLevel_select_open, SOUNDPRIORITY.MENUS, false);