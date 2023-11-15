
image_alpha += 0.1
size += 0.02

if image_alpha > 1.5 
{instance_destroy()}

draw_sprite_ext(sprite_index,1,x,y,size,size,image_angle,image_blend,image_alpha)


