
draw_sprite(sprite_index,image_index,x,y) // button background

set_class_details(class)

scr_text_2()
draw_text(x,y-100, class_name)

draw_sprite(class_sprite,0,x,y-28) // class sprite

scr_text_1()
draw_set_valign(fa_top)
draw_text(x,y+13,string_hash_to_newline(class_description))


