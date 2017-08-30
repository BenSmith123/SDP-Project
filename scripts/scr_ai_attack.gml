
if can_shoot = true
{
    
    alarm[0] = 90
    
    alarm[4] = 15 // turn off sprite
    attacking = true
    
      
    if image_xscale = -1 
    {
        bullet = instance_create(x-20,y,obj_bullet_ai)
        bullet.hspeed = -8
    }
    
    if image_xscale = 1 
    {
        bullet = instance_create(x+20,y,obj_bullet_ai)
        bullet.hspeed = 8
    }
    
    bullet.damage = attack-irandom_range(0,accuracy)
    
}

can_shoot = false

