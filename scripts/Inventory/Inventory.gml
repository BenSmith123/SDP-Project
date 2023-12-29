// everything is stored in the 'global.inventory_array' as an array of arrays:
// 0 = item ID
// 1 = quantity
// e.g. [[4, 32]] 


///@description
///@param {Real} item_details - ItemId enum
///@param {Real} amount - default = 1
function inventory_add(item_details, amount = 1)
{
	var item_id_to_add = item_details.iid
	
	var length = array_length(global.inventory_array)
	if length == 0 
	{
		push_item_to_array(item_details, amount)
		exit
	}
	
	var is_inventory_full = length == global.inventory_size
	
	// if item isn't stackable and inventory isn't full, add it
	if (item_details.stack_size <= 1)
	{
		if (is_inventory_full)
		{
			push_item_to_array(item_details, amount)
			exit
		}
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
				exit
			}
		}
	}
	
	if !is_inventory_full
	{
		// if item doesn't exist in inventory
		push_item_to_array(item_details, amount)
	}

}


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


function create_inventory_items() 
{
	var length = array_length(global.inventory_array)
	if length == 0 { exit }
	
	var start_x = 160
	var gap_x = 50
		
	// check if item can be put on an existing stack
	for (var i = 0; i < length; i++) 
	{
		var inv_item = global.inventory_array[i]
		var inventory_item_id = inv_item[0]
		var inventory_item_amount = inv_item[1]
		
		var item_start_x = start_x + i * gap_x
		
		var item = instance_create_depth(item_start_x, 200, ObjectDepth.HUDItem, obj_hud_item, get_item(inventory_item_id))
		item.amount = inv_item[1]
	}
}
