if(global.pause && show_pause_menu) event_inherited();
if(keyboard_check_pressed(vk_escape)) toggle_pause();
if(!global.pause && !window_has_focus()) toggle_pause();