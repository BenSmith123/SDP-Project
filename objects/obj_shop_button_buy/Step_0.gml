
var not_enough_coins = attached_listing_obj.cost > global.coins

disabled = not_enough_coins || attached_listing_obj.disabled
image_index = disabled
