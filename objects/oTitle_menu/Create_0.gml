event_inherited();

pages = {
	main: [
		["Level Select", function menu_level_select() {page = pages.level_select;}],
		["FS", function menu_toggle_fullscreen() {window_set_fullscreen(!window_get_fullscreen());}],
		["Quit", function menu_quit() {transition_quit();}]
	],
	
	level_select: [
		["Test", function menu_level_test() {transition_to(rTest);}],
		["Back", function menu_ls_back() {page = pages.main;}]
	]
}

page = pages.main;