
event_inherited()

item_details = {}
disabled = false

var buy_button = instance_create(x+102, y, obj_shop_button_buy)
buy_button.attached_item_obj = id

// draw event to be ran on the parent (this way the parent controls the full scroll image_alpha)
draw_event = function()
{
	draw_sprite(item_details.sprite, 0, x-112, y+10)
	draw_text(x-138, y-18, item_details.name)
}