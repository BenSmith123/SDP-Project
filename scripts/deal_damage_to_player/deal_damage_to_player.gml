/// @description Called by AI colliding into player or projectile hitting player
/// @param player {Id.Instance} player thats hit
function deal_damage_to_player(player) {

	if (player.can_be_hit == false) { exit }

	player.can_be_hit = false
	player.alarm[2] = 30 // can be hit again
	
	var damage = calculate_damage(attack, accuracy, player.defence)
    
	var text = instance_create(player.x,player.y-30,obj_damage_text)
	text.damage = damage

	if damage <= 0
	{
	    // colour the text
		text.col1 = c_silver
		text.col2 = c_silver
		text.col3 = c_grey
		text.col4 = c_grey
		exit
	}

	text.col1 = c_red
	text.col2 = c_red
	text.col3 = c_maroon
	text.col4 = c_maroon
	
	player.hp -= damage  // DO DAMAGE
	player.alarm[3] = player.heal_time * room_speed // start counting down to heal time
	
	// knockback physics
	player.hspeed = x < player.x ? 3 : -3 // TODO - configurable depending on mob type?
	player.vspeed = -1
}
