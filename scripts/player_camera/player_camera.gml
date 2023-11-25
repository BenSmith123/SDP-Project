function player_camera() 
{

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


	/***
	if instance_exists(obj_player)  
	{
	    if instance_exists(obj_player_2) 
	    {
	        scr_camera_2_player() // if both players exist
	        exit
	    }
	    else
	    {
	        target = obj_player // if only p1 exists
	    }  
	}
	else if instance_exists(obj_player_2) 
	{    
	    target = obj_player_2 // if only p2 exists
	}
	***/
	
	// prevent camera from going out of room when window isn't open
	if (!window_has_focus()) exit
	
	var target = obj_player

	// ROOM END X
	if not(__view_get( e__VW.XView, 0 ) <= 0 and target.x<WIDTH/1.5) and not(__view_get( e__VW.XView, 0 )+WIDTH >= room_width and target.x > room_width-(WIDTH/2)) 
	{__view_set( e__VW.XView, 0, round(__view_get( e__VW.XView, 0 ) + (((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.03) ))}

	// ROOM END Y
	if not(__view_get( e__VW.YView, 0 ) <= 0 and target.y<HEIGHT/1.5) and not(__view_get( e__VW.YView, 0 )+HEIGHT >= room_height and target.y > room_height-(HEIGHT/2))
	{__view_set( e__VW.YView, 0, round(__view_get( e__VW.YView, 0 ) + (((y-(__view_get( e__VW.HView, 0 )/2)) - __view_get( e__VW.YView, 0 )) * 0.03) ))}

	if __view_get( e__VW.YView, 0 ) < 0 {__view_set( e__VW.YView, 0, 0 )} // stops line at top of the screen. idk y needed
}
