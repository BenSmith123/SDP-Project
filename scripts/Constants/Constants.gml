
#macro HIGHEST_LEVEL 100

// min half-size mobile display size
// some Androids claim their resolution is lower than it is - doesn't count retina?
#macro MinWidth 640 
#macro MinHeight 480

// function reference - hack to use constants that can change value
#macro WIDTH function() { return global.screen_w }()
#macro HEIGHT function() { return global.screen_h }()


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
	Clouds = -5900,
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