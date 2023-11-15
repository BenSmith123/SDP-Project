
if is_on_screen() = false
{
    marker = instance_create(x,y,obj_mob_marker)
    marker.name = name
    marker.hp = hp
    instance_destroy()
}

