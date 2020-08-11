if(!global.intro_done) {
	with(oPlayer) {
		x = other.x;
		y = other.y + 10;
		oCamera.x = x;
		oCamera.y = y;
		play_lines(
			"Secretary",
			[
				"You're new here arn't you?",
				"*BEEP*",
				"Well, before you can start working, you need\nto complete some basic training.",
				"Just step over *BOOP* to\nthe right and down the hall.",
				"On the little tablet screen,\nselect your training and enter\nthe drop pod.",
				"*BEEP*"
			]		
		);
	}
	global.intro_done = true;	
	save();
}