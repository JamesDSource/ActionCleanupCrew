enum TRANSITIONMODE {
	NONE,
	INTRO,
	EXIT,
	GOTO
}

transition_surf = -1;
global.transition_percent = 1;
mode = TRANSITIONMODE.INTRO;
transition_speed = 0.02;
target = noone;

u_circle_distance = shader_get_uniform(shCircle_transition, "circle_distance");
u_fill = shader_get_uniform(shCircle_transition, "fill");
u_size = shader_get_uniform(shCircle_transition, "size");
u_inverse = shader_get_uniform(shCircle_transition, "inverse");

u_outline_color = shader_get_uniform(shOutline, "outline_color");
u_texel_size = shader_get_uniform(shOutline, "texel_size");
u_uv_boundries = shader_get_uniform(shOutline, "uv_boundries");