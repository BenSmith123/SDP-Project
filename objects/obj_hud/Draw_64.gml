
var c1 = #d9d9d9
var c2 = #d9d9d9
var c3 = c_white
var c4 = c_white

if low_health_alpha != 0
{
    draw_sprite_stretched_ext(spr_hit_effect,0,0,0,WIDTH,HEIGHT,image_blend,low_health_alpha)
}


draw_sprite(spr_hud,0,10,10)

// HEALTH BAR
draw_sprite_part(spr_hud_health_bar,health_colour,0,0,(obj_player.hp/obj_player.max_hp * 287),31,78,16) // 20 = sprite height // 146 = sprite width

// EXPERIENCE BAR
draw_sprite_part(spr_hud_experience,0,0,0,(global.experience/global.max_exp * 265),18,68,48) // 127 = sprite width


scr_text_2()
draw_text_colour(44,42,global.level, c1, c2, c3, c4, image_alpha)

scr_text_3()

// name & class
draw_text_colour(88,33,global.name +"       ("+global.class+")", c1, c2, c3, c4, image_alpha)



// EXP number
draw_text_colour(88,58,string(global.experience)+"/"+string(global.max_exp), c1, c2, c3, c4, image_alpha)


// coins
var coin_text = $"${number_format_commas(global.coins)}"
var coin_spr_width = string_width(coin_text) + 19
draw_sprite_stretched(spr_coin_hud,0,66,72, coin_spr_width, 28)
draw_text_colour(75,87, coin_text, c_yellow, c_yellow, #f5d442, #f5d442, image_alpha)




draw_set_halign(fa_right) // RIGHT ALIGNED TEXT

// health text
draw_text_colour(336,33,string(obj_player.hp) +"/" +string(obj_player.max_hp), c1, c2, c3, c4, image_alpha)


// EXP percentage
draw_text_colour(316,58,string(global.experience/global.max_exp*100)+"%", c1, c2, c3, c4, image_alpha)



// draw_text(WIDTH-20,64,string(global.current_kills)+ " kills")



