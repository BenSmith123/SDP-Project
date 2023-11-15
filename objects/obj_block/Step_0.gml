exit
if instance_exists(obj_player)
{
    if can_jump_through = true // can be jumped through if theres no block above or below it
    {
        if distance_to_object(obj_player) < 120
        {

            //if not place_meeting(x-10,y,obj_block) or not place_meeting(x+10,y,obj_block)
            
            /*****
            if not place_meeting(x,y-1,obj_block)
            {
                solid = false
            }
            *****/
                
            //if place_meeting(x,y+50,obj_player){
            
            //if obj_player.bbox_bottom > bbox_top
            if obj_player.y > y
            {solid = false exit}
            else
            {solid = true}
    
        }
        
        else 
        {solid = true}
                
            

        //}
    }
}



/***********************************************


if instance_exists(obj_player)
{
    if can_jump_through = true // can be jumped through if theres no block above or below it
    {
        
        if obj_player.bbox_bottom > bbox_top
        {
            solid = false exit
        }
        else 
        {solid = true}
        }

}









/* */
/*  */
