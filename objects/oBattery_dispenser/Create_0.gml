event_inherited();
image_speed = 0;
image_index = 0;

battery_available = false;

init_interactable(
    function() {
        var new_battery = instance_create_layer(x, y, "Instances", oBattery);
        oPlayer.obj_held = new_battery;
        battery_available = false;
        image_index = 0;
    }
)