enum TRANSITIONMODE {
	NONE,
	INTRO,
	EXIT,
	GOTO
}

global.transition_percent = 1;
mode = TRANSITIONMODE.INTRO;
transition_speed = 0.02;
target = noone;