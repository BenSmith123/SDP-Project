
if image_xscale < 1
{
	image_xscale += 0.2
	image_yscale += 0.2
}
else
{image_alpha -= 0.06}

y -= 1

if image_alpha <= 0
{
    instance_destroy()
}

for (var i = 0; i < num_of_digits; i++)
{
	var x_pos = i * space_between_digits
	draw_sprite_ext(sprite_index, digits[i], x + x_pos, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}


/****
// text version:
scr_text_2()
var col = c_white
draw_text_transformed_color(x+1,y+1,damage,image_xscale,image_yscale,0,col,col,col,col,image_alpha-0.3)
draw_text_transformed_color(x,y,damage,image_xscale,image_yscale,0,col1,col2,col3,col4,image_alpha+0.2)
