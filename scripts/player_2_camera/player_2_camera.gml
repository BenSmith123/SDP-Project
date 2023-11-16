function player_2_camera() {

	x1 = obj_player.x
	y1 = obj_player.y

	x2 = obj_player_2.x
	y2 = obj_player_2.y

	padding = 200; vw = __view_get( e__VW.WPort, 0 ); vh = __view_get( e__VW.HPort, 0 )
	vscale = max(1, abs(x2 - x1) / (vw - padding * 2), abs(y2 - y1) / (vh - padding * 2))


	__view_set( e__VW.WView, 0, vscale * vw )
	__view_set( e__VW.XView, 0, (x1 + x2 - __view_get( e__VW.WView, 0 )) / 2 )


	__view_set( e__VW.HView, 0, vscale * vh )
	__view_set( e__VW.YView, 0, (y1 + y2 - __view_get( e__VW.HView, 0 )) / 2 )

}
