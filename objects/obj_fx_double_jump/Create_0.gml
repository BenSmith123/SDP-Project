
event_inherited()
depth = ObjectDepth.Coin-1

image_alpha = 0.75

num = 0

if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
    sprite_index = obj_player.sprite_index
    image_xscale = obj_player.image_xscale
    alarm[0] = 1
}
