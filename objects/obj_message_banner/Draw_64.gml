
if fade_out = false
{
    if image_alpha < 1 {image_alpha += 0.08}
}
else
{
    image_alpha -= 0.08
    if message_que = 0 {if image_alpha < 0 {instance_destroy()}}
}

draw_sprite_ext(sprite_index,0,WIDTH/2,0,3,1,0,c_white,image_alpha) // message_background

scr_text_4()
draw_text_color(WIDTH/2,50,string_hash_to_newline(text[1]),c_white,c_white,c_white,c_white,image_alpha) // display current message



