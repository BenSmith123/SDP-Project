
depth = ObjectDepth.HUD-50
image_speed = 0

y_when_pressed = 0 // check if y hasn't changed between when pressed and released

attached_item_obj = 0 // set by creator

width = 80
height = 48

shuffle_index = function(deleted_item_index)
{
	if attached_item_obj.inventory_index > deleted_item_index
	attached_item_obj.inventory_index -= 1
}