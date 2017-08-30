
if (y > enemy.y - drop_distance and y < enemy.y-100)
{

    if (scr_ai_meet_verticle_x() = true)
    {

    
    
        state = "Jump down"
    
        if y < room_height-120 // dont drop off the entire map

        instance_create(x,y,obj_fx_teleport)
        
        y = y+120
    
        instance_create(x,y,obj_fx_teleport)
    }
    
}
