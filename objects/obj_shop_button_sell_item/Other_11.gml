
//if disabled { exit }

image_index = 0

// if item hasn't been scrolled
if y_when_pressed == y
{
	if image_alpha > 0.75 // if item isn't scrolled out of view
	{
		inventory_remove_by_index(attached_item_obj.inventory_index, 1)
		attached_item_obj.amount -= 1
		global.coins += attached_item_obj.item_details.sell_value
		
		if attached_item_obj.amount == 0
		{
			attached_item_obj.disabled = true
			
			// shuffle all other shop items below this in the shop when removing item from inventory
			var item_index = attached_item_obj.inventory_index
			with obj_shop_button_sell_item
			{
				shuffle_index(item_index)
			}
			instance_destroy() 
		}
	}
}
