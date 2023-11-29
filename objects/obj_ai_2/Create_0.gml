
name = "Drone Operator"
level = 70
maxhp = 100
attack = 50
defence = 30
accuracy = 0

aggressive = true

block_distance = 50 // distance for checking how far away blocks are
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before 
detect_distance = 700 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away

sprite_stand = sprite_index
sprite_walk = sprite_index
sprite_jump = sprite_index
sprite_dead = sprite_index
sprite_attack = sprite_index
sprite_projectile = spr_projectile_laser

walkspeed = 2
jump = 0
heal_time = 5 // seconds
heal_amount = 80

experience = 100

tag_y = 40 // y position to show the name and hp

scr_ai_initialize()

attack_ability = true
attack_distance = 400 // distance before attacking player
