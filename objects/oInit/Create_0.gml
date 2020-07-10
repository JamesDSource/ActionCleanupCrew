#macro VIEWWIDTH 1920/6
#macro VIEWHEIGHT 1080/6
#macro SCREENWIDTH 1920
#macro SCREENHEIGHT 1080
surface_resize(application_surface, SCREENWIDTH, SCREENHEIGHT);
window_set_size(SCREENWIDTH, SCREENHEIGHT);

randomize();


// go to the first room of the game
room_goto_next();