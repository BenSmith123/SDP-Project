
function get_screen_width()
{
	var use_default_resolution = global.system == SystemType.Desktop && !global.desktop_fullscreen
	if use_default_resolution { return global.desktop_default_width }
	
	var width_full = display_get_width()
	var width_half = width_full / 2
	
	// half width on mobile devices (brings the view closer)
	var display_width = global.system == SystemType.Desktop
		? width_full
		: width_half
	
	// if on mobile the resolution is very low, use the full width
	// ^ this seems to be a bug with some android devices not returning their true display size
	return display_width < MinWidth
		? width_full
		: display_width
}

function get_screen_height()
{
	var use_default_resolution = global.system == SystemType.Desktop && !global.desktop_fullscreen
	if use_default_resolution { return global.desktop_default_height }
	
	var height_full = display_get_height()
	var height_half = height_full / 2
	
	var display_height = global.system == SystemType.Desktop
		? height_full
		: height_half

	return display_height < MinHeight
		? height_full
		: display_height
}


function set_screen_resolution()
{
	global.screen_w = get_screen_width()
	global.screen_h = get_screen_height()
}

function initialise_display()
{
	
	global.name = string(global.screen_w) + "x" + string(global.screen_h)
	
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
