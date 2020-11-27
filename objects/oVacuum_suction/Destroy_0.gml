var ps = part_system_create();
var emitter = part_emitter_create(ps)
part_emitter_region(ps, emitter, bbox_left, bbox_right, bbox_top, bbox_bottom, ps_shape_rectangle, ps_distr_gaussian);

var air = part_type_create();
part_type_life(air, 10, 20);
part_type_shape(air, pt_shape_pixel);
part_type_alpha3(air, image_alpha, image_alpha, 0);
part_type_direction(air, image_angle - 60, image_angle + 60, 0, 0);
part_type_speed(air, 1, 3, 0, 0);

part_emitter_burst(ps, emitter, air, 55);
part_emitter_destroy(ps, emitter);
