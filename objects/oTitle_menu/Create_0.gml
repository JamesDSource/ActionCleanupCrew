event_inherited();

pages.main = [
	new page_element(PAGEELEMENTTYPE.SCRIPT, "Start Game", [function() {
		if(!global.intro_done) {
			transition_to(rLevel_tutorial);
			global.intro_done = true;
		}
		else transition_to(rHub);
	}]),
	new page_element(PAGEELEMENTTYPE.TRANSFER, "Settings", ["settings"]),
	new page_element(PAGEELEMENTTYPE.SCRIPT, "Quit", [function() {transition_quit();}])
];

page = pages.main;