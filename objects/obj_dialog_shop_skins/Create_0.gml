
event_inherited()

title = "Skins shop"

shop_items = 
[
	{
		type: SellableType.Action,
		cost: 1,
		title: "Skin0",
		description: "",
		sprite: spr_skin_0_stand,
		on_purchase: function() { on_purchase_skin(PlayerSkinId.Default)}
	},
	{
		type: SellableType.Action,
		cost: 1,
		title: "Knight",
		description: "",
		sprite: spr_skin_3_stand,
		on_purchase: function() { on_purchase_skin(PlayerSkinId.Knight)}
	},
	{
		type: SellableType.Action,
		cost: 1,
		title: "Shadow",
		description: "",
		sprite: spr_skin_2_stand,
		on_purchase: function() { on_purchase_skin(PlayerSkinId.Shadow)}
	},
	{
		type: SellableType.Action,
		cost: 1,
		title: "Ben",
		description: "",
		sprite: spr_skin_1_stand,
		on_purchase: function() { on_purchase_skin(PlayerSkinId.Ben)}
	}
]

create_shop_items(90, -9)
