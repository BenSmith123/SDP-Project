function initialise_particle_system() 
{

	// CREATE FX: part_particles_create(global.fx,x,y,global.fx_steam_vent,1)

	global.fx = part_system_create()
	part_system_depth(global.fx,ObjectDepth.Effect)


	global.spark_fx_red = part_type_create()
	var tmp = global.spark_fx_red
	part_type_shape(tmp,pt_shape_spark)
	part_type_size(tmp,0.05,0.2,0,0)
	part_type_color2(tmp,c_white,c_red)
	part_type_life(tmp,7,14)
	part_type_alpha2(tmp,1,0.05)
	part_type_speed(tmp,4,7,0,0.3)
	part_type_direction(tmp,0,360,0,0)
	part_type_gravity(tmp,0.1,270)
	part_type_blend(tmp,true)
	
	global.spark_fx_blue = part_type_create()
	var tmp = global.spark_fx_blue
	part_type_shape(tmp,pt_shape_spark)
	part_type_size(tmp,0.05,0.2,0,0)
	part_type_color2(tmp,c_white,c_blue)
	part_type_life(tmp,7,14)
	part_type_alpha2(tmp,1,0.05)
	part_type_speed(tmp,4,7,0,0.3)
	part_type_direction(tmp,0,360,0,0)
	part_type_gravity(tmp,0.1,270)
	part_type_blend(tmp,true)

	// coin pickup
	var _ptype1 = part_type_create();
	part_type_shape(_ptype1, pt_shape_circle);
	part_type_size(_ptype1, 0.2, 0.2, 0.05, 0);
	part_type_scale(_ptype1, 0.8, 0.8);
	part_type_speed(_ptype1, 0, 0, 0, 0);
	part_type_direction(_ptype1, 0, 0, 0, 0);
	part_type_orientation(_ptype1, 0, 0, 0, 0, false);
	part_type_colour3(_ptype1, $00FFFF, $00FFFF, $00FFFF);
	part_type_alpha3(_ptype1, 1, 0.5, 0.1);
	part_type_blend(_ptype1, false);
	part_type_life(_ptype1, 12, 12);
	global.fx_coin_pickup = _ptype1


	// normal smoke trail
	var _ptype1 = part_type_create();
	part_type_shape(_ptype1, pt_shape_cloud);
	part_type_size(_ptype1, 0.3, 0.5, -0.01, 0);
	part_type_scale(_ptype1, 1, 1);
	part_type_speed(_ptype1, 0, 0, 0, 0);
	part_type_direction(_ptype1, 1, 1, 0.1, 0);
	part_type_gravity(_ptype1, 0.02, 90);
	part_type_orientation(_ptype1, 0, 360, 0, 0, false);
	part_type_colour3(_ptype1, $FFFFFF, $676767, $343434);
	part_type_alpha3(_ptype1, 1, 0.678, 0.039);
	part_type_blend(_ptype1, false);
	part_type_life(_ptype1, 30, 50);
	global.fx_smoke = _ptype1
	

	// blue smoke
	var _ptype1 = part_type_create();
	part_type_shape(_ptype1, pt_shape_cloud);
	part_type_size(_ptype1, 0.3, 0.5, 0, 0);
	part_type_scale(_ptype1, 1, 1);
	part_type_speed(_ptype1, 0, 0, 0, 0);
	part_type_direction(_ptype1, 1, 1, 0.1, 0);
	part_type_gravity(_ptype1, 0.02, 90);
	part_type_orientation(_ptype1, 0, 360, 0, 0, false);
	part_type_colour3(_ptype1, $FF700A, $AD5A0C, $FFFFFF);
	part_type_alpha3(_ptype1, 1, 0.761, 0.039);
	part_type_blend(_ptype1, false);
	part_type_life(_ptype1, 40, 40);
	global.fx_smoke_2 = _ptype1


	// blue flare
	var _ptype1 = part_type_create();
	part_type_shape(_ptype1, pt_shape_flare);
	part_type_size(_ptype1, 0.6, 0.8, 0.2, 0);
	part_type_scale(_ptype1, 1, 1);
	part_type_speed(_ptype1, 0, 0, 0, 0);
	part_type_direction(_ptype1, 1, 1, 0.1, 0);
	part_type_gravity(_ptype1, 0.02, 90);
	part_type_orientation(_ptype1, 0, 360, 0, 0, false);
	part_type_colour3(_ptype1, $FFFFFF, $FF980A, $FFFF00);
	part_type_alpha3(_ptype1, 0.678, 0.639, 0.071);
	part_type_blend(_ptype1, true);
	part_type_life(_ptype1, 10, 10);
	global.fx_flare = _ptype1
	

	// red flare
	var _ptype1 = part_type_create();
	part_type_shape(_ptype1, pt_shape_flare);
	part_type_size(_ptype1, 0.2, 0.3, 0.2, 0);
	part_type_scale(_ptype1, 1, 1);
	part_type_speed(_ptype1, 0, 0, 0, 0);
	part_type_direction(_ptype1, 1, 1, 0.1, 0);
	part_type_gravity(_ptype1, 0.02, 90);
	part_type_orientation(_ptype1, 0, 360, 0, 0, false);
	part_type_colour3(_ptype1, $9999FF, $14C0FF, $D4CCFF);
	part_type_alpha3(_ptype1, 0.678, 0.749, 0.071);
	part_type_blend(_ptype1, true);
	part_type_life(_ptype1, 10, 10);
	global.fx_flare_2 = _ptype1
	
	
	// steam vent
	var _ptype1 = part_type_create();
	part_type_shape(_ptype1, pt_shape_cloud);
	part_type_size(_ptype1, 0.4, 0.45, -0.002, 0);
	part_type_scale(_ptype1, 1, 1);
	part_type_speed(_ptype1, 0, 0, 0, 0);
	part_type_direction(_ptype1, 1, 1, 0.1, 0);
	part_type_gravity(_ptype1, 0.42, 90);
	part_type_orientation(_ptype1, 0, 360, 0, 0, false);
	part_type_colour3(_ptype1, $CCCCCC, $999999, $676767);
	part_type_alpha3(_ptype1, 1, 1, 1);
	part_type_blend(_ptype1, false);
	part_type_life(_ptype1, 15, 28);
	global.fx_steam_vent = _ptype1
	
	
	



//var _ptype1 = part_type_create();
//part_type_shape(_ptype1, pt_shape_flare);
//part_type_size(_ptype1, 0.4, 0.6, 0.2, 0);
//part_type_scale(_ptype1, 0.6, 0.6);
//part_type_speed(_ptype1, 0, 0, 0, 0);
//part_type_direction(_ptype1, 1, 1, 0.1, 0);
//part_type_gravity(_ptype1, 0.02, 90);
//part_type_orientation(_ptype1, 0, 360, 0, 0, false);
//part_type_colour3(_ptype1, $9999FF, $14C0FF, $D4CCFF);
//part_type_alpha3(_ptype1, 0.678, 0.749, 0.071);
//part_type_blend(_ptype1, true);
//part_type_life(_ptype1, 10, 10);
//global.fx_flare = _ptype1


}


