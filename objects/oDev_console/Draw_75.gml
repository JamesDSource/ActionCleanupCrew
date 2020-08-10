if(DEVBUILD && keyboard_check_pressed(vk_f3)) {
	var screenshot_name = get_filename("screenshot") + ".png";
	screen_save(screenshot_name);
}