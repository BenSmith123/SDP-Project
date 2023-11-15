
image_speed = 0

sprite_index = sprite84

if room = room11 {sprite_index = spr_block}
if room = room10 {sprite_index = sprite80}

can_jump_through = true // can be jumped through if theres no block above or below it
// if place_meeting(x,y+1,obj_block) {can_jump_through = true}
// if place_meeting(x,y-1,obj_block) {can_jump_through = true}
change = false

// change to scenery block if block sits pointlessly
if place_meeting(x,y-1,obj_block) // above
if place_meeting(x-1,y,obj_block) // left
if place_meeting(x+1,y,obj_block) // right
{{{change = true}}}


image_index = 1

// needed?
if not place_meeting(x+1,y,obj_block) {image_index = 3} // not right block

if not place_meeting(x-1,y,obj_block) and not place_meeting(x+1,y,obj_block) // not on left or right
{image_index = 1} 

if place_meeting(x,y-1,obj_block) {image_index = 0} // above block



// not left and not below
if not place_meeting(x-1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{image_index = 5} 

// not right not below
if not place_meeting(x+1,y,obj_block) and not place_meeting(x,y+1,obj_block)
{image_index = 2}

// not right not above
if not place_meeting(x-1,y,obj_block) and not place_meeting(x,y-1,obj_block)
{
    mask_index = spr_block_br
    image_index = 4
}

// not right not above
if not place_meeting(x+1,y,obj_block) and not place_meeting(x,y-1,obj_block)
{
	mask_index = spr_block_bl
	image_index = 3
}

if change = true
{
    block = instance_create(x,y,obj_block_blank)
    block.sprite_index = sprite_index
    block.image_index = image_index
    instance_destroy()
}




