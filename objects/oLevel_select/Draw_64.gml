draw_set_color(c_black);
draw_rectangle(x_org, y_org, x_org + w, y_org + h, false);
draw_set_color(c_white);
draw_rectangle(x_org, y_org, x_org + w, y_org + h, true);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x_org + w/2, y_org + 15, levels[level_index].name);

var left_level_index = level_index - 1;
if(left_level_index < 0) left_level_index = array_length(levels)-1;
var right_level_index = level_index + 1;
if(right_level_index >= array_length(levels)) right_level_index = 0;
draw_set_halign(fa_left);
draw_text_transformed(x_org, y_org, levels[left_level_index].name, 0.5, 0.5, 0);
draw_set_halign(fa_right);
draw_text_transformed(x_org + w, y_org, levels[right_level_index].name, 0.5, 0.5, 0);
