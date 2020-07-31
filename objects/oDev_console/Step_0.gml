if(DEVBUILD && keyboard_check_pressed(vk_f4)) open = !open;
if(variable_global_exists("pause") && global.pause) open = false;

if(open) {
	if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_down)) {
		ds_list_add(log, [LOGTYPE.CMD, input_string]);
		ds_list_add(log, evaluate_command(input_string));
		last_input = input_string;
		input_string = "";
	}
	else if(keyboard_check_pressed(vk_backspace)) {
		var input_string_length = string_length(input_string);
		if(input_string_length > 0) input_string = string_copy(input_string, 1, input_string_length - 1);
	}
	else if(keyboard_check_pressed(vk_up)) input_string = last_input;
	else if(keyboard_check_pressed(vk_anykey)) {
		var invalid_inputs = [
			vk_f4,
			vk_shift,
			vk_escape
		]
		var valid = true;
		for(var i = 0; i < array_length(invalid_inputs); i++) if(keyboard_check_pressed(invalid_inputs[i])) valid = false;
		if(valid) input_string += keyboard_lastchar;
	}

	if(pipe_flash_timer > 0) pipe_flash_timer--;
	else {
		pipe_flash = !pipe_flash;
		pipe_flash_timer = pipe_flash_time;	
	}
}