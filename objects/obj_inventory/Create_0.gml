
event_inherited()

title = "Inventory"

selected_item_inv_index = -1
selected_item_amount = 0
selected_item_details = {}

center_x = WIDTH / 2

// fixed inventory size
inventory_width = 760
inventory_height = 440

inventory_x = center_x - inventory_width / 2
inventory_y = (global.screen_h / 4) - 80

slot_x_start = inventory_x + 38
slot_y_start = inventory_y + 56
slot_gap = 52

instance_create(inventory_x + inventory_width, inventory_y, obj_dialog_close_button)

create_inventory_items()

button_obj_drop_item = 0
button_obj_drop_stack = 0

create_drop_item_buttons = function(inv_item_index, item_details, amount)
{
	selected_item_details = item_details
	selected_item_inv_index = inv_item_index
	selected_item_amount = amount
	
	// drop item buttons
	var xx = obj_inventory.center_x + obj_inventory.inventory_width/4
	var yy = obj_inventory.inventory_y+300

	button_obj_drop_item = instance_create(xx, yy, obj_button_generic)
	button_obj_drop_item.text = "Drop item"
	button_obj_drop_item.pressed_function = function() { inventory_remove_by_index(selected_item_inv_index, 1) }

	button_obj_drop_stack = instance_create(xx, yy+80, obj_button_generic)
	button_obj_drop_stack.text = $"Drop stack ({amount})"
	button_obj_drop_stack.pressed_function = function() { inventory_remove_by_index(selected_item_inv_index, selected_item_amount) }
}


deselect_item = function()
{
	instance_destroy(button_obj_drop_item)
	instance_destroy(button_obj_drop_stack)
	selected_item_inv_index = -1
}