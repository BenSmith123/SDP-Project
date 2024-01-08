///@description - applies all the global stats to player obj if exists
function update_player_stats()
{
	if !instance_exists(obj_player) { exit }
	
	with (obj_player)
	{
		max_hp = global.max_hp

		attack = global.attack
		defence = global.defence

		accuracy = global.accuracy

		jump = global.jump
		walk_speed = global.walk_speed // horizontal movement speed of the character (pixels per sec)

		heal_time = global.heal_time // seconds
		heal_amount = global.heal_amount
	}

}


