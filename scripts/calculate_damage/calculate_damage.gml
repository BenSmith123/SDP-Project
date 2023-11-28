// damage is calculated by:
// random number between player attack minimum (attack - accuracy) and player attack
// minus the defence of the mob

function calculate_damage(attack = 0, accuracy = 0, otherDefence = 0)
{
	// TODO - multiply damage by skill
	//var attack_range = irandom_range(accuracy, attack) // * skill_increase_percent
	var attack_range = irandom_range(attack - accuracy, attack)
	
	return attack_range - otherDefence
}