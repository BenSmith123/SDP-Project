
if global.overall_view = true // debug (show whole room)
{
    view_xview[0] = 0
    view_yview[0] = 0
    
    view_wview[0] = room_width
    view_hview[0] = room_height
    
    view_wport[0] = room_width
    view_hport[0] = room_height
    view_xport[0] = 0
    view_yport[0] = 0
    
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


target = obj_player

// ROOM END X
if not(view_xview[0] <= 0 and target.x<WIDTH/1.5) and not(view_xview[0]+WIDTH >= room_width and target.x > room_width-(WIDTH/2)) 
{view_xview[0] += ((x-(view_wview[0]/2)) - view_xview[0]) * 0.03}

// ROOM END Y
if not(view_yview[0] <= 0 and target.y<HEIGHT/1.5) and not(view_yview[0]+HEIGHT >= room_height and target.y > room_height-(HEIGHT/2))
{view_yview[0] += ((y-(view_hview[0]/2)) - view_yview[0]) * 0.03}

if view_yview[0] < 0 {view_yview[0] = 0} // stops line at top of the screen. idk y needed



/*
// looks better?
round(view_xview[0])
round(view_yview[0])
    

