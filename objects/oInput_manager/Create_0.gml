enum DEVICE {
	MOUSE,
	KEYBOARD,
	GAMEPAD
}

enum INPUTTYPE {
	PRESSED,
	RELEASED,
	HELD
}

actions = ds_map_create();
function add_action_input(action, input_device, input_id){
	if(!is_undefined(actions[? action])) {
		ds_list_add(actions[? action], {
			device: input_device,	
			key_id: input_id	
		});
	}
}
function add_action(action_name){
	var action_input_list = ds_list_create();
	ds_map_add_list(actions, action_name, action_input_list);
	return action_name;
}

// up action
up_action = add_action("up");
add_action_input(up_action, DEVICE.KEYBOARD, ord("W"));
add_action_input(up_action, DEVICE.KEYBOARD, vk_up);
// down action
down_action = add_action("down");
add_action_input(down_action, DEVICE.KEYBOARD,  ord("S"));
add_action_input(down_action, DEVICE.KEYBOARD,  vk_down);
// left action
left_action = add_action("left");
add_action_input(left_action, DEVICE.KEYBOARD,  ord("A"));
add_action_input(left_action, DEVICE.KEYBOARD,  vk_left);
// right action
right_action = add_action("right");
add_action_input(right_action, DEVICE.KEYBOARD, ord("D"));
add_action_input(right_action, DEVICE.KEYBOARD, vk_right);
// select
select_action = add_action("select");
add_action_input(select_action, DEVICE.KEYBOARD, vk_space);
// pause
pause_action = add_action("pause");
add_action_input(pause_action, DEVICE.KEYBOARD, vk_escape);