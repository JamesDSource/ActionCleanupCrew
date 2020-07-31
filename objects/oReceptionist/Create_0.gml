event_inherited();

move_point.x = xstart;
move_point.y = ystart;


rand_dialogue = [
	["Get back to work."],
	["So much paperwork..."],
	["You think you can work overtime today?"],
	["How're the kids?\nDo you have kids?"],
	["Just go down the hall\nfor your next assignment."],
	["The shop on our right should\nhave something good for you."],
	["Keep up the good work."]
]



init_interactable(
	function receptionist_action() {
		var rand_index = irandom_range(0, array_length(rand_dialogue) - 1);
		if(instance_exists(oPlayer)) oPlayer.play_lines("Secretary", rand_dialogue[rand_index]);
	}

);