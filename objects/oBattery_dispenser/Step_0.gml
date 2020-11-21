if(!battery_available && image_speed == 0 &&instance_exists(oBattery)) {
    var no_available_batteries = true;
    with(oBattery) {
        if(!broken) no_available_batteries = false;
    }
    if(no_available_batteries) image_speed = 1;
}

is_interactable = false;
if(instance_exists(oPlayer) && !instance_exists(oPlayer.obj_held) && battery_available) is_interactable = true;