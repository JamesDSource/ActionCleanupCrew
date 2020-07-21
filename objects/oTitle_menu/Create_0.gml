event_inherited();

pages = {
	main: [
		["Start Game", function menu_start() {transition_to(rHub);}],
		["FS", function menu_toggle_fullscreen() {window_set_fullscreen(!window_get_fullscreen());}],
		["Quit", function menu_quit() {transition_quit();}]
	],
}

page = pages.main;