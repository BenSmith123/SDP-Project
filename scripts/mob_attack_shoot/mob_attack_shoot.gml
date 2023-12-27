function mob_attack_shoot() 
{
	
	// TODO - replace this will cool-down vars (move out of shoot script & put in mob_attack)
	alarm[0] = 90 // can shoot again
	alarm[4] = 15 // turn off sprite
	
	var bullet_x = facing_left
		? -20
		: 20
	
	var bullet_speed = image_xscale * 8 // TODO - speed variable instead
    
	var bullet = instance_create(x+bullet_x,y, projectile_obj)
	bullet.sprite_index = sprite_projectile
	bullet.attack = attack
	bullet.accuracy = accuracy
	
	if projectile_obj != obj_projectile_mob_basic { exit }
	
	// shoot in straight line if player is on same platform
	if scr_ai_meet_y()
	{
		bullet.shoot_straight(image_xscale, bullet_speed)
		exit
	}
	
	// shoot towards player
	var target = instance_nearest(x,y, enemy)
	if target == noone { exit }
	
	var _speed = abs(bullet_speed) // make speed positive as the direction now decides the bullet movement
	var _direction = point_direction(x,y,target.x,target.y)
	
	bullet.shoot_in_direction(_speed, _direction)
}
