event_inherited();

pages = {
	select: [
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Start Game", [function() {
			if(!global.intro_done) {
				transition_to(rLevel_tutorial);
				global.intro_done = true;
			}
			else transition_to(rHub);
		}]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Settings", ["settings"]),
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Quit", [function() {transition_quit();}])
	],
	
	settings: [
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Audio", ["audio"]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Graphics", ["graphics"]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Gameplay", ["gameplay"]),
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Save Settings", [save_settings]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["select"])
	],
	
	graphics: [
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Fullscreen", ["fullscreen"]),
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Vsync", ["vsync"]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Brightness", ["brightness", -0.3, 0.3, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Gamma", ["gamma", 0.7, 1.3, 0.05]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["settings"])
	],
	
	audio: [
		new page_element(PAGEELEMENTTYPE.SLIDER, "Master", ["master_audio", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Music", ["music_audio", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Death Screams", ["screams_audio", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Weapons", ["weapons_audio", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["settings"])
	],
	
	gameplay: [
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Use Gamepad", ["gamepad"]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Screen Shake", ["screenshake", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Toggle Tool Useage", ["toggle_tool_use"]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["settings"])
	]
}

page = pages.select;