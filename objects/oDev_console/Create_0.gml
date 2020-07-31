enum LOGTYPE {
	CMD,
	ERROR,
	CHANGE
}

open = false;
log = ds_list_create();
height = display_get_gui_height()/2;
input_string = "";
last_input = "";

pipe_flash = true;
pipe_flash_time = 25;
pipe_flash_timer = pipe_flash_time;

function evaluate_command(cmd) {
	if(string_length(cmd) > 0) {
		var words = string_get_words(cmd);
		for(var i = 0; i < array_length(words); i++) words[i] = string_lower(words[i]);
		switch(words[0]) {
			case "godmode":
				global.godmode = !global.godmode;
				if(global.godmode) return [LOGTYPE.CHANGE, "godmode activated"];
				else return [LOGTYPE.CHANGE, "godmode deactivated"];
				break;
			
			default: return [LOGTYPE.ERROR, "Invalid command " + "\"" + words[0] + "\""]; break;
		}
	}
	else return [LOGTYPE.ERROR, "Pease write something"];
}