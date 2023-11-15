
if num > 0
{
bul = instance_create(xprevious,y,obj_bullet_player)
bul.hspeed = hspeed
bul.damage = damage
num -= 1
bul.num = num
}


