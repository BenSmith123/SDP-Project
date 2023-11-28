// damage is calculated by:
// random number between half player attack and player attack max
// minus the defence of the mob

function calculate_damage(attack = 0, accuracy = 0, otherDefence = 0)
{
	// TODO - multiply damage by skill
	//var attack_range = irandom_range(accuracy, attack) // * skill_increase_percent
	
	var attack_minimum = (attack / 2) + accuracy
	var attack_range = irandom_range(attack_minimum, attack)
	
	return round(attack_range - otherDefence)
}