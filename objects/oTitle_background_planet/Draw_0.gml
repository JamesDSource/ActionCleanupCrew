shader_set(shBackground_planet_shading);
var u_bottom_left = shader_get_uniform(shBackground_planet_shading, "bottom_left");
shader_set_uniform_f(u_bottom_left, x - sprite_xoffset, y - sprite_yoffset + sprite_height);
var u_top_right = shader_get_uniform(shBackground_planet_shading, "top_right");
shader_set_uniform_f(u_top_right, x - sprite_xoffset + sprite_width, y - sprite_yoffset);
draw_self();
shader_reset();