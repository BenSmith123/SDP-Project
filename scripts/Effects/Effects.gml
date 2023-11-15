function effect_projectile_destroy() {

	//instance_create(x-(other.x+x),y,obj_fx_spark)



	if hspeed < 0 // going left
	{
	    instance_create(x-sprite_width/2,y,obj_fx_spark)
	    part_particles_create(global.fx,x,y,global.boost_fx,30)
	} 
	else // going right
	{
	    instance_create(x+sprite_width/2,y,obj_fx_spark)
	    part_particles_create(global.fx,x,y,global.boost_fx,30)
	} 




}
