
enum ItemType
{
	Equipable,
	Usable,
	Misc
}

enum ItemSlot
{
	Primary,
	Secondary
}
	
enum ItemRarity
{
	Common,
	Uncommon,
	Rare,
	VeryRare,
	UltraRare,
	Legendary,
	// Mythic // ?
}
	
enum ItemId
{
	DronePiece,
	DroneHeart,
	Helmet,
	Banana,
	Battery,
	DragonEgg,
	Ruby,
	GoldPlate,
	GoldRock,
	Orb,
	RevivePotion,
	// equips
	BeginnersSword,
	BasicSword,
	BasicShuriken,
	BasicBow,
	BasicArrow,
	Kunai,
	ThrowingStar1,
	ThrowingStar2,
	SnowflakeStar,
	BanisherSword,
	AdvancedBow,
	length // KEEP THIS ON THE END
	// spellcasters book/orb?
}


// ITEM STRUCTS:

/***

// ALL ITEMS
iid - ID of the item - must be in 'ItemIds'
name
type
description
sprite
rarity
stack_size
is_sellable
sell_value

// EQUIP EXTRAS:
class,
equip_sloty,
damage_multiplier

// OPTIONAL: (default to undefined if not set)
sprite_projectile
sprite_attacking - for swinging/shooting bow
sprite_carrying


***/


///@description - initialise all items and store globally - called at game_start
function initialise_items()
{
  return [
    create_item(
	{
		iid: ItemId.DronePiece,
		name: "Drone piece",
		type: ItemType.Misc,
		description: "-",
		sprite: spr_drone_piece,
		rarity: ItemRarity.Common,
		stack_size: 50,
		is_sellable: true,
		sell_value: 10
	}),
	create_item(
	{
		iid: ItemId.DroneHeart,
		name: "Drone heart",
		type: ItemType.Misc,
		description: "Used to power the Drone Operator",
		sprite: spr_drone_heart,
		rarity: ItemRarity.Common,
		stack_size: 20,
		is_sellable: true,
		sell_value: 100
	}),
	create_item(
	{
		iid: ItemId.Helmet,
		name: "Blue Potion",
		type: ItemType.Misc,
		description: "-",
		sprite: spr_item_potion_blue,
		rarity: ItemRarity.Common,
		stack_size: 10,
		is_sellable: true,
		sell_value: 50
	}),
	create_item(
	{
		iid: ItemId.Banana,
		name: "Banana",
		type: ItemType.Misc,
		description: "A useless banana..",
		sprite: spr_item_banana,
		rarity: ItemRarity.Rare,
		stack_size: 50,
		is_sellable: true,
		sell_value: 1
	}),
	create_item(
	{
		iid: ItemId.Battery,
		name: "Battery",
		type: ItemType.Misc,
		description: "-",
		sprite: spr_item_battery,
		rarity: ItemRarity.Common,
		stack_size: 50,
		is_sellable: true,
		sell_value: 20
	}),
	create_item(
	{
		iid: ItemId.DragonEgg,
		name: "Dragon Egg",
		type: ItemType.Misc,
		description: "-",
		sprite: spr_item_dragon_egg,
		rarity: ItemRarity.Rare,
		stack_size: 10,
		is_sellable: true,
		sell_value: 300
	}),
	create_item(
	{
		iid: ItemId.GoldPlate,
		name: "Gold Plate",
		type: ItemType.Misc,
		description: "0.1% chance of finding",
		sprite: spr_item_gold_plate,
		rarity: ItemRarity.VeryRare,
		stack_size: 10,
		is_sellable: true,
		sell_value: 2000
	}),
	create_item(
	{
		iid: ItemId.GoldRock,
		name: "Gold Nugget",
		type: ItemType.Misc,
		description: "Extremely valuable gold rock..",
		sprite: spr_item_gold_rock,
		rarity: ItemRarity.Legendary,
		stack_size: 10,
		is_sellable: true,
		sell_value: 10000
	}),
	create_item(
	{
		iid: ItemId.Orb,
		name: "Orb",
		type: ItemType.Misc,
		description: "Orb used to find hidden maps.",
		sprite: spr_item_orb,
		rarity: ItemRarity.UltraRare,
		stack_size: 10,
		is_sellable: true,
		sell_value: 1500
	}),
	create_item(
	{
		iid: ItemId.RevivePotion,
		name: "Revive Potion",
		type: ItemType.Misc,
		description: "Revive and lose no coins or EXP.",
		sprite: spr_item_revive_potion,
		rarity: ItemRarity.Common,
		stack_size: 1,
		is_sellable: true,
		sell_value: 200
	}),
	create_item(
	{
		iid: ItemId.Ruby,
		name: "Ruby",
		type: ItemType.Misc,
		description: "A valuable rare ruby gem.",
		sprite: spr_item_ruby,
		rarity: ItemRarity.VeryRare,
		stack_size: 10,
		is_sellable: true,
		sell_value: 1000
	}),
	// EQUIPS
	create_item_equip(
	{
		iid: ItemId.BeginnersSword,
		name: "Beginner's Sword",
		description: "",
		class: "Beginner",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_basic_sword,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 500,
		damage_multiplier: 0,
		sprite_carrying: spr_carry_basic_sword,
		sprite_attacking: spr_swing_sword_basic
	}),
	create_item_equip(
	{
		iid: ItemId.BasicSword,
		name: "Basic Sword",
		description: "",
		class: "Fighter",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_basic_sword,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 500,
		damage_multiplier: 0,
		sprite_carrying: spr_carry_basic_sword,
		sprite_attacking: spr_swing_sword_basic_original
	}),
	create_item_equip(
	{
		iid: ItemId.BasicBow,
		name: "Basic Bow",
		description: "",
		class: "Hunter",
		equip_slot: ItemSlot.Primary,
		sprite: spr_carry_basic_bow,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 500,
		damage_multiplier: 0,
		sprite_carrying: spr_carry_basic_bow,
		sprite_attacking: spr_shoot_bow_basic
	}),
	create_item_equip(
	{
		iid: ItemId.AdvancedBow,
		name: "Advanced Bow",
		description: "+3% attack",
		class: "Hunter",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_bow_advanced,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 500,
		damage_multiplier: 0.03,
		sprite_carrying: spr_carry_advanced_bow,
		sprite_attacking: spr_shoot_bow_advanced
	}), 
	create_item_equip(
	{
		iid: ItemId.BasicShuriken,
		name: "Basic Shuriken",
		description: "",
		class: "Ninja",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_shuriken,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 500,
		damage_multiplier: 0,
		sprite_projectile: spr_projectile_basic_shuriken
	}),
	create_item_equip(
	{
		iid: ItemId.Kunai,
		name: "Kunai Throwing Knife",
		description: "+2% attack",
		class: "Ninja",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_throwing_kunai,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 700,
		damage_multiplier: 0.02,
		sprite_projectile: spr_projectile_kunai
	}),
	create_item_equip(
	{
		iid: ItemId.ThrowingStar1,
		name: "Bliss Throwing Star",
		description: "+3% attack",
		class: "Ninja",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_throwing_star_1,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 500,
		damage_multiplier: 0.03,
		sprite_projectile: spr_item_throwing_star_1
	}),			
	create_item_equip(
	{
		iid: ItemId.SnowflakeStar,
		name: "Black Snowflake Star",
		description: "+5% attack",
		class: "Ninja",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_throwing_star_3,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 2500,
		damage_multiplier: 0.05,
		sprite_projectile: spr_item_throwing_star_3
	}),
	create_item_equip(
	{
		iid: ItemId.ThrowingStar2,
		name: "Snowflake Throwing Star",
		description: "+5% attack",
		class: "Ninja",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_throwing_star_2,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 2500,
		damage_multiplier: 0.05,
		sprite_projectile: spr_item_throwing_star_2
	}),
	create_item_equip(
	{
		iid: ItemId.BanisherSword,
		name: "Banisher",
		description: "+12% damage",
		class: "Fighter",
		equip_slot: ItemSlot.Primary,
		sprite: spr_item_sword_banisher,
		rarity: ItemRarity.Common,
		is_sellable: true,
		sell_value: 500,
		damage_multiplier: 0.12,
		sprite_carrying: spr_carry_banisher,
		sprite_attacking: spr_swing_sword_banisher
	})
  ]
}


