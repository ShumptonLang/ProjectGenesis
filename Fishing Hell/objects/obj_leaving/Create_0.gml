instance_deactivate_object(obj_leaving);
menu_x = window_get_width()/4;
menu_y = window_get_height()/4;
button_h = 50;
button_w = 150;
button_padding = 10;

button[0] = "Yes";
button[1] = "No";

buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat(buttons) {
	unfold[i] = 0;
	i++;
}