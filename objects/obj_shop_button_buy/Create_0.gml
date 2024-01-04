
event_inherited()

// set by creator
attached_item_obj = 0
cost = 0

width = 80
height = 48

on_press_accepted = function()
{
	var item_purchased = inventory_add(attached_item_obj.item_details)
		
	if !item_purchased { exit }
	global.coins -= attached_item_obj.cost
		
	update_inventory_if_open()
}

// get function instead of text because this is set after obj creation
get_text = function()
{
	return $"Buy#(${number_format_commas(attached_item_obj.cost)})"
}
