
if low_health_alpha != 0
{
    draw_sprite_stretched_ext(spr_hit_effect,0,0,0,WIDTH,HEIGHT,image_blend,low_health_alpha)
}

draw_sprite(spr_hud,0,10,10)

// HEALTH BAR
draw_sprite_part(spr_hud_health_bar,health_colour,0,0,(obj_player.hp/obj_player.max_hp * 287),31,63,16) // 20 = sprite height // 146 = sprite width

// EXPERIENCE BAR
draw_sprite_part(spr_hud_experience,0,0,0,(global.experience/global.max_exp * 265),18,68,48) // 127 = sprite width


scr_text_2()
draw_text(42,42,global.level)

scr_text_3()


// TODO - white/black colour outline text?
//draw_set_color(c_black)


// HEALTH TEXT
draw_text(290,33,string(obj_player.hp) +"/" +string(obj_player.max_hp))

// NAME & CLASS
draw_text(88,33,global.name +"        ("+global.class+")")

// EXP number
draw_text(88,58,string(global.experience)+"/"+string(global.max_exp))

// EXP percentage
draw_text(270,58,string(global.experience/global.max_exp*100)+"%")


// draw_text(WIDTH-20,64,string(global.current_kills)+ " kills")


// coins
draw_sprite(spr_coin_hud,0,80,120)

draw_text(90,120,global.coins)
