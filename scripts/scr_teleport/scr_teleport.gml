function scr_teleport() 
{

	//var block_above = collision_line(x,y,x,0, obj_block,false,true)

	// TELEPORT TEST
	if has_teleport_skill
	{
		var above_block = instance_nearest(x,y-150,obj_block)
	    if distance_to_object(above_block) < 150
	    {
	        x = above_block.x
	        y = above_block.y-40
	        instance_create(x,y,obj_fx_teleport)
	        //part_particles_create(global.fx,x,y,global.teleport_fx,5)
	    }
	}

}
