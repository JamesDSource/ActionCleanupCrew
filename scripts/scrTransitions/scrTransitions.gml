function transition_to(target_room) {
	if(instance_exists(oTransitions)) {
		with(oTransitions) {
			mode = TRANSITIONMODE.GOTO;
			target = target_room;
		}
	}
}

function transition_quit() {
	if(instance_exists(oTransitions)) {
		oTransitions.mode = TRANSITIONMODE.EXIT;	
	}
}