switch(menu_index) {
	case 0:
		global.pause = false;
		instance_activate_all();
		instance_deactivate_object(obj_leaving);
		instance_deactivate_object(obj_options);
		draw_set_alpha(1);
		break;
	case 1:
		instance_activate_object(obj_options);
		instance_deactivate_object(obj_pause_screen);
		break;
	case 2:
		instance_activate_object(obj_leaving);
		instance_deactivate_object(obj_pause_screen);
		break;
	default:
		break;
}