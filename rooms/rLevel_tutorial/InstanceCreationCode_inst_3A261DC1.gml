trigger_function = function breakables_trigger_function() {
	instance_destroy(oBreakable);
	oPlayer.play_lines(
		global.profiles.loudspeaker,
		[
			"Look at this mess!",
			"For this, you'll definitely need your ACC extreme vacuum for extreme suction.",
			"Good luck."
		]
	);
}