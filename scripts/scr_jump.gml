
if move_jump = true
{
    
    //block = instance_nearest(x,y+1,obj_block)
    
    if place_meeting(x,y+1,obj_block) // if on the ground
    {
        vspeed = -jump
        second_jump = false // set it so i can double jump
    }
    else if second_jump = false // if not on ground and hasnt already second jumped
    {
        if global.class = "Ninja" // if can double jump
        {
            instance_create(x,y,obj_fx_double_jump)
            vspeed = -jump
            second_jump = true
        }
    }
}




    /***********
        block = instance_nearest(x,y,obj_block)
        instance_create(block.x,block.y,obj_bullet_fx)
    
        if place_meeting(x,y,block)
        {
            block.solid = 0
        }
        
    ***********/


/*



    /***********
        block = instance_nearest(x,y,obj_block)
        instance_create(block.x,block.y,obj_bullet_fx)
    
        if place_meeting(x,y,block)
        {
            block.solid = 0
        }
        
    ***********/
