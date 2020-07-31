trigger_function = function tut_bodies() {
	var lines = [
		"There are two dead bodies in front of you.",
		"To dispose of them, you must use\nthe ACC Incinerator.",
		"Press SPACE on a dead body to pick it up.",
		"Then press SPACE again to put it down\nor place it in an ACC Incinerator.",
		"The Incinerator can only hold one body at a time."
	]
	
	oPlayer.play_lines("Loud Speaker", lines);
}