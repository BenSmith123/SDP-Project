function initialise_particle_system() 
{

	// CREATE FX: part_particles_create(global.p_general,x,y,global.meteor_fx,1)


	global.fx = part_system_create()
	part_system_depth(global.fx,-5800)


	global.boost_fx = part_type_create() // 
	temp = global.boost_fx
	part_type_shape(temp,pt_shape_spark)
	part_type_size(temp,0.1,0.3,0,0)
	part_type_color2(temp,c_orange,c_white)
	part_type_life(temp,5,14)
	part_type_alpha2(temp,1,0.02)
	part_type_speed(temp,5,8,0,0.2)
	part_type_direction(temp,0,360,0,0)
	part_type_gravity(temp,0.1,270)
	part_type_blend(temp,true)


	/*
	global.teleport_fx = part_type_create() // 
	temp = global.teleport_fx
	part_type_shape(temp,pt_shape_sphere)
	part_type_size(temp,2,2,-0.1,0)
	part_type_color2(temp,c_fuchsia,c_purple)
	part_type_life(temp,10,25)
	part_type_alpha2(temp,0.8,0)
	//part_type_speed(temp,2,6,0,0.2)
	//part_type_direction(temp,0,0,0,0)
	//part_type_gravity(temp,0.4,270)
	part_type_blend(temp,false)

	//part_particles_create( mysystem, 50, 50, mypart, 30 );()

	//part_particles_create( global.particle, 50, 50, boost_fx, 30 )


	/*


	global.boost_fx = part_type_create() // 
	temp = global.boost_fx
	part_type_shape(temp,pt_shape_spark)
	part_type_size(temp,0.1,0.3,0,0)
	part_type_color2(temp,c_red,c_orange)
	part_type_life(temp,30,50)
	part_type_alpha2(temp,0.7,0)
	part_type_speed(temp,2,11,0,0.2)
	part_type_direction(temp,0,360,0,0)
	part_type_gravity(temp,0.2,270)
	part_type_blend(temp,false)



	// jet booster
	global.boost_fx = part_type_create()
	part_type_shape(global.boost_fx,spr_bullet_2,0,0,1)
	part_type_size(global.boost_fx,0.5,1,0,0.2)
	part_type_color2(global.boost_fx,c_blue,c_aqua)
	part_type_life(global.boost_fx,12,12)
	part_type_alpha2(global.boost_fx,0.7,0)
	part_type_speed(global.boost_fx,11,11,0,0)
	part_type_direction(global.boost_fx,-180,-180,0,0)
	part_type_orientation(global.boost_fx,0,0,0,0,1)
	part_type_blend(global.boost_fx,true)

*/
}
