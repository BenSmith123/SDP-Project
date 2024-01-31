
event_inherited()

name = "??"
level = 15
hp = 200
attack = 40
defence = 6
accuracy = 15
experience = 200

walkspeed = 3
jump = 8
heal_time = 3 // seconds
heal_amount = 20

aggressive = false // move/attack an enemy when unprovoked
can_be_knockedback = true
can_be_stunned = false

// skill
attack_ability = mob_attack_shoot
has_attack_ability = true // projectiles, skills etc.
attack_distance = 200 // distance before attacking player

block_distance = 40 // distance for checking how far away blocks are (before jumping)
jump_block_height = -40 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 360 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away
do_damage_frame = 5 // image index of animation on when to deal the damage (only for animated attacks)

sprite_stand = spr_mob_4_stand
sprite_walk = spr_mob_4_walk
sprite_jump = spr_mob_4_stand
sprite_dead = spr_mob_4_dead
sprite_attack = spr_mob_4_attack
sprite_projectile = spr_bullet_2

image_speed = 0.3

mob_after_initialised() // don't remove
