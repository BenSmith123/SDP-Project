
// fade to black screen
if fade_in = true
{
    image_alpha -= 0.08
    if image_alpha <= 0 {instance_destroy()}
}

draw_sprite_stretched_ext(spr_black,0,0,0,WIDTH,HEIGHT,c_black,image_alpha)



