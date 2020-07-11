if(mode != TRANSITIONMODE.NONE) {
	var transition_target;
	switch(mode) {
		case TRANSITIONMODE.INTRO:
			transition_target = 0;
			if(global.transition_percent == 0) mode = TRANSITIONMODE.NONE;
			break;
		
		case TRANSITIONMODE.GOTO:
			transition_target = 1;
			if(global.transition_percent == 1) {
				mode = TRANSITIONMODE.INTRO;
				if(room_exists(target)) room_goto(target);
			}
			break;
		
		case TRANSITIONMODE.EXIT:
			transition_target = 1;
			if(global.transition_percent == 1) game_end();
			break;
	}
	
	global.transition_percent = approach(global.transition_percent, transition_target, transition_speed);
}