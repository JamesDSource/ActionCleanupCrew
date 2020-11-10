trigger_function = function end_tutorial_trigger() {
	if(global.level_lock == 0) global.level_lock = 1;
	save();
	transition_to(rHub);
}