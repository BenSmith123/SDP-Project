function effect_projectile_destroy()
{
	xx = sign(hspeed) * (sprite_width/2)

	// create fx at the front of the projectile sprite
	instance_create(x+xx,y,obj_fx_spark)
	part_particles_create(global.fx,x,y,global.boost_fx,30)
}
