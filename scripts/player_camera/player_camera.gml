function player_camera() 
{
	// PARALLAX background scrolling
	if layer_exists("Parallax1")
	{
		// minus half the view to try keep the background roughly where it was placed in map
		var _cam_x = camera_get_view_x(view_camera[0]) - global.view_w/2
		layer_x("Parallax1", _cam_x * 0.25)
		layer_x("Parallax2", _cam_x * 0.5)
		
		// var _cam_y = camera_get_view_y(view_camera[0])
		// layer_y("Parallax1", _cam_y * 0.25)
		// layer_y("Parallax2", _cam_y * 0.5)
	}
	
	// clouds as asset layer (instead of objects)
	//layer_x("Clouds2", layer_get_x("Clouds2") - 0.25)


	if global.overall_view = true // debug (show whole room)
	{
	    __view_set( e__VW.XView, 0, 0 )
	    __view_set( e__VW.YView, 0, 0 )
    
	    __view_set( e__VW.WView, 0, room_width )
	    __view_set( e__VW.HView, 0, room_height )
    
	    __view_set( e__VW.WPort, 0, room_width )
	    __view_set( e__VW.HPort, 0, room_height )
	    __view_set( e__VW.XPort, 0, 0 )
	    __view_set( e__VW.YPort, 0, 0 )
    
	    exit
	}
	
	// prevent camera from going out of room when window isn't open
	if (!window_has_focus()) exit
	
	// object to track
	var target_x = obj_player.x
	var target_y = obj_player.y
	
	var view_width_x = __view_get( e__VW.XView, 0)
	var view_width_y = __view_get( e__VW.YView, 0)
	
	var max_cam_x = room_width - global.view_w
	var max_cam_y = room_height - global.view_h
	
	// move the mobile zoomed in view up to avoid half the screen being the floor
	var max_cam_y_mobile = max_cam_y - 40
	if global.zoom_view == true { max_cam_y = max_cam_y_mobile }
	
	var map_center_x = room_width / 2
	var map_center_y = room_height / 2


	// ROOM X
	var view_x = round(view_width_x + (((target_x-(__view_get( e__VW.WView, 0 )/2)) - view_width_x) * 0.03))
		
	// get the min/max value the camera can be depending on if the player is closest to the left or right
	// cap the camera to the min/max value to avoid camera going out of room
	var view_x_capped = target_x < map_center_x
		? max(view_x, 0)
		: min(view_x, max_cam_x)
			
	__view_set(e__VW.XView, 0, view_x_capped)
	

	// ROOM Y
	var view_y = round(view_width_y + (((target_y-(__view_get( e__VW.HView, 0 )/2)) - view_width_y) * 0.03))
	
	var view_y_capped = target_y < map_center_y
		? max(view_y, 0)
		: min(view_y, max_cam_y)
	
	__view_set( e__VW.YView, 0, view_y_capped)
}
