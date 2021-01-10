if(instance_exists(follow)) {
    x = follow.x + offset_x;
    y = follow.y + offset_y;
}
else if(follow != noone) instance_destroy();