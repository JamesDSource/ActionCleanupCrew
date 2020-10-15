event_inherited();

charge = 0;
max_charge = 5;
image_speed = 0;
draw_battery = true;

broken = false;
function depleat_charge() {
	charge = max(charge -1, 0);	
	if(charge == 0) {
		// break the battery	
		broken = true;
	}
}