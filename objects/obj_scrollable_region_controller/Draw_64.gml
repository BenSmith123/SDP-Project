
if !scroll_disabled
{
	var yy = (scrollY/-scrollBottom) * 200 // 200% for some reason..
	//var vv = min(ystart+yy, region_height)
	draw_sprite(spr_scroll_bar, 0, x+region_width+16, ystart+yy)
}


// FOR DEBUGGING SCROLL REGION
/*
draw_set_alpha(0.5)
draw_rectangle(x,y, x+region_width, y+region_height, false)

draw_set_color(c_green)
draw_rectangle(x,y+scrollY, x+region_width, y+scrollY+scrollable_height, false)
draw_set_alpha(1)


draw_set_color(c_black)
scr_text_4()
var text = $"scrollY: {scrollY}#scrollBottom: {scrollBottom}#scrollTop: {scrollTop}#disabled: {scroll_disabled}"

draw_text(x-60, y, string_hash_to_newline(text))
