event_inherited();
if(y < room_height/2) team = TEAM.BLACK;
else team = TEAM.WHITE;

exposure_areas = ds_list_create();
collision_rectangle_list(bbox_left - check_margin, bbox_top - check_margin, bbox_right + check_margin, bbox_bottom + check_margin, oExposure_area, false, true, exposure_areas, false);

function get_exposure_point() {
    ds_list_shuffle(exposure_areas);
    var exposure_area = exposure_areas[| 0];
    return random_point_rectange(exposure_area.bbox_left, exposure_area.bbox_top, exposure_area.bbox_right, exposure_area.bbox_bottom);
}