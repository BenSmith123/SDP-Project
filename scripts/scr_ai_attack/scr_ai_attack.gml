function scr_ai_attack() 
{
	if !can_shoot { exit }
	
	can_shoot = false
	
	alarm[0] = 90 // can shoot again
	alarm[4] = 15 // turn off sprite
	attacking = true
	
	var bullet_x = facing_left
		? -20
		: 20
	
	var bullet_speed = image_xscale * 8 // TODO - speed variable instead
    
	var bullet = instance_create(x+bullet_x,y,obj_projectile_mob)
	bullet.sprite_index = sprite_projectile
	bullet.image_xscale = image_xscale
	bullet.hspeed = bullet_speed
	bullet.attack = attack
	bullet.accuracy = accuracy
}
