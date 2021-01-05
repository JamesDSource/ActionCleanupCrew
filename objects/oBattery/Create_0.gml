event_inherited();

charge = 0;
max_charge = 5;
image_speed = 0;
draw_battery = true;
can_burn = true;

broken = false;
function depleat_charge() {
	var charge_before = charge;
	charge = max(charge -1, 0);	
	if(charge == 0 && charge_before > 0) {
		// break the battery	
		broken = true;
	}
}