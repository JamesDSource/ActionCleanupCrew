#macro VIEWWIDTH 320
#macro VIEWHEIGHT 180
#macro SCREENWIDTH 1920
#macro SCREENHEIGHT 1080
surface_resize(application_surface, SCREENWIDTH, SCREENHEIGHT);
window_set_size(SCREENWIDTH, SCREENHEIGHT);

instance_create_depth(x, y, 0, oDepth);

randomize();


// go to the first room of the game
room_goto_next();