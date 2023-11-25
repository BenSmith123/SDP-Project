/// @description 
/// @param mob {Id.Instance} mob thats hit
function deal_damage_to_mob(mob) {

	text = instance_create(mob.x,mob.y-30,obj_damage_text)
	// colour the text
	text.col1 = c_yellow
	text.col2 = c_yellow
	text.col3 = c_orange
	text.col4 = c_orange

	mob.has_been_attacked = true

	damage_was_done = calculate_damage(mob)
	
	if (!damage_was_done)
	{
		text.damage = "x" // "defend"
		exit
	}
	
	if (mob.can_be_knockedback)
	{
		var is_to_left_of_mob = x < mob.x
	
		// knock enemy back in direction the projectile was facing
		mob.hspeed = is_to_left_of_mob ? 3 : -3

		// turn to face attacker
		mob.image_xscale = is_to_left_of_mob ? image_xscale : -image_xscale
	
		mob.vspeed = -2
	}
	
	// kill mob if health is too low
	if mob.hp <= 0 
	{ 
		with (mob) instance_destroy()
		exit
	} 
	
	// update the colour of the health bar
	mob.healthbar_colour = get_healthbar_colour(mob.hp, mob.maxhp)
}
