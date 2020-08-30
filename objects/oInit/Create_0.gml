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
global.hud = true;

// Demo
#macro DEMO false
#macro Demo:DEMO true

// levels
function level(level_room, level_name, level_description) constructor {
	name = level_name;
	room_index = level_room;
	desc = level_description;
	x_pos = 0;
	y_pos = 0;
	scale = 0;
}

global.levels = [
	new level(
		rLevel_tutorial, 
		"Tutorial",
		string_create_paragraph(
			"Please make way to",
			"the training room",
			"and show us that",
			"you are ready to be",
			"an Action Cleanup Crew", 
			"janitor!"
		)
	),
	
	new level(
		rWarehouse1, 
		"First Encounter",
		string_create_paragraph(
			"We hope you are as",
			"excited as we are for",
			"your first mission!",
			"We heard word that there",
			"might be some disturbances,",
			"but don't worry about it."
		
		)
	),
];

randomize();
alarm[0] = 1;