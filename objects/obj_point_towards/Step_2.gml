
var dir = point_direction(x, y, mouse_x, mouse_y)
var rotate_speed = 4
image_angle += sin(degtorad(dir - image_angle)) * rotate_speed

/*
direction = image_angle
speed = 3