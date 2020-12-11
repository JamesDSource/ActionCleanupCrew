if(!battery_available && image_speed == 0 && instance_number(oBattery) < 5) {
   image_speed = 1;
}

is_interactable = false;
if(instance_exists(oPlayer) && !instance_exists(oPlayer.obj_held) && battery_available) is_interactable = true;