
image_alpha -= 0.1


if image_alpha <= 0.1 
{instance_destroy()}

draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
