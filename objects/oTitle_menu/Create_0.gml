event_inherited();

pages = {
	main: [
		["Level Select", function menu_level_select() {page = pages.level_select;}],
		["FS", function menu_toggle_fullscreen() {window_set_fullscreen(!window_get_fullscreen());}],
		["Quit", function menu_quit() {transition_quit();}]
	],
	
	level_select: [
		["Tutorial", function menu_tutorial() {transition_to(rLevel_tutorial);}],
		["Level 1", function menu_level_one() {transition_to(rLevel1);}],
		["Back", function menu_ls_back() {page = pages.main;}]
	]
}

page = pages.main;