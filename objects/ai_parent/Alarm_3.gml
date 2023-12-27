/// @description heal
var heal_text = instance_create(x,y,obj_heal_text)
heal_text.target = id
heal_text.heal_amount = heal_amount

hp += heal_amount

get_healthbar_colour(hp, maxhp)

if hp > maxhp
{
    hp = maxhp
}
else
{
    alarm[3] = heal_time * room_speed
}

