
var touch_x = device_mouse_x_to_gui(0)
var touch_y = device_mouse_y_to_gui(0)

var in_x_region = touch_x > x && touch_x < x+region_width
var in_y_region = touch_y > y && touch_y < y+region_height

tapped_in_region = in_x_region && in_y_region
