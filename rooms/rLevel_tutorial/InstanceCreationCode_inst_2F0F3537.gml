trigger_function = function incin_body_trigger() {
	oPlayer.play_lines(
		global.profiles.loudspeaker,
		[
			"For larger pieces of debris, you must make use of our ACC incinerators.",
			"Please clean up these bodies using them."
		]
	);
}