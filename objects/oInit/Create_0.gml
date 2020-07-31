#macro VIEWWIDTH 320
#macro VIEWHEIGHT 180
#macro SCREENWIDTH display_get_width()
#macro SCREENHEIGHT display_get_height()
surface_resize(application_surface, SCREENWIDTH, SCREENHEIGHT);
window_set_size(SCREENWIDTH, SCREENHEIGHT);
display_set_gui_size(VIEWWIDTH, VIEWHEIGHT);

instance_create_depth(x, y, 0, oTransitions);
instance_create_depth(x, y, 0, oRender);

audio_falloff_set_model(audio_falloff_exponent_distance);

randomize();
alarm[0] = 1;