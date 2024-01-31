
event_inherited()

// set by creator
attached_listing_obj = 0
cost = 0
sellable_type = 0 // SellableType enum

width = 80
height = 48

on_press_accepted = function()
{
	var cost = attached_listing_obj.cost
	
	if attached_listing_obj.sellable_type == SellableType.Action
	{
		global.coins -= cost
		with (attached_listing_obj) { on_purchase() }
		exit
	}
	
	// inventory item purchased
	var item = get_item(attached_listing_obj.inventory_item_id)
	var item_purchased = inventory_add(item)
	
	if !item_purchased { exit } // exit if inventory full etc.
	global.coins -= cost
		
	update_inventory_if_open()
}

// get function instead of text because this is set after obj creation
get_text = function()
{
	return $"Buy#${number_format_commas(attached_listing_obj.cost)}"
}
