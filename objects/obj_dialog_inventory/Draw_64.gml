
event_inherited()

draw_sprite_stretched(spr_hud_line_verticle, 0, dialog_center_x, inventory_y+80, 1, inventory_height-100)

scr_text_4()
draw_text(dialog_x_center_right, inventory_y+70, "Equipped")

// draw the EMPTY grid of slots!
var slot_x = slot_x_start
var slot_y = slot_y_start

var num_of_slots = global.inventory_size_max

for (var i = 0; i < num_of_slots; i++) 
{
	slot_x += slot_gap
		
	var new_row	= i % 7 == 0
	if new_row
	{
		slot_x = slot_x_start
		slot_y += slot_gap
	}
	
	var slot_locked = i >= global.inventory_size
	draw_sprite(spr_inventory_item_background, slot_locked, slot_x, slot_y)
}



// check if the item_details is not empty (item or equip has been selected)
if struct_exists(selected_item_details, "name")
{
	var details_x = WIDTH/2+16
	var details_y = 276
	
	draw_sprite(selected_item_details.sprite, 0, details_x+10, details_y+8)
	scr_text_6()
	
	draw_text(details_x, details_y+32, "Description: " + selected_item_details.description)
	draw_text(details_x, details_y+60, $"Rarity: {get_item_rarity_name(selected_item_details.rarity)}")
	draw_text(details_x, details_y+86, $"Type: {get_item_type_name(selected_item_details.type)}")
	draw_text(details_x, details_y+112, "Sellable") // TODO

	// title
	draw_set_font(font_arial_12_bold)
	draw_text(details_x+32, details_y, selected_item_details.name)
}