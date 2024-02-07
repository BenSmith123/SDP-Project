
event_inherited()

title = "Game utils"

shop_items = 
[
	{
		type: SellableType.Action,
		cost: 1_000,
		title: "Increase inventory slot",
		description: "",
		sprite: spr_shop_item_add_inventory_slot,
		on_purchase: function() { global.inventory_size += 1 },
		disabled: global.inventory_size >= global.inventory_size_max
	},
	{
		type: SellableType.Action,
		cost: 10_000,
		title: "Seeker",
		description: "A companion that will follow you and pick up coins",
		sprite: spr_seeker,
		on_purchase: function() {  } // TODO - implement
	},
	{
		type: SellableType.Action,
		cost: 100_000,
		title: "Game developer controls",
		description: "Change class, spawn mobs, teleport etc.",
		sprite: spr_heart_pickup,
		on_purchase: function() { global.is_game_master = true }
	}
]

create_shop_items()
