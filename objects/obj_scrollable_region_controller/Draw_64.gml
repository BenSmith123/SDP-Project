
/*** FOR DEBUGGING SCROLL REGION
draw_set_alpha(0.5)
draw_rectangle(x,y, x+region_width, y+region_height, false)

draw_set_color(c_green)
draw_rectangle(x,y+scrollY, x+region_width, y+scrollY+scrollable_height, false)
draw_set_alpha(1)


draw_set_color(c_black)
scr_text_4()
var text = $"scrollY: {scrollY}#scrollBottom: {scrollBottom}#scrollTop: {scrollTop}"

draw_text(x, y, string_hash_to_newline(text))
