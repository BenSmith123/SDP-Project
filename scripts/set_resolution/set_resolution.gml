function set_resolution()
{
	
	var w = WIDTH
	var h = HEIGHT

	view_enabled = true
	__view_set( e__VW.Visible, 0, true )

	__view_set( e__VW.XPort, 0, 0 )
	__view_set( e__VW.YPort, 0, 0 )
	__view_set( e__VW.WPort, 0, w )
	__view_set( e__VW.HPort, 0, h )
	
	// prevent camera zooming to player
	if (instance_exists(obj_player))
	{
		// start the camera where the player is - avoid camera zooming to player
		__view_set( e__VW.XView, 0, get_cam_start_position_x())
		__view_set( e__VW.YView, 0, get_cam_start_position_y())
	}
	else
	{
		__view_set( e__VW.XView, 0, 0)
		__view_set( e__VW.YView, 0, 0)
	}
	
	__view_set( e__VW.WView, 0, w )
	__view_set( e__VW.HView, 0, h )
	

	// full screen & higher res on desktop
	//if global.system == SystemType.Desktop
	//{
	//    window_set_fullscreen(true)
	//    window_set_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ))
	//}

	display_set_gui_size(w, h)
	surface_resize(application_surface, w, h)
}


function get_cam_start_position_x()
{
	var screen_center_x = WIDTH/2
	
	// if player x is too close to start of room
	if obj_player.x < screen_center_x { return 0 }
	
	// divide by 1.5 to get 3 quarters of screen before locking the view
	if obj_player.x > room_width - WIDTH/1.5 { return room_width - WIDTH }
	
	return obj_player.x - screen_center_x
}


function get_cam_start_position_y()
{
	var screen_center_y = HEIGHT/2
	
	// if player x is too close to start of room
	if obj_player.y < screen_center_y { return 0 }
	
	// divide by 1.5 to get 3 quarters of screen before locking the view
	if obj_player.y > room_height - HEIGHT/1.5 { return room_height - HEIGHT }
	
	return obj_player.y - screen_center_y
}
