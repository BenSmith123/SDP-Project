
image_alpha -= 0.05

if image_alpha <= 0 
{instance_destroy()}

draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


