/// @description heal

var heal_text = instance_create(x,y,obj_heal_text)
heal_text.target = id
heal_text.heal_amount = heal_amount

hp += heal_amount

check_for_heal()
