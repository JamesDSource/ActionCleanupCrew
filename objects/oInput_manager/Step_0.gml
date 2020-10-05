global.gp_slot = 0;
global.gp_connected = false;
if(global.gamepad) {
	for(var i = 0; i < 9; i++) {
		if(gamepad_is_connected(i)){
			global.gp_slot = i; 
			global.gp_connected = true;
			break;
		}
	}
}