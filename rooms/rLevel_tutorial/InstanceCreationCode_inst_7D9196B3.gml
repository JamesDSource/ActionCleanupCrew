trigger_function = function congradulations_trigger() {
	oPlayer.play_lines(
		global.profiles.loudspeaker,
		[
			"Good job on completing the ACC janitor training course.",
			"Through this door is your bright future with our company!"
		]
	);
}