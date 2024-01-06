
if !scroll_disabled
{
	var scroll_percentage = ((scrollY/-(scrollBottom))) 
	var a = ystart * scroll_percentage
	draw_sprite(spr_scroll_bar, 0, x+region_width+16, ystart+a)
	//draw_text(x+region_width+16, ystart, string((scrollY/-scrollBottom)))
}


// FOR DEBUGGING SCROLL REGION
if !global.show_debug { exit }

draw_set_alpha(0.5)
draw_rectangle(x,y, x+region_width, y+region_height, false)

draw_set_color(c_green)
draw_rectangle(x,y+scrollY, x+region_width, y+scrollY+scrollable_height, false)
draw_set_alpha(1)


draw_set_color(c_black)
scr_text_4()
var text = $"scrollY: {scrollY}#scrollBottom: {scrollBottom}#scrollTop: {scrollTop}#Scrollable height: {scrollable_height}"

draw_text(x-60, y, string_hash_to_newline(text))
