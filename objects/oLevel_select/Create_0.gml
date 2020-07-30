surf = -1;
dw = display_get_gui_width();
dh = display_get_gui_height();
w = dw;
h = dh/1.5;
x_org = dw/2 - w/2;
y_org = dh/2 - h/2;

function level(level_room, level_name) constructor {
	name = level_name;
	room_index = level_room;
	x_pos = 0;
	y_pos = 0;
	scale = 0;
}

levels = [
	new level(rLevel_tutorial, "Tutorial"),
	new level(rLevel1, "Warehouse"),
	new level(rLevel2, "Office")
]

level_index = 0;
level_index_left = -1;
level_index_right = 1;

pos_spd = 10;
scale_spd = 0.1;

init = false;
