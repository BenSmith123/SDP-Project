/// @description Heal



var heal_text = instance_create(x,y,obj_heal_text)
heal_text.target = id
heal_text.y2 = -(sprite_get_height(mask_index)/2)-60
heal_text.heal_amount = heal_amount

hp += heal_amount

// update the colour of the target health bar



if hp > max_hp
{
    hp = max_hp
}
else
{
    alarm[3] = heal_time * room_speed
}



