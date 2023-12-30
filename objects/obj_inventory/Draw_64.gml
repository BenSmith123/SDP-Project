
// background
draw_sprite_stretched(sprite_index, 0, inventory_x, inventory_y, inventory_width, inventory_height)

scr_text_2()
draw_text(center_x, inventory_y+40, title)

draw_sprite_stretched(spr_hud_line_verticle, 0, center_x, inventory_y+80, 1, inventory_height-100)


// draw the EMPTY grid of slots!
var slot_x = slot_x_start
var slot_y = slot_y_start

var num_of_slots = 42

for (var i = 0; i < num_of_slots; i++) 
{
	slot_x += slot_gap
		
	var new_row	= i % 7 == 0
	if new_row
	{
		slot_x = slot_x_start
		slot_y += slot_gap
	}
	draw_sprite(spr_inventory_item_background, 0, slot_x, slot_y)
}



if selected_item_inv_index != -1
{
	var details_x = WIDTH/2+16
	var details_y = 180
	
	draw_sprite(selected_item_details.sprite, 0, details_x+10, details_y+8)
	scr_text_6()
	
	draw_text(details_x, details_y+32, "Description: " + selected_item_details.description)
	draw_text(details_x, details_y+60, $"Rarity: {get_item_rarity_name(selected_item_details.rarity)}")
	draw_text(details_x, details_y+86, "Type: Misc.")	// TODO
	draw_text(details_x, details_y+112, "Sellable: Yes") // TODO

	// title
	draw_set_font(font_arial_12_bold)
	draw_text(details_x+32, details_y, selected_item_details.name)
}