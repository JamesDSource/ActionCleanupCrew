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

randomize();
alarm[0] = 1;