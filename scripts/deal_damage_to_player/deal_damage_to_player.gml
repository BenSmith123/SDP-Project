/// @description Called by AI colliding into player or projectile hitting player
/// @param player {Id.Instance} player thats hit
function deal_damage_to_player(player) {

	if (player.can_be_hit == false) { exit }

	player.can_be_hit = false
	player.alarm[2] = 30 // can be hit again
    
	part_particles_create(global.fx,x,y,global.boost_fx,20)
    
	text = instance_create(player.x,player.y-30,obj_damage_text)
    
	// colour the text
	text.col1 = c_black
	text.col2 = c_red
	text.col3 = c_red
	text.col4 = c_maroon
    
	damage_was_done = calculate_damage(player)
    
	if damage_was_done == true
	{
	    // update the colour of the player health bar colour
	    if player.hp <= player.max_hp*0.6 {player.health_colour = 2}
	    if player.hp <= player.max_hp*0.2 {player.health_colour = 3}
		
		obj_hud.hit_alpha = 1
		
		// knockback physics
		player.hspeed = x < player.x ? 3 : -3 // TODO - configurable depending on mob type?
	    player.vspeed = -1
	}
	
}
