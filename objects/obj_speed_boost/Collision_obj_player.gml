
if active = true
{
    fx = instance_create(x,y,obj_fx_pick_up)
    fx.sprite_index = sprite_index

    obj_player.walk_speed = obj_player.start_speed*1.5
    active = false
    
    alarm[0] = 600
}



