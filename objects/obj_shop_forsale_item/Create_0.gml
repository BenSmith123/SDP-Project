
event_inherited()

// set by creator
listing_details = {}
sellable_type = 0
inventory_item_id = 0 // optional (might not be inventory item for sale)

disabled = false

var buy_button = instance_create(x+142, y, obj_shop_button_buy)
buy_button.attached_listing_obj = id
buy_button.sellable_type = sellable_type

// draw event to be ran on the parent (this way the parent controls the full scroll image_alpha)
draw_event = function()
{
	draw_sprite(listing_details.sprite, 0, x-162, y+18)

	draw_text(x-188, y-16, listing_details.description)
	draw_set_font(font_arial_12_bold)
	draw_text(x-188, y-34, listing_details.title)
}