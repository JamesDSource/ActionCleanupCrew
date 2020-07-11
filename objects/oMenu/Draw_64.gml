var page_height = 0;
var margin = 5;

draw_set_font(fMenu);
for(var i = 0; i < array_length(page); i++) {
	page_height += margin + string_height(page[i][0]); 	
}

var draw_y = display_get_gui_height()/2 - page_height/2;
for(var i = 0; i < array_length(page); i++) {
	if(i == index) draw_set_color(c_yellow);
	else draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	draw_text(margin, draw_y, page[i][0]);
	draw_y += margin + string_height(page[i][0]);
}