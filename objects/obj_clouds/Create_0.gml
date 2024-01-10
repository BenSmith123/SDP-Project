

// depth = ObjectDepth.Clouds // changing the depth will break the filters

sprite_index = choose(spr_cloud_1, spr_cloud_2, spr_cloud_3)

max_y = room_height * 0.6

// if the max_y is less than min, all clouds will appear in a line, instead pick a lower option
min_y = min(__view_get( e__VW.YView, 0) - 150, max_y - 300)

y = irandom_range(min_y, max_y)
hspeed = -random_range(0.5, 1.25)