function get_item(item_id)
{
	// create an array of all items
	// NOTE - this was easier/faster to deal with than creating maps etc.
	all_items_array = global.all_items_array

	var arr_length = array_length(all_items_array)
	
	// find the item and return it
	for (var i = 0; i < arr_length; i++) 
	{
		if (all_items_array[i].iid == item_id)
		{ 
			return all_items_array[i]
		}
	}
}


global.all_items_array = 


// function for ensuring all times have the same attributes & can de defaulted easily
function create_item(item)
{
	return 
	{	
		iid: item.iid,
		name: item.name,
		type: item.type,
		description: item.description,
		sprite: item.sprite,
		rarity: item.rarity,
		stack_size: item.stack_size, // 1 being unstackable
		is_sellable: item.is_sellable,
		sell_value: item.sell_value
	}
}

// ensure all equip items have the extra vars set
function create_item_equip(item)
{
	// default overrides
	item.stack_size = 1 // force stack size of 1
	item.type = ItemType.Equipable
	
	var new_item = create_item(item)
	
	// additional equip item vars
	new_item.equip_slot = item.equip_slot
	new_item.class = item.class
	new_item.damage_multiplier = item.damage_multiplier
	
	// optional vars - default to undefined if not set
	var has_sprite_carrying = struct_exists(item, "sprite_carrying")
	var has_sprite_projectile = struct_exists(item, "sprite_projectile")
	var has_sprite_attacking = struct_exists(item, "sprite_attacking")
	
	new_item.sprite_carrying = has_sprite_carrying ? item.sprite_carrying : undefined
	new_item.sprite_projectile = has_sprite_projectile ? item.sprite_projectile : undefined
	new_item.sprite_attacking = has_sprite_attacking ? item.sprite_attacking : undefined

	return new_item
}


///@description - return the item type string (because GM doesn't support enums wtf)
function get_item_type_name(type)
{
	switch(type)
	{
		case ItemType.Equipable: return "Equipable"
		case ItemType.Usable: return "Usable"
		case ItemType.Misc: return "Misc."
		default: return "Misc."
	}
}


///@description - return the item rarity string
function get_item_rarity_name(rarity)
{
	switch(rarity)
	{
		case ItemRarity.Uncommon: return "Uncommon"
		case ItemRarity.Rare: return "Rare"
		case ItemRarity.VeryRare: return "Very rare"
		case ItemRarity.UltraRare: return "Ultra rare"
		case ItemRarity.Legendary: return "Legendary"
		default: return "Common"
	}
}