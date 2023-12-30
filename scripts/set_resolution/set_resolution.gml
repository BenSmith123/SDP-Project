
function get_screen_width()
{
	var width_full = display_get_width()
	var width_half = width_full / 2
	
	// half width on mobile devices (brings the view closer)
	return global.system == SystemType.Desktop
		? width_full
		: width_half
}

function get_screen_height()
{	
	var height_full = display_get_height()
	var height_half = height_full / 2
	
	return global.system == SystemType.Desktop
		? height_full
		: height_half
}


function set_screen_resolution()
{
	var use_default_resolution = global.system == SystemType.Desktop && !global.desktop_fullscreen
	if use_default_resolution 
	{
		global.screen_w = global.desktop_default_width
		global.screen_h = global.desktop_default_height
		exit
	}
	
	var display_width = get_screen_width()
	var display_height =  get_screen_height()

	// if either display width or height is very low res (zoomed in with huge mobile buttons)
	// some Androids claim their resolution is lower than it is - doesn't count retina?
	if display_width <= MinWidth || display_height <= MinHeight
	{
		global.screen_w = display_get_width()
		global.screen_h = display_get_height()
		exit
	}

	global.screen_w = get_screen_width()
	global.screen_h = get_screen_height()
}


function initialise_display()
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
	if global.system == SystemType.Desktop
	{
	    window_set_fullscreen(global.desktop_fullscreen)
	    window_set_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ))
	}

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
