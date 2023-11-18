function set_resolution()
{

	view_enabled = true
	__view_set( e__VW.Visible, 0, true )

	__view_set( e__VW.XPort, 0, 0 )__view_set( e__VW.YPort, 0, 0 )
	__view_set( e__VW.WPort, 0, WIDTH )
	__view_set( e__VW.HPort, 0, HEIGHT )

	__view_set( e__VW.XView, 0, 0 )
	__view_set( e__VW.YView, 0, 0 )
	__view_set( e__VW.WView, 0, WIDTH )
	__view_set( e__VW.HView, 0, HEIGHT )

	if global.system = "Windows"
	{
	    window_set_fullscreen(true)
	    window_set_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ))
	}

	display_set_gui_size(WIDTH, HEIGHT)
	surface_resize(application_surface, WIDTH, HEIGHT)
}
