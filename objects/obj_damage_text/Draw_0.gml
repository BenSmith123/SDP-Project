
/*
bla = instance_nearest(x,y,ai_parent)
//move_towards_point(bla.x,bla.y,5)

x = bla.x
y = bla.y+y2

*/

if image_xscale < 1
{image_xscale += 0.1
image_yscale += 0.1}
else
{image_alpha -= 0.06}


y -= 0.5


x = round(x)
//y = round(y)

if image_alpha <= 0
{
    instance_destroy()
}

scr_text_2()

//draw_set_font(font3)
//draw_text_color(x-1,y-1,damage,c_white,c_white,c_white,c_white,image_alpha-0.3)
draw_text_transformed_color(x+1,y+1,string_hash_to_newline(damage),image_xscale,image_yscale,0,c_white,c_white,c_white,c_white,image_alpha-0.3)
scr_text_2()
draw_text_transformed_color(x,y,string_hash_to_newline(damage),image_xscale,image_yscale,0,col1,col2,col3,col4,image_alpha)








/* */
/*  */
