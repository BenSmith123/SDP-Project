
event_inherited()

name = "??"
level = 15
hp = 50
attack = 25
defence = 6
accuracy = 15
experience = 40

walkspeed = 4
jump = 10
heal_time = 3 // seconds
heal_amount = 20

aggressive = false // move/attack an enemy when unprovoked
can_be_knockedback = true

// skill
attack_ability = false // projectiles, skills etc.
attack_distance = 0 // distance before attacking player

block_distance = 40 // distance for checking how far away blocks are (before jumping)
jump_block_height = -40 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 360 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away

sprite_stand = spr_mob_4_walk
sprite_walk = spr_mob_4_walk
sprite_jump = spr_player_jump
sprite_dead = spr_mob_4_dead
//sprite_attack = choose(spr_player_attack_2, spr_player_attack_5)
//sprite_projectile = spr_bullet_2

image_speed = 0.1

mob_after_initialised() // don't remove
