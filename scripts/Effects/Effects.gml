
///@description - returns the spark effect depending on the sprite_index
function create_projectile_destroy_effect()
{
	switch (sprite_index) {
	    case spr_bullet:
		case spr_bullet_4:
		case spr_projectile_laser:
			return effect_create_spark_red()
			
		case spr_bullet_2:
			return effect_create_spark_blue()

	    default:
			return effect_create_spark_blue()
	}
}

function get_projectile_collision_x() { return hspeed < 0 ? bbox_left : bbox_right }
function get_melee_collision_x() { return image_xscale < 0 ? bbox_left : bbox_right }

function effect_create_spark_red_melee()
{
	var xx = get_melee_collision_x()
	part_particles_create(global.fx,xx,y,global.fx_flare_2,1)
	var fx = instance_create(xx,y,obj_fx_spark_red)
	fx.image_index = irandom(fx.image_number)
}

function effect_create_spark_red()
{
	part_particles_create(global.fx,x,y,global.fx_flare_2,1)
	effect_create_basic(obj_fx_spark_red)
}

function effect_create_spark_blue()
{
	part_particles_create(global.fx,x,y,global.fx_flare,1)
	effect_create_basic(obj_fx_spark_blue)
}

// EXTEND THIS AS NEEDED
function effect_create_basic(obj_effect) 
{
	var xx = get_projectile_collision_x()
	
	var fx = instance_create(xx,y,obj_effect)
	fx.image_index = irandom(fx.image_number) // pick any sub image
	fx.image_angle = image_angle
}

