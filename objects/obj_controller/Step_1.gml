// handle global tapping for all HUD/dialog buttons

var _max_devices = 3 // max 5?

for (var i = 0; i < _max_devices; i++)
{
    var touch_x = device_mouse_x_to_gui(i)
    var touch_y = device_mouse_y_to_gui(i)
	
	//if !device_mouse_check_button(i, mb_any) { exit }
        
    var ui_obj = instance_position(touch_x, touch_y, parent_gui_pressable)

	// use this for touch/hold
    //var held = device_mouse_check_button(i, mb_left)
    //if (ui_at_pos != noone && held)
	
	if (ui_obj != noone)
    {
		// ui_obj.input(i, touch_x, touch_y)
		if device_mouse_check_button_pressed(i, mb_any)
		{
			with ui_obj { event_perform(ev_other, ev_user0) }
		}
		
		// on released
		if device_mouse_check_button_released(i, mb_any)
		{
			with ui_obj { event_perform(ev_other, ev_user1) }
		}
    }
	

}