// Screen and view sizes
#macro VIEWWIDTH 640
#macro VIEWHEIGHT 360
#macro SCREENWIDTH display_get_width()
#macro SCREENHEIGHT display_get_height()
surface_resize(application_surface, VIEWWIDTH, VIEWHEIGHT);
window_set_size(SCREENWIDTH, SCREENHEIGHT);
display_set_gui_size(VIEWWIDTH, VIEWHEIGHT);

// UI
#macro UIDARKCOL $312c1e
#macro UILIGHTCOL $e0f6e8

// Persistant objects
instance_create_depth(x, y, 0, oTransitions);
instance_create_depth(x, y, 0, oRender);
instance_create_depth(x, y, 0, oDev_console);
instance_create_depth(x, y, 0, oAudio_manager);
instance_create_depth(x, y, 0, oInput_manager);

// Audio
audio_falloff_set_model(audio_falloff_exponent_distance);

// Settings
load_settings();

// Dev mode
#macro DEVBUILD false
#macro Dev:DEVBUILD true
global.godmode = false;
global.hud = true;

// Demo
#macro DEMO false
#macro Demo:DEMO true
global.demo_level_limit = 3;

// controls
#macro GPDEADZONE 0.15

// levels
function level(level_room, level_name, level_description) constructor {
	name = level_name;
	room_index = level_room;
	desc = level_description;
	x_pos = 0;
	y_pos = 0;
	scale = 0;
	alpha = 1;
}

global.levels = [
	new level(
		rLevel_tutorial, 
		"Tutorial"
	),
	
	new level(
		rWarehouse1, 
		"First Encounter"
	),
	
	new level(
		rWarehouse2, 
		"Belting Around"
	),
	
	new level(
		rWarehouse3, 
		"Workplace Arena"
	)
];

randomize();
alarm[0] = 1;