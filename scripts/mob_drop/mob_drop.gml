///@description Drop items/coins. Called when mob is killed
function mob_drop()
{
	
	var coin_min = 0
	var coin_max = 10
	
	// TODO - enum for each mob instead of checking object_index?	
	switch(object_index)
	{
		case obj_ai_1: 
			mob_drop_item(ItemId.DronePiece)
		break
		
		case obj_ai_2: 
			mob_drop_item(ItemId.DroneHeart)
			coin_min = 20
			coin_max = 40
		break
		
		case obj_mob_training_bot: 
			mob_drop_item(ItemId.Battery)
			coin_max = 0
		break
		
		case obj_mob_dragon: 
			mob_drop_item(ItemId.Battery)
			coin_min = 20
			coin_max = 40
		break
	}
	
	// common drops!
	mob_drop_item(ItemId.Helmet, 30)
	mob_drop_item(ItemId.Banana, 100)
	
	mob_drop_item(ItemId.GoldPlate, 500)
	mob_drop_item(ItemId.GoldRock, 1000)
	mob_drop_item(ItemId.Orb, 150)
	mob_drop_item(ItemId.RevivePotion, 300)
	mob_drop_item(ItemId.Ruby, 100)

	mob_drop_coins(coin_min, coin_max)

}


/// @param item_id {ItemId}
function mob_drop_item(item_id, chance = 0) 
{
	if chance != 0 // default skip this and 100% spawn
	{ 
		if !random_chance(chance) { exit }
	}
	
	var item_details = get_item(item_id)
	
	var item = instance_create(x, y, obj_item_pickup_any)
	item.sprite_index = item_details.sprite
	item.item_details = item_details
	
	// randomise where the item is dropped
	item.hspeed = irandom_range(-3,3)
    item.vspeed = irandom_range(-2,-4)
}


///@description Create random num of coins in random directions from mob
function mob_drop_coins(minimum = 0, maximum = 10)
{
    var coin_num = irandom_range(minimum, maximum)
    repeat(coin_num)
    {
		var coin = instance_create(x,y,obj_coin)
		// randomise where the item is dropped
		coin.hspeed = irandom_range(-3,3)
	    coin.vspeed = irandom_range(-2,-4)
    }
}
