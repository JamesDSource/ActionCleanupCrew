trigger_function = function welcome_trigger() {
	oPlayer.play_lines(
		global.profiles.loudspeaker,
		[
			"Welcome newcomer.",
			"Today we will be completing your ACC janitor training course.",
			"Please proceed."
		]
	);
}