
event_inherited()

title = "Inventory"

selected_item_inv_index = -1
selected_item_amount = 0
selected_item_details = {}

// TODO - a lot of the below variables are the same as the parent dialog
// replace them with parent_dialog since its more descriptive & optimised

// fixed inventory size
inventory_width = 760
inventory_height = 440

inventory_x = dialog_center_x - inventory_width / 2
inventory_y = global.dialog_y_pos

slot_x_start = inventory_x + 38
slot_y_start = inventory_y + 56
slot_gap = 52

create_inventory_items()

button_obj_drop_item = 0
button_obj_drop_stack = 0

create_drop_item_buttons = function(inv_item_index, item_details)
{
	deselect_item()
	selected_item_details = item_details
	selected_item_inv_index = inv_item_index
	selected_item_amount = global.inventory_array[selected_item_inv_index][1]
	
	// drop item buttons
	var xx = obj_inventory.dialog_center_x + obj_inventory.inventory_width/4
	var yy = obj_inventory.inventory_y+300

	button_obj_drop_item = instance_create(xx, yy, obj_dialog_button_generic)
	button_obj_drop_item.text = "Drop item"
	button_obj_drop_item.pressed_function = function()
	{ 
		inventory_remove_by_index(selected_item_inv_index, 1)
		if instance_exists(button_obj_drop_stack) 
		{
			var item_amount = global.inventory_array[selected_item_inv_index][1]
			button_obj_drop_stack.text = $"Drop stack ({item_amount})" 
		}
	}
	
	if selected_item_amount <= 1 { exit }

	button_obj_drop_stack = instance_create(xx, yy+80, obj_dialog_button_generic)
	button_obj_drop_stack.text = $"Drop stack ({selected_item_amount})"
	button_obj_drop_stack.pressed_function = function() { inventory_remove_by_index(selected_item_inv_index, selected_item_amount) }
}


deselect_item = function()
{
	instance_destroy(button_obj_drop_item)
	instance_destroy(button_obj_drop_stack)
	selected_item_inv_index = -1
}