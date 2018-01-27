
if move_jump = true
{
    
    //block = instance_nearest(x,y+1,obj_block)
    
    if place_meeting(x,y+1,obj_block) // if on the ground
    {
        vspeed = -jump
        second_jump = false // set it so i can double jump
    }
    else if skill_double_jump = true // if player has double jump skill
    {
        if can_second_jump = true // if not on ground and hasnt already second jumped
        {
            instance_create(x,y,obj_fx_double_jump)
            vspeed = -jump
            second_jump = true
            can_second_jump = false
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
