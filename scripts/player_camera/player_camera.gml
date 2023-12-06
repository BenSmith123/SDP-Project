function player_camera() 
{
	// PARALLAX background scrolling
	if layer_exists("Parallax1")
	{
		var _cam_x = camera_get_view_x(view_camera[0])
		var _cam_y = camera_get_view_y(view_camera[0])
		layer_x("Parallax1", _cam_x * 0.25)
		layer_x("Parallax2", _cam_x * 0.5)
		
		//layer_y("parallax_background_1", _cam_y * 0.25)
		//layer_y("parallax_background_2", _cam_y * 0.5)
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
	
	var temp = obj_player
	
	var view_width_x = __view_get( e__VW.XView, 0)
	var view_width_y = __view_get( e__VW.YView, 0)

	// ROOM END X
	if not(view_width_x <= 0 and temp.x<WIDTH/1.5) and not(view_width_x+WIDTH >= room_width and temp.x > room_width-(WIDTH/2)) 
	{__view_set( e__VW.XView, 0, round(view_width_x + (((temp.x-(__view_get( e__VW.WView, 0 )/2)) - view_width_x) * 0.03) ))}

	// ROOM END Y
	if not(view_width_y <= 0 and temp.y<HEIGHT/1.5) and not(view_width_y+HEIGHT >= room_height and temp.y > room_height-(HEIGHT/2))
	{__view_set( e__VW.YView, 0, round(view_width_y + (((temp.y-(__view_get( e__VW.HView, 0 )/2)) - view_width_y) * 0.03) ))}

	if view_width_y < 0 {__view_set( e__VW.YView, 0, 0 )} // stops line at top of the screen. idk y needed
}
