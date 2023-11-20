/// @description 
/// @param mob {Id.Instance} mob thats hit
function deal_damage_to_mob(mob) {

	text = instance_create(mob.x,mob.y-30,obj_damage_text)
	// colour the text
	text.col1 = c_yellow
	text.col2 = c_yellow
	text.col3 = c_orange
	text.col4 = c_orange

	damage_was_done = calculate_damage(mob)
	
	if (!damage_was_done)
	{
		text.damage = "Defend"
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
	
	// update the colour of the target health bar
	if mob.hp <= mob.maxhp*0.6 {mob.health_colour = 2}
	if mob.hp <= mob.maxhp*0.2 {mob.health_colour = 3}
	
	if mob.hp <= 0 { with (mob) instance_destroy() } // kill enemy if too weak
}
