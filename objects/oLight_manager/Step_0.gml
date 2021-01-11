if(instance_exists(oGenerator)) {
    global.powered = oGenerator.powered;
}
else global.powered = true;

dark_steps = approach(dark_steps, global.powered ? 3:-1, dark_step_speed);