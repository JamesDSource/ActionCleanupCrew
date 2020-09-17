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
	example: [
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Example", [function example_menu_function(){show_debug_message("Yes")}])
	]
};

page = pages.example;
index = 0;
push = 10;
push_progress = 0;