if(live_call()) return live_result;

if(!helmat_on && global.hud || true) {
	
	var margin = 10;
	var progress = 1 -(helmat_timer/helmat_time);
	var cutoff_angle = 90 - progress*360;
	if(cutoff_angle < 0) cutoff_angle = 360 - abs(cutoff_angle);
	shader_set(shRotational_fill);
	var u_start_angle = shader_get_uniform(shRotational_fill, "start_angle");
	var u_end_angle = shader_get_uniform(shRotational_fill, "end_angle");
	var u_axis_point = shader_get_uniform(shRotational_fill, "axis_point");
	shader_set_uniform_f(u_start_angle, cutoff_angle);
	shader_set_uniform_f(u_end_angle, 90);
	shader_set_uniform_f_array(u_axis_point, [margin + 8, margin + 8]);
	draw_sprite(sPlayer_helmat_icon, 0, margin, margin);
	shader_reset();
}

var draw_ang = radtodeg(arctan2(mouse_y - y, mouse_x - x));
if(draw_ang < 0) draw_ang *= -1;
else draw_ang = 180 + (180 - draw_ang);
draw_text(30, 30, draw_ang);
var ang_1 = 180;
var ang_2 = 90;

ang_2 -= ang_1;
draw_ang -= ang_1;
ang_1 = 0;

if(draw_ang < 0) draw_ang += 360;
if(ang_2 < 0) ang_2 += 360;

var in_range = draw_ang >= ang_2;	
draw_text(30, 50, in_range);

// dialogue box
if(state == states.read) {
	var border = 2;
	
	draw_set_font(fHUD);
	draw_set_halign(fa_left);	
	draw_set_valign(fa_top);	
	draw_set_color(c_white);
	
	draw_rectangle_border(0, display_get_gui_height() - dialogue_box_height, display_get_gui_width(), dialogue_box_height, border, c_black, c_white);
	
	var str_whole = dialogues[dialogue_index];
	var str_cut = string_copy(str_whole, 1, line_index);
	
	var str_draw_x = display_get_gui_width()/2 - string_width(str_whole)/2;
	var str_draw_y = display_get_gui_height() - dialogue_box_height/2 - string_height(str_whole)/2;
	draw_text(str_draw_x, str_draw_y, str_cut);
	
	var speaker_padding = 3;
	draw_rectangle_border(0, 0, display_get_gui_width(), string_height(dialogue_speaker) + (border + speaker_padding)*2, border, c_black, c_white);
	draw_text(border + speaker_padding, border + speaker_padding, dialogue_speaker);
}