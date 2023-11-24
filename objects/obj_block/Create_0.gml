
depth = ObjectDepth.Tiles

image_speed = 0

sprite_index = sprite84

if room = room1 {exit}
if room = room11 {sprite_index = spr_block}
if room = room10 {sprite_index = sprite80}

var change = false

var block_above = place_meeting(x,y-1,obj_block)
var block_below = place_meeting(x,y+1,obj_block)
var block_left = place_meeting(x-1,y,obj_block)
var block_right = place_meeting(x+1,y,obj_block)


// change to scenery block if block sits pointlessly
if block_above
if block_left
if block_right
{{{change = true}}}

image_index = 1


if not block_left and not block_right // not on left or right
{image_index = 1} 

if block_above {image_index = 0}

// not left and not below
if not block_left and not block_below
{image_index = 5} 

// not right not below
if not block_right and not block_below
{image_index = 2}

if change == true
{
    block = instance_create(x,y,obj_block_blank)
    block.sprite_index = sprite_index
    block.image_index = image_index
    instance_destroy()
}

//if collision_line(x,y,x,room_height+300,obj_block,false,true) == noone { exit }

// not right not above
if not block_left and not block_above
{
	instance_create(x,y,obj_block_slope_right)
	instance_destroy()
	exit // don't remove - strange that this is needed?
}

// not right not above
if not block_right and not block_above
{
	instance_create(x,y,obj_block_slope_left)
	instance_destroy()
}





