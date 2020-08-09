// Screen and view sizes
#macro VIEWWIDTH 320
#macro VIEWHEIGHT 180
#macro SCREENWIDTH display_get_width()
#macro SCREENHEIGHT display_get_height()
surface_resize(application_surface, SCREENWIDTH, SCREENHEIGHT);
window_set_size(SCREENWIDTH, SCREENHEIGHT);
display_set_gui_size(VIEWWIDTH, VIEWHEIGHT);


// Persistant objects
instance_create_depth(x, y, 0, oTransitions);
instance_create_depth(x, y, 0, oRender);
instance_create_depth(x, y, 0, oDev_console);


// Audio
audio_falloff_set_model(audio_falloff_exponent_distance);


// Dev mode
#macro DEVBUILD false
#macro Dev:DEVBUILD true
global.godmode = false;

// Demo
#macro DEMO false
#macro Demo:DEMO true

// levels
function level(level_room, level_name) constructor {
	name = level_name;
	room_index = level_room;
	x_pos = 0;
	y_pos = 0;
	scale = 0;
}

global.levels = [
	new level(rLevel_tutorial, "Tutorial"),
	new level(rWarehouse1, "First Encounter"),
	new level(rLevel1_jam, "Game Jam Level 1"),
	new level(rLevel2_jam, "Game Jam Level 2")
];

randomize();
alarm[0] = 1;