////GM_Embers2
//var _ptype1 = part_type_create();
//part_type_shape(_ptype1, pt_shape_circle);
//part_type_size(_ptype1, 0.1, 0.1, 0.1, 0);
//part_type_scale(_ptype1, 1, 1);
//part_type_speed(_ptype1, 0, 0, 0, 0);
//part_type_direction(_ptype1, 0, 0, 0, 0);
//part_type_gravity(_ptype1, 0, 83);
//part_type_orientation(_ptype1, 0, 0, 0, 0, false);
//part_type_colour3(_ptype1, $00FFFF, $00E9FF, $00B2FF);
//part_type_alpha3(_ptype1, 1, 0.612, 0);
//part_type_blend(_ptype1, true);
//part_type_life(_ptype1, 8, 8);

//var _pemit1 = part_emitter_create(_ps);
//part_emitter_region(_ps, _pemit1, -10, 10, -10, 10, ps_shape_line, ps_distr_invgaussian);
//part_emitter_burst(_ps, _pemit1, _ptype1, 1);

//part_system_position(_ps, room_width/2, room_height/2);




	/*
	global.teleport_fx = part_type_create() // 
	tmp = global.teleport_fx
	part_type_shape(tmp,pt_shape_sphere)
	part_type_size(tmp,2,2,-0.1,0)
	part_type_color2(tmp,c_fuchsia,c_purple)
	part_type_life(tmp,10,25)
	part_type_alpha2(tmp,0.8,0)
	//part_type_speed(tmp,2,6,0,0.2)
	//part_type_direction(tmp,0,0,0,0)
	//part_type_gravity(tmp,0.4,270)
	part_type_blend(tmp,false)

	//part_particles_create( mysystem, 50, 50, mypart, 30 );()

	//part_particles_create( global.particle, 50, 50, boost_fx, 30 )


	/*


	global.boost_fx = part_type_create() // 
	tmp = global.boost_fx
	part_type_shape(tmp,pt_shape_spark)
	part_type_size(tmp,0.1,0.3,0,0)
	part_type_color2(tmp,c_red,c_orange)
	part_type_life(tmp,30,50)
	part_type_alpha2(tmp,0.7,0)
	part_type_speed(tmp,2,11,0,0.2)
	part_type_direction(tmp,0,360,0,0)
	part_type_gravity(tmp,0.2,270)
	part_type_blend(tmp,false)



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
