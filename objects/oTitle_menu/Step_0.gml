event_inherited();

var str_is_fullscreen = "Fullscreen "
if(window_get_fullscreen()) str_is_fullscreen += "(On)";
else str_is_fullscreen += "(Off)";

pages.main[1][0] = str_is_fullscreen;