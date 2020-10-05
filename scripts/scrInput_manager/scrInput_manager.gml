function check_action(action, type) {
	// checks the input struct to see if that input is happening
	function check_input(input, type) {
		switch(input.device) {
			case DEVICE.MOUSE:
				switch(type) {
					case INPUTTYPE.PRESSED:
						return mouse_check_button_pressed(input.key_id);
					case INPUTTYPE.RELEASED:
						return mouse_check_button_released(input.key_id);
					case INPUTTYPE.HELD:
						return mouse_check_button(input.key_id);
				}
				break;
			case DEVICE.KEYBOARD:
				switch(type) {
					case INPUTTYPE.PRESSED:
						return keyboard_check_pressed(input.key_id);
					case INPUTTYPE.RELEASED:
						return keyboard_check_released(input.key_id);
					case INPUTTYPE.HELD:
						return keyboard_check(input.key_id);
				}
				break;
			case DEVICE.GAMEPAD:
				switch(type) {
					case INPUTTYPE.PRESSED:
						return gamepad_button_check_pressed(global.gp_slot, input.key_id);
					case INPUTTYPE.RELEASED:
						return gamepad_button_check_released(global.gp_slot, input.key_id);
					case INPUTTYPE.HELD:
						return gamepad_button_check(global.gp_slot, input.key_id);
				}
				break;
		}
	}
	
	// loops through all the inputs for the actions and returns true
	// if any of them are true
	if(instance_exists(oInput_manager)) {
		with(oInput_manager) {
			var action_inputs = actions[? action];
			if(!is_undefined(action_inputs)) {
				var is_action = false;
				for(var i = 0; i < ds_list_size(action_inputs); i++) {
					is_action = check_input(action_inputs[| i], type) || is_action;
				}
				return is_action;
			}
		}
	}
	return false;
}