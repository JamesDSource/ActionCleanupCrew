var margin = 10;
var str = "Time Left: " + string(round(frames_left/room_speed));

draw_set_color(c_white);
draw_set_font(fHUD);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

draw_text(display_get_gui_width() - margin, display_get_gui_height() - margin, str);