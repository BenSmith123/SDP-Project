
    if place_meeting(x-1,y, obj_block)
    {wall_stop = true}
    
    
if place_meeting(x-10,y,obj_block)
{
    
     // loop to push the player up depending on the slope
     for(new_y = 0; new_y < 10; new_y++)
     {
         // checks for place free above the slope
         if(place_free(x-walk_speed,y-new_y))
         {
             image_xscale = -1 //moving left
             hspeed = -walk_speed
             y -= new_y // move player up
             break // break loop
         }
     }       
}
else
{



    if attacking = false
    {
        state = "walkingL"
        image_xscale = -1
        if (hspeed >= -walk_speed)
        {hspeed -= 1}
    }
    

    
}





/*****

if place_meeting(x-10,y,obj_block) 
{

     // loop to push the player up depending on the slope
     for(new_y = 0; new_y < 10; new_y++)
     {
         // checks for place free above the slope
         if(place_free(x-walk_speed,y-new_y))
         {
             image_xscale = -1
             hspeed = -walk_speed
             y -= new_y // move player up
             break
         }
     }
}
else
{
    if attacking = false
    {
        state = "walkingL"
        image_xscale = -1
        if (hspeed >= -walk_speed)
        {hspeed -= 1}
    }
    
}
