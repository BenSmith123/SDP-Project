
// type of item sold at a store
enum SellableType
{
	Item, // items must have a corresponding item ID
	Action // actions run a function on purchase
}

dialog_width = 960
dialog_height = 520

event_inherited()


title = "Shop"

instance_create(dialog_x_center_right, dialog_y_top+80, obj_coin_display)

scrollable_y = dialog_y_top+132
region_height = 367

item_gap = 68
item_start_y = dialog_y_top+132 + item_gap/2

create_player_inventory_items = function()
{
	var num_of_items = array_length(global.inventory_array)
	if num_of_items == 0 { exit }
	
	// create scrolling controller
	scroll_region_item_obj = instance_create(dialog_x_center_right, scrollable_y, obj_scrollable_region_controller)
	scroll_region_item_obj.region_height = region_height

	var item_y = item_start_y
		
	for (var i = 0; i < num_of_items; i++) 
	{	
		var inv_item = global.inventory_array[i]
		var inventory_item_id = inv_item[0]
		var inventory_item_amount = inv_item[1]
		
		var item = instance_create_depth(dialog_x_center_right, item_y, ObjectDepth.HUDItem, obj_shop_inventory_item)
		item.top_y = item_start_y-20 // top to start fading out
		item.bottom_y = scroll_region_item_obj.y + scroll_region_item_obj.region_height - 50 // fade out bottom
		item.scrollable_controller = scroll_region_item_obj
		item.item_details = get_item(inventory_item_id)
		item.amount = inv_item[1]
		item.inventory_index = i
		
		item_y += item_gap
	}
	
	scroll_region_item_obj.scrollable_height = instance_number(obj_shop_inventory_item) * item_gap // + item_gap/2
}

create_player_inventory_items()


// array of all shop items to create
shop_items = 
[
	{
		type: SellableType.Item,
		item_id: 0,
		cost: 1000
	}
]


// called by child once the items have been set
create_shop_items = function()
{
	var num_of_items = array_length(shop_items)
	if num_of_items == 0 { exit }

	// create scrolling controller
	scroll_region_forsale_obj = instance_create(dialog_x_center_left, scrollable_y, obj_scrollable_region_controller)
	scroll_region_forsale_obj.region_height = region_height

	var item_y = item_start_y
		
	for (var i = 0; i < num_of_items; i++) 
	{	
		var sell_details = shop_items[i]
		var item_id = sell_details.item_id
		var cost = sell_details.cost
		
		var item_obj = instance_create_depth(dialog_x_center_left, item_y, ObjectDepth.HUDItem, obj_shop_forsale_item)
		item_obj.cost = cost
		item_obj.top_y = item_start_y // top to start fading out
		item_obj.bottom_y = scroll_region_forsale_obj.y + scroll_region_forsale_obj.region_height - 100 // fade out bottom
		item_obj.scrollable_controller = scroll_region_forsale_obj
		
		// TODO - if not sell type is item
		item_obj.item_details = get_item(item_id)
		
		item_y += item_gap
	}
	
	scroll_region_forsale_obj.scrollable_height = instance_number(obj_shop_forsale_item) * item_gap + item_gap/2
}
