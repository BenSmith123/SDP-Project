
/*
if instance_exists(obj_coin)
{
    coin = instance_nearest(x,y,obj_coin)
    
    move_towards_point(coin.x,coin.y-20,3)
    
    if place_meeting(x,y-30,20,self)
    {
        coin.picked_up = true
        global.coins += 1
        with (coin) instance_destroy()
    }
    
}


exit
*/
 if instance_exists(obj_player)
{
    if distance_to_object(obj_player) > 60
    {
        move_towards_point(obj_player.x,obj_player.y-40,3)
    }
    else
    {
        hspeed = 0
        vspeed = 0
    }
}

// face the correct direction when moving
if hspeed < 0 {image_xscale = -1} if hspeed > 0 {image_xscale = 1}


/* */
/*  */
