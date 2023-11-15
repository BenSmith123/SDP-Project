

name = "Name"
sprite_stand = spr_pikachu_stand
sprite_jump = spr_pikachu_jump
sprite_walk = spr_pikachu_walk
sprite_die = spr_pikachu_die
sprite_hit = spr_pikachu_hit

image_speed = 0.4
maxhp = 2
hp = maxhp
speeed = 3.2
jump = -5
stay = 0
stay_min = 90
stay_max = 120
jump_min = 60
jump_max = 150
damage = 1
chance_stay = 0 // after counting, the chances of staying(1 of _)
chance_jump = 0 // after counting, the chances of jumping(1 of _)
alarm[0] = irandom_range(stay_min,stay_max)
//alarm[3] = irandom_range(jump_min,jump_max)}

hurt = false
image_alpha = 0
alarm[2] = 1 // fade in effect
dir = choose(-1,1)
stay = 0
attacker = ""
colour = c_white
mouse_enter = false
dead_body = 0




