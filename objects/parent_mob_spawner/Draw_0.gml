
if global.show_debug
{
	image_alpha = 0.5
	image_blend = c_green
	draw_self()
	draw_text(x,bbox_top-24, $"{mob_count}/{mobs_to_spawn}")
	draw_text(x,bbox_top-12, $"({mob_limit} max)")
}