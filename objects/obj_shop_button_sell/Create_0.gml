
event_inherited()

shuffle_index = function(deleted_item_index)
{
	if attached_item_obj.inventory_index > deleted_item_index
	attached_item_obj.inventory_index -= 1
}

on_press_accepted = function()
{
	inventory_remove_by_index(attached_item_obj.inventory_index, 1)
	attached_item_obj.amount -= 1
	global.coins += attached_item_obj.item_details.sell_value
		
	if attached_item_obj.amount == 0
	{
		attached_item_obj.disabled = true
			
		// shuffle all other shop items below this in the shop when removing item from inventory
		var item_index = attached_item_obj.inventory_index
		with obj_shop_button_sell
		{
			shuffle_index(item_index)
		}
		instance_destroy() 
	}
}

// get function instead of text because this is set after obj creation
get_text = function()
{
	return $"Sell#(${number_format_commas(attached_item_obj.item_details.sell_value)})"
}
