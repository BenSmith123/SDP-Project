
part_particles_create(global.fx,xprevious,yprevious,global.fx_smoke,1)

var target_obj = obj_player

if !instance_exists(target_obj) { exit }

var dir = point_direction(x, y, target_obj.x, target_obj.y)
var rotate_speed = 4
image_angle += sin(degtorad(dir - image_angle)) * rotate_speed

direction = image_angle
