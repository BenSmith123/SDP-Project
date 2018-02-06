
// set the default sprite_index and tile_index
global.block_sprite = spr_block_steel
global.tile_sprite = tile_block

// change the sprites based on the current level
if room = room11
{
    global.block_sprite = spr_block_steel
    global.tile_sprite = tile_steel
}

if room = room10 
{
    global.block_sprite = spr_block_dirt
    global.tile_sprite = tile_dirt
}
