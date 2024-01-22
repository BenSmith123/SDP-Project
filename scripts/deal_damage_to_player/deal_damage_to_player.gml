/// @description Called by AI colliding into player or projectile hitting player
/// @param player {Id.Instance} player thats hit
/// @returns true if the player was damaged
function deal_damage_to_player(player) 
{
	player.is_on_ladder = false
	
	if !instance_exists(obj_player) { return false }
	if (player.can_be_hit == false) { return false }

	player.can_be_hit = false
	player.alarm[2] = player.can_be_hit_time
	
	var damage = calculate_damage(attack, accuracy, player.defence)
    
	var text = instance_create(player.x,player.y-30,obj_damage_text)

	if damage <= 0
	{
		text.sprite_index = spr_damage_0_blue
		return false
	}

	text.get_digits(damage) // set damage sprites
	text.sprite_index = spr_damage_text_hit_by_mob
	
	player.hp -= damage  // DO DAMAGE
	player.alarm[3] = player.heal_time * room_speed // start counting down to heal time
	
	player.is_on_ladder = false
	
	// knockback physics
	player.vel_x = x < player.x ? 5 : -5 // TODO - knockback variable depending on mob type?
	player.vel_y = -8
	
	return true
}
