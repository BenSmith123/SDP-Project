


draw_self()

if (mask_index) draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.5);

if global.show_debug = true
{
scr_text_1()
draw_text(x,y,string_hash_to_newline(solid)) // debug
}



