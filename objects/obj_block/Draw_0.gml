
draw_self()
/*
if global.show_debug
{
	if (mask_index) draw_sprite_ext(mask_index,0,x,y,image_xscale,image_yscale,image_angle,c_aqua,0.5);
}


///@description
///@param {Real} item_id_to_add - ItemId enum
///@param {Real} amount - default = 1
function inventory_add(item_id_to_add, amount = 1)
{
	var item_details = get_item(item_id_to_add)
	
	var length = array_length(global.inventory_array)
	if length == 0 
	{
		push_item_to_array(item_details, amount)
		exit
	}
	
	var isInventoryFull = length == global.inventory_size
	
	// if item isn't stackable and inventory isn't full, add it
	if (item_details.stackSize <= 1)
	{
		if (isInventoryFull)
		{
			push_item_to_array(item_details, amount)
			exit
		}
	}
	
	// check if item can be put on an existing stack
	for (var i = 0; i < length; i++) {
		var item = global.inventory_array[i]
		var inventory_item_id = item[0]
		var inventory_item_amount = item[1]
		
		// if it exists in inventory already
		if inventory_item_id == item_id_to_add
		{
			// if stack isn't full		
			if (inventory_item_amount < item_details.stackSize)
			{
				// TODO - adding multiple of the same item - no logic yet
				
				// add item to existing stack
				array_set(global.inventory_array, i, [item_id_to_add, inventory_item_amount + amount])
				log_player_message(get_item_log_message(item_details.name, amount))
				exit
			}
		}
	}
	
	if !isInventoryFull
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

