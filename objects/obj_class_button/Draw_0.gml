

if class = "Hunter" {sprite_index_2 = spr_player_attack_3}
if class = "Ninja" {sprite_index_2 = spr_class_ninja}
if class = "Fighter" {sprite_index_2 = spr_player_attack_777}
if class = "Spellcaster"{sprite_index_2 = spr_player_attack_2}



draw_sprite(sprite_index,image_index,x,y) // button background

scr_text_2()
draw_text(x,y-100, class)

draw_sprite(sprite_index_2,0,x,y-28) // class sprite

scr_text_1()
draw_text(x,y+20,"Description*")


