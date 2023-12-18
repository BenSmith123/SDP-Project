function vibrate()
{
	if global.system != SystemType.Mobile { exit }
	Vibrate(10, 255) // tested on iphone 14 - params are ignored
}