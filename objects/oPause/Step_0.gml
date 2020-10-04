if(global.pause && show_pause_menu) event_inherited();
if(check_action("pause", INPUTTYPE.PRESSED)) toggle_pause();
if(!global.pause && !window_has_focus()) toggle_pause();