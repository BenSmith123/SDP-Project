
if image_alpha > 0
{
    image_alpha -= 0.02
    size += 0.04
}
else
{
    instance_destroy()
}

draw_sprite_ext(sprite_index,image_index,x,y,size,size,image_angle,image_blend,image_alpha)


