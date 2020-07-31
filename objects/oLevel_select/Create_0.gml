dw = display_get_gui_width();
dh = display_get_gui_height();
w = dw;
h = dh/1.2;
current_w = 1;
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
	new level(rWarehouse1, "First Encounter"),
	new level(rLevel1_jam, "Game Jam Level 1"),
	new level(rLevel2_jam, "Game Jam Level 2")
]

level_index = 0;
level_index_left = -1;
level_index_right = 1;

pos_spd = 5;
scale_spd = 0.05;

init = false;

progress = 0;

locked = false;