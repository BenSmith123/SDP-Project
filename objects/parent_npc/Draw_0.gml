
draw_self()

if distance_to_object(parent_player) < 240
{
    draw_text_ext(x,y-120,string_hash_to_newline(speech),30,160)
    draw_roundrect(x,y-60,x+70,y+50,false)
}

