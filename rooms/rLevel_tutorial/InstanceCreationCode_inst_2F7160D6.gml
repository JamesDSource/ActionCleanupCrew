trigger_function = function cloned_trigger() {
	oPlayer.play_lines(
		global.profiles.loudspeaker,
		[
			"Congratulations, you have just escaped the clutches of death.",
			"All thanks to our new cloning machine.",
			"Remember, the cloning machine can only work so many times.",
			"The green lights on the side of the machine indicate how many uses remain."
		]
	);
}