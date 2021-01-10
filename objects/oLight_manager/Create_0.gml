global.powered = true;

light_surface = -1;
light_surface_width = room_width;
light_surface_height = room_height;

base_radius = 64;

// Uniforms
u_dark_color = shader_get_uniform(shLight, "dark_color");
ranges = [make_color_rgb(255, 0, 0), make_color_rgb(0, 255, 0), make_color_rgb(0, 0, 255)];
dark_steps = 3;
dark_step_speed = 0.1;