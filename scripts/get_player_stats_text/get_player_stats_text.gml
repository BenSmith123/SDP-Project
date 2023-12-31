function get_player_stats_text()
{
	return @"
		Damage: "+string(round((global.attack/2) + global.accuracy)) +" ~ "+string(global.attack) +@"
		
		Attack: "+string(global.attack) +@"
		Accuracy: "+string(global.accuracy) +@"
		Defence: "+string(global.defence) +@"
		
		Health: "+string(global.max_hp) +@"
		
		Heal amount: "+string(global.heal_amount) +@"
		Heal time (sec): "+string(global.heal_time)
}