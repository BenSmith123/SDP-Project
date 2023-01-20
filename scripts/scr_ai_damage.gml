// PARAM: argument0 = object that ai is hitting

target = argument0 // set argument0 to the target

if target.can_be_hit = true
{
    target.can_be_hit = false
    target.alarm[2] = 30 // can be hit again
    
    part_particles_create(global.fx,x,y,global.boost_fx,20)
    
    text = instance_create(target.x,target.y-30,obj_damage_text)
    
    // colour the text
    text.col1 = c_black
    text.col2 = c_red
    text.col3 = c_red
    text.col4 = c_maroon
    
    do_damage = scr_calcuelate_damage(target)
    
    
    if do_damage = true // if damage was done to the ai
    {
        // update the colour of the target health bar
        if target.hp <= target.max_hp*0.6 {target.health_colour = 2}
        if target.hp <= target.max_hp*0.2 {target.health_colour = 3}
    
        if x < target.x // if bullet is left of the enemy
        {target.hspeed = 3
        image_xscale = -1} 
        else 
        {target.hspeed = -3
        image_xscale = 1} // right
        
        target.vspeed = -1
        
        obj_hud.hit_alpha = 1
        
    }
    
}
