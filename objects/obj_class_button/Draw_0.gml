

if class = "Hunter" {sprite_index_2 = spr_player_attack_3}
if class = "Ninja" {sprite_index_2 = spr_class_ninja}
if class = "Fighter" {sprite_index_2 = spr_player_attack_777}
if class = "Spellcaster"{sprite_index_2 = spr_player_attack_2}



draw_sprite(sprite_index,image_index,x,y) // button background

draw_sprite(sprite_index_2,0,x,y) // class sprite

scr_text_4()

draw_text(x,y-40,string_hash_to_newline(class))


