trigger_function = function breakables_trigger_function() {
	instance_destroy(oBreakable);
	oPlayer.play_lines(
		"Loudspeaker",
		[
			"Look at this mess!",
			"For this, you'll definetly need your\nACC extreme vacuume for extreme suction.",
			"Good luck."
		]
	);
}