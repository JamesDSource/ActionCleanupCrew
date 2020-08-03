trigger_function = function tut_out() {
	transition_to(rHub);
}

if(global.level_lock == 0) global.level_lock++;
save();