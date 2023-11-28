

enum ProjectileDestroyEffect
{
	PlayerArrow,
	PlayerThrowingStar,
	DroneLaser
}

///@param type {ProjectileDestroyEffect}
function effect_projectile_destroy(type)
{

	var xx = sign(hspeed) * (sprite_width/2)

	switch (type) {
	    case ProjectileDestroyEffect.PlayerArrow:
		case ProjectileDestroyEffect.PlayerThrowingStar:
	        // code here
	        break;
			
		case ProjectileDestroyEffect.DroneLaser:
			fx = instance_create(x+xx,y,obj_fx_spark)
			fx.image_xscale = sign(hspeed)
			fx.sprite_index = spr_fx_spark_blue
			part_particles_create(global.fx,x+xx,y,global.boost_fx,20)
	        break;
			
	    default:
			fx = instance_create(x+xx,y,obj_fx_spark)
			fx.image_xscale = sign(hspeed)
			part_particles_create(global.fx,x+xx,y,global.boost_fx,20)
	        break;
	}
	

}
