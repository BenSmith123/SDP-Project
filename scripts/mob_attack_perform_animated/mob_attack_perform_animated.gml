
/// @description - perform animated attack
function mob_attack_perform_animated()
{
	if round(image_index) == do_damage_frame
	{
		attack_ability()
	}
		
	var animation_end = image_index > image_number-1
	if animation_end
	{
		attacking = false
		stay = false
		sprite_index = sprite_walk
		alarm[0] = 120 // cooldown until attack again
		stunned = false // disable stunned to allow knockback since animation is over
	}
}