

draw_self()

draw_sprite_stretched(spr_name_label,0,x-string_width(string_hash_to_newline(name))/2-10,y+24,string_width(string_hash_to_newline(name))+20,20) // name label

scr_text_4()

draw_set_color(c_silver)

draw_text(x,y+34,string_hash_to_newline(name)) // player name

x = round(x)
y = round(y)


