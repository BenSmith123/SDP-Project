///@description - perform an attack if the player can do so
function player_attack()
{
	if can_attack == false { exit }
   
   	can_attack = false
	alarm[0] = 30 // can attack again
	
	if is_on_ladder
	{
		// use attack button to jump off ladder
		if move_left || move_right
		{
			is_on_ladder = false
			vel_y = -jump
		}
		exit
	}
	
	image_index = 0 // restart the animation
	
	attacking = true
	
	// animated attack, wait for the correct attack frame (end-step)
	if animated_attack { exit }
	
	// instant attack!
	player_attack_execute()
	
	alarm[1] = 20 // stop the attacking sprite
}


///@description - create projectile or deal damage if melee attack
function player_attack_execute()
{
	// non-animated attack - do immediately
	if melee_attack
	{
		// MELEE ATTACKS
		player_attack_melee()
		exit
	}
	
	// PROJECTILE ATTACKS
	player_attack_projectile()	
}


function player_attack_melee() 
{
	enemy = instance_nearest(x,y,ai_parent)
	if (enemy == noone) { exit }
	
	var attack_range = image_xscale * melee_attack_range
	
	// 20px above or below the player still hit the mob
	var y_position_meeting = y > enemy.bbox_top-20 && y <enemy.bbox_bottom+20
	if (y_position_meeting == false) { exit }
	
	var facing_left = image_xscale == -1
	
	// enemy is to the left of the player (+14 incase the enemy is basically ontop of player)
	var is_enemy_infront = facing_left
		? enemy.x <= x+14
		: enemy.x > x-14
	
	var is_enemy_in_range = facing_left
		? enemy.x > x + attack_range
		: enemy.x < x + attack_range
		
	if (is_enemy_infront && is_enemy_in_range)
	{
		var damage = calculate_damage(attack, accuracy, other.defence)
		with (enemy) { effect_create_spark_red_melee() }
		deal_damage_to_mob(enemy, damage)
	}
	
}


function player_attack_projectile() 
{
	var x_pos = x + (image_xscale * 20)
	var bullet_speed = image_xscale * 14
	
	var bullet = instance_create(x_pos, y, obj_projectile_player)
	bullet.attack = attack
	bullet.accuracy = accuracy

	bullet.speed = bullet_speed
	bullet.sprite_index = sprite_projectile
	
	// if near a mob, create projectile towards them
	var mob = get_mob_to_shoot_at()
	if mob == noone { exit }
	
	bullet.speed = abs(bullet_speed) // make speed positive as the direction now decides the bullet movement
	bullet.direction = point_direction(x,y,mob.x,mob.y)

}


// returns noone or the closest mob that is in range, not behind a wall and not too far above
function get_mob_to_shoot_at()
{
	var target_dist = 500
	
	with ai_parent
	{
		var is_in_range = point_distance(x,y,other.x,other.y) < target_dist
		var player_facing_ai = sign(x - other.x) = other.image_xscale
		var behind_block = collision_line(x, y, other.x, other.y, obj_block, false, true)
		
		if is_in_range && player_facing_ai && !behind_block
		{
			var angle = point_direction(x,y,other.x,other.y)
			var is_too_far_above = angle > 225 && angle < 315
			if is_too_far_above { return noone }
			return id
		}
	}
	
	return noone
}
