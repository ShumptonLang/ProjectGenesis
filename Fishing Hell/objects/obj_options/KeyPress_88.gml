switch(menu_index) {

	case 0:
		
		break;
	
	case 1:
		
		break;
	
	case 2:
		
		break;
		
	case 3:
		checked = !checked;
		window_set_fullscreen(checked);
		break;
		
	case 4:
		instance_deactivate_object(obj_options);
		instance_activate_object(obj_pause_screen);
		instance_activate_object(obj_title_screen);
		draw_set_alpha(1);
		break;
}