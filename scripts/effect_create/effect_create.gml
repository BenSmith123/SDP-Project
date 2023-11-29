


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
	fx.image_index = irandom(fx.image_number)
	fx.image_xscale = sign(hspeed)
	part_particles_create(global.fx,xx,y,global.boost_fx,20)
}