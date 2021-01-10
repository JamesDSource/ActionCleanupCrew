trigger_function = function blood_trigger() {
	oPlayer.play_lines(
		global.profiles.loudspeaker,
		[
			"Do you see the pile of blood ahead?",
			"Fear not, this blood is no match for your ACC combat mop.",
		]
	);
}