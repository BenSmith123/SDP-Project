
///@description - returns the spark effect depending on the sprite_index
function get_projectile_destroy_effect()
{
	switch (sprite_index) {
	    case spr_bullet:
		case spr_bullet_4:
		case spr_projectile_laser:
			return effect_create_spark_red
			
		case spr_bullet_2:
			return effect_create_spark_blue

	    default:
			return effect_create_spark_blue
	}
}

function get_projectile_collision_x() { return x + sign(hspeed) * (sprite_width/2) }


function effect_create_spark_red()
{
	effect_create_basic(obj_fx_spark_red)
}

function effect_create_spark_blue()
{
	effect_create_basic(obj_fx_spark_blue)
}

// EXTEND THIS AS NEEDED
function effect_create_basic(obj_effect) 
{
	var xx = get_projectile_collision_x()
	
	var fx = instance_create(xx,y,obj_effect)
	fx.image_index = irandom(fx.image_number) // pick any sub image
	fx.image_xscale = sign(hspeed)
}

