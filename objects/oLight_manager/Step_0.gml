if(instance_exists(oGenerator)) {
    global.powered = oGenerator.powered;
}
else global.powered = true;

dark_steps = approach(dark_steps, global.powered ? 3:-1, dark_step_speed);


if(mouse_wheel_up()) {
    base_radius += 10;
}
else if(mouse_wheel_down()) {
    base_radius -= 10;
}