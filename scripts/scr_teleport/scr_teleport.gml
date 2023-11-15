function scr_teleport() {

	// TELEPORT TEST
	if global.class = "Spellcaster"
	{
	    if distance_to_object(above_block) < 150
	    {
	        x = above_block.x
	        y = above_block.y-40
	        instance_create(x,y,obj_fx_teleport)
	        //part_particles_create(global.fx,x,y,global.teleport_fx,5)
	    }
	}



}
