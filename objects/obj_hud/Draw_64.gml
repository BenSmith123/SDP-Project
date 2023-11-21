

if low_health_alpha != 0
{
    draw_sprite_stretched_ext(spr_hit_effect,0,0,0,WIDTH,HEIGHT,image_blend,low_health_alpha)
}

scr_text_1()

draw_sprite(spr_hud,0,10,10)

// HEALTH BAR
draw_sprite_part(spr_hud_health_bar,health_colour,0,0,(obj_player.hp/obj_player.max_hp * 287),31,63,16) // 20 = sprite height // 146 = sprite width

// EXPERIENCE BAR
draw_sprite_part(spr_hud_experience,0,0,0,(global.experience/global.max_exp * 265),18,68,48) // 127 = sprite width






scr_text_2()
draw_text(42,42,global.level) // level

scr_text_4()
draw_set_halign(fa_right)
draw_text(324,30,string(obj_player.hp) +"/" +string(obj_player.max_hp))
draw_text(236,30,global.name +"    [ "+global.class+" ]")

draw_text(230,56,string(global.experience) +"/" +string(global.max_exp)+"   ["+string(global.experience/global.max_exp*100)+"%]")

draw_text(WIDTH-20,64,string(global.current_kills)+ " kills")


// coins
draw_sprite(spr_coin_hud,0,80,120)

draw_text(90,120,global.coins)





// TODO - remove
if global.player_lives > 0 {draw_sprite(spr_heart,0,100,90)} // first life
if global.player_lives > 1 {draw_sprite(spr_heart,0,130,90)} // second
if global.player_lives > 2 {draw_sprite(spr_heart,0,160,90)} // third
if global.player_lives > 3 {draw_sprite(spr_heart,0,190,90)}
if global.player_lives > 4 {draw_sprite(spr_heart,0,220,90)}
if global.player_lives > 5 {draw_sprite(spr_heart,0,250,90)}




