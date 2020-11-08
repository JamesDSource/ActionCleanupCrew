var ideal_frame = 0;
if(open_condition()) {
	ideal_frame = image_number;
	solid_enabled = false;	
}
else solid_enabled = true;

if(round(image_index) < ideal_frame) image_speed = 1;
else if(round(image_index) > ideal_frame) image_speed = -1;
else image_speed = 0;