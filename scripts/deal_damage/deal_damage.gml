/// @param target {Id.Instance} player or mob
function deal_damage(target) {

	if (target.can_be_hit == false) { exit }

	target.can_be_hit = false
	target.alarm[2] = 30 // can be hit again
    
	part_particles_create(global.fx,x,y,global.boost_fx,20)
    
	text = instance_create(target.x,target.y-30,obj_damage_text)
    
	// colour the text
	text.col1 = c_black
	text.col2 = c_red
	text.col3 = c_red
	text.col4 = c_maroon
    
	do_damage = calculate_damage(target)
    
	// if damage was done to the player/mob
	if do_damage == true
	{
	    // update the colour of the target health bar
	    if target.hp <= target.max_hp*0.6 {target.health_colour = 2}
	    if target.hp <= target.max_hp*0.2 {target.health_colour = 3}
		
		obj_hud.hit_alpha = 1 // TODO - why is this set when hitting a mob?
    
		if (target.can_be_knockedback == false) { exit }
		
		// knockback physics
		target.hspeed = x < target.x ? 3 : -3 // TODO - configurable depending on mob type?
	    target.vspeed = -1
	}
	
}
