
var touch_x = device_mouse_x_to_gui(0)
var touch_y = device_mouse_y_to_gui(0)

//var held = device_mouse_check_button(0, mb_left)
//if (held)
//{
	
//}

var in_x_region = touch_x > x && touch_x < x+region_width
var in_y_region = touch_y > y && touch_y < y+region_height

if in_x_region && in_y_region
{
	global.name = "yresd"
	dragData = event_data[?"diffY"];
}



