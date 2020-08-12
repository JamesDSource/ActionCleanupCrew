event_inherited();

if(hsp == 0 && vsp == 0) {
	image_speed = 0;
	image_index = 0;	
}
else image_speed = 1;

if(hp_regen_timer > 0) hp_regen_timer--;
else {
	hp = clamp(hp + 1, 0, max_hp);
	hp_regen_timer = hp_regen_time;
}