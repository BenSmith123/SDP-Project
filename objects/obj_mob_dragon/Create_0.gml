
event_inherited()

name = "Armored Dragon"
level = 1
hp = 1000
attack = 50
defence = 50
accuracy = 30
experience = 1000

walkspeed = 1
jump = 0
heal_time = 0
heal_amount = 0

aggressive = true
can_be_knockedback = false
can_be_stunned = false


// SKILL
attack_ability = mob_attack_ground_slam
has_attack_ability = true // projectiles, skills etc.
animated_attack = true
attack_distance = 130 // distance before attacking player
stay_while_attacking = true
do_damage_frame = 5 // image index of animation on when to deal the damage (only for animated attacks)

block_distance = 60 // distance for checking how far away blocks are (before jumping)
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 400 // how far can an ai spot a player
health_run_percent = 0 // percent that health has to be before running away

sprite_stand = spr_mob_dragon_stand
sprite_walk = spr_mob_dragon_walk
sprite_jump = spr_mob_dragon_walk
sprite_dead = spr_player_dead
sprite_attack = spr_mob_dragon_attack

image_speed = 0.75

mob_after_initialised() // don't remove

