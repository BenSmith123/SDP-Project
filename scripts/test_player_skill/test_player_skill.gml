function test_player_skill()
{
	
	with(ai_parent)
	{
		//console_log(object_get_name(id))
		name = distance_to_object(obj_player)
		//if distance_to_object(obj_player) < 200
		{ 
			var damage = calculate_damage(obj_player.attack, obj_player.accuracy, self.defence)
			deal_damage_to_mob(self, damage)
		}
	}
}