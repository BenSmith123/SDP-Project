
image_alpha -= 0.1
if size < 1 {size += 0.4}


if image_alpha <= 0.1 
{instance_destroy()}

draw_sprite_ext(sprite_index,0,x,y,size,size,image_angle,image_blend,image_alpha)


