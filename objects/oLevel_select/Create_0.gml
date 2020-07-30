dw = display_get_gui_width();
dh = display_get_gui_height();
w = dw/1.5;
h = dh/1.5;
x_org = dw/2 - w/2;
y_org = dh/2 - h/2;

function level(level_room, level_name) constructor {
	name = level_name;
	room_index = level_room;
}

levels = [
	new level(rLevel_tutorial, "Tutorial"),
	new level(rLevel1, "Warehouse"),
	new level(rLevel2, "Office")
]

level_index = 0;