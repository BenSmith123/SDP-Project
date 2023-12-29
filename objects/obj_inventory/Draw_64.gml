
var padding = 100
var padding_2 = padding * 2

draw_sprite_stretched(sprite_index, 0, padding, padding, width, height)

scr_text_2()
draw_text(center_x, 140, title)

draw_sprite_stretched(spr_hud_line_verticle, 0, center_x, padding+80, 1, HEIGHT-padding_2-100)


// draw the grid of slots!
var slot_x_start = width / 2 - 242
var slot_y_start = height / 2 - 80
var slot_x = slot_x_start
var slot_y = 0
var gap = 52

var num_of_slots = 42

for (var i = 0; i < num_of_slots; i++) 
{
	slot_x += gap
		
	var new_row	= i % 7 == 0
	if new_row
	{
		slot_x = slot_x_start
		slot_y += gap
	}
	draw_sprite(spr_inventory_item_background, 0, slot_x, slot_y+140)
}