function scr_ai_detect_platform_width() {

	// why is this needed?

	block = instance_nearest(x+platform_width,y+20,obj_block)

	if position_meeting(block.x+24,block.y,obj_block)
	{
	    platform_width += 24
	}



}
