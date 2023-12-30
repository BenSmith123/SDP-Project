// everything is stored in the 'global.inventory_array' as an array of arrays:
// 0 = item ID
// 1 = quantity
// e.g. [[4, 32]] 



///@description
function inventory_remove_by_index(inventory_index, amount_to_remove)
{
	var amount_in_inventory = global.inventory_array[inventory_index][1]
	
	if amount_in_inventory == 1 || amount_in_inventory == amount_to_remove
	{
		if instance_exists(obj_inventory) { obj_inventory.deselect_item() }
		array_delete(global.inventory_array, inventory_index, 1)
	}
	else
	{
		global.inventory_array[inventory_index][1] -= 1
	}
	
	update_inventory_if_open()
}


///@description
///@param {Real} item_details
///@param {Real} amount - default = 1
///@returns {Bool} - returns true if successful
function inventory_add(item_details, amount = 1)
{
	var item_id_to_add = item_details.iid
	
	var length = array_length(global.inventory_array)
	if length == 0 
	{
		push_item_to_array(item_details, amount)
		inventory_on_add_success()
		return true
	}
	
	var is_inventory_full = length == global.inventory_size
	var item_is_stackable = item_details.stack_size > 1
	
	
	// if inventory is full and item isn't stackable
	if is_inventory_full && !item_is_stackable
	{
		inventory_on_add_failure()
		return false 
	}
	
	// check if item can be put on an existing stack
	for (var i = 0; i < length; i++) 
	{
		var item = global.inventory_array[i]
		var inventory_item_id = item[0]
		var inventory_item_amount = item[1]
		
		// if it exists in inventory already
		if inventory_item_id == item_id_to_add
		{
			// if stack isn't full		
			if (inventory_item_amount < item_details.stack_size)
			{
				// TODO - adding multiple of the same item - no logic yet
				
				// add item to existing stack
				array_set(global.inventory_array, i, [item_id_to_add, inventory_item_amount + amount])
				log_player_message(get_item_log_message(item_details.name, amount))
				inventory_on_add_success()
				return true
			}
		}
	}
	
	if is_inventory_full
	{
		inventory_on_add_failure()
		return false
	}
	
	// if item doesn't exist in inventory
	push_item_to_array(item_details, amount)
	inventory_on_add_success()
	return true
}


function inventory_on_add_success() { update_inventory_if_open() }
function inventory_on_add_failure() { log_player_message("Inventory full!") }

function push_item_to_array(item_details, amount = 1)
{
	array_push(global.inventory_array, [item_details.iid, amount])
	log_player_message(get_item_log_message(item_details.name, amount))
}


function get_item_log_message(name, amount = 1)
{
	return amount > 1
		? $"Gained item '{name}' x${amount}"
		: $"Gained item '{name}'"
}


// updates the display of inventory items if the inventory is open
function update_inventory_if_open()
{
	// if inventory is open, force update it
	if instance_exists(obj_inventory)
	{
		instance_destroy(obj_hud_item)
		with(obj_inventory) { create_inventory_items() }
	}
}


function create_inventory_items() 
{
	var num_of_items = array_length(global.inventory_array)
	if num_of_items == 0 { exit }
	
	var item_x = slot_x_start
	var item_y = slot_y_start
		
	// check if item can be put on an existing stack
	for (var i = 0; i < num_of_items; i++) 
	{
		item_x += slot_gap
		
		var new_row	= i % 7 == 0
		if new_row
		{
			item_x = slot_x_start
			item_y += slot_gap
		}
		
		var inv_item = global.inventory_array[i]
		var inventory_item_id = inv_item[0]
		var inventory_item_amount = inv_item[1]
		
		var item = instance_create_depth(item_x, item_y, ObjectDepth.HUDItem, obj_hud_item)
		item.item_details = get_item(inventory_item_id)
		item.amount = inv_item[1]
		item.inventory_index = i
	}
}
