function damage_mob() {

	// var enemy set by attacking script

	text = instance_create(enemy.x,enemy.y-30,obj_damage_text)
	// colour the text
	text.col1 = c_yellow
	text.col2 = c_yellow
	text.col3 = c_orange
	text.col4 = c_orange

	do_damage = calculate_damage(enemy)

	if do_damage = true // knock back the enemy
	{
	    if x < enemy.x // if bullet is left of the enemy
	    {
	        enemy.hspeed = 3 // knocked right
	        if enemy.image_xscale = 1 // if enemy is facing away
	        {enemy.image_xscale = -1} // turn the enemy to face attacker
	    } 
	    else 
	    {
	        enemy.hspeed = -3
	        if enemy.image_xscale = -1
	        {enemy.image_xscale = 1}
	    } 
    
	    enemy.vspeed = -2
    
	    // update the colour of the target health bar
	    if enemy.hp <= enemy.maxhp*0.6 {enemy.health_colour = 2}
	    if enemy.hp <= enemy.maxhp*0.2 {enemy.health_colour = 3}
    
	    if enemy.hp <= 0 {with (enemy) instance_destroy()} // kill enemy if too weak
    
	}
	else
	{
	    text.damage = "Defend"
	}





}
