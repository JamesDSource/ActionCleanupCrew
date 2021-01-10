if(floor(dark_steps) < 3) {
    if(!surface_exists(light_surface)) light_surface = surface_create(light_surface_width, light_surface_height);
    
    surface_set_target(light_surface);
    draw_set_color(floor(dark_steps) >= 0 ? ranges[floor(dark_steps)] : $000000);
    draw_rectangle(0, 0, light_surface_width, light_surface_height, false);
    
    // Getting the positions of all the lights
    var light_positions = [];
    if(instance_exists(oLight)) {
        with(oLight) {
            array_push(light_positions, 
                {
                    x: x,
                    y: y
                }
            );
        }
    }
    
    // Loop through each light and draw their ranges
    var radius = base_radius, deteriation = 0.7;
    for(var i = 0; i < array_length(ranges); i++) {
        if(i > dark_steps) {
            draw_set_color(ranges[i]);
            for(var j = 0; j < array_length(light_positions); j++) {
                draw_circle(light_positions[j].x, light_positions[j].y, radius, false);
            }
        }
        radius*=deteriation;
    }
    
    surface_reset_target();
    
    shader_set(shLight);
    shader_set_uniform_f(u_dark_color, 16/255, 16/255, 28/255);
    draw_surface(light_surface, 0, 0);
    shader_reset();
}