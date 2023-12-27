
#macro HIGHEST_LEVEL 100
	
#macro WIDTH2 960
#macro HEIGHT2 640

#macro WIDTH window_get_width_os()
#macro HEIGHT window_get_height_os()

// use this to cap the max window size
//#macro WIDTH min(window_get_width(), 1920)
//#macro HEIGHT min(window_get_height(), 1080)

function window_get_width_os()
{
	if global.system == SystemType.Desktop return window_get_width()
	return window_get_width() / 2
}

function window_get_height_os()
{
	if global.system == SystemType.Desktop return window_get_height()
	return window_get_height() / 2
}


#macro SCREEN_DISTANCE 1000

#macro TERMINAL_VELOCITY 12

enum ObjectDepth
{
	Controller = -10100, // debug text
	PauseMenu = -10060,
	OverlayScreen = -10050, // pick class, player dead
	HUDItem = -10010,
	HUD = -10000,
	DamageText = -6000,
	Effect = -5800,
	Projectile = -5500,
	Player = -5000,
	LevelupEffect = -4900, // sparks behind player only
	Coin = -4600,
	Item = -4500,
	NPCspeech = -4310,
	NPC = -4300,
	Ladder = -4010,
	Mob = -4000,
	Tiles = 1000
}

enum SystemType
{
	Desktop,
	Mobile
}

enum UserType
{
	Player,
	GM
}

enum PlayerClass
{
	Beginner,
	Hunter,
	Fighter,
	Ninja,
	Spellcaster
}

enum HealthColour
{
	Green,
	Orange,
	Red
}