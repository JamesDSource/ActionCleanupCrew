event_inherited();

init_interactable(
	function action_body() {
		if(instance_exists(oPlayer)) {
			with(oPlayer) {
				if(!instance_exists(obj_held)) obj_held = other.id; 	
			}
		}
	}
)

being_held = false;