enum PAGEELEMENTTYPE {
	SCRIPT,
	TRANSFER,
	TOGGLE,
	SLIDER
}

function page_element(type, name, args) constructor {
	str = name;
	element_name = name;
	element_type = type;
	switch(type) {
		case PAGEELEMENTTYPE.SCRIPT:
			scr = args[0];
			break;
		case PAGEELEMENTTYPE.TRANSFER:
			page = args[0];
			break;
		case PAGEELEMENTTYPE.TOGGLE:
			global_var = args[0];
			break;
		case PAGEELEMENTTYPE.SLIDER:
			global_var = args[0];
			lower_range = args[1];
			upper_range = args[2];
			step = args[3];
			break;
	}
	
	function update() {
		switch(element_type) {
			case PAGEELEMENTTYPE.TOGGLE:
				var variable = variable_global_get(global_var);
				str = element_name + " [";
				if(variable) str += "On]";
				else str += "Off]";
				break;
			case PAGEELEMENTTYPE.SLIDER:
				var variable = variable_global_get(global_var);
				str = element_name + " [" + string(round(((variable - lower_range) * 100) / (upper_range - lower_range))) + "%]";
				break;
		}
		
	}
	update();
}


pages = {
	main: [
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Example", [function example_menu_function(){show_debug_message("Yes")}])
	],
	settings: [
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Audio", ["audio"]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Graphics", ["graphics"]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Gameplay", ["gameplay"]),
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Save Settings", [save_settings]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["main"])
	],
	graphics: [
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Fullscreen", ["fullscreen"]),
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Vsync", ["vsync"]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Brightness", ["brightness", -0.3, 0.3, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Gamma", ["gamma", 0.7, 1.3, 0.05]),
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Grayscale Floor", ["bg_grayscale"]),
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
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Death Indicators", ["death_indicators"]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["settings"])
	]
};

page = pages.main;
index = 0;
push = 10;
push_progress = 0;
show_horizontal_controls =  false;