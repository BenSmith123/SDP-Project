
event_inherited()

title = "Inventory"

selected_item_inv_index = -1
selected_item_amount = 0
selected_item_details = {}

// TODO - a lot of the below variables are the same as the parent dialog
// replace them with parent_dialog since its more descriptive & optimised
inventory_width = 760
inventory_height = 440

inventory_x = dialog_center_x - inventory_width / 2
inventory_y = global.dialog_y_pos

slot_x_start = inventory_x + 38
slot_y_start = inventory_y + 56
slot_gap = 52



create_inventory_items()

// create the equip slots
instance_create(dialog_center_x+64, slot_y_start+slot_gap, obj_inventory_equipped_primary)
instance_create(dialog_center_x+160, slot_y_start+slot_gap, obj_inventory_equipped_secondary)
//instance_create(dialog_center_x+64, slot_y_start+slot_gap, obj_inventory_equipped_primary)

button_drop = 0
button_drop_stack = 0
equip_button = 0

button_font = font_arial_12_bold

create_drop_item_buttons = function(inv_item_index, item_details)
{
	deselect_item()
	selected_item_details = item_details
	selected_item_inv_index = inv_item_index
	selected_item_amount = global.inventory_array[selected_item_inv_index][1]
	
	// drop item buttons
	var drop_button_x = dialog_center_x + dialog_width / 4
	var yy = inventory_y+402
	
	// create equip button
	if selected_item_details.type = ItemType.Equipable
	{
		var dialog_eighth = dialog_width / 8
		drop_button_x = dialog_center_x + dialog_eighth
		equip_button = instance_create(dialog_x_right-dialog_eighth, yy-42, obj_dialog_button_generic)
		equip_button.font = button_font
		equip_button.text = "Equip"
		
		equip_button.pressed_function = function()
		{
			// TODO - check item class
			
			// equips cannot be stacked - prevent equipping item if currently equipped can't go in inventory
			if array_length(global.inventory_array) == global.inventory_size_max
			{
				log_player_message("Unable to equip item - inventory full")
				exit
			}
			
			// set the new primary/secondary item
			var is_primary_slot = selected_item_details.equip_slot == ItemSlot.Primary
			
			// put currently equipped item back in inventory
			var item_to_put_back = is_primary_slot 
				? global.equip_item_id_primary 
				: global.equip_item_id_secondary
				
			if is_primary_slot
			{ 
				global.equip_item_id_primary = selected_item_details.iid
				obj_inventory_equipped_primary.item_details = selected_item_details
			}
			else
			{ 
				global.equip_item_id_secondary = selected_item_details.iid 
				obj_inventory_equipped_secondary.item_details = selected_item_details
			}
			
			// global.player_projectile_sprite = selected_item_details.
			
			// TODO - handle multiple damage multipliers from all equips rather than just overwrite it each time
			global.equip_damage_multiplier = selected_item_details.damage_multiplier
				
			// remove item being equipped
			inventory_remove_by_index(selected_item_inv_index, 1)
			
			// adding item will update the inventory dialog
			inventory_add(get_item(item_to_put_back))
		}
	}

	// single item button
	button_drop = instance_create(drop_button_x, yy-42, obj_dialog_button_generic)
	button_drop.sprite_index = spr_button_bg_3
	button_drop.text = "Drop item"
	button_drop.font = button_font
	
	button_drop.pressed_function = function()
	{ 
		inventory_remove_by_index(selected_item_inv_index, 1)
		update_inventory_if_open()
		if instance_exists(button_drop_stack) 
		{
			var item_amount = global.inventory_array[selected_item_inv_index][1]
			button_drop_stack.text = $"Drop stack ({item_amount})"
		}
	}
	
	// drop stack button
	if selected_item_amount <= 1 { exit }

	button_drop_stack = instance_create(drop_button_x, yy, obj_dialog_button_generic)
	button_drop_stack.sprite_index = spr_button_bg_3
	button_drop_stack.text = $"Drop stack ({selected_item_amount})"
	button_drop_stack.font = button_font
	button_drop_stack.pressed_function = function() 
	{ 
		inventory_remove_by_index(selected_item_inv_index, selected_item_amount) 
		update_inventory_if_open()
	}
}


deselect_item = function()
{
	instance_destroy(button_drop)
	instance_destroy(button_drop_stack)
	instance_destroy(equip_button)
	selected_item_details = {}
}