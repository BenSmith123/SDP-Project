
#macro HIGHEST_LEVEL 100
#macro WIDTH window_get_width()
#macro HEIGHT window_get_height()
#macro HEIGHT2 640
#macro WIDTH2 960
#macro SCREEN_DISTANCE 1000

#macro TERMINAL_VELOCITY 12

enum ObjectDepth
{
	Controller = -10100, // debug text
	OverlayScreen = -10050, // pick class, player dead
	HUD = -10000,
	DamageText = -6000,
	Effect = -5800,
	Projectile = -5500,
	Player = -5000,
	LevelupEffect = -4900, // sparks behind player only
	Coin = -4600,
	Item = -4500,
	Mob = -4000,
	Tiles = 1000
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