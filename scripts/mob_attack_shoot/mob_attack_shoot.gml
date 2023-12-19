function mob_attack_shoot() 
{
	
	// TODO - replace this will cool-down vars (move out of shoot script & put in mob_attack)
	alarm[0] = 90 // can shoot again
	alarm[4] = 15 // turn off sprite
	
	var bullet_x = facing_left
		? -20
		: 20
	
	var bullet_speed = image_xscale * 8 // TODO - speed variable instead
    
	var bullet = instance_create(x+bullet_x,y,obj_projectile_mob)
	bullet.sprite_index = sprite_projectile
	bullet.attack = attack
	bullet.accuracy = accuracy
	
	// shoot in straight line if player is on same platform
	if scr_ai_meet_y()
	{
		bullet.image_xscale = image_xscale
		bullet.hspeed = bullet_speed
		exit
	}
	
	// shoot towards player
	var target = instance_nearest(x,y, enemy)
	if target == noone { exit }
	
	bullet.speed = abs(bullet_speed) // make speed positive as the direction now decides the bullet movement
	bullet.direction = point_direction(x,y,target.x,target.y)
	bullet.image_angle = bullet.direction
}
