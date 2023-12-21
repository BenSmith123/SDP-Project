/// @description 
/// @param mob {Id.Instance} mob thats hit
/// @param damage {Real}
function deal_damage_to_mob(mob, damage)
{
	mob.has_been_attacked = true
	
	var text = instance_create(mob.x,mob.y-30,obj_damage_text)
	text.damage = damage
	
	if (damage <= 0)
	{
		// override text colour
		text.col1 = c_gray
		text.col2 = c_gray
		text.col3 = c_silver
		text.col4 = c_silver
		exit
	}
	
	mob.hp -= damage  // DO DAMAGE
	mob.show_hp = true // show the enemy hp and healthbar
	mob.alarm[3] = mob.heal_time * room_speed // start counting down to heal time
	
	vibrate()
	
	// push & hit mob before checking if its killed (otherwise death obj will be facing wrong way)
	if (mob.can_be_knockedback)
	{
		var is_to_left_of_mob = x < mob.x
	
		// knock enemy back in direction the projectile was facing
		mob.hspeed = is_to_left_of_mob ? 3 : -3

		// turn to face attacker
		mob.image_xscale = is_to_left_of_mob ? -image_xscale : image_xscale
	
		mob.vspeed = -2
		
		// stun mob!
		mob.stunned = true
		mob.alarm[7] = 45
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
