
if global.show_debug
{
	image_alpha = 0.4
	image_blend = c_lime
	draw_self()
	draw_text(x,bbox_top-24, $"{mob_count}/{mobs_to_spawn}")
	draw_text(x,bbox_top-12, $"({mob_limit} max)")
}