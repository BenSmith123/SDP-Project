

image_alpha -= 0.04
//size += 0.1

if image_alpha <= 0
{instance_destroy()}

y -= 1


draw_sprite_ext(sprite_index,0,x,y,size,size,image_angle,image_blend,image_alpha)




