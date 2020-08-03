var ideal_frame = 0;

var list = ds_list_create();
collision_rectangle_list(bbox_left - radius, bbox_top - radius, bbox_right + radius, bbox_bottom + radius, oEntity, false, true, list, false);
for(var i = 0; i < ds_list_size(list); i++) {
	if(list[| i].object_index != oPlayer) {
		ideal_frame = image_number;
		break;	
	}
}
ds_list_destroy(list);

if(round(image_index) < ideal_frame) image_speed = 1;
else if(round(image_index) > ideal_frame) image_speed = -1;
else image_speed = 0;