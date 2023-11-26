///@description
///@param {Real} itemIdToAdd - ItemId enum
///@param {Real} amount - default = 1
function inventory_add(itemIdToAdd, amount = 1)
{
	var itemDetails = get_item(itemIdToAdd)
	
	var length = array_length(global.inventory_array)
	if length == 0 
	{
		push_item_to_array(itemDetails, amount)
		exit
	}
	
	var isInventoryFull = length == global.inventory_size
	
	// if item isn't stackable and inventory isn't full, add it
	if (itemDetails.stackSize <= 1)
	{
		if (isInventoryFull)
		{
			push_item_to_array(itemDetails, amount)
			exit
		}
	}
	
	// check if item can be put on an existing stack
	for (var i = 0; i < length; i++) {
		var item = global.inventory_array[i]
		var inventoryItemId = item[0]
		var inventoryItemAmount = item[1]
		
		// if it exists in inventory already
		if inventoryItemId == itemIdToAdd
		{
			// if stack isn't full		
			if (inventoryItemAmount < itemDetails.stackSize)
			{
				// TODO - adding multiple of the same item - no logic yet
				
				// add item to existing stack
				array_set(global.inventory_array, i, [itemIdToAdd, inventoryItemAmount + amount])
				log_player_message(get_item_log_message(itemDetails.name, amount))
				exit
			}
		}
	}
	
	if !isInventoryFull
	{
		// if item doesn't exist in inventory
		push_item_to_array(itemDetails, amount)
	}

}


function push_item_to_array(itemDetails, name, amount = 1)
{
	array_push(global.inventory_array, [itemDetails.iid, amount])
	log_player_message(get_item_log_message(name, amount))
}


function get_item_log_message(name, amount = 1)
{
	return amount > 1
		? $"Gained item '{name}' x${amount}"
		: $"Gained item '{name}'"
}

