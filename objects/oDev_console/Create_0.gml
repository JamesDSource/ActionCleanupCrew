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

blood_clear = false;
blood_fill = false;

function evaluate_command(cmd) {
	function invalid_command_error(name) {
		return "Invalid command " + "\"" + name + "\"";
	}
	function arguments_error(name, number) {
		return string(number) + " arguments required for " + "\"" + name + "\"";
	}
	var number_expected_error = "Number expected";
	
	if(string_length(cmd) > 0) {
		var words = string_get_words(cmd);
		for(var i = 0; i < array_length(words); i++) words[i] = string_lower(words[i]);
		switch(words[0]) {
			case "godmode":
				global.godmode = !global.godmode;
				if(global.godmode) return [LOGTYPE.CHANGE, "Godmode activated"];
				else return [LOGTYPE.CHANGE, "Godmode deactivated"];
				break;
			case "blood":
				#region blood
					if(array_length(words) == 2) {
						switch(words[1]) {
							case "clear":
								blood_clear = true;
								return [LOGTYPE.CHANGE, "Blood cleared"];
								break;
							case "fill":
								blood_fill = true;
								return [LOGTYPE.CHANGE, "Blood filled"]
								break;
							default: return [LOGTYPE.ERROR, invalid_command_error(words[1])]; break;
						}
					}
					else return [LOGTYPE.ERROR, arguments_error(words[0], 2)]
				#endregion
				break;
			case "ai":
				#region ai
					if(array_length(words) == 2) {
						switch(words[1]) {
							case "remove":
								with(oEntity) {
									if(object_index != oPlayer) instance_destroy();	
								}
								return [LOGTYPE.CHANGE, "All ai removed"];
								break;
							case "kill":
								with(oEntity) {
									if(object_index != oPlayer) {
										hp = 0;
										kill_function("random");
									}
								}
								return [LOGTYPE.CHANGE, "All ai killed"]
								break;
							default: return [LOGTYPE.ERROR, invalid_command_error(words[1])]; break;
						}
					}
					else return [LOGTYPE.ERROR, arguments_error(words[0], 2)];
				#endregion
				break;
			case "level":
				#region level
					if(array_length(words) == 3) {
						var numb = string_digits(words[2]);
						if(numb != "") numb = real(numb);
						else return [LOGTYPE.ERROR, number_expected_error];
						if(instance_exists(oBattle_manager)) {
							switch(words[1]) {
								case "soldiers":
									oBattle_manager.ideal_soldiers = numb;
									return [LOGTYPE.CHANGE, "Soldiers changed to " + string(numb)];
									break;
								case "time":
									oBattle_manager.frames_left = room_speed * numb;
									return [LOGTYPE.CHANGE, "time changed to " + string(numb) + " minutes"];
									break;
								default: return [LOGTYPE.ERROR, invalid_command_error(words[1])]; break;
							}
						}
						else return [LOGTYPE.ERROR, "Required object does not exists"];
					}
					else return [LOGTYPE.ERROR, arguments_error(words[0], 3)];
				#endregion
				break;
			
			default: return [LOGTYPE.ERROR, invalid_command_error(words[0])]; break;
		}
	}
	else return [LOGTYPE.ERROR, "Pease write something"];
}