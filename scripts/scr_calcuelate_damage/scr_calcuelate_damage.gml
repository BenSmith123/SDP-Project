function scr_calcuelate_damage(argument0) {

	target = argument0
	// text = created by object doing the damage
	// damage = set by ai or passed to projectile 

	calcuelated_damage = round(damage-target.defence/2-irandom_range(0,target.defence/2)) // CALCUELATE DAMAGE

	if calcuelated_damage > 0 
	{
	    target.hp -= calcuelated_damage  // DO DAMAGE
	    text.damage = calcuelated_damage
    
	    target.show_hp = true // show the enemy hp and healthbar
	    target.alarm[3] = target.heal_time *room_speed // heal the enemy ?
    
	    return true // tell the object that the target was damaged

	}
	else // if no damage was done
	{
	    text.damage = "Defend"
	    return false // the object was not damaged (no knockback etc)
	}




}
