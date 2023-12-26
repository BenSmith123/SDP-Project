
if image_xscale < 1
{
	image_xscale += 0.1
	image_yscale += 0.1
}
else
{image_alpha -= 0.06}

y -= 1

if image_alpha <= 0
{
    instance_destroy()
}

if (damage < 0) damage = 0

var digits_num = string_length(string(damage))

for(var i = digits_num; i != 0; i--)
{
	var digit = get_digit(damage, i)
	var x_pos = i * 22
	draw_sprite_ext(sprite_index, digit, x + x_pos, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}



/*
scr_text_2()

var col = c_white

//draw_text_color(x-1,y-1,damage,c_white,c_white,c_white,c_white,image_alpha-0.3)
draw_text_transformed_color(x+1,y+1,damage,image_xscale,image_yscale,0,col,col,col,col,image_alpha-0.3)
//draw_text_transformed_color(x-1,y-1,damage,image_xscale,image_yscale,0,col,col,col,col,image_alpha-0.3)
//draw_text_transformed_color(x-1,y+1,damage,image_xscale,image_yscale,0,col,col,col,col,image_alpha-0.3)
//draw_text_transformed_color(x+1,y-1,damage,image_xscale,image_yscale,0,col,col,col,col,image_alpha-0.3)



draw_text_transformed_color(x,y,damage,image_xscale,image_yscale,0,col1,col2,col3,col4,image_alpha+0.2)

