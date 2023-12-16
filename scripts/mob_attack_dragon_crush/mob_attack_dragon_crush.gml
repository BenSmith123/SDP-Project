function mob_attack_dragon_crush()
{
	if !can_shoot { exit }
	
	can_shoot = false
	
	alarm[0] = 90 // can attack again
	alarm[4] = 15 // turn off sprite
	attacking = true
}