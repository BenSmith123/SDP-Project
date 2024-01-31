
event_inherited()

title = "Game utils"

shop_items = 
[
	{
		type: SellableType.Action,
		cost: 10_000,
		title: "Seeker",
		description: "A companion that will follow you and pick up coins",
		sprite: spr_seeker,
		on_purchase: function() { global.is_game_master = true } // TODO - implement
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
