//Nex-AC by Nexius v1.9.56 (0.3.7)

#if defined _nex_ac_included
	#endinput
#endif
#define _nex_ac_included

#tryinclude <a_samp>

#if !defined FILTERSCRIPT

#if !defined DEBUG
	#define DEBUG
#endif

#if !defined NO_SUSPICION_LOGS
	//#define NO_SUSPICION_LOGS
#endif

#if defined NO_SUSPICION_LOGS
	#pragma unused SUSPICION_1
	#pragma unused SUSPICION_2
#endif

#if !defined _nex_ac_lang_included
	#include "./modular/anticheat/lang.pwn"	//Localization
#endif

#define	NEX_AC_VERSION				"0.0.1"

#define AC_SERVER_VERSION			"0.3.7"
#define AC_SERVER_DL_VERSION		"0.3.DL"

#if !defined AC_CLIENT_VERSION
	#define AC_CLIENT_VERSION			"0.3"
#endif

#if !defined AC_USE_CONFIG_FILES
	#define AC_USE_CONFIG_FILES				true
#endif

#if !defined AUTOSAVE_SETTINGS_IN_CONFIG
	#define AUTOSAVE_SETTINGS_IN_CONFIG		false
#endif

#if AC_USE_CONFIG_FILES
	#if !defined AC_CONFIG_FILE
		#define AC_CONFIG_FILE				"nex-ac_settings.cfg"
	#endif

	#if !defined AC_NOP_CONFIG_FILE
		#define AC_NOP_CONFIG_FILE			"nex-ac_nop_settings.cfg"
	#endif
#else
	#pragma unused CFG_OPENING_ERROR
#endif

#if !defined AC_USE_AMMUNATIONS
	#define AC_USE_AMMUNATIONS				true
#endif

#if !defined AC_USE_PICKUP_WEAPONS
	#define AC_USE_PICKUP_WEAPONS			true
#endif

#if !defined AC_USE_RESTAURANTS
	#define AC_USE_RESTAURANTS				true
#endif

#if !defined AC_USE_VENDING_MACHINES
	#define AC_USE_VENDING_MACHINES			true
#endif

#if !defined AC_USE_TUNING_GARAGES
	#define AC_USE_TUNING_GARAGES			true
#endif

#if !defined AC_USE_PAYNSPRAY
	#define AC_USE_PAYNSPRAY				true
#endif

#if !defined AC_USE_CASINOS
	#define AC_USE_CASINOS					true
#endif

#if !defined AC_USE_NPC
	#define AC_USE_NPC						true
#endif

#if !defined AC_USE_QUERY
	#define AC_USE_QUERY					true
#endif

#if !defined AC_USE_STATISTICS
	#define AC_USE_STATISTICS				true
#endif

#if !AC_USE_STATISTICS
	#pragma unused STATS_STRING_1
	#pragma unused STATS_STRING_2
	#pragma unused STATS_STRING_3
	#pragma unused STATS_STRING_4
	#pragma unused STATS_STRING_5
	#pragma unused STATS_STRING_6
	#pragma unused STATS_STRING_7
	#pragma unused STATS_STRING_8
#endif

#if !defined AC_DEFAULT_COLOR
	#define AC_DEFAULT_COLOR				-1
#endif

#if !defined AC_MAX_CLASSES
	#define AC_MAX_CLASSES					320
#endif

#if !defined AC_MAX_SKINS
	#define AC_MAX_SKINS					312
#endif

#if !defined AC_MAX_CONNECTS_FROM_IP
	#define AC_MAX_CONNECTS_FROM_IP			1
#endif

#if !defined AC_MAX_RCON_LOGIN_ATTEMPT
	#define AC_MAX_RCON_LOGIN_ATTEMPT		1
#endif

#if !defined AC_MAX_MSGS_REC_DIFF
	#define AC_MAX_MSGS_REC_DIFF			800
#endif

#if !defined AC_MAX_PING
	#define AC_MAX_PING						900
#endif

#if !defined AC_MIN_TIME_RECONNECT
	#define AC_MIN_TIME_RECONNECT			12		//In seconds
#endif

#if !defined AC_SPEEDHACK_VEH_RESET_DELAY
	#define AC_SPEEDHACK_VEH_RESET_DELAY	3		//In seconds
#endif

#if !defined AC_MAX_NOP_WARNINGS
	#define AC_MAX_NOP_WARNINGS				8
#endif

#if !defined AC_MAX_NOP_TIMER_WARNINGS
	#define AC_MAX_NOP_TIMER_WARNINGS		3
#endif

#if !defined AC_MAX_PING_WARNINGS
	#define AC_MAX_PING_WARNINGS			8
#endif

#if !defined AC_MAX_MONEY_WARNINGS
	#define AC_MAX_MONEY_WARNINGS			2
#endif

#if !defined AC_MAX_AIR_WARNINGS
	#define AC_MAX_AIR_WARNINGS				4
#endif

#if !defined AC_MAX_AIR_VEH_WARNINGS
	#define AC_MAX_AIR_VEH_WARNINGS			4
#endif

#if !defined AC_MAX_SPEEDHACK_WARNINGS
	#define AC_MAX_SPEEDHACK_WARNINGS		4
#endif

#if !defined AC_MAX_SPEEDHACK_VEH_WARNINGS
	#define AC_MAX_SPEEDHACK_VEH_WARNINGS	(1 * AC_SPEEDHACK_VEH_RESET_DELAY)
#endif

#if !defined AC_MAX_FLYHACK_WARNINGS
	#define AC_MAX_FLYHACK_WARNINGS			2
#endif

#if !defined AC_MAX_FLYHACK_BIKE_WARNINGS
	#define AC_MAX_FLYHACK_BIKE_WARNINGS	8
#endif

#if !defined AC_MAX_FLYHACK_VEH_WARNINGS
	#define AC_MAX_FLYHACK_VEH_WARNINGS		4
#endif

#if !defined AC_MAX_CARSHOT_WARNINGS
	#define AC_MAX_CARSHOT_WARNINGS			4
#endif

#if !defined AC_MAX_GODMODE_WARNINGS
	#define AC_MAX_GODMODE_WARNINGS			3
#endif

#if !defined AC_MAX_GODMODE_VEH_WARNINGS
	#define AC_MAX_GODMODE_VEH_WARNINGS		3
#endif

#if !defined AC_MAX_FAKE_WEAPON_WARNINGS
	#define AC_MAX_FAKE_WEAPON_WARNINGS		2
#endif

#if !defined AC_MAX_SILENT_AIM_WARNINGS
	#define AC_MAX_SILENT_AIM_WARNINGS		2
#endif

#if !defined AC_MAX_PRO_AIM_WARNINGS
	#define AC_MAX_PRO_AIM_WARNINGS			2
#endif

#if !defined AC_MAX_AFK_GHOST_WARNINGS
	#define AC_MAX_AFK_GHOST_WARNINGS		2
#endif

#if !defined AC_MAX_RAPID_FIRE_WARNINGS
	#define AC_MAX_RAPID_FIRE_WARNINGS		16
#endif

#if !defined AC_MAX_AUTO_C_WARNINGS
	#define AC_MAX_AUTO_C_WARNINGS			8
#endif

#if !defined AC_MAX_TELEPORT_GLITCH_WARNINGS
	#define AC_MAX_TELEPORT_GLITCH_WARNINGS	1
#endif

#if !defined AC_MAX_CJ_RUN_WARNINGS
	#define AC_MAX_CJ_RUN_WARNINGS			3
#endif

#define ac_fpublic%0(%1) forward%0(%1); public%0(%1)
#define ac_AbsoluteAngle(%0) ((floatround(%0, floatround_floor) % 360) + floatfract(%0))
#define ac_abs(%0) (((%0) < 0) ? (-(%0)) : ((%0)))

//'ac_ACAllow' contains the default settings that will be set if no config file is found
//Don't change these values if you already have 'scriptfiles\nex-ac_settings.cfg'
static bool:ac_ACAllow[] =
{
	true,	//0 Anti-AirBreak (onfoot)
	true,	//1 Anti-AirBreak (in vehicle)
	true,	//2 Anti-teleport hack (onfoot)
	true,	//3 Anti-teleport hack (in vehicle)
	true,	//4 Anti-teleport hack (into/between vehicles)
	true,	//5 Anti-teleport hack (vehicle to player)
	true,	//6 Anti-teleport hack (pickups)
	true,	//7 Anti-FlyHack (onfoot)
	true,	//8 Anti-FlyHack (in vehicle)
	true,	//9 Anti-SpeedHack (onfoot)
	true,	//10 Anti-SpeedHack (in vehicle)
	true,	//11 Anti-Health hack (in vehicle)
	true,	//12 Anti-Health hack (onfoot)
	true,	//13 Anti-Armour hack
	true,	//14 Anti-Money hack
	true,	//15 Anti-Weapon hack
	true,	//16 Anti-Ammo hack (add)
	true,	//17 Anti-Ammo hack (infinite)
	true,	//18 Anti-Special actions hack
	true,	//19 Anti-GodMode from bullets (onfoot)
	true,	//20 Anti-GodMode from bullets (in vehicle)
	true,	//21 Anti-Invisible hack
	true,	//22 Anti-lagcomp-spoof
	true,	//23 Anti-Tuning hack
	false,	//24 Anti-Parkour mod
	true,	//25 Anti-Quick turn
	true,	//26 Anti-Rapid fire
	true,	//27 Anti-FakeSpawn
	true,	//28 Anti-FakeKill
	true,	//29 Anti-Pro Aim
	true,	//30 Anti-CJ run
	true,	//31 Anti-CarShot
	true,	//32 Anti-CarJack
	false,	//33 Anti-UnFreeze
	true,	//34 Anti-AFK Ghost
	true,	//35 Anti-Full Aiming

	false,	//36 Anti-Fake NPC
	true,	//37 Anti-Reconnect
	true,	//38 Anti-High ping
	true,	//39 Anti-Dialog hack
	true,	//40 Protection from sandbox
	true,	//41 Protection from invalid version
	true,	//42 Anti-Rcon hack

	true,	//43 Anti-Tuning crasher
	true,	//44 Anti-Invalid seat crasher
	true,	//45 Anti-Dialog crasher
	true,	//46 Anti-Attached object crasher
	true,	//47 Anti-Weapon Crasher

	true,	//48 Protection from connection flood in one slot
	true,	//49 Anti-callback functions flood
	true,	//50 Anti-flood by seat changing

	true,	//51 Anti-DoS

	true	//52 Anti-NOPs
},

bool:ac_NOPAllow[] =
{
	true,	//0 Anti-NOP GivePlayerWeapon
	true,	//1 Anti-NOP SetPlayerAmmo
	true,	//2 Anti-NOP SetPlayerInterior
	true,	//3 Anti-NOP SetPlayerHealth
	true,	//4 Anti-NOP SetVehicleHealth
	true,	//5 Anti-NOP SetPlayerArmour
	true,	//6 Anti-NOP SetPlayerSpecialAction
	true,	//7 Anti-NOP PutPlayerInVehicle
	true,	//8 Anti-NOP TogglePlayerSpectating
	true,	//9 Anti-NOP SpawnPlayer
	true,	//10 Anti-NOP SetPlayerPos
	true	//11 Anti-NOP RemovePlayerFromVehicle
};

static const ac_Mtfc[][] =
{
	{120, 8},	//0 OnDialogResponse
	{800, 2},	//1 OnEnterExitModShop
	{250, 8},	//2 OnPlayerClickMap
	{400, 5},	//3 OnPlayerClickPlayer
	{50, 11},	//4 OnPlayerClickTextDraw
	{400, 8},	//5 OnPlayerCommandText
	{50, 8},	//6 OnPlayerEnterVehicle
	{50, 11},	//7 OnPlayerExitVehicle
	{50, 11},	//8 OnPlayerPickUpPickup
	{150, 8},	//9 OnPlayerRequestClass
	{120, 8},	//10 OnPlayerSelectedMenuRow
	{600, 8},	//11 OnPlayerStateChange
	{450, 2},	//12 OnVehicleMod
	{450, 2},	//13 OnVehiclePaintjob
	{450, 2},	//14 OnVehicleRespray
	{300, 1},	//15 OnVehicleDeath
	{450, 8},	//16 OnPlayerText
	{150, 8},	//17 OnPlayerEnterCheckpoint
	{150, 8},	//18 OnPlayerLeaveCheckpoint
	{150, 5},	//19 OnPlayerRequestSpawn
	{120, 8},	//20 OnPlayerExitedMenu
	{150, 8},	//21 OnPlayerEnterRaceCheckpoint
	{150, 8},	//22 OnPlayerLeaveRaceCheckpoint
	{50, 11},	//23 OnPlayerClickPlayerTextDraw
	{60, 9},	//24 OnVehicleDamageStatusUpdate
	{150, 8},	//25 OnVehicleSirenStateChange
	{150, 5},	//26 OnPlayerSelectObject
	{50, 11}	//27 Cross-public
},

ac_wSlot[] =
{
	0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10,
	10, 8, 8, 8, 8, 8, 8, 2, 2, 2, 3, 3, 3, 4, 4, 5, 5,
	4, 6, 6, 7, 7, 7, 7, 8, 12, 9, 9, 9, 11, 11, 11
},

ac_vType[] =
{
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0,
	0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 6, 0, 0, 0, 0, 0, 6, 0, 0,
	0, 0, 0, 0, 0, 0, 3, 2, 5, 7, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0,
	1, 5, 5, 5, 0, 0, 0, 0, 5, 2, 0, 5, 3, 3, 0, 0, 1, 0, 0, 0,
	0, 4, 0, 0, 3, 0, 0, 2, 2, 0, 0, 0, 0, 3, 0, 0, 0, 2, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 1, 1, 1, 0, 0, 0, 0, 0, 1,
	1, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 1,
	0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 2, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 1, 0, 0,
	0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
},

#if AC_USE_PICKUP_WEAPONS
	ac_wModel[] =
	{
		0, 331, 333, 334, 335, 336, 337, 338, 339, 341, 321, 322, 323, 324, 325,
		326, 342, 343, 344, 345, 345, 345, 346, 347, 348, 349, 350, 351, 352, 353, 355, 356,
		372, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 371
	},

	ac_pAmmo[] =
	{
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		1, 1, 1, 8, 8, 8, 8, 4, 4, 30, 10, 10, 15,
		10, 10, 60, 60, 80, 80, 60, 20, 10, 4, 3,
		100, 500, 5, 1, 500, 500, 36, 0, 0, 1
	},
#endif

#if AC_USE_TUNING_GARAGES
	ac_cPrice[] =
	{
		400, 550, 200, 250, 100, 150, 80, 500, 500, 200, 1000, 220, 250, 100, 400,
		500, 200, 500, 350, 300, 250, 200, 150, 350, 50, 1000, 480, 480, 770, 680, 370,
		370, 170, 120, 790, 150, 500, 690, 190, 390, 500, 390, 1000, 500, 500, 510, 710,
		670, 530, 810, 620, 670, 530, 130, 210, 230, 520, 430, 620, 720, 530, 180, 550, 430,
		830, 850, 750, 250, 200, 550, 450, 550, 450, 1100, 1030, 980, 1560, 1620, 1200,
		1030, 900, 1230, 820, 1560, 1350, 770, 100, 1500, 150, 650, 450, 100, 750,
		350, 450, 350, 1000, 620, 1140, 1000, 940, 780, 830, 3250, 1610, 1540, 780, 780, 780,
		1610, 1540, 0, 0, 3340, 3250, 2130, 2050, 2040, 780, 940, 780, 940, 780, 860,
		780, 1120, 3340, 3250, 3340, 1650, 3380, 3290, 1590, 830, 800, 1500, 1000, 800,
		580, 470, 870, 980, 150, 150, 100, 100, 490, 600, 890, 1000, 1090, 840, 910,
		1200, 1030, 1030, 920, 930, 550, 1050, 1050, 950, 650, 450, 550, 850, 950,
		850, 950, 970, 880, 990, 900, 950, 1000, 900, 1000, 900, 2050, 2150, 2130,
		2050, 2130, 2040, 2150, 2040, 2095, 2175, 2080, 2200, 1200, 1040, 940, 1100
	},
#endif

#if AC_USE_AMMUNATIONS
	ac_AmmuNationInfo[][] =
	{
		{200, 30}, {600, 30}, {1200, 15},
		{600, 15}, {800, 12}, {1000, 10},
		{500, 60}, {2000, 90}, {3500, 120},
		{4500, 150}, {300, 60}
	},

	Float:ac_AmmuNations[][] =
	{
		{296.3255, -38.304, 1001.5156},
		{295.7595, -80.5579, 1001.5156},
		{290.1898, -109.482, 1001.5156},
		{312.6785, -165.5487, 999.6016},
		{308.2072, -141.0583, 999.6016}
	},
#endif

#if AC_USE_RESTAURANTS
	Float:ac_Restaurants[][] =
	{
		{374.0, -119.641, 1001.4922},
		{368.789, -6.857, 1001.8516},
		{375.566, -68.222, 1001.5151}
	},
#endif

#if AC_USE_PAYNSPRAY
	Float:ac_PayNSpray[][] =
	{
		{2064.2842, -1831.4736, 13.5469},
		{-2425.7822, 1021.1392, 50.3977},
		{-1420.5195, 2584.2305, 55.8433},
		{487.6401, -1739.9479, 11.1385},
		{1024.8651, -1024.087, 32.1016},
		{-1904.7019, 284.5968, 41.0469},
		{1975.2384, 2162.5088, 11.0703},
		{2393.4456, 1491.5537, 10.5616},
		{720.0854, -455.2807, 16.3359},
		{-99.9417, 1117.9048, 19.7417}
	},
#endif

#if AC_USE_VENDING_MACHINES
	Float:ac_vMachines[][] =
	{
		{-862.82, 1536.6, 21.98},
		{2271.72, -76.46, 25.96},
		{1277.83, 372.51, 18.95},
		{662.42, -552.16, 15.71},
		{201.01, -107.61, 0.89},
		{-253.74, 2597.95, 62.24},
		{-253.74, 2599.75, 62.24},
		{-76.03, 1227.99, 19.12},
		{-14.7, 1175.35, 18.95},
		{-1455.11, 2591.66, 55.23},
		{2352.17, -1357.15, 23.77},
		{2325.97, -1645.13, 14.21},
		{2139.51, -1161.48, 23.35},
		{2153.23, -1016.14, 62.23},
		{1928.73, -1772.44, 12.94},
		{1154.72, -1460.89, 15.15},
		{2480.85, -1959.27, 12.96},
		{2060.11, -1897.64, 12.92},
		{1729.78, -1943.04, 12.94},
		{1634.1, -2237.53, 12.89},
		{1789.21, -1369.26, 15.16},
		{-2229.18, 286.41, 34.7},
		{2319.99, 2532.85, 10.21},
		{2845.72, 1295.04, 10.78},
		{2503.14, 1243.69, 10.21},
		{2647.69, 1129.66, 10.21},
		{-2420.21, 984.57, 44.29},
		{-2420.17, 985.94, 44.29},
		{2085.77, 2071.35, 10.45},
		{1398.84, 2222.6, 10.42},
		{1659.46, 1722.85, 10.21},
		{1520.14, 1055.26, 10.0},
		{-1980.78, 142.66, 27.07},
		{-2118.96, -423.64, 34.72},
		{-2118.61, -422.41, 34.72},
		{-2097.27, -398.33, 34.72},
		{-2092.08, -490.05, 34.72},
		{-2063.27, -490.05, 34.72},
		{-2005.64, -490.05, 34.72},
		{-2034.46, -490.05, 34.72},
		{-2068.56, -398.33, 34.72},
		{-2039.85, -398.33, 34.72},
		{-2011.14, -398.33, 34.72},
		{-1350.11, 492.28, 10.58},
		{-1350.11, 493.85, 10.58},
		{2222.36, 1602.64, 1000.06},
		{2222.2, 1606.77, 1000.05},
		{2155.9, 1606.77, 1000.05},
		{2155.84, 1607.87, 1000.06},
		{2209.9, 1607.19, 1000.05},
		{2202.45, 1617.0, 1000.06},
		{2209.24, 1621.21, 1000.06},
		{2576.7, -1284.43, 1061.09},
		{330.67, 178.5, 1020.07},
		{331.92, 178.5, 1020.07},
		{350.9, 206.08, 1008.47},
		{361.56, 158.61, 1008.47},
		{371.59, 178.45, 1020.07},
		{374.89, 188.97, 1008.47},
		{-19.03, -57.83, 1003.63},
		{-36.14, -57.87, 1003.63},
		{316.87, -140.35, 998.58},
		{2225.2, -1153.42, 1025.9},
		{-15.1, -140.22, 1003.63},
		{-16.53, -140.29, 1003.63},
		{-35.72, -140.22, 1003.63},
		{373.82, -178.14, 1000.73},
		{379.03, -178.88, 1000.73},
		{495.96, -24.32, 1000.73},
		{500.56, -1.36, 1000.73},
		{501.82, -1.42, 1000.73},
		{-33.87, -186.76, 1003.63},
		{-32.44, -186.69, 1003.63},
		{-16.11, -91.64, 1003.63},
		{-17.54, -91.71, 1003.63}
	},
#endif

#if AC_USE_CASINOS
	Float:ac_Casinos[][] =
	{
		{2241.2878, 1617.1624, 1006.1797, 2.0},
		{2240.9736, 1604.6592, 1006.1797, 6.0},
		{2242.5427, 1592.8726, 1006.1836, 6.0},
		{2230.2124, 1592.1426, 1006.1832, 6.0},
		{2230.4717, 1604.484, 1006.186, 6.0},
		{2230.3298, 1616.9272, 1006.1799, 3.0},
		{2251.9407, 1586.1736, 1006.186, 1.0},
		{2218.6785, 1587.3448, 1006.1749, 1.0},
		{2219.2773, 1591.7467, 1006.1867, 1.0},
		{2218.5408, 1589.3229, 1006.184, 1.0},
		{2218.6477, 1593.6279, 1006.1797, 1.0},
		{2221.926, 1603.8285, 1006.1797, 1.0},
		{2218.5095, 1603.8385, 1006.1797, 1.0},
		{2219.9597, 1603.9216, 1006.1797, 1.0},
		{2216.3054, 1603.7996, 1006.1819, 1.0},
		{2218.731, 1619.8046, 1006.1794, 1.0},
		{2218.9407, 1617.8413, 1006.1821, 1.0},
		{2218.668, 1615.4681, 1006.1797, 1.0},
		{2218.6418, 1613.2629, 1006.1797, 1.0},
		{2252.4272, 1589.8412, 1006.1797, 5.0},
		{2252.4229, 1596.6169, 1006.1797, 5.0},
		{2255.1565, 1608.8784, 1006.186, 1.0},
		{2254.8496, 1610.8605, 1006.1797, 1.0},
		{2255.2917, 1612.9167, 1006.1797, 1.0},
		{2255.033, 1614.8892, 1006.1797, 1.0},
		{2255.1213, 1616.8284, 1006.1797, 1.0},
		{2255.2161, 1618.8005, 1006.1797, 1.0},
		{2268.5281, 1606.4894, 1006.1797, 1.0},
		{2270.4922, 1606.8539, 1006.1797, 1.0},
		{2272.5693, 1606.4473, 1006.1797, 1.0},
		{2274.5391, 1607.0122, 1006.1797, 1.0},
		{2271.8447, 1586.1633, 1006.1797, 1.0},
		{2261.4844, 1586.1724, 1006.1797, 1.0},
		{2257.4507, 1589.6555, 1006.1797, 5.0},
		{2267.8994, 1589.8672, 1006.1797, 5.0},
		{2262.8486, 1590.026, 1006.1797, 5.0},
		{2272.6458, 1589.7704, 1006.1797, 5.0},
		{2272.6533, 1596.5682, 1006.1797, 5.0},
		{2270.4895, 1596.4606, 1006.1797, 5.0},
		{2265.4441, 1596.4299, 1006.1797, 5.0},
		{2260.0308, 1596.7987, 1006.1797, 5.0},
		{2254.9907, 1596.241, 1006.1797, 5.0},
		{1956.9524, 988.2533, 992.4688, 2.0},
		{1961.6155, 993.0375, 992.4688, 2.0},
		{1963.7998, 998.4406, 992.4745, 2.0},
		{1936.2885, 987.1995, 992.4745, 2.0},
		{1944.9768, 986.3937, 992.4688, 2.0},
		{1940.7397, 990.9521, 992.4609, 2.0},
		{1940.0966, 1005.8996, 992.4688, 6.0},
		{1938.8785, 1014.1768, 992.4688, 6.0},
		{1938.8811, 1021.4434, 992.4688, 6.0},
		{1966.5975, 1006.6469, 992.4745, 6.0},
		{1966.5979, 1014.1024, 992.4688, 6.0},
		{1939.8351, 1029.912, 992.4688, 6.0},
		{1956.854, 1047.3718, 992.4688, 6.0},
		{1961.356, 1042.8112, 992.4688, 6.0},
		{1963.811, 1037.1263, 992.4745, 6.0},
		{1961.733, 1025.8929, 992.4688, 10.0},
		{1961.708, 1010.3194, 992.4688, 10.0},
		{1966.5989, 1029.7954, 992.4745, 6.0},
		{1961.4139, 1017.8281, 992.4688, 10.0},
		{1966.5985, 1021.7686, 992.4688, 6.0},
		{1128.7106, -1.9779, 1000.6797, 1.0},
		{1125.2388, 1.61, 1000.6797, 1.0},
		{1125.1249, -5.0489, 1000.6797, 1.0},
		{1127.4139, 3.0199, 1000.6797, 1.0},
		{1135.0634, -3.8695, 1000.6797, 1.0},
		{1135.0861, 0.6107, 1000.6797, 1.0},
		{1132.8943, -1.7139, 1000.6797, 1.0},
		{1125.3727, 3.0315, 1000.6797, 1.0},
		{1119.0272, -1.4916, 1000.6924, 1.0}
	},
#endif

ac_MaxPassengers[] =
{
	0x10331113, 0x11311131, 0x11331313, 0x80133301, 0x1381F110,
	0x10311103, 0x10001F10, 0x11113311, 0x13113311, 0x31101100,
	0x30002301, 0x11031311, 0x11111331, 0x10013111, 0x01131100,
	0x11111110, 0x11100031, 0x11130111, 0x33113311, 0x11111101,
	0x33101133, 0x10100510, 0x03133111, 0xFF11113F, 0x13330111,
	0xFF131111, 0x0000FF3F
},

ac_vMods[] =
{
	0x033C2700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x021A27FA, 0x00000000, 0x00FFFE00,
	0x00000007, 0x0003C000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x023B2785, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02BC4703, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x03BA278A, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x028E078A, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02310744, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x0228073A, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02BD4701, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x023A2780, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x0228077A, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x027A27CA, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x0282278A, 0x00000000, 0x00FFFE00, 0x00000007, 0x0003C000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x023E07C0, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x03703730, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x031D2775, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02BE4788, 0x00000000, 0x00FFFE00,
	0x00000007, 0x0003C000, 0x00000000, 0x02010771, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x029A0FCE, 0x00000000, 0x00FFFE00, 0x00000007, 0x0000C000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x03382700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x023F8795, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x029F078C, 0x00000000, 0x00FFFE00, 0x00000007, 0x0003C000, 0x00000000, 0x029627EA, 0x00000000, 0x00FFFE00,
	0x00000007, 0x0003C000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x0236C782, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x029E1FCA, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0xFC000437, 0x00000000, 0x021C0000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x03FE6007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00001B87, 0x00000001, 0x01E00000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x039E07D2, 0x00000000, 0x00FFFE00, 0x00000007, 0x0003C000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x023CC700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00030000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x038E07D6, 0x00000000, 0x00FFFE00, 0x00000007, 0x0003C000, 0x00000000,
	0x023D0709, 0x00000000, 0x00FFFE00, 0x00000007, 0x0000C000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x029E1F8A, 0x00000000, 0x00FFFE00, 0x00000007, 0x0003C000, 0x00000000,
	0x029C077A, 0x00000000, 0x00FFFE00, 0x00000007, 0x0003C000, 0x00000000, 0x02BD076C, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0xFFFFFE00, 0x00000007, 0x00000000, 0x000001F8,
	0x02000700, 0x00000000, 0x00FFFFFE, 0x00000007, 0xC0000000, 0x00002007, 0xFE000700, 0x00000003, 0x00FFFE00,
	0x00000007, 0x00003C00, 0x00000600, 0xCE000700, 0xFF800000, 0x00FFFE01, 0x00000007, 0x3C000000, 0x00000000,
	0x02000700, 0x000003FC, 0x00FFFE00, 0x00000007, 0x003C0000, 0x00001800, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x007FE000, 0x00FFFE00, 0x00000007, 0x03C00000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000047, 0x0000003E, 0x3C000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00001C00, 0x00FFFE00,
	0x0000000F, 0x00000000, 0x0003C000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x000003C0, 0xC0000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x029607C2, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x03FFE7CF, 0x00000000, 0x00FFFE00, 0x00000007, 0x0003C000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x031727F1, 0x00000000, 0x00FFFE00, 0x00000007, 0x00030000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x025627F0, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x039E07C2, 0x00000000, 0x00FFFE00, 0x00000007, 0x0003C000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000,
	0x02000700, 0x00000000, 0x00FFFE00, 0x00000007, 0x00000000, 0x00000000, 0x02000700, 0x00000000, 0x00FFFE00,
	0x00000007, 0x00000000, 0x00000000
};

static stock const Float:ac_wMinRange[] =
{
	25.0, 25.0, 25.0, 30.0, 25.0, 35.0,
	25.0, 35.0, 40.0, 40.0, 25.0, 55.0,
	50.0, 50.0, 50.0, 4.0, 65.0
};

enum acInfo
{
	Float:acPosX,
	Float:acPosY,
	Float:acPosZ,
	Float:acDropJpX,
	Float:acDropJpY,
	Float:acDropJpZ,
	Float:acSpawnPosX,
	Float:acSpawnPosY,
	Float:acSpawnPosZ,
	Float:acSetVehHealth,
	Float:acLastPosX,
	Float:acLastPosY,
	Float:acSetPosX,
	Float:acSetPosY,
	Float:acSetPosZ,
	acLastCamMode,
	acSpeed,
	acHealth,
	acArmour,
	acMoney,
	acShotWeapon,
	acHoldWeapon,
	acLastWeapon,
	acEnterSeat,
	acEnterVeh,
	acKickVeh,
	acVeh,
	acSeat,
	acNextDialog,
	acDialog,
	acInt,
	acAnim,
	acSpecAct,
	acNextSpecAct,
	acLastSpecAct,
	acLastPickup,
	acReloadTick,
	acShotTick,
	acSpawnTick,
	acTimerTick,
	acSetPosTick,
	acUpdateTick,
	acEnterVehTick,
	acSpawnWeapon1,
	acSpawnWeapon2,
	acSpawnWeapon3,
	acSpawnAmmo1,
	acSpawnAmmo2,
	acSpawnAmmo3,
	acSpawnRes,
	acTimerID,
	acKickTimerID,
	acParachute,
	acIntRet,
	acKicked,
	acIp[16],
	acSet[12],
	acGtc[20],
	acWeapon[13],
	acAmmo[13],
	acSetWeapon[13],
	acGiveAmmo[13],
	acGtcSetWeapon[13],
	acGtcGiveAmmo[13],
	acNOPCount[12],
	acCheatCount[22],
	acCall[sizeof ac_Mtfc],
	acFloodCount[sizeof ac_Mtfc],
	bool:acNOPAllow[sizeof ac_NOPAllow],
	bool:acACAllow[sizeof ac_ACAllow],
	bool:acStuntBonus,
	bool:acModShop,
	bool:acUnFrozen,
	bool:acOnline,
	bool:acDeathRes,
	bool:acDmgRes,
	bool:acVehDmgRes,
	bool:acForceClass,
	bool:acClassRes,
	bool:acDead,
	bool:acTpToZ,
	bool:acIntEnterExits,
	bool:acSpec
}

enum acVehInfo
{
	Float:acVelX,
	Float:acVelY,
	Float:acVelZ,
	Float:acTrVelX,
	Float:acTrVelY,
	Float:acTrVelZ,
	Float:acPosX,
	Float:acPosY,
	Float:acPosZ,
	Float:acSpawnPosX,
	Float:acSpawnPosY,
	Float:acSpawnPosZ,
	Float:acSpawnZAngle,
	Float:acPosDiff,
	Float:acZAngle,
	Float:acHealth,
	acLastSpeed,
	acSpeedDiff,
	acTrSpeedDiff,
	acDriver,
	acPanels,
	acDoors,
	acTires,
	acInt,
	acSpeed,
	acTrSpeed,
	acPaintJob,
	bool:acSpawned
}

enum acPickInfo
{
	Float:acPosX,
	Float:acPosY,
	Float:acPosZ,
	acType,
	acWeapon
}

static
	Float:ac_ClassPos[AC_MAX_CLASSES][3],
	ac_ClassWeapon[AC_MAX_CLASSES][3],
	ac_ClassAmmo[AC_MAX_CLASSES][3],

	#if AC_USE_STATISTICS
		ac_sInfo[6],
	#endif

	ACInfo[MAX_PLAYERS][acInfo],
	ACVehInfo[MAX_VEHICLES][acVehInfo],
	ACPickInfo[MAX_PICKUPS][acPickInfo],

	bool:ac_IntEnterExits = true,
	bool:ac_StuntBonus = true,
	bool:ac_LagCompMode,
	#if !AC_USE_QUERY
		bool:ac_QueryEnable,
	#endif
	bool:ac_RconEnable,
	bool:ac_PedAnims;

static stock bool:ac_VehFriendlyFire;

ac_fpublic ac_AddStaticVehicle(vehicleid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle)
{
	ACVehInfo[vehicleid][acInt] =
	ACVehInfo[vehicleid][acSpeed] =
	ACVehInfo[vehicleid][acTires] =
	ACVehInfo[vehicleid][acDoors] =
	ACVehInfo[vehicleid][acPanels] =
	ACVehInfo[vehicleid][acLastSpeed] =
	ACVehInfo[vehicleid][acSpeedDiff] = 0;
	ACVehInfo[vehicleid][acPaintJob] = 3;
	ACVehInfo[vehicleid][acHealth] = 1000.0;
	ACVehInfo[vehicleid][acSpawned] = true;
	ACVehInfo[vehicleid][acTrSpeed] = -1;
	ACVehInfo[vehicleid][acPosDiff] =
	ACVehInfo[vehicleid][acVelX] =
	ACVehInfo[vehicleid][acVelY] =
	ACVehInfo[vehicleid][acVelZ] = 0.0;
	ACVehInfo[vehicleid][acSpawnPosX] =
	ACVehInfo[vehicleid][acPosX] = spawn_x;
	ACVehInfo[vehicleid][acSpawnPosY] =
	ACVehInfo[vehicleid][acPosY] = spawn_y;
	ACVehInfo[vehicleid][acSpawnPosZ] =
	ACVehInfo[vehicleid][acPosZ] = spawn_z;
	ACVehInfo[vehicleid][acSpawnZAngle] =
	ACVehInfo[vehicleid][acZAngle] = z_angle;
	ACVehInfo[vehicleid][acDriver] = INVALID_PLAYER_ID;
	return 1;
}

ac_fpublic ac_CreateVehicle(vehicleid, modelid, Float:ac_x, Float:ac_y, Float:ac_z, Float:ac_rotation)
{
	ACVehInfo[vehicleid][acInt] =
	ACVehInfo[vehicleid][acSpeed] =
	ACVehInfo[vehicleid][acTires] =
	ACVehInfo[vehicleid][acDoors] =
	ACVehInfo[vehicleid][acPanels] =
	ACVehInfo[vehicleid][acLastSpeed] =
	ACVehInfo[vehicleid][acSpeedDiff] = 0;
	ACVehInfo[vehicleid][acPaintJob] = 3;
	ACVehInfo[vehicleid][acHealth] = 1000.0;
	ACVehInfo[vehicleid][acTrSpeed] = -1;
	ACVehInfo[vehicleid][acPosDiff] =
	ACVehInfo[vehicleid][acVelX] =
	ACVehInfo[vehicleid][acVelY] =
	ACVehInfo[vehicleid][acVelZ] = 0.0;
	ACVehInfo[vehicleid][acSpawnPosX] =
	ACVehInfo[vehicleid][acPosX] = ac_x;
	ACVehInfo[vehicleid][acSpawnPosY] =
	ACVehInfo[vehicleid][acPosY] = ac_y;
	ACVehInfo[vehicleid][acSpawnPosZ] =
	ACVehInfo[vehicleid][acPosZ] = ac_z;
	ACVehInfo[vehicleid][acSpawnZAngle] =
	ACVehInfo[vehicleid][acZAngle] = ac_rotation;
	if(!ac_IsATrainCarriageEx(modelid)) ACVehInfo[vehicleid][acSpawned] = true;
	ACVehInfo[vehicleid][acDriver] = INVALID_PLAYER_ID;
	return 1;
}

ac_fpublic ac_AddPlayerClass(classid, Float:spawn_x, Float:spawn_y, Float:spawn_z, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)
{
	if(0 <= classid < AC_MAX_CLASSES)
	{
		#undef AC_MAX_CLASSES
		ac_ClassPos[classid][0] = spawn_x;
		ac_ClassPos[classid][1] = spawn_y;
		ac_ClassPos[classid][2] = spawn_z;
		ac_ClassWeapon[classid][0] = weapon1;
		ac_ClassAmmo[classid][0] = weapon1_ammo;
		ac_ClassWeapon[classid][1] = weapon2;
		ac_ClassAmmo[classid][1] = weapon2_ammo;
		ac_ClassWeapon[classid][2] = weapon3;
		ac_ClassAmmo[classid][2] = weapon3_ammo;
	}
	return 1;
}

ac_fpublic ac_SetSpawnInfo(playerid, ac_team, ac_skin, Float:ac_x, Float:ac_y, Float:ac_z, Float:ac_rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)
{
	if(!SetSpawnInfo(playerid, ac_team, ac_skin, ac_x, ac_y, ac_z, ac_rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)) return 0;
	ACInfo[playerid][acSpawnPosX] = ac_x;
	ACInfo[playerid][acSpawnPosY] = ac_y;
	ACInfo[playerid][acSpawnPosZ] = ac_z;
	ACInfo[playerid][acSpawnWeapon1] = weapon1;
	ACInfo[playerid][acSpawnAmmo1] = weapon1_ammo;
	ACInfo[playerid][acSpawnWeapon2] = weapon2;
	ACInfo[playerid][acSpawnAmmo2] = weapon2_ammo;
	ACInfo[playerid][acSpawnWeapon3] = weapon3;
	ACInfo[playerid][acSpawnAmmo3] = weapon3_ammo;
	return 1;
}

ac_fpublic ac_CreatePickup(pickupid, modelid, type, Float:ac_X, Float:ac_Y, Float:ac_Z)
{
	ACPickInfo[pickupid][acType] = 5;
	#if AC_USE_PICKUP_WEAPONS
		switch(type)
		{
			case 2, 3, 15, 22:
			{
				switch(modelid)
				{
					case 370: ACPickInfo[pickupid][acType] = 1;
					case 1240: ACPickInfo[pickupid][acType] = 2;
					case 1242: ACPickInfo[pickupid][acType] = 3;
					case 321..326, 331, 333..339, 341..353, 355..369, 371, 372:
					{
						for(new ac_i = 46; ac_i >= 1; --ac_i)
						{
							if(ac_wModel[ac_i] == modelid)
							{
								ACPickInfo[pickupid][acType] = 4;
								ACPickInfo[pickupid][acWeapon] = ac_i;
								break;
							}
						}
					}
				}
			}
		}
	#endif
	ACPickInfo[pickupid][acPosX] = ac_X;
	ACPickInfo[pickupid][acPosY] = ac_Y;
	ACPickInfo[pickupid][acPosZ] = ac_Z;
	return 1;
}

#if AC_USE_PICKUP_WEAPONS\
	&& defined Streamer_SetIntData
	#if defined STREAMER_ENABLE_TAGS
		ac_fpublic ac_CreateDynamicPickup(STREAMER_TAG_PICKUP:pickupid, modelid, type)
	#else
		ac_fpublic ac_CreateDynamicPickup(pickupid, modelid, type)
	#endif
	{
		Streamer_SetIntData(STREAMER_TYPE_PICKUP, pickupid, E_STREAMER_EXTRA_ID, 0);
		switch(type)
		{
			case 2, 3, 15, 22:
			{
				switch(modelid)
				{
					case 370: Streamer_SetIntData(STREAMER_TYPE_PICKUP, pickupid, E_STREAMER_EXTRA_ID, 1);
					case 1240: Streamer_SetIntData(STREAMER_TYPE_PICKUP, pickupid, E_STREAMER_EXTRA_ID, 2);
					case 1242: Streamer_SetIntData(STREAMER_TYPE_PICKUP, pickupid, E_STREAMER_EXTRA_ID, 3);
					case 321..326, 331, 333..339, 341..353, 355..369, 371, 372:
					{
						for(new ac_i = 46; ac_i >= 1; --ac_i)
						{
							if(ac_wModel[ac_i] == modelid)
							{
								Streamer_SetIntData(STREAMER_TYPE_PICKUP, pickupid, E_STREAMER_EXTRA_ID, ac_i + 100);
								break;
							}
						}
					}
				}
			}
		}
		return 1;
	}
#endif

#if defined Streamer_UpdateEx
	stock ac_Streamer_UpdateEx(playerid, Float:x, Float:y, Float:z, worldid = -1, interiorid = -1, type = -1, compensatedtime = -1, freezeplayer = 1)
	{
		if(!Streamer_UpdateEx(playerid, x, y, z, worldid, interiorid, type, compensatedtime, freezeplayer)) return 0;
		if(compensatedtime >= 0)
		{
			ACInfo[playerid][acSet][7] = 4;
			ACInfo[playerid][acTpToZ] = false;
			ACInfo[playerid][acNOPCount][10] = 0;
			ACInfo[playerid][acSetPosX] = x;
			ACInfo[playerid][acSetPosY] = y;
			ACInfo[playerid][acSetPosZ] = z;
			ACInfo[playerid][acSetPosTick] =
			ACInfo[playerid][acGtc][10] = GetTickCount() + 3850;
			#if defined FreezeSyncPacket
				if(!ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, false);
			#endif
		}
		return 1;
	}

	#if defined _ALS_Streamer_UpdateEx
		#undef Streamer_UpdateEx
	#else
		#define _ALS_Streamer_UpdateEx
	#endif
	#define Streamer_UpdateEx ac_Streamer_UpdateEx
#endif

#if defined GetPlayerVersion
	stock ac_GetPlayerVersion(playerid, version[], len)
	{
		new ac_ret = GetPlayerVersion(playerid, version, len);
		for(new ac_i = ac_ret - 1; ac_i >= 0; --ac_i)
		{
			if(version[ac_i] == '%')
			{
				strdel(version, ac_i, ac_i + 1);
				ac_ret--;
			}
		}
		return ac_ret;
	}

	#if defined _ALS_GetPlayerVersion
		#undef GetPlayerVersion
	#else
		#define _ALS_GetPlayerVersion
	#endif
	#define GetPlayerVersion ac_GetPlayerVersion
#endif

#if !defined PAWNRAKNET_INC_
	stock ac_GetPlayerFacingAngle(playerid, &Float:ang)
	{
		if(!GetPlayerFacingAngle(playerid, ang)) return 0;
		if(!ac_IsValidFloat(ang)) ang = 0.0;
		ang = ac_AbsoluteAngle(ang);
		return 1;
	}

	#if defined _ALS_GetPlayerFacingAngle
		#undef GetPlayerFacingAngle
	#else
		#define _ALS_GetPlayerFacingAngle
	#endif
	#define GetPlayerFacingAngle ac_GetPlayerFacingAngle

	stock ac_GetVehicleZAngle(vehicleid, &Float:z_angle)
	{
		if(!GetVehicleZAngle(vehicleid, z_angle)) return 0;
		if(!ac_IsValidFloat(z_angle)) z_angle = 0.0;
		z_angle = ac_AbsoluteAngle(z_angle);
		#undef ac_AbsoluteAngle
		return 1;
	}

	#if defined _ALS_GetVehicleZAngle
		#undef GetVehicleZAngle
	#else
		#define _ALS_GetVehicleZAngle
	#endif
	#define GetVehicleZAngle ac_GetVehicleZAngle
#endif

ac_fpublic ac_DestroyVehicle(vehicleid)
{
	if(!DestroyVehicle(vehicleid)) return 0;
	ACVehInfo[vehicleid][acSpawned] = false;
	new ac_gtc = GetTickCount() + 2650;
	#if defined foreach
		foreach(new ac_i : Player)
		{
			if(ACInfo[ac_i][acVeh] == vehicleid) ACInfo[ac_i][acSetPosTick] = ACInfo[ac_i][acGtc][10] = ac_gtc;
		}
	#else
		#if defined GetPlayerPoolSize
			for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
		#else
			for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
		#endif
		{
			if(IsPlayerInVehicle(ac_i, vehicleid)) ACInfo[ac_i][acSetPosTick] = ACInfo[ac_i][acGtc][10] = ac_gtc;
		}
	#endif
	return 1;
}

ac_fpublic ac_DestroyPickup(pickupid)
{
	if(!DestroyPickup(pickupid)) return 0;
	ACPickInfo[pickupid][acType] = 0;
	#if AC_USE_PICKUP_WEAPONS
		ACPickInfo[pickupid][acWeapon] = 0;
		#if defined foreach
			foreach(new ac_i : Player)
			{
		#else
			#if defined GetPlayerPoolSize
				for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
			#else
				for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
			#endif
			{
				if(!IsPlayerConnected(ac_i)) continue;
		#endif
			if(ACInfo[ac_i][acLastPickup] == pickupid) ACInfo[ac_i][acLastPickup] = -1;
		}
	#endif
	return 1;
}

#if defined DestroyDynamicPickup
	#if defined STREAMER_ENABLE_TAGS
		ac_fpublic ac_DestroyDynamicPickup(STREAMER_TAG_PICKUP:pickupid)
	#else
		ac_fpublic ac_DestroyDynamicPickup(pickupid)
	#endif
	{
		if(!DestroyDynamicPickup(pickupid)) return 0;
		#if AC_USE_PICKUP_WEAPONS
			#if defined foreach
				foreach(new ac_i : Player)
				{
			#else
				#if defined GetPlayerPoolSize
					for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
				#else
					for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
				#endif
				{
					if(!IsPlayerConnected(ac_i)) continue;
			#endif
				if(ACInfo[ac_i][acLastPickup] > MAX_PICKUPS &&
				(ACInfo[ac_i][acLastPickup] - MAX_PICKUPS) == _:pickupid) ACInfo[ac_i][acLastPickup] = -1;
			}
		#endif
		return 1;
	}
#endif

ac_fpublic ac_DisableInteriorEnterExits()
{
	ac_IntEnterExits = false;
	return DisableInteriorEnterExits();
}

ac_fpublic ac_UsePlayerPedAnims()
{
	ac_PedAnims = true;
	return UsePlayerPedAnims();
}

#if defined EnableVehicleFriendlyFire
	ac_fpublic ac_EnableVehicleFriendlyFire()
	{
		ac_VehFriendlyFire = true;
		return EnableVehicleFriendlyFire();
	}
#endif

ac_fpublic ac_EnableStuntBonusForAll(enable)
{
	ac_StuntBonus = (enable != 0);
	#if defined foreach
		foreach(new ac_i : Player) ACInfo[ac_i][acStuntBonus] = ac_StuntBonus;
	#else
		#if defined GetPlayerPoolSize
			for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
		#else
			for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
		#endif
		{
			if(IsPlayerConnected(ac_i)) ACInfo[ac_i][acStuntBonus] = ac_StuntBonus;
		}
	#endif
	return EnableStuntBonusForAll(enable);
}

ac_fpublic ac_EnableStuntBonusForPlayer(playerid, enable)
{
	if(!EnableStuntBonusForPlayer(playerid, enable)) return 0;
	ACInfo[playerid][acStuntBonus] = (enable != 0);
	return 1;
}

ac_fpublic ac_ShowPlayerDialog(playerid, dialogid)
{
	ACInfo[playerid][acDialog] = dialogid;
	return 1;
}

ac_fpublic ac_fs_ShowPlayerDialog(playerid, dialogid)
{
	ACInfo[playerid][acNextDialog] = dialogid;
	return 1;
}

ac_fpublic ac_TogglePlayerControllable(playerid, toggle)
{
	if(!TogglePlayerControllable(playerid, toggle)) return 0;
	ACInfo[playerid][acUnFrozen] = (toggle != 0);
	#if defined FreezeSyncPacket
		if(toggle) FreezeSyncPacket(playerid, E_ALL_SYNC, false);
		else if(ACInfo[playerid][acACAllow][33]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
	#endif
	return 1;
}

ac_fpublic ac_TogglePlayerSpectating(playerid, toggle)
{
	if(!TogglePlayerSpectating(playerid, toggle)) return 0;
	if(ACInfo[playerid][acSpec] || ACInfo[playerid][acSet][5] != -1)
	{
		if(!toggle)
		{
			if(ACInfo[playerid][acDead]) ACInfo[playerid][acSet][6] = 4;
			else
			{
				ACInfo[playerid][acSet][3] =
				ACInfo[playerid][acSet][5] =
				ACInfo[playerid][acSet][7] =
				ACInfo[playerid][acSet][8] =
				ACInfo[playerid][acNextSpecAct] = -1;
				for(new ac_i = 12; ac_i >= 0; --ac_i)
				{
					ACInfo[playerid][acSetWeapon][ac_i] = -1;
					ACInfo[playerid][acGiveAmmo][ac_i] = -65535;
				}
				ACInfo[playerid][acForceClass] =
				ACInfo[playerid][acUnFrozen] = true;
				ACInfo[playerid][acSet][6] = 1;
				#if defined FreezeSyncPacket
					FreezeSyncPacket(playerid, E_ALL_SYNC, false);
				#endif
			}
			ACInfo[playerid][acSpawnRes]++;
			ACInfo[playerid][acSpec] = false;
			ACInfo[playerid][acSpawnTick] = ACInfo[playerid][acNOPCount][9] = 0;
			ACInfo[playerid][acGtc][12] = GetTickCount() + 2650;
		}
	}
	else if(toggle)
	{
		ACInfo[playerid][acSet][5] = 1;
		ACInfo[playerid][acNOPCount][8] = 0;
		ACInfo[playerid][acGtc][11] = GetTickCount() + 2650;
	}
	return 1;
}

ac_fpublic ac_SpawnPlayer(playerid)
{
	if(!SpawnPlayer(playerid)) return 0;
	if(ACInfo[playerid][acDead]) ACInfo[playerid][acSet][6] = 5;
	else
	{
		ACInfo[playerid][acSet][3] =
		ACInfo[playerid][acSet][7] =
		ACInfo[playerid][acSet][8] =
		ACInfo[playerid][acNextSpecAct] = -1;
		for(new ac_i = 12; ac_i >= 0; --ac_i)
		{
			ACInfo[playerid][acSetWeapon][ac_i] = -1;
			ACInfo[playerid][acGiveAmmo][ac_i] = -65535;
		}
		ACInfo[playerid][acUnFrozen] = true;
		ACInfo[playerid][acSet][6] = 2;
		#if defined FreezeSyncPacket
			FreezeSyncPacket(playerid, E_ALL_SYNC, false);
		#endif
	}
	ACInfo[playerid][acSpawnRes]++;
	ACInfo[playerid][acSpawnTick] = ACInfo[playerid][acNOPCount][9] = 0;
	ACInfo[playerid][acGtc][12] = GetTickCount() + 2650;
	return 1;
}

ac_fpublic ac_SetPlayerHealth(playerid, Float:ac_health)
{
	if(!SetPlayerHealth(playerid, ac_health)) return 0;
	if(ac_health < 0.0) ac_health = 0.0;
	ACInfo[playerid][acNOPCount][3] = 0;
	ACInfo[playerid][acSet][1] = floatround(ac_health, floatround_tozero);
	ACInfo[playerid][acGtc][2] = GetTickCount() + 2650;
	#if defined FreezeSyncPacket
		if(!ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, false);
	#endif
	return 1;
}

ac_fpublic ac_SetPlayerArmour(playerid, Float:ac_armour)
{
	if(!SetPlayerArmour(playerid, ac_armour)) return 0;
	if(ac_armour < 0.0) ac_armour = 0.0;
	ACInfo[playerid][acNOPCount][5] = 0;
	ACInfo[playerid][acSet][2] = floatround(ac_armour, floatround_tozero);
	ACInfo[playerid][acGtc][4] = GetTickCount() + 2650;
	#if defined FreezeSyncPacket
		if(!ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, false);
	#endif
	return 1;
}

ac_fpublic ac_GivePlayerWeapon(playerid, weaponid, ac_ammo)
{
	if(ac_IsValidWeapon(weaponid))
	{
		new ac_s = ac_wSlot[weaponid];
		ACInfo[playerid][acNOPCount][0] = ACInfo[playerid][acNOPCount][1] = 0;
		if(16 <= weaponid <= 18 || 22 <= weaponid <= 43)
		{
			if(3 <= ac_s <= 5 || (ACInfo[playerid][acSetWeapon][ac_s] == -1
			? ACInfo[playerid][acWeapon][ac_s] : ACInfo[playerid][acSetWeapon][ac_s]) == weaponid)
			{
				new ac_tmp;
				if(ACInfo[playerid][acGiveAmmo][ac_s] == -65535) ac_tmp = ACInfo[playerid][acAmmo][ac_s] + ac_ammo;
				else ac_tmp = ACInfo[playerid][acGiveAmmo][ac_s] + ac_ammo;
				if(ac_tmp < -32768)
				{
					ac_ammo -= ac_tmp + 32768;
					ac_tmp = -32768;
				}
				else if(ac_tmp > 32767)
				{
					ac_ammo -= ac_tmp - 32767;
					ac_tmp = 32767;
				}
				ACInfo[playerid][acGiveAmmo][ac_s] = ac_tmp;
			}
			else
			{
				if(ac_ammo < -32768) ac_ammo = -32768;
				else if(ac_ammo > 32767) ac_ammo = 32767;
				ACInfo[playerid][acGiveAmmo][ac_s] = ac_ammo;
			}
			ACInfo[playerid][acCheatCount][12] = ACInfo[playerid][acReloadTick] = 0;
		}
		else ACInfo[playerid][acGiveAmmo][ac_s] = -65535;
		ACInfo[playerid][acSetWeapon][ac_s] = weaponid;
		ACInfo[playerid][acGtcSetWeapon][ac_s] =
		ACInfo[playerid][acGtcGiveAmmo][ac_s] = GetTickCount() + 2850;
	}
	return GivePlayerWeapon(playerid, weaponid, ac_ammo);
}

ac_fpublic ac_SetPlayerAmmo(playerid, weaponid, ac_ammo)
{
	if(ac_ammo < -32768) ac_ammo = -32768;
	else if(ac_ammo > 32767) ac_ammo = 32767;
	if(16 <= weaponid <= 43)
	{
		new ac_s = ac_wSlot[weaponid];
		if((ACInfo[playerid][acSetWeapon][ac_s] == -1
		? ACInfo[playerid][acWeapon][ac_s] : ACInfo[playerid][acSetWeapon][ac_s]) == weaponid)
		{
			ACInfo[playerid][acNOPCount][1] = 0;
			ACInfo[playerid][acGiveAmmo][ac_s] = ac_ammo;
			ACInfo[playerid][acGtcGiveAmmo][ac_s] = GetTickCount() + 2850;
		}
	}
	return SetPlayerAmmo(playerid, weaponid, ac_ammo);
}

ac_fpublic ac_ResetPlayerWeapons(playerid)
{
	if(!ResetPlayerWeapons(playerid)) return 0;
	for(new ac_i = 12; ac_i >= 0; --ac_i)
	{
		ACInfo[playerid][acWeapon][ac_i] = ACInfo[playerid][acAmmo][ac_i] = 0;
		ACInfo[playerid][acSetWeapon][ac_i] = -1;
		ACInfo[playerid][acGiveAmmo][ac_i] = -65535;
	}
	ACInfo[playerid][acGtc][6] = GetTickCount() + 2850;
	return 1;
}

ac_fpublic ac_GivePlayerMoney(playerid, ac_money)
{
	if(!GivePlayerMoney(playerid, ac_money)) return 0;
	ACInfo[playerid][acNOPCount][11] = AC_MAX_MONEY_WARNINGS;
	ACInfo[playerid][acMoney] += ac_money;
	#undef AC_MAX_MONEY_WARNINGS
	return 1;
}

ac_fpublic ac_ResetPlayerMoney(playerid)
{
	if(!ResetPlayerMoney(playerid)) return 0;
	ACInfo[playerid][acNOPCount][11] = 0;
	ACInfo[playerid][acMoney] = 0;
	return 1;
}

ac_fpublic ac_GetPlayerMoney(playerid) return ACInfo[playerid][acMoney];

ac_fpublic ac_SetPlayerSpecialAction(playerid, ac_actionid)
{
	if(!SetPlayerSpecialAction(playerid, ac_actionid)) return 0;
	if(ac_actionid == SPECIAL_ACTION_USEJETPACK || 24 <= ac_actionid <= 25 ||
	(ac_actionid == SPECIAL_ACTION_USECELLPHONE || ac_actionid == 68 || SPECIAL_ACTION_DANCE1 <= ac_actionid <= SPECIAL_ACTION_DANCE4) && ACInfo[playerid][acVeh] == 0 ||
	ac_actionid == SPECIAL_ACTION_STOPUSECELLPHONE && ACInfo[playerid][acSpecAct] == SPECIAL_ACTION_USECELLPHONE ||
	(ac_actionid == SPECIAL_ACTION_HANDSUP || SPECIAL_ACTION_DRINK_BEER <= ac_actionid <= SPECIAL_ACTION_DRINK_SPRUNK) && ACInfo[playerid][acSpecAct] != SPECIAL_ACTION_ENTER_VEHICLE && ACInfo[playerid][acVeh] == 0 ||
	ac_actionid == SPECIAL_ACTION_NONE && ACInfo[playerid][acSpecAct] != SPECIAL_ACTION_DUCK &&
	ACInfo[playerid][acSpecAct] != SPECIAL_ACTION_ENTER_VEHICLE && ACInfo[playerid][acSpecAct] != SPECIAL_ACTION_HANDSUP)
	{
		ACInfo[playerid][acNOPCount][6] = 0;
		if((ac_actionid == 68 || SPECIAL_ACTION_HANDSUP <= ac_actionid <= SPECIAL_ACTION_USECELLPHONE || SPECIAL_ACTION_DRINK_BEER <= ac_actionid <= 25) &&
		SPECIAL_ACTION_DANCE1 <= ACInfo[playerid][acSpecAct] <= SPECIAL_ACTION_DANCE4 ||
		SPECIAL_ACTION_DRINK_BEER <= ac_actionid <= 25 && ACInfo[playerid][acSpecAct] == SPECIAL_ACTION_DUCK ||
		(ac_actionid == SPECIAL_ACTION_NONE || 24 <= ac_actionid <= 25) && ACInfo[playerid][acVeh] > 0 ||
		24 <= ac_actionid <= 25 && ACInfo[playerid][acSpecAct] == SPECIAL_ACTION_ENTER_VEHICLE) ACInfo[playerid][acNextSpecAct] = ac_actionid;
		else
		{
			if(ac_actionid == SPECIAL_ACTION_STOPUSECELLPHONE) ac_actionid = SPECIAL_ACTION_NONE;
			else if(ac_actionid == SPECIAL_ACTION_USEJETPACK || ac_actionid == SPECIAL_ACTION_HANDSUP ||
			ac_actionid == 68 || SPECIAL_ACTION_DANCE1 <= ac_actionid <= SPECIAL_ACTION_DANCE4 ||
			SPECIAL_ACTION_DRINK_BEER <= ac_actionid <= SPECIAL_ACTION_DRINK_SPRUNK) ACInfo[playerid][acNextSpecAct] = ACInfo[playerid][acSpecAct];
			else ACInfo[playerid][acNextSpecAct] = -1;
			ACInfo[playerid][acSet][3] = ac_actionid;
			ACInfo[playerid][acGtc][5] = GetTickCount() + 3250;
			#if defined FreezeSyncPacket
				if(!ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, false);
			#endif
		}
	}
	return 1;
}

ac_fpublic ac_PlayerSpecPlayerOrVehicle(playerid)
{
	ACInfo[playerid][acGtc][16] = GetTickCount() + 2650;
	return 1;
}

ac_fpublic ac_SetPlayerInterior(playerid, interiorid)
{
	if(!SetPlayerInterior(playerid, interiorid)) return 0;
	ACInfo[playerid][acNOPCount][2] = 0;
	ACInfo[playerid][acSet][0] = interiorid % 256;
	ACInfo[playerid][acGtc][16] =
	ACInfo[playerid][acGtc][0] = GetTickCount() + 3250;
	return 1;
}

ac_fpublic ac_SetPlayerPos(playerid, Float:ac_x, Float:ac_y, Float:ac_z)
{
	if(!SetPlayerPos(playerid, ac_x, ac_y, ac_z)) return 0;
	ACInfo[playerid][acSet][7] = 1;
	ACInfo[playerid][acTpToZ] = false;
	ACInfo[playerid][acNOPCount][10] = 0;
	ACInfo[playerid][acSetPosX] = ac_x;
	ACInfo[playerid][acSetPosY] = ac_y;
	ACInfo[playerid][acSetPosZ] = ac_z;
	ACInfo[playerid][acSetPosTick] =
	ACInfo[playerid][acGtc][10] = GetTickCount() + 3850;
	#if defined FreezeSyncPacket
		if(!ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, false);
	#endif
	return 1;
}

ac_fpublic ac_SetPlayerPosFindZ(playerid, Float:ac_x, Float:ac_y, Float:ac_z)
{
	if(!SetPlayerPosFindZ(playerid, ac_x, ac_y, ac_z)) return 0;
	ACInfo[playerid][acSet][7] = 2;
	ACInfo[playerid][acTpToZ] = true;
	ACInfo[playerid][acNOPCount][10] = 0;
	ACInfo[playerid][acSetPosX] = ac_x;
	ACInfo[playerid][acSetPosY] = ac_y;
	ACInfo[playerid][acSetPosTick] =
	ACInfo[playerid][acGtc][10] = GetTickCount() + 3850;
	#if defined FreezeSyncPacket
		if(!ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, false);
	#endif
	return 1;
}

ac_fpublic ac_SetPlayerVelocity(playerid, Float:ac_X, Float:ac_Y, Float:ac_Z)
{
	if(!SetPlayerVelocity(playerid, ac_X, ac_Y, ac_Z)) return 0;
	ACInfo[playerid][acSpeed] = ac_GetSpeed(ac_X, ac_Y, ac_Z);
	ACInfo[playerid][acGtc][9] = GetTickCount() + 1650;
	return 1;
}

ac_fpublic ac_PutPlayerInVehicle(playerid, vehicleid, ac_seatid)
{
	if(!PutPlayerInVehicle(playerid, vehicleid, ac_seatid)) return 0;
	if(!(SPECIAL_ACTION_DANCE1 <= ACInfo[playerid][acSpecAct] <= SPECIAL_ACTION_DANCE4) &&
	!(SPECIAL_ACTION_DRINK_BEER <= ACInfo[playerid][acSpecAct] <= SPECIAL_ACTION_DRINK_SPRUNK) &&
	GetPlayerVirtualWorld(playerid) == GetVehicleVirtualWorld(vehicleid))
	{
		new ac_model = GetVehicleModel(vehicleid);
		ACInfo[playerid][acNOPCount][7] = 0;
		ACInfo[playerid][acSet][8] = vehicleid;
		if(ac_IsABusEx(ac_model) || ac_IsVehicleSeatOccupied(vehicleid, ac_seatid) ||
		ac_seatid > ac_GetMaxPassengers(ac_model)) ACInfo[playerid][acSet][4] = -1;
		else ACInfo[playerid][acSet][4] = ac_seatid;
		ACInfo[playerid][acGtc][1] = GetTickCount() + 2650;
	}
	return 1;
}

ac_fpublic ac_RemovePlayerFromVehicle(playerid)
{
	if(!RemovePlayerFromVehicle(playerid)) return 0;
	ACInfo[playerid][acSet][9] = 1;
	ACInfo[playerid][acGtc][7] = GetTickCount() + 4650;
	return 1;
}

ac_fpublic ac_SetVehiclePos(vehicleid, Float:ac_x, Float:ac_y, Float:ac_z)
{
	if(!SetVehiclePos(vehicleid, ac_x, ac_y, ac_z)) return 0;
	new ac_driver = ACVehInfo[vehicleid][acDriver];
	if(ac_driver != INVALID_PLAYER_ID)
	{
		ACInfo[ac_driver][acSet][7] = 3;
		ACInfo[ac_driver][acTpToZ] = false;
		ACInfo[ac_driver][acNOPCount][10] = 0;
		ACInfo[ac_driver][acSetPosX] = ac_x;
		ACInfo[ac_driver][acSetPosY] = ac_y;
		ACInfo[ac_driver][acSetPosZ] = ac_z;
		ACInfo[ac_driver][acSetPosTick] =
		ACInfo[ac_driver][acGtc][10] = GetTickCount() + 3850;
		#if defined FreezeSyncPacket
			if(!ACInfo[ac_driver][acUnFrozen]) FreezeSyncPacket(ac_driver, E_ALL_SYNC, false);
		#endif
	}
	else
	{
		ACVehInfo[vehicleid][acPosX] = ac_x;
		ACVehInfo[vehicleid][acPosY] = ac_y;
		ACVehInfo[vehicleid][acPosZ] = ac_z;
	}
	return 1;
}

ac_fpublic ac_SetVehicleVelocity(vehicleid, Float:ac_X, Float:ac_Y, Float:ac_Z)
{
	if(!SetVehicleVelocity(vehicleid, ac_X, ac_Y, ac_Z)) return 0;
	new ac_driver = ACVehInfo[vehicleid][acDriver];
	if(ac_driver != INVALID_PLAYER_ID)
	{
		ACVehInfo[vehicleid][acVelX] = ac_X;
		ACVehInfo[vehicleid][acVelY] = ac_Y;
		ACVehInfo[vehicleid][acVelZ] = ac_Z;
		ACVehInfo[vehicleid][acSpeed] = ac_GetSpeed(ac_X, ac_Y, ac_Z);
		ACInfo[ac_driver][acGtc][8] = GetTickCount() + 1650;
	}
	return 1;
}

ac_fpublic ac_SetVehicleAngularVelocity(vehicleid, Float:ac_X, Float:ac_Y, Float:ac_Z)
{
	if(!SetVehicleAngularVelocity(vehicleid, ac_X, ac_Y, ac_Z)) return 0;
	new ac_driver = ACVehInfo[vehicleid][acDriver];
	if(ac_driver != INVALID_PLAYER_ID)
	{
		ACVehInfo[vehicleid][acVelX] = ac_X;
		ACVehInfo[vehicleid][acVelY] = ac_Y;
		ACVehInfo[vehicleid][acVelZ] = ac_Z;
		ACVehInfo[vehicleid][acSpeed] = ac_GetSpeed(ac_X, ac_Y, ac_Z);
		ACInfo[ac_driver][acGtc][8] = GetTickCount() + 1650;
	}
	return 1;
}

ac_fpublic ac_LinkVehicleToInterior(vehicleid, interiorid)
{
	if(!LinkVehicleToInterior(vehicleid, interiorid)) return 0;
	ACVehInfo[vehicleid][acInt] = interiorid % 256;
	return 1;
}

ac_fpublic ac_ChangeVehiclePaintjob(vehicleid, paintjobid)
{
	ACVehInfo[vehicleid][acPaintJob] = paintjobid;
	return ChangeVehiclePaintjob(vehicleid, paintjobid);
}

ac_fpublic ac_SetVehicleHealth(vehicleid, Float:ac_health)
{
	if(!SetVehicleHealth(vehicleid, ac_health)) return 0;
	new ac_driver = ACVehInfo[vehicleid][acDriver];
	if(ac_driver != INVALID_PLAYER_ID)
	{
		ACInfo[ac_driver][acNOPCount][4] = 0;
		ACInfo[ac_driver][acSetVehHealth] = ac_health;
		ACInfo[ac_driver][acGtc][3] = GetTickCount() + 2650;
		#if defined FreezeSyncPacket
			if(!ACInfo[ac_driver][acUnFrozen]) FreezeSyncPacket(ac_driver, E_ALL_SYNC, false);
		#endif
	}
	else ACVehInfo[vehicleid][acHealth] = ac_health;
	return 1;
}

ac_fpublic ac_RepairVehicle(vehicleid)
{
	if(!RepairVehicle(vehicleid)) return 0;
	new ac_driver = ACVehInfo[vehicleid][acDriver];
	if(ac_driver != INVALID_PLAYER_ID)
	{
		ACInfo[ac_driver][acNOPCount][4] = 0;
		ACInfo[ac_driver][acSetVehHealth] = 1000.0;
		ACInfo[ac_driver][acGtc][3] = GetTickCount() + 2650;
		#if defined FreezeSyncPacket
			if(!ACInfo[ac_driver][acUnFrozen]) FreezeSyncPacket(ac_driver, E_ALL_SYNC, false);
		#endif
	}
	else ACVehInfo[vehicleid][acHealth] = 1000.0;
	ACVehInfo[vehicleid][acPanels] =
	ACVehInfo[vehicleid][acDoors] =
	ACVehInfo[vehicleid][acTires] = 0;
	return 1;
}

ac_fpublic ac_UpdateVehicleDamageStatus(vehicleid, ac_panels, ac_doors, ac_lights, ac_tires)
{
	if(!UpdateVehicleDamageStatus(vehicleid, ac_panels, ac_doors, ac_lights, ac_tires)) return 0;
	ACVehInfo[vehicleid][acPanels] = ac_panels;
	ACVehInfo[vehicleid][acDoors] = ac_doors;
	ACVehInfo[vehicleid][acTires] = ac_tires;
	return 1;
}

ac_fpublic ac_SetVehicleToRespawn(vehicleid)
{
	new ac_driver = ACVehInfo[vehicleid][acDriver];
	if(ac_driver != INVALID_PLAYER_ID)
	{
		ACInfo[ac_driver][acGtc][8] = GetTickCount() + 1650;
		ACVehInfo[vehicleid][acDriver] = INVALID_PLAYER_ID;
	}
	ACVehInfo[vehicleid][acPaintJob] = 3;
	ACVehInfo[vehicleid][acHealth] = 1000.0;
	ACVehInfo[vehicleid][acSpawned] = true;
	ACVehInfo[vehicleid][acTrSpeed] = -1;
	ACVehInfo[vehicleid][acPosDiff] =
	ACVehInfo[vehicleid][acVelX] =
	ACVehInfo[vehicleid][acVelY] =
	ACVehInfo[vehicleid][acVelZ] = 0.0;
	ACVehInfo[vehicleid][acSpeed] =
	ACVehInfo[vehicleid][acTires] =
	ACVehInfo[vehicleid][acDoors] =
	ACVehInfo[vehicleid][acPanels] =
	ACVehInfo[vehicleid][acLastSpeed] =
	ACVehInfo[vehicleid][acSpeedDiff] = 0;
	ACVehInfo[vehicleid][acPosX] = ACVehInfo[vehicleid][acSpawnPosX];
	ACVehInfo[vehicleid][acPosY] = ACVehInfo[vehicleid][acSpawnPosY];
	ACVehInfo[vehicleid][acPosZ] = ACVehInfo[vehicleid][acSpawnPosZ];
	ACVehInfo[vehicleid][acZAngle] = ACVehInfo[vehicleid][acSpawnZAngle];
	return SetVehicleToRespawn(vehicleid);
}

ac_fpublic ac_EnableAntiCheat(code, enable)
{
	if(!(0 <= code < sizeof ac_ACAllow)) return 0;
	if(code == 42)
	{
		if(enable)
		{
			if(!ac_ACAllow[code])
			{
				#if !AC_USE_QUERY
					#if defined GetConsoleVarAsBool
						ac_QueryEnable = (GetConsoleVarAsBool("query") != 0);
					#else
						ac_QueryEnable = (GetServerVarAsBool("query") != 0);
					#endif
				#endif
				#if defined GetConsoleVarAsBool
					ac_RconEnable = (GetConsoleVarAsBool("rcon") != 0);
				#else
					ac_RconEnable = (GetServerVarAsBool("rcon") != 0);
				#endif
			}
			#if !AC_USE_QUERY
				SendRconCommand("query 0");
			#endif
			SendRconCommand("rcon 0");
		}
		else
		{
			static ac_strtmp[9];
			#if !AC_USE_QUERY
				format(ac_strtmp, sizeof ac_strtmp, "query %b", ac_QueryEnable);
				SendRconCommand(ac_strtmp);
			#endif
			format(ac_strtmp, sizeof ac_strtmp, "rcon %b", ac_RconEnable);
			SendRconCommand(ac_strtmp);
		}
	}
	ac_ACAllow[code] = (enable != 0);
	if(enable)
	{
		#if defined foreach
			foreach(new ac_i : Player)
			{
		#else
			#if defined GetPlayerPoolSize
				for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
			#else
				for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
			#endif
			{
				if(!IsPlayerConnected(ac_i)) continue;
		#endif
			ACInfo[ac_i][acACAllow][code] = ac_ACAllow[code];
			switch(code)
			{
				case 7: ACInfo[ac_i][acCheatCount][13] = 0;
				case 9: ACInfo[ac_i][acCheatCount][15] = 0;
				case 10: ACInfo[ac_i][acCheatCount][18] = ACInfo[ac_i][acCheatCount][14] = 0;
				#if AC_USE_AMMUNATIONS
					case 15: ACInfo[ac_i][acCheatCount][20] = 0;
				#endif
				case 17: ACInfo[ac_i][acCheatCount][7] = 0;
				case 19: ACInfo[ac_i][acCheatCount][9] = 0;
				case 20: ACInfo[ac_i][acCheatCount][10] = 0;
				#if AC_USE_TUNING_GARAGES
					case 23: ACInfo[ac_i][acCheatCount][21] = 0;
				#endif
				case 26: ACInfo[ac_i][acCheatCount][12] = ACInfo[ac_i][acCheatCount][8] = 0;
				case 29: ACInfo[ac_i][acCheatCount][11] = ACInfo[ac_i][acCheatCount][6] = 0;
				case 30: ACInfo[ac_i][acCheatCount][17] = 0;
				case 34: ACInfo[ac_i][acCheatCount][5] = 0;
				case 38: ACInfo[ac_i][acCheatCount][0] = 0;
				case 47: ACInfo[ac_i][acCheatCount][16] = 0;
			}
		}
	}
	else
	{
		#if defined foreach
			foreach(new ac_i : Player)
			{
		#else
			#if defined GetPlayerPoolSize
				for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
			#else
				for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
			#endif
			{
				if(!IsPlayerConnected(ac_i)) continue;
		#endif
			ACInfo[ac_i][acACAllow][code] = ac_ACAllow[code];
		}
	}
	#if AC_USE_CONFIG_FILES && AUTOSAVE_SETTINGS_IN_CONFIG
		static ac_strtmp[10];
		new ac_string[415], File:ac_cfgFile = fopen(AC_CONFIG_FILE, io_write);
		if(ac_cfgFile)
		{
			for(new ac_i; ac_i < sizeof ac_ACAllow; ++ac_i)
			{
				format(ac_strtmp, sizeof ac_strtmp, "%d //%d\r\n", ac_ACAllow[ac_i], ac_i);
				strcat(ac_string, ac_strtmp);
			}
			fwrite(ac_cfgFile, ac_string);
			fclose(ac_cfgFile);
		}
	#endif
	return 1;
}

ac_fpublic ac_EnableAntiNOP(nopcode, enable)
{
	if(!(0 <= nopcode < sizeof ac_NOPAllow)) return 0;
	ac_NOPAllow[nopcode] = (enable != 0);
	#if defined foreach
		foreach(new ac_i : Player)
		{
	#else
		#if defined GetPlayerPoolSize
			for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
		#else
			for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
		#endif
		{
			if(!IsPlayerConnected(ac_i)) continue;
	#endif
		ACInfo[ac_i][acNOPAllow][nopcode] = ac_NOPAllow[nopcode];
	}
	#if AC_USE_CONFIG_FILES && AUTOSAVE_SETTINGS_IN_CONFIG
		static ac_strtmp[10];
		new ac_string[87], File:ac_cfgFile = fopen(AC_NOP_CONFIG_FILE, io_write);
		if(ac_cfgFile)
		{
			for(new ac_i; ac_i < sizeof ac_NOPAllow; ++ac_i)
			{
				format(ac_strtmp, sizeof ac_strtmp, "%d //%d\r\n", ac_NOPAllow[ac_i], ac_i);
				strcat(ac_string, ac_strtmp);
			}
			fwrite(ac_cfgFile, ac_string);
			fclose(ac_cfgFile);
		}
	#endif
	#undef AUTOSAVE_SETTINGS_IN_CONFIG
	return 1;
}

ac_fpublic ac_EnableAntiCheatForPlayer(playerid, code, enable)
{
	if(!(0 <= code < sizeof ac_ACAllow)) return -1;
	ACInfo[playerid][acACAllow][code] = (enable != 0);
	if(enable)
	{
		switch(code)
		{
			case 7: ACInfo[playerid][acCheatCount][13] = 0;
			case 9: ACInfo[playerid][acCheatCount][15] = 0;
			case 10: ACInfo[playerid][acCheatCount][18] = ACInfo[playerid][acCheatCount][14] = 0;
			#if AC_USE_AMMUNATIONS
				case 15: ACInfo[playerid][acCheatCount][20] = 0;
			#endif
			case 17: ACInfo[playerid][acCheatCount][7] = 0;
			case 19: ACInfo[playerid][acCheatCount][9] = 0;
			case 20: ACInfo[playerid][acCheatCount][10] = 0;
			#if AC_USE_TUNING_GARAGES
				case 23: ACInfo[playerid][acCheatCount][21] = 0;
			#endif
			case 26: ACInfo[playerid][acCheatCount][12] = ACInfo[playerid][acCheatCount][8] = 0;
			case 29: ACInfo[playerid][acCheatCount][11] = ACInfo[playerid][acCheatCount][6] = 0;
			case 30: ACInfo[playerid][acCheatCount][17] = 0;
			case 34: ACInfo[playerid][acCheatCount][5] = 0;
			case 38: ACInfo[playerid][acCheatCount][0] = 0;
			case 47: ACInfo[playerid][acCheatCount][16] = 0;
		}
	}
	return 1;
}

ac_fpublic ac_EnableAntiNOPForPlayer(playerid, nopcode, enable)
{
	if(!(0 <= nopcode < sizeof ac_NOPAllow)) return -1;
	ACInfo[playerid][acNOPAllow][nopcode] = (enable != 0);
	return 1;
}

ac_fpublic ac_IsAntiCheatEnabled(code)
{
	if(!(0 <= code < sizeof ac_ACAllow)) return 0;
	return ac_ACAllow[code];
}

ac_fpublic ac_IsAntiNOPEnabled(nopcode)
{
	if(!(0 <= nopcode < sizeof ac_NOPAllow)) return 0;
	return ac_NOPAllow[nopcode];
}

ac_fpublic ac_IsAntiCheatEnabledForPlayer(playerid, code)
{
	if(!(0 <= code < sizeof ac_ACAllow)) return 0;
	return ACInfo[playerid][acACAllow][code];
}

ac_fpublic ac_IsAntiNOPEnabledForPlayer(playerid, nopcode)
{
	if(!(0 <= nopcode < sizeof ac_NOPAllow)) return 0;
	return ACInfo[playerid][acNOPAllow][nopcode];
}

ac_fpublic ac_AntiCheatGetSpeed(playerid) return ACInfo[playerid][acSpeed];

ac_fpublic ac_AntiCheatGetAnimationIndex(playerid) return ACInfo[playerid][acAnim];

ac_fpublic ac_AntiCheatGetDialog(playerid) return ACInfo[playerid][acDialog];

ac_fpublic ac_AntiCheatGetInterior(playerid) return ACInfo[playerid][acInt];

ac_fpublic ac_AntiCheatGetEnterVehicle(playerid) return ACInfo[playerid][acEnterVeh];

ac_fpublic ac_AntiCheatGetEnterVehicleSeat(playerid) return ACInfo[playerid][acEnterSeat];

ac_fpublic ac_AntiCheatGetVehicleID(playerid) return ACInfo[playerid][acVeh];

ac_fpublic ac_AntiCheatGetVehicleSeat(playerid) return ACInfo[playerid][acSeat];

ac_fpublic ac_AntiCheatGetWeapon(playerid) return ACInfo[playerid][acHoldWeapon];

ac_fpublic ac_AntiCheatGetWeaponInSlot(playerid, slot) return ACInfo[playerid][acWeapon][slot];

ac_fpublic ac_AntiCheatGetAmmoInSlot(playerid, slot) return ACInfo[playerid][acAmmo][slot];

ac_fpublic ac_AntiCheatGetSpecialAction(playerid) return ACInfo[playerid][acSpecAct];

ac_fpublic ac_AntiCheatGetLastSpecialActio(playerid) return ACInfo[playerid][acLastSpecAct];

ac_fpublic ac_AntiCheatGetLastShotWeapon(playerid) return ACInfo[playerid][acShotWeapon];

ac_fpublic ac_AntiCheatGetLastPickup(playerid) return ACInfo[playerid][acLastPickup];

ac_fpublic ac_AntiCheatGetLastUpdateTime(playerid) return ACInfo[playerid][acUpdateTick];

ac_fpublic ac_AntiCheatGetLastReloadTime(playerid) return ACInfo[playerid][acReloadTick];

ac_fpublic ac_AntiCheatGetLastEnteredVehTi(playerid) return ACInfo[playerid][acEnterVehTick];

ac_fpublic ac_AntiCheatGetLastShotTime(playerid) return ACInfo[playerid][acShotTick];

ac_fpublic ac_AntiCheatGetLastSpawnTime(playerid) return ACInfo[playerid][acSpawnTick];

ac_fpublic ac_AntiCheatIntEnterExitsIsEnab(playerid) return ACInfo[playerid][acIntEnterExits];

ac_fpublic ac_AntiCheatStuntBonusIsEnabled(playerid) return ACInfo[playerid][acStuntBonus];

ac_fpublic ac_AntiCheatIsInModShop(playerid) return ACInfo[playerid][acModShop];

ac_fpublic ac_AntiCheatIsInSpectate(playerid) return ACInfo[playerid][acSpec];

ac_fpublic ac_AntiCheatIsFrozen(playerid) return !ACInfo[playerid][acUnFrozen];

ac_fpublic ac_AntiCheatIsDead(playerid) return ACInfo[playerid][acDead];

ac_fpublic ac_AntiCheatIsConnected(playerid) return ACInfo[playerid][acOnline];

ac_fpublic ac_AntiCheatKickWithDesync(playerid, code)
{
	if(ACInfo[playerid][acKicked] > 0) return -1;
	new ac_gpp = GetPlayerPing(playerid) + 150;
	ACInfo[playerid][acKickTimerID] = SetTimerEx("ac_KickTimer", (ac_gpp > AC_MAX_PING ? AC_MAX_PING : ac_gpp), false, "i", playerid);
	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	{
		if(code == 4) ACInfo[playerid][acKickVeh] = GetPlayerVehicleID(playerid);
		ACInfo[playerid][acKicked] = 2;
	}
	else ACInfo[playerid][acKicked] = 1;
	return 1;
}

ac_fpublic ac_AntiCheatIsKickedWithDesync(playerid) return ACInfo[playerid][acKicked];

ac_fpublic ac_AntiCheatGetVehicleDriver(vehicleid) return ACVehInfo[vehicleid][acDriver];

ac_fpublic ac_AntiCheatGetVehicleInterior(vehicleid) return ACVehInfo[vehicleid][acInt];

ac_fpublic ac_AntiCheatGetVehiclePaintjob(vehicleid) return ACVehInfo[vehicleid][acPaintJob];

ac_fpublic ac_AntiCheatGetVehicleSpeed(vehicleid) return ACVehInfo[vehicleid][acSpeed];

ac_fpublic ac_AntiCheatIsVehicleSpawned(vehicleid) return ACVehInfo[vehicleid][acSpawned];

ac_fpublic ac_AntiCheatGetNextDialog(playerid) return ACInfo[playerid][acNextDialog];

#endif

stock acc_AddStaticVehicle(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, color1, color2)
{
	new ac_vehid = AddStaticVehicle(modelid, spawn_x, spawn_y, spawn_z, z_angle, color1, color2);
	if(ac_vehid != INVALID_VEHICLE_ID)
	{
		#if defined FILTERSCRIPT
			CallRemoteFunction("ac_AddStaticVehicle", "iffff", ac_vehid, spawn_x, spawn_y, spawn_z, z_angle);
		#else
			ac_AddStaticVehicle(ac_vehid, spawn_x, spawn_y, spawn_z, z_angle);
		#endif
	}
	return ac_vehid;
}

#if defined _ALS_AddStaticVehicle
	#undef AddStaticVehicle
#else
	#define _ALS_AddStaticVehicle
#endif
#define AddStaticVehicle acc_AddStaticVehicle

#if defined OnVehicleSirenStateChange
	stock acc_AddStaticVehicleEx(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, color1, color2, respawn_delay, addsiren = 0)
	{
		new ac_vehid = AddStaticVehicleEx(modelid, spawn_x, spawn_y, spawn_z, z_angle, color1, color2, respawn_delay, addsiren);
#else
	stock acc_AddStaticVehicleEx(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, color1, color2, respawn_delay)
	{
		new ac_vehid = AddStaticVehicleEx(modelid, spawn_x, spawn_y, spawn_z, z_angle, color1, color2, respawn_delay);
#endif
	if(ac_vehid != INVALID_VEHICLE_ID)
	{
		#if defined FILTERSCRIPT
			CallRemoteFunction("ac_AddStaticVehicle", "iffff", ac_vehid, spawn_x, spawn_y, spawn_z, z_angle);
		#else
			ac_AddStaticVehicle(ac_vehid, spawn_x, spawn_y, spawn_z, z_angle);
		#endif
	}
	return ac_vehid;
}

#if defined _ALS_AddStaticVehicleEx
	#undef AddStaticVehicleEx
#else
	#define _ALS_AddStaticVehicleEx
#endif
#define AddStaticVehicleEx acc_AddStaticVehicleEx

#if defined OnVehicleSirenStateChange
	stock acc_CreateVehicle(vehicletype, Float:x, Float:y, Float:z, Float:rotation, color1, color2, respawn_delay, addsiren = 0)
	{
		new ac_vehid = CreateVehicle(vehicletype, x, y, z, rotation, color1, color2, respawn_delay, addsiren);
#else
	stock acc_CreateVehicle(vehicletype, Float:x, Float:y, Float:z, Float:rotation, color1, color2, respawn_delay)
	{
		new ac_vehid = CreateVehicle(vehicletype, x, y, z, rotation, color1, color2, respawn_delay);
#endif
	if(ac_vehid != INVALID_VEHICLE_ID && ac_vehid > 0)
	{
		#if defined FILTERSCRIPT
			CallRemoteFunction("ac_CreateVehicle", "iiffff", ac_vehid, vehicletype, x, y, z, rotation);
		#else
			ac_CreateVehicle(ac_vehid, vehicletype, x, y, z, rotation);
		#endif
	}
	return ac_vehid;
}

#if defined _ALS_CreateVehicle
	#undef CreateVehicle
#else
	#define _ALS_CreateVehicle
#endif
#define CreateVehicle acc_CreateVehicle

stock acc_AddPlayerClass(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)
{
	new ac_class = AddPlayerClass(modelid, spawn_x, spawn_y, spawn_z, z_angle, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	#if defined FILTERSCRIPT
		CallRemoteFunction("ac_AddPlayerClass", "ifffiiiiii", ac_class, spawn_x, spawn_y, spawn_z, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	#else
		ac_AddPlayerClass(ac_class, spawn_x, spawn_y, spawn_z, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	#endif
	return ac_class;
}

#if defined _ALS_AddPlayerClass
	#undef AddPlayerClass
#else
	#define _ALS_AddPlayerClass
#endif
#define AddPlayerClass acc_AddPlayerClass

stock acc_AddPlayerClassEx(teamid, modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)
{
	new ac_class = AddPlayerClassEx(teamid, modelid, spawn_x, spawn_y, spawn_z, z_angle, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	#if defined FILTERSCRIPT
		CallRemoteFunction("ac_AddPlayerClass", "ifffiiiiii", ac_class, spawn_x, spawn_y, spawn_z, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	#else
		ac_AddPlayerClass(ac_class, spawn_x, spawn_y, spawn_z, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	#endif
	return ac_class;
}

#if defined _ALS_AddPlayerClassEx
	#undef AddPlayerClassEx
#else
	#define _ALS_AddPlayerClassEx
#endif
#define AddPlayerClassEx acc_AddPlayerClassEx

stock orig_SetSpawnInfo(playerid, team, skin, Float:x, Float:y, Float:z, Float:rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)
	return SetSpawnInfo(playerid, team, skin, x, y, z, rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);

stock acc_SetSpawnInfo(playerid, team, skin, Float:x, Float:y, Float:z, Float:rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetSpawnInfo", "iiiffffiiiiii", playerid, team, skin, x, y, z, rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	#else
		return ac_SetSpawnInfo(playerid, team, skin, x, y, z, rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	#endif
}

#if defined _ALS_SetSpawnInfo
	#undef SetSpawnInfo
#else
	#define _ALS_SetSpawnInfo
#endif
#define SetSpawnInfo acc_SetSpawnInfo

stock acc_AddStaticPickup(model, type, Float:X, Float:Y, Float:Z, virtualworld = 0)
{
	new ac_pickid = CreatePickup(model, type, X, Y, Z, virtualworld);
	if(ac_pickid != -1)
	{
		#if defined FILTERSCRIPT
			return CallRemoteFunction("ac_CreatePickup", "iiifff", ac_pickid, model, type, X, Y, Z);
		#else
			return ac_CreatePickup(ac_pickid, model, type, X, Y, Z);
		#endif
	}
	return 0;
}

#if defined _ALS_AddStaticPickup
	#undef AddStaticPickup
#else
	#define _ALS_AddStaticPickup
#endif
#define AddStaticPickup acc_AddStaticPickup

stock acc_CreatePickup(model, type, Float:X, Float:Y, Float:Z, virtualworld = 0)
{
	new ac_pickid = CreatePickup(model, type, X, Y, Z, virtualworld);
	if(ac_pickid != -1)
	{
		#if defined FILTERSCRIPT
			CallRemoteFunction("ac_CreatePickup", "iiifff", ac_pickid, model, type, X, Y, Z);
		#else
			ac_CreatePickup(ac_pickid, model, type, X, Y, Z);
		#endif
	}
	return ac_pickid;
}

#if defined _ALS_CreatePickup
	#undef CreatePickup
#else
	#define _ALS_CreatePickup
#endif
#define CreatePickup acc_CreatePickup

#if defined CreateDynamicPickup
	#if defined STREAMER_ENABLE_TAGS
		stock STREAMER_TAG_PICKUP:acc_CreateDynamicPickup(modelid, type, Float:x, Float:y, Float:z, worldid = -1, interiorid = -1, playerid = -1, Float:streamdistance = STREAMER_PICKUP_SD, STREAMER_TAG_AREA:areaid = STREAMER_TAG_AREA:-1, priority = 0)
		{
			new STREAMER_TAG_PICKUP:ac_pickid = CreateDynamicPickup(modelid, type, x, y, z, worldid, interiorid, playerid, streamdistance, areaid, priority);
	#else
		stock acc_CreateDynamicPickup(modelid, type, Float:x, Float:y, Float:z, worldid = -1, interiorid = -1, playerid = -1, Float:streamdistance = STREAMER_PICKUP_SD, areaid = -1, priority = 0)
		{
			new ac_pickid = CreateDynamicPickup(modelid, type, x, y, z, worldid, interiorid, playerid, streamdistance, areaid, priority);
	#endif
		if(_:ac_pickid > 0)
		{
			#if defined FILTERSCRIPT
				CallRemoteFunction("ac_CreateDynamicPickup", "iii", ac_pickid, modelid, type);
			#else
				#if AC_USE_PICKUP_WEAPONS\
					&& defined Streamer_SetIntData
					ac_CreateDynamicPickup(ac_pickid, modelid, type);
				#endif
			#endif
		}
		return ac_pickid;
	}

	#if defined _ALS_CreateDynamicPickup
		#undef CreateDynamicPickup
	#else
		#define _ALS_CreateDynamicPickup
	#endif
	#define CreateDynamicPickup acc_CreateDynamicPickup
#endif

#if defined CreateDynamicPickupEx
	#if defined STREAMER_ENABLE_TAGS
		stock STREAMER_TAG_PICKUP:acc_CreateDynamicPickupEx(modelid, type, Float:x, Float:y, Float:z, Float:streamdistance = STREAMER_PICKUP_SD, const worlds[] = { -1 }, const interiors[] = { -1 }, const players[] = { -1 }, const STREAMER_TAG_AREA:areas[] = { STREAMER_TAG_AREA:-1 }, priority = 0, maxworlds = sizeof worlds, maxinteriors = sizeof interiors, maxplayers = sizeof players, maxareas = sizeof areas)
		{
			new STREAMER_TAG_PICKUP:ac_pickid = CreateDynamicPickupEx(modelid, type, x, y, z, streamdistance, worlds, interiors, players, areas, priority, maxworlds, maxinteriors, maxplayers, maxareas);
	#else
		stock acc_CreateDynamicPickupEx(modelid, type, Float:x, Float:y, Float:z, Float:streamdistance = STREAMER_PICKUP_SD, const worlds[] = { -1 }, const interiors[] = { -1 }, const players[] = { -1 }, const areas[] = { -1 }, priority = 0, maxworlds = sizeof worlds, maxinteriors = sizeof interiors, maxplayers = sizeof players, maxareas = sizeof areas)
		{
			new ac_pickid = CreateDynamicPickupEx(modelid, type, x, y, z, streamdistance, worlds, interiors, players, areas, priority, maxworlds, maxinteriors, maxplayers, maxareas);
	#endif
		if(_:ac_pickid > 0)
		{
			#if defined FILTERSCRIPT
				CallRemoteFunction("ac_CreateDynamicPickup", "iii", ac_pickid, modelid, type);
			#else
				#if AC_USE_PICKUP_WEAPONS\
					&& defined Streamer_SetIntData
					ac_CreateDynamicPickup(ac_pickid, modelid, type);
				#endif
			#endif
		}
		return ac_pickid;
	}

	#if defined _ALS_CreateDynamicPickupEx
		#undef CreateDynamicPickupEx
	#else
		#define _ALS_CreateDynamicPickupEx
	#endif
	#define CreateDynamicPickupEx acc_CreateDynamicPickupEx
#endif

stock acc_DestroyVehicle(vehicleid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_DestroyVehicle", "i", vehicleid);
	#else
		return ac_DestroyVehicle(vehicleid);
	#endif
}

#if defined _ALS_DestroyVehicle
	#undef DestroyVehicle
#else
	#define _ALS_DestroyVehicle
#endif
#define DestroyVehicle acc_DestroyVehicle

stock acc_DestroyPickup(pickup)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_DestroyPickup", "i", pickup);
	#else
		return ac_DestroyPickup(pickup);
	#endif
}

#if defined _ALS_DestroyPickup
	#undef DestroyPickup
#else
	#define _ALS_DestroyPickup
#endif
#define DestroyPickup acc_DestroyPickup

#if defined DestroyDynamicPickup
	#if defined STREAMER_ENABLE_TAGS
		stock acc_DestroyDynamicPickup(STREAMER_TAG_PICKUP:pickupid)
	#else
		stock acc_DestroyDynamicPickup(pickupid)
	#endif
	{
		#if defined FILTERSCRIPT
			return CallRemoteFunction("ac_DestroyDynamicPickup", "i", pickupid);
		#else
			return ac_DestroyDynamicPickup(pickupid);
		#endif
	}

	#if defined _ALS_DestroyDynamicPickup
		#undef DestroyDynamicPickup
	#else
		#define _ALS_DestroyDynamicPickup
	#endif
	#define DestroyDynamicPickup acc_DestroyDynamicPickup
#endif

stock acc_DisableInteriorEnterExits()
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_DisableInteriorEnterExits", "");
	#else
		return ac_DisableInteriorEnterExits();
	#endif
}

#if defined _ALS_DisableInteriorEnterExits
	#undef DisableInteriorEnterExits
#else
	#define _ALS_DisableInteriorEnterExits
#endif
#define DisableInteriorEnterExits acc_DisableInteriorEnterExits

stock acc_UsePlayerPedAnims()
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_UsePlayerPedAnims", "");
	#else
		return ac_UsePlayerPedAnims();
	#endif
}

#if defined _ALS_UsePlayerPedAnims
	#undef UsePlayerPedAnims
#else
	#define _ALS_UsePlayerPedAnims
#endif
#define UsePlayerPedAnims acc_UsePlayerPedAnims

#if defined EnableVehicleFriendlyFire
	stock acc_EnableVehicleFriendlyFire()
	{
		#if defined FILTERSCRIPT
			return CallRemoteFunction("ac_EnableVehicleFriendlyFire", "");
		#else
			return ac_EnableVehicleFriendlyFire();
		#endif
	}

	#if defined _ALS_EnableVehicleFriendlyFire
		#undef EnableVehicleFriendlyFire
	#else
		#define _ALS_EnableVehicleFriendlyFire
	#endif
	#define EnableVehicleFriendlyFire acc_EnableVehicleFriendlyFire
#endif

stock acc_EnableStuntBonusForAll(enable)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_EnableStuntBonusForAll", "i", enable);
	#else
		return ac_EnableStuntBonusForAll(enable);
	#endif
}

#if defined _ALS_EnableStuntBonusForAll
	#undef EnableStuntBonusForAll
#else
	#define _ALS_EnableStuntBonusForAll
#endif
#define EnableStuntBonusForAll acc_EnableStuntBonusForAll

stock acc_EnableStuntBonusForPlayer(playerid, enable)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_EnableStuntBonusForPlayer", "ii", playerid, enable);
	#else
		return ac_EnableStuntBonusForPlayer(playerid, enable);
	#endif
}

#if defined _ALS_EnableStuntBonusForPlayer
	#undef EnableStuntBonusForPlayer
#else
	#define _ALS_EnableStuntBonusForPlayer
#endif
#define EnableStuntBonusForPlayer acc_EnableStuntBonusForPlayer

stock orig_ShowPlayerDialog(playerid, dialogid, style, caption[], info[], button1[], button2[]) return ShowPlayerDialog(playerid, dialogid, style, caption, info, button1, button2);

stock acc_ShowPlayerDialog(playerid, dialogid, style, caption[], info[], button1[], button2[])
{
	if(ShowPlayerDialog(playerid, dialogid, style, caption, info, button1, button2))
	{
		#if defined FILTERSCRIPT
			return CallRemoteFunction("ac_fs_ShowPlayerDialog", "id", playerid, dialogid);
		#else
			return ac_ShowPlayerDialog(playerid, dialogid);
		#endif
	}
	return 0;
}

#if defined _ALS_ShowPlayerDialog
	#undef ShowPlayerDialog
#else
	#define _ALS_ShowPlayerDialog
#endif
#define ShowPlayerDialog acc_ShowPlayerDialog

stock orig_TogglePlayerControllable(playerid, toggle) return TogglePlayerControllable(playerid, toggle);

stock acc_TogglePlayerControllable(playerid, toggle)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_TogglePlayerControllable", "ii", playerid, toggle);
	#else
		return ac_TogglePlayerControllable(playerid, toggle);
	#endif
}

#if defined _ALS_TogglePlayerControllable
	#undef TogglePlayerControllable
#else
	#define _ALS_TogglePlayerControllable
#endif
#define TogglePlayerControllable acc_TogglePlayerControllable

stock orig_TogglePlayerSpectating(playerid, toggle) return TogglePlayerSpectating(playerid, toggle);

stock acc_TogglePlayerSpectating(playerid, toggle)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_TogglePlayerSpectating", "ii", playerid, toggle);
	#else
		return ac_TogglePlayerSpectating(playerid, toggle);
	#endif
}

#if defined _ALS_TogglePlayerSpectating
	#undef TogglePlayerSpectating
#else
	#define _ALS_TogglePlayerSpectating
#endif
#define TogglePlayerSpectating acc_TogglePlayerSpectating

stock orig_SpawnPlayer(playerid) return SpawnPlayer(playerid);

stock acc_SpawnPlayer(playerid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SpawnPlayer", "i", playerid);
	#else
		return ac_SpawnPlayer(playerid);
	#endif
}

#if defined _ALS_SpawnPlayer
	#undef SpawnPlayer
#else
	#define _ALS_SpawnPlayer
#endif
#define SpawnPlayer acc_SpawnPlayer

stock orig_SetPlayerHealth(playerid, Float:health) return SetPlayerHealth(playerid, health);

stock acc_SetPlayerHealth(playerid, Float:health)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetPlayerHealth", "if", playerid, health);
	#else
		return ac_SetPlayerHealth(playerid, health);
	#endif
}

#if defined _ALS_SetPlayerHealth
	#undef SetPlayerHealth
#else
	#define _ALS_SetPlayerHealth
#endif
#define SetPlayerHealth acc_SetPlayerHealth

stock orig_SetPlayerArmour(playerid, Float:armour) return SetPlayerArmour(playerid, armour);

stock acc_SetPlayerArmour(playerid, Float:armour)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetPlayerArmour", "if", playerid, armour);
	#else
		return ac_SetPlayerArmour(playerid, armour);
	#endif
}

#if defined _ALS_SetPlayerArmour
	#undef SetPlayerArmour
#else
	#define _ALS_SetPlayerArmour
#endif
#define SetPlayerArmour acc_SetPlayerArmour

stock orig_GivePlayerWeapon(playerid, weaponid, ammo) return GivePlayerWeapon(playerid, weaponid, ammo);

stock acc_GivePlayerWeapon(playerid, weaponid, ammo)
{
	if(!(0 <= playerid < MAX_PLAYERS)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_GivePlayerWeapon", "iid", playerid, weaponid, ammo);
	#else
		return ac_GivePlayerWeapon(playerid, weaponid, ammo);
	#endif
}

#if defined _ALS_GivePlayerWeapon
	#undef GivePlayerWeapon
#else
	#define _ALS_GivePlayerWeapon
#endif
#define GivePlayerWeapon acc_GivePlayerWeapon

stock orig_SetPlayerAmmo(playerid, weaponslot, ammo) return SetPlayerAmmo(playerid, weaponslot, ammo);

stock acc_SetPlayerAmmo(playerid, weaponslot, ammo)
{
	if(!(0 <= playerid < MAX_PLAYERS)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetPlayerAmmo", "iid", playerid, weaponslot, ammo);
	#else
		return ac_SetPlayerAmmo(playerid, weaponslot, ammo);
	#endif
}

#if defined _ALS_SetPlayerAmmo
	#undef SetPlayerAmmo
#else
	#define _ALS_SetPlayerAmmo
#endif
#define SetPlayerAmmo acc_SetPlayerAmmo

stock orig_ResetPlayerWeapons(playerid) return ResetPlayerWeapons(playerid);

stock acc_ResetPlayerWeapons(playerid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_ResetPlayerWeapons", "i", playerid);
	#else
		return ac_ResetPlayerWeapons(playerid);
	#endif
}

#if defined _ALS_ResetPlayerWeapons
	#undef ResetPlayerWeapons
#else
	#define _ALS_ResetPlayerWeapons
#endif
#define ResetPlayerWeapons acc_ResetPlayerWeapons

stock orig_GivePlayerMoney(playerid, money) return GivePlayerMoney(playerid, money);

stock acc_GivePlayerMoney(playerid, money)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_GivePlayerMoney", "id", playerid, money);
	#else
		return ac_GivePlayerMoney(playerid, money);
	#endif
}

#if defined _ALS_GivePlayerMoney
	#undef GivePlayerMoney
#else
	#define _ALS_GivePlayerMoney
#endif
#define GivePlayerMoney acc_GivePlayerMoney

stock orig_ResetPlayerMoney(playerid) return ResetPlayerMoney(playerid);

stock acc_ResetPlayerMoney(playerid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_ResetPlayerMoney", "i", playerid);
	#else
		return ac_ResetPlayerMoney(playerid);
	#endif
}

#if defined _ALS_ResetPlayerMoney
	#undef ResetPlayerMoney
#else
	#define _ALS_ResetPlayerMoney
#endif
#define ResetPlayerMoney acc_ResetPlayerMoney

stock orig_GetPlayerMoney(playerid) return GetPlayerMoney(playerid);

stock acc_GetPlayerMoney(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_GetPlayerMoney", "i", playerid);
	#else
		return ac_GetPlayerMoney(playerid);
	#endif
}

#if defined _ALS_GetPlayerMoney
	#undef GetPlayerMoney
#else
	#define _ALS_GetPlayerMoney
#endif
#define GetPlayerMoney acc_GetPlayerMoney

stock orig_SetPlayerSpecialAction(playerid, actionid) return SetPlayerSpecialAction(playerid, actionid);

stock acc_SetPlayerSpecialAction(playerid, actionid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetPlayerSpecialAction", "ii", playerid, actionid);
	#else
		return ac_SetPlayerSpecialAction(playerid, actionid);
	#endif
}

#if defined _ALS_SetPlayerSpecialAction
	#undef SetPlayerSpecialAction
#else
	#define _ALS_SetPlayerSpecialAction
#endif
#define SetPlayerSpecialAction acc_SetPlayerSpecialAction

stock orig_PlayerSpectatePlayer(playerid, targetplayerid, mode = SPECTATE_MODE_NORMAL) return PlayerSpectatePlayer(playerid, targetplayerid, mode);

stock acc_PlayerSpectatePlayer(playerid, targetplayerid, mode = SPECTATE_MODE_NORMAL)
{
	if(PlayerSpectatePlayer(playerid, targetplayerid, mode))
	{
		#if defined FILTERSCRIPT
			return CallRemoteFunction("ac_PlayerSpecPlayerOrVehicle", "i", playerid);
		#else
			return ac_PlayerSpecPlayerOrVehicle(playerid);
		#endif
	}
	return 0;
}

#if defined _ALS_PlayerSpectatePlayer
	#undef PlayerSpectatePlayer
#else
	#define _ALS_PlayerSpectatePlayer
#endif
#define PlayerSpectatePlayer acc_PlayerSpectatePlayer

stock orig_PlayerSpectateVehicle(playerid, targetvehicleid, mode = SPECTATE_MODE_NORMAL) return PlayerSpectateVehicle(playerid, targetvehicleid, mode);

stock acc_PlayerSpectateVehicle(playerid, targetvehicleid, mode = SPECTATE_MODE_NORMAL)
{
	if(PlayerSpectateVehicle(playerid, targetvehicleid, mode))
	{
		#if defined FILTERSCRIPT
			return CallRemoteFunction("ac_PlayerSpecPlayerOrVehicle", "i", playerid);
		#else
			return ac_PlayerSpecPlayerOrVehicle(playerid);
		#endif
	}
	return 0;
}

#if defined _ALS_PlayerSpectateVehicle
	#undef PlayerSpectateVehicle
#else
	#define _ALS_PlayerSpectateVehicle
#endif
#define PlayerSpectateVehicle acc_PlayerSpectateVehicle

stock orig_SetPlayerInterior(playerid, interiorid) return SetPlayerInterior(playerid, interiorid);

stock acc_SetPlayerInterior(playerid, interiorid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetPlayerInterior", "ii", playerid, interiorid);
	#else
		return ac_SetPlayerInterior(playerid, interiorid);
	#endif
}

#if defined _ALS_SetPlayerInterior
	#undef SetPlayerInterior
#else
	#define _ALS_SetPlayerInterior
#endif
#define SetPlayerInterior acc_SetPlayerInterior

stock orig_SetPlayerPos(playerid, Float:x, Float:y, Float:z) return SetPlayerPos(playerid, x, y, z);

stock acc_SetPlayerPos(playerid, Float:x, Float:y, Float:z)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetPlayerPos", "ifff", playerid, x, y, z);
	#else
		return ac_SetPlayerPos(playerid, x, y, z);
	#endif
}

#if defined _ALS_SetPlayerPos
	#undef SetPlayerPos
#else
	#define _ALS_SetPlayerPos
#endif
#define SetPlayerPos acc_SetPlayerPos

stock orig_SetPlayerPosFindZ(playerid, Float:x, Float:y, Float:z) return SetPlayerPosFindZ(playerid, x, y, z);

stock acc_SetPlayerPosFindZ(playerid, Float:x, Float:y, Float:z)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetPlayerPosFindZ", "ifff", playerid, x, y, z);
	#else
		return ac_SetPlayerPosFindZ(playerid, x, y, z);
	#endif
}

#if defined _ALS_SetPlayerPosFindZ
	#undef SetPlayerPosFindZ
#else
	#define _ALS_SetPlayerPosFindZ
#endif
#define SetPlayerPosFindZ acc_SetPlayerPosFindZ

stock orig_SetPlayerVelocity(playerid, Float:X, Float:Y, Float:Z) return SetPlayerVelocity(playerid, X, Y, Z);

stock acc_SetPlayerVelocity(playerid, Float:X, Float:Y, Float:Z)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetPlayerVelocity", "ifff", playerid, X, Y, Z);
	#else
		return ac_SetPlayerVelocity(playerid, X, Y, Z);
	#endif
}

#if defined _ALS_SetPlayerVelocity
	#undef SetPlayerVelocity
#else
	#define _ALS_SetPlayerVelocity
#endif
#define SetPlayerVelocity acc_SetPlayerVelocity

stock orig_PutPlayerInVehicle(playerid, vehicleid, seatid) return PutPlayerInVehicle(playerid, vehicleid, seatid);

stock acc_PutPlayerInVehicle(playerid, vehicleid, seatid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_PutPlayerInVehicle", "iii", playerid, vehicleid, seatid);
	#else
		return ac_PutPlayerInVehicle(playerid, vehicleid, seatid);
	#endif
}

#if defined _ALS_PutPlayerInVehicle
	#undef PutPlayerInVehicle
#else
	#define _ALS_PutPlayerInVehicle
#endif
#define PutPlayerInVehicle acc_PutPlayerInVehicle

stock orig_RemovePlayerFromVehicle(playerid) return RemovePlayerFromVehicle(playerid);

stock acc_RemovePlayerFromVehicle(playerid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_RemovePlayerFromVehicle", "i", playerid);
	#else
		return ac_RemovePlayerFromVehicle(playerid);
	#endif
}

#if defined _ALS_RemovePlayerFromVehicle
	#undef RemovePlayerFromVehicle
#else
	#define _ALS_RemovePlayerFromVehicle
#endif
#define RemovePlayerFromVehicle acc_RemovePlayerFromVehicle

stock orig_SetVehiclePos(vehicleid, Float:x, Float:y, Float:z) return SetVehiclePos(vehicleid, x, y, z);

stock acc_SetVehiclePos(vehicleid, Float:x, Float:y, Float:z)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetVehiclePos", "ifff", vehicleid, x, y, z);
	#else
		return ac_SetVehiclePos(vehicleid, x, y, z);
	#endif
}

#if defined _ALS_SetVehiclePos
	#undef SetVehiclePos
#else
	#define _ALS_SetVehiclePos
#endif
#define SetVehiclePos acc_SetVehiclePos

stock orig_SetVehicleVelocity(vehicleid, Float:X, Float:Y, Float:Z) return SetVehicleVelocity(vehicleid, X, Y, Z);

stock acc_SetVehicleVelocity(vehicleid, Float:X, Float:Y, Float:Z)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetVehicleVelocity", "ifff", vehicleid, X, Y, Z);
	#else
		return ac_SetVehicleVelocity(vehicleid, X, Y, Z);
	#endif
}

#if defined _ALS_SetVehicleVelocity
	#undef SetVehicleVelocity
#else
	#define _ALS_SetVehicleVelocity
#endif
#define SetVehicleVelocity acc_SetVehicleVelocity

stock orig_SetVehicleAngularVelocity(vehicleid, Float:X, Float:Y, Float:Z) return SetVehicleAngularVelocity(vehicleid, X, Y, Z);

stock acc_SetVehicleAngularVelocity(vehicleid, Float:X, Float:Y, Float:Z)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetVehicleAngularVelocity", "ifff", vehicleid, X, Y, Z);
	#else
		return ac_SetVehicleAngularVelocity(vehicleid, X, Y, Z);
	#endif
}

#if defined _ALS_SetVehicleAngularVelocity
	#undef SetVehicleAngularVelocity
#else
	#define _ALS_SetVehicleAngularVelocity
#endif
#define SetVehicleAngularVelocity acc_SetVehicleAngularVelocity

stock orig_LinkVehicleToInterior(vehicleid, interiorid) return LinkVehicleToInterior(vehicleid, interiorid);

stock acc_LinkVehicleToInterior(vehicleid, interiorid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_LinkVehicleToInterior", "ii", vehicleid, interiorid);
	#else
		return ac_LinkVehicleToInterior(vehicleid, interiorid);
	#endif
}

#if defined _ALS_LinkVehicleToInterior
	#undef LinkVehicleToInterior
#else
	#define _ALS_LinkVehicleToInterior
#endif
#define LinkVehicleToInterior acc_LinkVehicleToInterior

stock orig_ChangeVehiclePaintjob(vehicleid, paintjobid) return ChangeVehiclePaintjob(vehicleid, paintjobid);

stock acc_ChangeVehiclePaintjob(vehicleid, paintjobid)
{
	if(GetVehicleModel(vehicleid) <= 0) return 1;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_ChangeVehiclePaintjob", "ii", vehicleid, paintjobid);
	#else
		return ac_ChangeVehiclePaintjob(vehicleid, paintjobid);
	#endif
}

#if defined _ALS_ChangeVehiclePaintjob
	#undef ChangeVehiclePaintjob
#else
	#define _ALS_ChangeVehiclePaintjob
#endif
#define ChangeVehiclePaintjob acc_ChangeVehiclePaintjob

stock orig_SetVehicleHealth(vehicleid, Float:health) return SetVehicleHealth(vehicleid, health);

stock acc_SetVehicleHealth(vehicleid, Float:health)
{
	if(health < 0.0) health = 0.0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetVehicleHealth", "if", vehicleid, health);
	#else
		return ac_SetVehicleHealth(vehicleid, health);
	#endif
}

#if defined _ALS_SetVehicleHealth
	#undef SetVehicleHealth
#else
	#define _ALS_SetVehicleHealth
#endif
#define SetVehicleHealth acc_SetVehicleHealth

stock orig_RepairVehicle(vehicleid) return RepairVehicle(vehicleid);

stock acc_RepairVehicle(vehicleid)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_RepairVehicle", "i", vehicleid);
	#else
		return ac_RepairVehicle(vehicleid);
	#endif
}

#if defined _ALS_RepairVehicle
	#undef RepairVehicle
#else
	#define _ALS_RepairVehicle
#endif
#define RepairVehicle acc_RepairVehicle

stock orig_UpdateVehicleDamageStatus(vehicleid, panels, doors, lights, tires) return UpdateVehicleDamageStatus(vehicleid, panels, doors, lights, tires);

stock acc_UpdateVehicleDamageStatus(vehicleid, panels, doors, lights, tires)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_UpdateVehicleDamageStatus", "iiiii", vehicleid, panels, doors, lights, tires);
	#else
		return ac_UpdateVehicleDamageStatus(vehicleid, panels, doors, lights, tires);
	#endif
}

#if defined _ALS_UpdateVehicleDamageStatus
	#undef UpdateVehicleDamageStatus
#else
	#define _ALS_UpdateVehicleDamageStatus
#endif
#define UpdateVehicleDamageStatus acc_UpdateVehicleDamageStatus

stock orig_SetVehicleToRespawn(vehicleid) return SetVehicleToRespawn(vehicleid);

stock acc_SetVehicleToRespawn(vehicleid)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_SetVehicleToRespawn", "i", vehicleid);
	#else
		return ac_SetVehicleToRespawn(vehicleid);
	#endif
}

#if defined _ALS_SetVehicleToRespawn
	#undef SetVehicleToRespawn
#else
	#define _ALS_SetVehicleToRespawn
#endif
#define SetVehicleToRespawn acc_SetVehicleToRespawn

stock EnableAntiCheat(code, enable)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_EnableAntiCheat", "ii", code, enable);
	#else
		return ac_EnableAntiCheat(code, enable);
	#endif
}

stock EnableAntiNOP(nopcode, enable)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_EnableAntiNOP", "ii", nopcode, enable);
	#else
		return ac_EnableAntiNOP(nopcode, enable);
	#endif
}

stock EnableAntiCheatForPlayer(playerid, code, enable)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_EnableAntiCheatForPlayer", "iii", playerid, code, enable);
	#else
		return ac_EnableAntiCheatForPlayer(playerid, code, enable);
	#endif
}

stock EnableAntiNOPForPlayer(playerid, nopcode, enable)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_EnableAntiNOPForPlayer", "iii", playerid, nopcode, enable);
	#else
		return ac_EnableAntiNOPForPlayer(playerid, nopcode, enable);
	#endif
}

stock IsAntiCheatEnabled(code)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_IsAntiCheatEnabled", "i", code);
	#else
		return ac_IsAntiCheatEnabled(code);
	#endif
}

stock IsAntiNOPEnabled(nopcode)
{
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_IsAntiNOPEnabled", "i", nopcode);
	#else
		return ac_IsAntiNOPEnabled(nopcode);
	#endif
}

stock IsAntiCheatEnabledForPlayer(playerid, code)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_IsAntiCheatEnabledForPlayer", "ii", playerid, code);
	#else
		return ac_IsAntiCheatEnabledForPlayer(playerid, code);
	#endif
}

stock IsAntiNOPEnabledForPlayer(playerid, nopcode)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_IsAntiNOPEnabledForPlayer", "ii", playerid, nopcode);
	#else
		return ac_IsAntiNOPEnabledForPlayer(playerid, nopcode);
	#endif
}

stock AntiCheatGetSpeed(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetSpeed", "i", playerid);
	#else
		return ac_AntiCheatGetSpeed(playerid);
	#endif
}

stock AntiCheatGetAnimationIndex(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetAnimationIndex", "i", playerid);
	#else
		return ac_AntiCheatGetAnimationIndex(playerid);
	#endif
}

stock AntiCheatGetDialog(playerid)
{
	if(!IsPlayerConnected(playerid)) return -1;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetDialog", "i", playerid);
	#else
		return ac_AntiCheatGetDialog(playerid);
	#endif
}

stock AntiCheatGetInterior(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetInterior", "i", playerid);
	#else
		return ac_AntiCheatGetInterior(playerid);
	#endif
}

stock AntiCheatGetEnterVehicle(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetEnterVehicle", "i", playerid);
	#else
		return ac_AntiCheatGetEnterVehicle(playerid);
	#endif
}

stock AntiCheatGetEnterVehicleSeat(playerid)
{
	if(!IsPlayerConnected(playerid)) return -1;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetEnterVehicleSeat", "i", playerid);
	#else
		return ac_AntiCheatGetEnterVehicleSeat(playerid);
	#endif
}

stock AntiCheatGetVehicleID(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetVehicleID", "i", playerid);
	#else
		return ac_AntiCheatGetVehicleID(playerid);
	#endif
}

stock AntiCheatGetVehicleSeat(playerid)
{
	if(!IsPlayerConnected(playerid)) return -1;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetVehicleSeat", "i", playerid);
	#else
		return ac_AntiCheatGetVehicleSeat(playerid);
	#endif
}

stock AntiCheatGetWeapon(playerid)
{
	if(!IsPlayerConnected(playerid)) return -1;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetWeapon", "i", playerid);
	#else
		return ac_AntiCheatGetWeapon(playerid);
	#endif
}

stock AntiCheatGetWeaponInSlot(playerid, slot)
{
	if(!IsPlayerConnected(playerid)) return -1;
	if(!(0 <= slot <= 12)) return -2;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetWeaponInSlot", "ii", playerid, slot);
	#else
		return ac_AntiCheatGetWeaponInSlot(playerid, slot);
	#endif
}

stock AntiCheatGetAmmoInSlot(playerid, slot)
{
	if(!IsPlayerConnected(playerid)) return -1;
	if(!(0 <= slot <= 12)) return -2;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetAmmoInSlot", "ii", playerid, slot);
	#else
		return ac_AntiCheatGetAmmoInSlot(playerid, slot);
	#endif
}

stock AntiCheatGetSpecialAction(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetSpecialAction", "i", playerid);
	#else
		return ac_AntiCheatGetSpecialAction(playerid);
	#endif
}

stock AntiCheatGetLastSpecialAction(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetLastSpecialActio", "i", playerid);
	#else
		return ac_AntiCheatGetLastSpecialActio(playerid);
	#endif
}

stock AntiCheatGetLastShotWeapon(playerid)
{
	if(!IsPlayerConnected(playerid)) return -1;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetLastShotWeapon", "i", playerid);
	#else
		return ac_AntiCheatGetLastShotWeapon(playerid);
	#endif
}

stock AntiCheatGetLastPickup(playerid)
{
	if(!IsPlayerConnected(playerid)) return -1;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetLastPickup", "i", playerid);
	#else
		return ac_AntiCheatGetLastPickup(playerid);
	#endif
}

stock AntiCheatGetLastUpdateTime(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetLastUpdateTime", "i", playerid);
	#else
		return ac_AntiCheatGetLastUpdateTime(playerid);
	#endif
}

stock AntiCheatGetLastReloadTime(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetLastReloadTime", "i", playerid);
	#else
		return ac_AntiCheatGetLastReloadTime(playerid);
	#endif
}

stock AntiCheatGetLastEnteredVehTime(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetLastEnteredVehTi", "i", playerid);
	#else
		return ac_AntiCheatGetLastEnteredVehTi(playerid);
	#endif
}

stock AntiCheatGetLastShotTime(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetLastShotTime", "i", playerid);
	#else
		return ac_AntiCheatGetLastShotTime(playerid);
	#endif
}

stock AntiCheatGetLastSpawnTime(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetLastSpawnTime", "i", playerid);
	#else
		return ac_AntiCheatGetLastSpawnTime(playerid);
	#endif
}

stock AntiCheatIntEnterExitsIsEnabled(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatIntEnterExitsIsEnab", "i", playerid);
	#else
		return ac_AntiCheatIntEnterExitsIsEnab(playerid);
	#endif
}

stock AntiCheatStuntBonusIsEnabled(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatStuntBonusIsEnabled", "i", playerid);
	#else
		return ac_AntiCheatStuntBonusIsEnabled(playerid);
	#endif
}

stock AntiCheatIsInModShop(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatIsInModShop", "i", playerid);
	#else
		return ac_AntiCheatIsInModShop(playerid);
	#endif
}

stock AntiCheatIsInSpectate(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatIsInSpectate", "i", playerid);
	#else
		return ac_AntiCheatIsInSpectate(playerid);
	#endif
}

stock AntiCheatIsFrozen(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatIsFrozen", "i", playerid);
	#else
		return ac_AntiCheatIsFrozen(playerid);
	#endif
}

stock AntiCheatIsDead(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatIsDead", "i", playerid);
	#else
		return ac_AntiCheatIsDead(playerid);
	#endif
}

stock AntiCheatIsConnected(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatIsConnected", "i", playerid);
	#else
		return ac_AntiCheatIsConnected(playerid);
	#endif
}

stock AntiCheatKickWithDesync(playerid, code)
{
	if(!IsPlayerConnected(playerid)) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatKickWithDesync", "ii", playerid, code);
	#else
		return ac_AntiCheatKickWithDesync(playerid, code);
	#endif
}

stock AntiCheatIsKickedWithDesync(playerid)
{
	if(!IsPlayerConnected(playerid)) return 3;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatIsKickedWithDesync", "i", playerid);
	#else
		return ac_AntiCheatIsKickedWithDesync(playerid);
	#endif
}

stock AntiCheatGetVehicleDriver(vehicleid)
{
	if(GetVehicleModel(vehicleid) <= 0) return INVALID_PLAYER_ID;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetVehicleDriver", "i", vehicleid);
	#else
		return ac_AntiCheatGetVehicleDriver(vehicleid);
	#endif
}

stock AntiCheatGetVehicleInterior(vehicleid)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetVehicleInterior", "i", vehicleid);
	#else
		return ac_AntiCheatGetVehicleInterior(vehicleid);
	#endif
}

stock AntiCheatGetVehiclePaintjob(vehicleid)
{
	if(GetVehicleModel(vehicleid) <= 0) return 3;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetVehiclePaintjob", "i", vehicleid);
	#else
		return ac_AntiCheatGetVehiclePaintjob(vehicleid);
	#endif
}

stock AntiCheatGetVehicleSpeed(vehicleid)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatGetVehicleSpeed", "i", vehicleid);
	#else
		return ac_AntiCheatGetVehicleSpeed(vehicleid);
	#endif
}

stock AntiCheatIsVehicleSpawned(vehicleid)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	#if defined FILTERSCRIPT
		return CallRemoteFunction("ac_AntiCheatIsVehicleSpawned", "i", vehicleid);
	#else
		return ac_AntiCheatIsVehicleSpawned(vehicleid);
	#endif
}

#if defined FILTERSCRIPT

static fs_AntiCheatGetNextDialog(playerid)
{
	if(!IsPlayerConnected(playerid)) return -1;
	return CallRemoteFunction("ac_AntiCheatGetNextDialog", "i", playerid);
}

static fs_AntiCheatSetDialog(playerid, dialogid)
{
	if(!(0 <= playerid < MAX_PLAYERS)) return 0;
	return CallRemoteFunction("ac_ShowPlayerDialog", "id", playerid, dialogid);
}

static fs_AntiCheatSetNextDialog(playerid, dialogid)
{
	if(!(0 <= playerid < MAX_PLAYERS)) return 0;
	return CallRemoteFunction("ac_fs_ShowPlayerDialog", "id", playerid, dialogid);
}

#else

public OnGameModeInit()
{
	#if AC_USE_CONFIG_FILES
		if(!ac_LoadCfg()) printf(CFG_OPENING_ERROR, AC_CONFIG_FILE);
		if(!ac_LoadNOPCfg()) printf(CFG_OPENING_ERROR, AC_NOP_CONFIG_FILE);
	#endif
	if(ac_ACAllow[42])
	{
		#if !AC_USE_QUERY
			#if defined GetConsoleVarAsBool
				ac_QueryEnable = (GetConsoleVarAsBool("query") != 0);
			#else
				ac_QueryEnable = (GetServerVarAsBool("query") != 0);
			#endif
			SendRconCommand("query 0");
		#endif
		#undef AC_USE_QUERY
		#if defined GetConsoleVarAsBool
			ac_RconEnable = (GetConsoleVarAsBool("rcon") != 0);
		#else
			ac_RconEnable = (GetServerVarAsBool("rcon") != 0);
		#endif
		SendRconCommand("rcon 0");
	}
	#if defined GetConsoleVarAsInt
		ac_LagCompMode = (GetConsoleVarAsInt("lagcompmode") != 0);
	#else
		ac_LagCompMode = (GetServerVarAsInt("lagcompmode") != 0);
	#endif
	print(" ");
	print("--------------------------------------");
	print(LOADED_MSG_1);
	printf(LOADED_MSG_2, NEX_AC_VERSION);
	print(LOADED_MSG_3);
	print("--------------------------------------\n");
	#if defined ac_OnGameModeInit
		new ac_a = ac_OnGameModeInit();
	#endif
	static ac_strtmp[10];
	#if defined GetConsoleVarAsString
		GetConsoleVarAsString("version", ac_strtmp, sizeof ac_strtmp);
	#else
		GetServerVarAsString("version", ac_strtmp, sizeof ac_strtmp);
	#endif
	if(strfind(ac_strtmp, AC_SERVER_VERSION) == -1 && strfind(ac_strtmp, AC_SERVER_DL_VERSION) == -1) print(VERSION_WARNING);
	#undef AC_SERVER_DL_VERSION
	#undef AC_SERVER_VERSION
	#if defined ac_OnGameModeInit
		return ac_a;
	#else
		return 1;
	#endif
}

#if defined _ALS_OnGameModeInit
	#undef OnGameModeInit
#else
	#define _ALS_OnGameModeInit
#endif
#define OnGameModeInit ac_OnGameModeInit
#if defined ac_OnGameModeInit
	forward ac_OnGameModeInit();
#endif

#if AC_USE_STATISTICS
	public OnGameModeExit()
	{
		#if defined ac_OnGameModeExit
			new ac_a = ac_OnGameModeExit();
		#endif
		print(" ");
		print("--------------------------------------");
		print(STATS_STRING_1);
		print(STATS_STRING_2);
		printf(STATS_STRING_3, ac_sInfo[0]);
		printf(STATS_STRING_4, ac_sInfo[1]);
		printf(STATS_STRING_5, ac_sInfo[2]);
		printf(STATS_STRING_6, ac_sInfo[3]);
		printf(STATS_STRING_7, ac_sInfo[4]);
		printf(STATS_STRING_8, ac_sInfo[5]);
		print("--------------------------------------\n");
		#if defined ac_OnGameModeExit
			return ac_a;
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnGameModeExit
		#undef OnGameModeExit
	#else
		#define _ALS_OnGameModeExit
	#endif
	#define OnGameModeExit ac_OnGameModeExit
	#if defined ac_OnGameModeExit
		forward ac_OnGameModeExit();
	#endif
#endif

public OnPlayerConnect(playerid)
{
	ACInfo[playerid][acVeh] =
	ACInfo[playerid][acKicked] =
	ACInfo[playerid][acKickVeh] = 0;
	GetPlayerIp(playerid, ACInfo[playerid][acIp], 16);
	#if AC_USE_NPC
		if(IsPlayerNPC(playerid))
		{
			if(ac_ACAllow[36])
			{
				static ac_strtmp[16];
				#if defined GetLocalIP
					new ac_i, bool:ac_rslt;
					ac_strtmp = "127.0.0.1";
					while(ac_strtmp[0])
					{
						if(!strcmp(ACInfo[playerid][acIp], ac_strtmp))
						{
							ac_rslt = true;
							break;
						}
						GetLocalIP(ac_i, ac_strtmp);
						ac_i++;
					}
					if(!ac_rslt)
					{
						#if defined DEBUG
							printf("[ANTICHEAT] NPC's IP: '%s'", ACInfo[playerid][acIp]);
						#endif
						ac_KickWithCode(playerid, "", 0, 36);
					}
				#else
					#if defined GetConsoleVarAsString
						GetConsoleVarAsString("bind", ac_strtmp, sizeof ac_strtmp);
					#else
						GetServerVarAsString("bind", ac_strtmp, sizeof ac_strtmp);
					#endif
					if(strcmp(ACInfo[playerid][acIp], "127.0.0.1") &&
					(strlen(ac_strtmp) < 1 || strcmp(ACInfo[playerid][acIp], ac_strtmp))) ac_KickWithCode(playerid, "", 0, 36);
				#endif
			}
			ACInfo[playerid][acTimerID] = 0;
		}
		else
		{
	#else
		if(ac_ACAllow[36] && IsPlayerNPC(playerid)) ac_KickWithCode(playerid, "", 0, 36);
	#endif
		if(ac_ACAllow[48] && ACInfo[playerid][acOnline]) ac_KickWithCode(playerid, "", 0, 48, 1);
		#if defined GetPlayerVersion
			if(ac_ACAllow[41])
			{
				static ac_ver[24];
				GetPlayerVersion(playerid, ac_ver, sizeof ac_ver);
				if(strfind(ac_ver, AC_CLIENT_VERSION) == -1)
				{
					#if defined DEBUG
						printf(DEBUG_CODE_2, playerid, ac_ver);
					#endif
					ac_KickWithCode(playerid, "", 0, 41);
				}
			}
		#else
			#pragma unused DEBUG_CODE_2
		#endif
		#undef AC_CLIENT_VERSION
		new ac_i = AC_MAX_CONNECTS_FROM_IP;
		if(ac_ACAllow[40])
		{
			#if defined foreach
				foreach(new ac_j : Player)
				{
					if(ac_j == playerid) continue;
			#else
				#if defined GetPlayerPoolSize
					for(new ac_j = GetPlayerPoolSize(); ac_j >= 0; --ac_j)
				#else
					for(new ac_j = MAX_PLAYERS - 1; ac_j >= 0; --ac_j)
				#endif
				{
					#if AC_USE_NPC
						if(ac_j == playerid || !IsPlayerConnected(ac_j) || IsPlayerNPC(ac_j)) continue;
					#else
						if(ac_j == playerid || !IsPlayerConnected(ac_j)) continue;
					#endif
			#endif
				if(!strcmp(ACInfo[playerid][acIp], ACInfo[ac_j][acIp], false))
				{
					ac_i--;
					if(ac_i < 1)
					{
						#if defined DEBUG
							printf(DEBUG_CODE_3, playerid, AC_MAX_CONNECTS_FROM_IP);
						#endif
						ac_KickWithCode(playerid, "", 0, 40);
						break;
					}
				}
			}
		}
		ACInfo[playerid][acSpec] =
		ACInfo[playerid][acForceClass] =
		ACInfo[playerid][acDeathRes] = false;
		ACInfo[playerid][acClassRes] =
		ACInfo[playerid][acDead] = true;
		ACInfo[playerid][acIntEnterExits] = ac_IntEnterExits;
		ACInfo[playerid][acStuntBonus] = ac_StuntBonus;
		ACInfo[playerid][acCheatCount][0] =
		ACInfo[playerid][acLastCamMode] =
		ACInfo[playerid][acHoldWeapon] =
		ACInfo[playerid][acLastWeapon] =
		ACInfo[playerid][acSpawnRes] =
		ACInfo[playerid][acMoney] =
		ACInfo[playerid][acAnim] =
		ACInfo[playerid][acInt] = 0;
		ACInfo[playerid][acSet][11] =
		ACInfo[playerid][acSet][10] =
		ACInfo[playerid][acSet][6] =
		ACInfo[playerid][acSet][5] =
		ACInfo[playerid][acSet][0] =
		ACInfo[playerid][acNextDialog] =
		ACInfo[playerid][acDialog] = -1;
		ACInfo[playerid][acDropJpX] =
		ACInfo[playerid][acDropJpY] =
		ACInfo[playerid][acDropJpZ] = 25000.0;
		for(ac_i = 12; ac_i >= 0; --ac_i)
		{
			ACInfo[playerid][acSetWeapon][ac_i] = -1;
			ACInfo[playerid][acGiveAmmo][ac_i] = -65535;
		}
		for(ac_i = sizeof(ac_Mtfc) - 1; ac_i >= 0; --ac_i) ACInfo[playerid][acFloodCount][ac_i] = 0;
		ACInfo[playerid][acNOPAllow] = ac_NOPAllow;
		ACInfo[playerid][acACAllow] = ac_ACAllow;
		if(ACInfo[playerid][acKicked] < 1)
		{
			ACInfo[playerid][acTimerTick] = GetTickCount();
			ACInfo[playerid][acTimerID] = SetTimerEx("ac_Timer", 1000, false, "i", playerid);
		}
	#if AC_USE_NPC
		}
	#endif
	ACInfo[playerid][acOnline] = true;
	#if defined ac_OnPlayerConnect
		return ac_OnPlayerConnect(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect ac_OnPlayerConnect
#if defined ac_OnPlayerConnect
	forward ac_OnPlayerConnect(playerid);
#endif

public OnPlayerDisconnect(playerid, reason)
{
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		KillTimer(ACInfo[playerid][acTimerID]);
		#if defined BlockIpAddress && AC_MAX_CONNECTS_FROM_IP < 2
			if(ACInfo[playerid][acACAllow][37])
			{
				#if defined GetConsoleVarAsInt
					BlockIpAddress(ACInfo[playerid][acIp], (AC_MIN_TIME_RECONNECT * 1000) - (reason > 0 ? 0 : GetConsoleVarAsInt("playertimeout")));
				#else
					BlockIpAddress(ACInfo[playerid][acIp], (AC_MIN_TIME_RECONNECT * 1000) - (reason > 0 ? 0 : GetServerVarAsInt("playertimeout")));
				#endif
			}
		#endif
		#undef AC_MAX_CONNECTS_FROM_IP
		#undef AC_MIN_TIME_RECONNECT
	#if AC_USE_NPC
		}
	#endif
	KillTimer(ACInfo[playerid][acKickTimerID]);
	new ac_vehid = ACInfo[playerid][acKickVeh];
	if(ac_vehid > 0)
	{
		if(ACVehInfo[ac_vehid][acDriver] == playerid) ACVehInfo[ac_vehid][acDriver] = INVALID_PLAYER_ID;
		if(ACInfo[playerid][acKicked] == 2)
		{
			LinkVehicleToInterior(ac_vehid, ACVehInfo[ac_vehid][acInt]);
			SetVehicleZAngle(ac_vehid, ACVehInfo[ac_vehid][acZAngle]);
			SetVehiclePos(ac_vehid, ACVehInfo[ac_vehid][acPosX], ACVehInfo[ac_vehid][acPosY], ACVehInfo[ac_vehid][acPosZ]);
			SetVehicleHealth(ac_vehid, ACVehInfo[ac_vehid][acHealth]);
			ChangeVehiclePaintjob(ac_vehid, ACVehInfo[ac_vehid][acPaintJob]);
		}
	}
	if((ac_vehid = ACInfo[playerid][acVeh]) > 0)
	{
		if(ACVehInfo[ac_vehid][acDriver] == playerid) ACVehInfo[ac_vehid][acDriver] = INVALID_PLAYER_ID;
		if(ACInfo[playerid][acKicked] == 2)
		{
			LinkVehicleToInterior(ac_vehid, ACVehInfo[ac_vehid][acInt]);
			SetVehicleZAngle(ac_vehid, ACVehInfo[ac_vehid][acZAngle]);
			SetVehiclePos(ac_vehid, ACVehInfo[ac_vehid][acPosX], ACVehInfo[ac_vehid][acPosY], ACVehInfo[ac_vehid][acPosZ]);
			SetVehicleHealth(ac_vehid, ACVehInfo[ac_vehid][acHealth]);
			ChangeVehiclePaintjob(ac_vehid, ACVehInfo[ac_vehid][acPaintJob]);
		}
	}
	ACInfo[playerid][acOnline] = false;
	if(ACInfo[playerid][acKicked] < 1) ACInfo[playerid][acKicked] = 3;
	#if defined ac_OnPlayerDisconnect
		return ac_OnPlayerDisconnect(playerid, reason);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerDisconnect
	#undef OnPlayerDisconnect
#else
	#define _ALS_OnPlayerDisconnect
#endif
#define OnPlayerDisconnect ac_OnPlayerDisconnect
#if defined ac_OnPlayerDisconnect
	forward ac_OnPlayerDisconnect(playerid, reason);
#endif

public OnPlayerSpawn(playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		new ac_gtc = GetTickCount();
		ACInfo[playerid][acModShop] =
		ACInfo[playerid][acClassRes] =
		ACInfo[playerid][acDeathRes] =
		ACInfo[playerid][acDmgRes] = false;
		ACInfo[playerid][acLastPickup] =
		ACInfo[playerid][acSeat] = -1;
		ACInfo[playerid][acCheatCount][5] =
		ACInfo[playerid][acCheatCount][6] =
		ACInfo[playerid][acCheatCount][7] =
		ACInfo[playerid][acCheatCount][8] =
		ACInfo[playerid][acCheatCount][9] =
		ACInfo[playerid][acCheatCount][11] =
		ACInfo[playerid][acCheatCount][14] =
		ACInfo[playerid][acCheatCount][16] =
		ACInfo[playerid][acCheatCount][18] =
		ACInfo[playerid][acHoldWeapon] =
		ACInfo[playerid][acLastWeapon] =
		ACInfo[playerid][acParachute] =
		ACInfo[playerid][acShotWeapon] =
		ACInfo[playerid][acKickVeh] =
		ACInfo[playerid][acIntRet] = 0;
		ACInfo[playerid][acSetPosTick] = ac_gtc + 2650;
		ACInfo[playerid][acGtc][6] = ac_gtc + 1650;
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerSpawn
		return ac_OnPlayerSpawn(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerSpawn
	#undef OnPlayerSpawn
#else
	#define _ALS_OnPlayerSpawn
#endif
#define OnPlayerSpawn ac_OnPlayerSpawn
#if defined ac_OnPlayerSpawn
	forward ac_OnPlayerSpawn(playerid);
#endif

public OnPlayerDeath(playerid, killerid, reason)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	if(ACInfo[playerid][acACAllow][28] &&
	(ACInfo[playerid][acDead] || !ACInfo[playerid][acDeathRes] &&
	(reason != WEAPON_COLLISION && reason != 255 || killerid != INVALID_PLAYER_ID)))
	{
		#if defined DEBUG
			printf("[ANTICHEAT] Is dead: %d, death res: %d, killerid: %d, reason: %d",
			ACInfo[playerid][acDead], ACInfo[playerid][acDeathRes], killerid, reason);
		#endif
		ac_KickWithCode(playerid, "", 0, 28);
	}
	ACInfo[playerid][acDead] = true;
	ACInfo[playerid][acDeathRes] = false;
	if(ACInfo[playerid][acSpawnRes] < 1) ACInfo[playerid][acSpawnTick] = GetTickCount();
	if(!ACInfo[playerid][acSpec]) ACInfo[playerid][acSpawnRes] = 1;
	#if defined ac_OnPlayerDeath
		return ac_OnPlayerDeath(playerid, killerid, reason);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerDeath
	#undef OnPlayerDeath
#else
	#define _ALS_OnPlayerDeath
#endif
#define OnPlayerDeath ac_OnPlayerDeath
#if defined ac_OnPlayerDeath
	forward ac_OnPlayerDeath(playerid, killerid, reason);
#endif

#if defined OnPlayerWeaponShot
	public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
#else
	public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid)
#endif
{
	if(ACInfo[playerid][acKicked] > 0) return 1;
	#if defined OnPlayerWeaponShot
		if(ACInfo[playerid][acACAllow][47] &&
		(amount < 0.0 || issuerid != INVALID_PLAYER_ID && !(0 <= issuerid < MAX_PLAYERS) || !(3 <= bodypart <= 9) || !ac_IsValidDamageReason(weaponid)))
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Issuerid: %d, amount: %f, weaponid: %d, bodypart: %d", issuerid, amount, weaponid, bodypart);
			#endif
			ac_KickWithCode(playerid, "", 0, 47, 4);
			return 1;
		}
	#else
		if(ACInfo[playerid][acACAllow][47] &&
		(amount < 0.0 || issuerid != INVALID_PLAYER_ID && !(0 <= issuerid < MAX_PLAYERS) || !ac_IsValidDamageReason(weaponid)))
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Issuerid: %d, amount: %f, weaponid: %d", issuerid, amount, weaponid);
			#endif
			ac_KickWithCode(playerid, "", 0, 47, 4);
			return 1;
		}
	#endif
	#if defined IsPlayerDying
		if(!IsPlayerDying(playerid)) ACInfo[playerid][acDeathRes] = true;
	#else
		if(!ACInfo[playerid][acDead]) ACInfo[playerid][acDeathRes] = true;
	#endif
	#if defined ac_OnPlayerTakeDamage
		#if defined OnPlayerWeaponShot
			return ac_OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid);
		#else
			return ac_OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid);
		#endif
	#else
		return 0;
	#endif
}

#if defined _ALS_OnPlayerTakeDamage
	#undef OnPlayerTakeDamage
#else
	#define _ALS_OnPlayerTakeDamage
#endif
#define OnPlayerTakeDamage ac_OnPlayerTakeDamage
#if defined ac_OnPlayerTakeDamage
	#if defined OnPlayerWeaponShot
		forward ac_OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid);
	#else
		forward ac_OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid);
	#endif
#endif

#if defined OnPlayerWeaponShot
	public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
#else
	public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid)
#endif
{
	if(ACInfo[playerid][acKicked] > 0) return 1;
	#if defined OnPlayerWeaponShot
		if(ACInfo[playerid][acACAllow][47])
		{
			if(amount < 0.0 || !(0 <= damagedid < MAX_PLAYERS) || !(3 <= bodypart <= 9) || !ac_IsValidWeapon(weaponid))
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Damagedid: %d, amount: %f, weaponid: %d, bodypart: %d",
					damagedid, amount, weaponid, bodypart);
				#endif
				ac_KickWithCode(playerid, "", 0, 47, 3);
				return 1;
			}
			new ac_s = ac_wSlot[weaponid];
			#if defined IsPlayerDying
				if(!IsPlayerDying(playerid))
			#else
				if(!ACInfo[playerid][acDead])
			#endif
			{
				if(ACInfo[playerid][acWeapon][ac_s] != weaponid &&
				ACInfo[playerid][acSetWeapon][ac_s] != weaponid && weaponid != WEAPON_FLAMETHROWER &&
				GetTickCount() - ACInfo[playerid][acGtc][6] > GetPlayerPing(playerid))
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Damagedid: %d, amount: %f, AC weapon: %d, weaponid: %d, bodypart: %d",
						damagedid, amount, ACInfo[playerid][acWeapon][ac_s], weaponid, bodypart);
					#endif
					ac_KickWithCode(playerid, "", 0, 47, 5);
					return 1;
				}
			}
		}
	#else
		if(ACInfo[playerid][acACAllow][47])
		{
			if(amount < 0.0 || !(0 <= damagedid < MAX_PLAYERS) || !ac_IsValidWeapon(weaponid))
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Damagedid: %d, amount: %f, weaponid: %d", damagedid, amount, weaponid);
				#endif
				ac_KickWithCode(playerid, "", 0, 47, 3);
				return 1;
			}
			new ac_s = ac_wSlot[weaponid];
			#if defined IsPlayerDying
				if(!IsPlayerDying(playerid))
			#else
				if(!ACInfo[playerid][acDead])
			#endif
			{
				if(ACInfo[playerid][acWeapon][ac_s] != weaponid &&
				ACInfo[playerid][acSetWeapon][ac_s] != weaponid && weaponid != WEAPON_FLAMETHROWER &&
				GetTickCount() - ACInfo[playerid][acGtc][6] > GetPlayerPing(playerid))
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Damagedid: %d, amount: %f, AC weapon: %d, weaponid: %d",
						damagedid, amount, ACInfo[playerid][acWeapon][ac_s], weaponid);
					#endif
					ac_KickWithCode(playerid, "", 0, 47, 5);
					return 1;
				}
			}
		}
	#endif
	#if defined ac_OnPlayerGiveDamage
		#if defined OnPlayerWeaponShot
			return ac_OnPlayerGiveDamage(playerid, damagedid, amount, weaponid, bodypart);
		#else
			return ac_OnPlayerGiveDamage(playerid, damagedid, amount, weaponid);
		#endif
	#else
		return 0;
	#endif
}

#if defined _ALS_OnPlayerGiveDamage
	#undef OnPlayerGiveDamage
#else
	#define _ALS_OnPlayerGiveDamage
#endif
#define OnPlayerGiveDamage ac_OnPlayerGiveDamage
#if defined ac_OnPlayerGiveDamage
	#if defined OnPlayerWeaponShot
		forward ac_OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart);
	#else
		forward ac_OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid);
	#endif
#endif

#endif

#if defined FILTERSCRIPT

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid != AntiCheatGetDialog(playerid))
	{
		new ac_nd = fs_AntiCheatGetNextDialog(playerid);
		if(dialogid == ac_nd) fs_AntiCheatSetDialog(playerid, ac_nd);
	}
	fs_AntiCheatSetNextDialog(playerid, -1);
	#if defined ac_fs_OnDialogResponse
		return ac_fs_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	#else
		return 0;
	#endif
}

#if defined _ALS_OnDialogResponse
	#undef OnDialogResponse
#else
	#define _ALS_OnDialogResponse
#endif
#define OnDialogResponse ac_fs_OnDialogResponse
#if defined ac_fs_OnDialogResponse
	forward ac_fs_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]);
#endif

#else

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(ACInfo[playerid][acKicked] > 0) return 1;
	new ac_i = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_i - ACInfo[playerid][acCall][0] < ac_Mtfc[0][0]) ac_FloodDetect(playerid, 0);
		else if(ac_i - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][0] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	if(ACInfo[playerid][acACAllow][39] && (dialogid != ACInfo[playerid][acDialog] || listitem < -1))
	{
		#if defined DEBUG
			printf("[ANTICHEAT] AC dialog: %d, dialogid: %d, listitem: %d", ACInfo[playerid][acDialog], dialogid, listitem);
		#endif
		ac_KickWithCode(playerid, "", 0, 39);
		return 1;
	}
	ACInfo[playerid][acDialog] = -1;
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][0] = ac_i;
	if(ACInfo[playerid][acACAllow][45])
	{
		for(ac_i = strlen(inputtext) - 1; ac_i >= 0; --ac_i)
		{
			if(inputtext[ac_i] == '%') strdel(inputtext, ac_i, ac_i + 1);
		}
	}
	#if defined ac_OnDialogResponse
		return ac_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	#else
		return 0;
	#endif
}

#if defined _ALS_OnDialogResponse
	#undef OnDialogResponse
#else
	#define _ALS_OnDialogResponse
#endif
#define OnDialogResponse ac_OnDialogResponse
#if defined ac_OnDialogResponse
	forward ac_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]);
#endif

public OnEnterExitModShop(playerid, enterexit, interiorid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if !AC_USE_TUNING_GARAGES
		if(ACInfo[playerid][acACAllow][23]) ac_KickWithCode(playerid, "", 0, 23, 1);
	#else
		if(ACInfo[playerid][acACAllow][23] &&
		(!(0 <= enterexit <= 1) || !(0 <= interiorid <= 3))) ac_KickWithCode(playerid, "", 0, 23, 1);
	#endif
	new ac_i = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_i - ACInfo[playerid][acCall][1] < ac_Mtfc[1][0]) ac_FloodDetect(playerid, 1);
		else if(ac_i - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][1] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	ACInfo[playerid][acModShop] = (enterexit != 0);
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][1] = ac_i;
	ACInfo[playerid][acSetPosTick] = ACInfo[playerid][acGtc][19] = ac_i + 3850;
	new ac_vehid = ACInfo[playerid][acVeh];
	if(ACInfo[playerid][acKicked] < 1)
	{
		ac_i = interiorid % 256;
		ACVehInfo[ac_vehid][acInt] = ac_i;
		#if defined foreach
			foreach(new ac_j : Player)
			{
				if(ACInfo[ac_j][acVeh] != ac_vehid) continue;
		#else
			#if defined GetPlayerPoolSize
				for(new ac_j = GetPlayerPoolSize(); ac_j >= 0; --ac_j)
			#else
				for(new ac_j = MAX_PLAYERS - 1; ac_j >= 0; --ac_j)
			#endif
			{
				if(!IsPlayerInVehicle(ac_j, ac_vehid)) continue;
		#endif
			ACInfo[ac_j][acInt] = ac_i;
		}
	}
	else
	{
		#if defined foreach
			foreach(new ac_j : Player)
			{
				if(ACInfo[ac_j][acVeh] != ac_vehid) continue;
		#else
			#if defined GetPlayerPoolSize
				for(new ac_j = GetPlayerPoolSize(); ac_j >= 0; --ac_j)
			#else
				for(new ac_j = MAX_PLAYERS - 1; ac_j >= 0; --ac_j)
			#endif
			{
				if(!IsPlayerInVehicle(ac_j, ac_vehid)) continue;
		#endif
			if(ACInfo[ac_j][acUnFrozen]) ACInfo[ac_j][acIntRet] = 2;
			else ACInfo[ac_j][acIntRet] = 1;
		}
	}
	#if defined ac_OnEnterExitModShop
		return ac_OnEnterExitModShop(playerid, enterexit, interiorid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnEnterExitModShop
	#undef OnEnterExitModShop
#else
	#define _ALS_OnEnterExitModShop
#endif
#define OnEnterExitModShop ac_OnEnterExitModShop
#if defined ac_OnEnterExitModShop
	forward ac_OnEnterExitModShop(playerid, enterexit, interiorid);
#endif

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	if(ACInfo[playerid][acIntRet] > 0)
	{
		SetPlayerInterior(playerid, ACInfo[playerid][acInt]);
		if(ACInfo[playerid][acIntRet] == 2) TogglePlayerControllable(playerid, 1);
		ACInfo[playerid][acIntRet] = 0;
	}
	else if(newinteriorid != ACInfo[playerid][acSet][0])
	{
		if(ACInfo[playerid][acSet][0] == -1)
		{
			if(ACInfo[playerid][acVeh] > 0)
			{
				if(ACInfo[playerid][acACAllow][3] && newinteriorid != ACInfo[playerid][acInt])
				{
					#if defined DEBUG
						printf("[ANTICHEAT] AC interior: %d, acInt (last): %d, newinteriorid: %d, oldinteriorid: %d, veh: %d",
						ACInfo[playerid][acSet][0], ACInfo[playerid][acInt], newinteriorid, oldinteriorid, ACInfo[playerid][acVeh]);
					#endif
					ac_KickWithCode(playerid, "", 0, 3, 1);
				}
			}
			else if(ACInfo[playerid][acIntEnterExits]) ACInfo[playerid][acSetPosTick] = GetTickCount() + 3850;
			else if(ACInfo[playerid][acACAllow][2] && newinteriorid != ACInfo[playerid][acInt])
			{
				#if defined DEBUG
					printf("[ANTICHEAT] AC interior: %d, acInt (last): %d, newinteriorid: %d, oldinteriorid: %d",
					ACInfo[playerid][acSet][0], ACInfo[playerid][acInt], newinteriorid, oldinteriorid);
				#endif
				ac_KickWithCode(playerid, "", 0, 2, 1);
			}
		}
	}
	else ACInfo[playerid][acSet][0] = -1;
	if(ACInfo[playerid][acKicked] < 1) ACInfo[playerid][acInt] = newinteriorid % 256;
	#if defined ac_OnPlayerInteriorChange
		return ac_OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerInteriorChange
	#undef OnPlayerInteriorChange
#else
	#define _ALS_OnPlayerInteriorChange
#endif
#define OnPlayerInteriorChange ac_OnPlayerInteriorChange
#if defined ac_OnPlayerInteriorChange
	forward ac_OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid);
#endif

public OnRconLoginAttempt(ip[], password[], success)
{
	static ac_ipTables[MAX_PLAYERS][2], ac_ipIndex;
	new ac_i, ac_currentIp = ac_IpToInt(ip);
	for(; ac_i < sizeof ac_ipTables; ++ac_i)
	{
		if(ac_ipTables[ac_i][0] == ac_currentIp)
		{
			if(success) ac_ipTables[ac_i][1] = 0;
			else if(ac_ACAllow[42])
			{
				if(++ac_ipTables[ac_i][1] > AC_MAX_RCON_LOGIN_ATTEMPT)
				{
					#if defined DEBUG
						printf(DEBUG_CODE_4, ip, password);
					#endif
					ac_ipTables[ac_i][1] = 0;
					ac_KickWithCode(INVALID_PLAYER_ID, ip, 1, 42, 1);
				}
				#if defined OnCheatWarning
					else OnCheatWarning(INVALID_PLAYER_ID, ip, 1, 42, 1, ac_ipTables[ac_i][1]);
				#endif
			}
			ac_i = -1;
			break;
		}
	}
	if(ac_i != -1 && !success)
	{
		ac_ipTables[ac_ipIndex][0] = ac_currentIp;
		if(ac_ACAllow[42])
		{
			if(++ac_ipTables[ac_ipIndex][1] > AC_MAX_RCON_LOGIN_ATTEMPT)
			{
				#undef AC_MAX_RCON_LOGIN_ATTEMPT
				#if defined DEBUG
					printf(DEBUG_CODE_4, ip, password, ac_ipTables[ac_ipIndex][1]);
				#endif
				ac_ipTables[ac_ipIndex][1] = 0;
				ac_KickWithCode(INVALID_PLAYER_ID, ip, 1, 42, 2);
			}
			#if defined OnCheatWarning
				else OnCheatWarning(INVALID_PLAYER_ID, ip, 1, 42, 2, ac_ipTables[ac_ipIndex][1]);
			#endif
		}
		if(++ac_ipIndex >= sizeof ac_ipTables) ac_ipIndex = 0;
		ac_ipTables[ac_ipIndex][1] = 0;
	}
	#if defined ac_OnRconLoginAttempt
		return ac_OnRconLoginAttempt(ip, password, success);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnRconLoginAttempt
	#undef OnRconLoginAttempt
#else
	#define _ALS_OnRconLoginAttempt
#endif
#define OnRconLoginAttempt ac_OnRconLoginAttempt
#if defined ac_OnRconLoginAttempt
	forward ac_OnRconLoginAttempt(ip[], password[], success);
#endif

public OnPlayerUpdate(playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_gtc = GetTickCount(), ac_gpp;
	#if AC_USE_NPC && defined IsPlayerDying
		if(!IsPlayerNPC(playerid) && !IsPlayerDying(playerid))
		{
	#elseif AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#elseif defined IsPlayerDying
		if(!IsPlayerDying(playerid))
		{
	#endif
		new ac_w = GetPlayerWeapon(playerid);
		if(ac_w != -1)
		{
			ac_gpp = GetPlayerPing(playerid);
			if(ACInfo[playerid][acSet][6] != -1 && ac_gtc - ACInfo[playerid][acGtc][12] > ac_gpp)
			{
				if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][9])
				{
					if(++ACInfo[playerid][acNOPCount][9] > AC_MAX_NOP_WARNINGS)
					{
						#if defined DEBUG
							printf(DEBUG_CODE_5, playerid, "SpawnPlayer");
							printf("[ANTICHEAT] acSet[6]: %d", ACInfo[playerid][acSet][6]);
						#endif
						#if defined OnCheatDetected
							ac_KickWithCode(playerid, "", 0, 52, 7);
							if(ACInfo[playerid][acKicked] > 0) return 0;
							ACInfo[playerid][acSet][6] = -1;
						#else
							return ac_KickWithCode(playerid, "", 0, 52, 7);
						#endif
					}
					#if defined OnNOPWarning
						else OnNOPWarning(playerid, 7, ACInfo[playerid][acNOPCount][9]);
					#endif
				}
				else if(++ACInfo[playerid][acNOPCount][9] > AC_MAX_NOP_WARNINGS) ACInfo[playerid][acSet][6] = -1;
			}
			new ac_sa;
			if(!ACInfo[playerid][acSpec] && (ac_sa = GetPlayerState(playerid)) != PLAYER_STATE_SPECTATING)
			{
				new ac_s = ac_wSlot[ac_w];
				if(ACInfo[playerid][acSetWeapon][ac_s] > 0)
				{
					if(ACInfo[playerid][acSetWeapon][ac_s] == ac_w)
					{
						ACInfo[playerid][acSetWeapon][ac_s] = -1;
						ACInfo[playerid][acWeapon][ac_s] = ac_w;
					}
					else if(!(PLAYER_STATE_DRIVER <= ac_sa <= PLAYER_STATE_PASSENGER) &&
					ac_gtc - ACInfo[playerid][acGtcSetWeapon][ac_s] > ac_gpp)
					{
						#if defined FreezeSyncPacket
							if(!ACInfo[playerid][acACAllow][33] || ACInfo[playerid][acUnFrozen])
							{
						#endif
							if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][0])
							{
								if(++ACInfo[playerid][acNOPCount][0] > AC_MAX_NOP_WARNINGS)
								{
									#if defined DEBUG
										printf(DEBUG_CODE_5, playerid, "GivePlayerWeapon");
										printf("[ANTICHEAT] AC weapon: %d, weaponid: %d", ACInfo[playerid][acSetWeapon][ac_s], ac_w);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 52, 1);
										if(ACInfo[playerid][acKicked] > 0) return 0;
										ACInfo[playerid][acSetWeapon][ac_s] = -1;
									#else
										return ac_KickWithCode(playerid, "", 0, 52, 1);
									#endif
								}
								#if defined OnNOPWarning
									else OnNOPWarning(playerid, 1, ACInfo[playerid][acNOPCount][0]);
								#endif
							}
							else if(++ACInfo[playerid][acNOPCount][0] > AC_MAX_NOP_WARNINGS) ACInfo[playerid][acSetWeapon][ac_s] = -1;
						#if defined FreezeSyncPacket
							}
						#endif
					}
				}
				new ac_a = GetPlayerAmmo(playerid);
				if(ACInfo[playerid][acGiveAmmo][ac_s] != -65535)
				{
					if(ACInfo[playerid][acGiveAmmo][ac_s] == ac_a ||
					ACInfo[playerid][acGiveAmmo][ac_s] > ac_a && !(ac_a < 0 <= ACInfo[playerid][acGiveAmmo][ac_s]) &&
					ac_gtc - ACInfo[playerid][acGtcGiveAmmo][ac_s] > ac_gpp)
					{
						ACInfo[playerid][acGiveAmmo][ac_s] = -65535;
						ACInfo[playerid][acAmmo][ac_s] = ac_a;
					}
					else if(ac_gtc - ACInfo[playerid][acGtcGiveAmmo][ac_s] > ac_gpp)
					{
						if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][1])
						{
							if(++ACInfo[playerid][acNOPCount][1] > AC_MAX_NOP_WARNINGS)
							{
								#if defined DEBUG
									printf(DEBUG_CODE_5, playerid, "SetPlayerAmmo");
									printf("[ANTICHEAT] AC ammo: %d, ammo: %d, weaponid: %d",
									ACInfo[playerid][acGiveAmmo][ac_s], ac_a, ac_w);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 52, 2);
									if(ACInfo[playerid][acKicked] > 0) return 0;
									ACInfo[playerid][acGiveAmmo][ac_s] = -65535;
								#else
									return ac_KickWithCode(playerid, "", 0, 52, 2);
								#endif
							}
							#if defined OnNOPWarning
								else OnNOPWarning(playerid, 2, ACInfo[playerid][acNOPCount][1]);
							#endif
						}
						else if(++ACInfo[playerid][acNOPCount][1] > AC_MAX_NOP_WARNINGS) ACInfo[playerid][acGiveAmmo][ac_s] = -65535;
					}
				}
				#if AC_USE_AMMUNATIONS || AC_USE_TUNING_GARAGES
					new ac_money = orig_GetPlayerMoney(playerid);
				#endif
				#if AC_USE_AMMUNATIONS
					if(ACInfo[playerid][acSet][10] != -1)
					{
						if(ac_money < ACInfo[playerid][acMoney] &&
						ACInfo[playerid][acMoney] - ac_money >= ACInfo[playerid][acSet][10]) ACInfo[playerid][acSet][10] = -1;
						else if(ac_gtc - ACInfo[playerid][acGtc][17] > ac_gpp)
						{
							if(ACInfo[playerid][acACAllow][15])
							{
								if(++ACInfo[playerid][acCheatCount][20] > AC_MAX_NOP_WARNINGS)
								{
									#if defined DEBUG
										printf("[ANTICHEAT] Money: %d, old money: %d, price: %d",
										ac_money, ACInfo[playerid][acMoney], ACInfo[playerid][acSet][10]);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 15, 3);
										if(ACInfo[playerid][acKicked] > 0) return 0;
										ACInfo[playerid][acSet][10] = -1;
									#else
										return ac_KickWithCode(playerid, "", 0, 15, 3);
									#endif
								}
								#if defined OnCheatWarning
									else OnCheatWarning(playerid, "", 0, 15, 3, ACInfo[playerid][acCheatCount][20]);
								#endif
							}
							else if(++ACInfo[playerid][acCheatCount][20] > AC_MAX_NOP_WARNINGS) ACInfo[playerid][acSet][10] = -1;
						}
					}
				#endif
				new ac_i = GetPlayerInterior(playerid), Float:ac_pX, Float:ac_pY, Float:ac_pZ, Float:ac_tmp;
				GetPlayerPos(playerid, ac_pX, ac_pY, ac_pZ);
				if(ACInfo[playerid][acHoldWeapon] != ac_w)
				{
					if(ACInfo[playerid][acWeapon][ac_s] != ac_w && ac_gtc - ACInfo[playerid][acGtc][6] > ac_gpp)
					{
						#if AC_USE_PICKUP_WEAPONS
							#if defined Streamer_GetDistanceToItem\
								&& defined Streamer_GetIntData
							if(ACInfo[playerid][acLastPickup] > MAX_PICKUPS) Streamer_GetDistanceToItem(ac_pX, ac_pY, ac_pZ, STREAMER_TYPE_PICKUP, ACInfo[playerid][acLastPickup] - MAX_PICKUPS, ac_tmp);
							if(0 <= ACInfo[playerid][acLastPickup] < MAX_PICKUPS && ACPickInfo[ACInfo[playerid][acLastPickup]][acWeapon] == ac_w &&
							ac_a <= (3 <= ac_s <= 5 ? (ACInfo[playerid][acAmmo][ac_s] + ac_pAmmo[ac_w]) : ac_pAmmo[ac_w]) &&
							IsPlayerInRangeOfPoint(playerid, 15.0, ACPickInfo[ACInfo[playerid][acLastPickup]][acPosX],
							ACPickInfo[ACInfo[playerid][acLastPickup]][acPosY], ACPickInfo[ACInfo[playerid][acLastPickup]][acPosZ]) ||
							ACInfo[playerid][acLastPickup] > MAX_PICKUPS &&
							Streamer_GetIntData(STREAMER_TYPE_PICKUP, ACInfo[playerid][acLastPickup] - MAX_PICKUPS, E_STREAMER_EXTRA_ID) == ac_w + 100 &&
							ac_a <= (3 <= ac_s <= 5 ? (ACInfo[playerid][acAmmo][ac_s] + ac_pAmmo[ac_w]) : ac_pAmmo[ac_w]) && ac_tmp <= 15.0)
							#else
							if(0 <= ACInfo[playerid][acLastPickup] < MAX_PICKUPS && ACPickInfo[ACInfo[playerid][acLastPickup]][acWeapon] == ac_w &&
							ac_a <= (3 <= ac_s <= 5 ? (ACInfo[playerid][acAmmo][ac_s] + ac_pAmmo[ac_w]) : ac_pAmmo[ac_w]) &&
							IsPlayerInRangeOfPoint(playerid, 15.0, ACPickInfo[ACInfo[playerid][acLastPickup]][acPosX],
							ACPickInfo[ACInfo[playerid][acLastPickup]][acPosY], ACPickInfo[ACInfo[playerid][acLastPickup]][acPosZ]))
							#endif
							{
								ACInfo[playerid][acWeapon][ac_s] = ac_w;
								ACInfo[playerid][acAmmo][ac_s] = ac_a;
							}
							else
							{
						#endif
							#if AC_USE_AMMUNATIONS
								if(22 <= ac_w <= 32 && ac_InAmmuNation(playerid, ac_i))
								{
									ACInfo[playerid][acCheatCount][20] = 0;
									if(ACInfo[playerid][acSet][10] != -1) ACInfo[playerid][acSet][10] += ac_AmmuNationInfo[ac_w - 22][0];
									else ACInfo[playerid][acSet][10] = ac_AmmuNationInfo[ac_w - 22][0];
									if(3 <= ac_s <= 5) ACInfo[playerid][acAmmo][ac_s] += ac_AmmuNationInfo[ac_w - 22][1];
									else ACInfo[playerid][acAmmo][ac_s] = ac_AmmuNationInfo[ac_w - 22][1];
									ACInfo[playerid][acWeapon][ac_s] = ac_w;
									ACInfo[playerid][acGtc][17] = ac_gtc + 2850;
								}
								else
								{
							#endif
								if(ac_w == 0 || ac_w == WEAPON_BOMB ||
								ac_w == WEAPON_PARACHUTE && ACInfo[playerid][acVeh] > 0 && ACInfo[playerid][acParachute] > 0)
								{
									if(ac_w == WEAPON_PARACHUTE) ACInfo[playerid][acParachute] = 0;
									ACInfo[playerid][acWeapon][ac_s] = ac_w;
									ACInfo[playerid][acAmmo][ac_s] = ac_a;
								}
								else if(ACInfo[playerid][acACAllow][15] && ACInfo[playerid][acSetWeapon][ac_s] == -1)
								{
									#if defined DEBUG
										printf("[ANTICHEAT] AC weaponid: %d, AC ammo: %d, weaponid: %d, ammo: %d",
										ACInfo[playerid][acWeapon][ac_s], ACInfo[playerid][acAmmo][ac_s], ac_w, ac_a);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 15, 1);
										if(ACInfo[playerid][acKicked] > 0) return 0;
										ACInfo[playerid][acWeapon][ac_s] = ac_w;
										ACInfo[playerid][acAmmo][ac_s] = ac_a;
									#else
										return ac_KickWithCode(playerid, "", 0, 15, 1);
									#endif
								}
							#if AC_USE_AMMUNATIONS
								}
							#endif
						#if AC_USE_PICKUP_WEAPONS
							}
						#endif
					}
				}
				else if(ACInfo[playerid][acAmmo][ac_s] != ac_a &&
				!(PLAYER_STATE_DRIVER <= ac_sa <= PLAYER_STATE_PASSENGER) &&
				7 <= ac_s <= 9 && ac_w != WEAPON_MINIGUN && ACInfo[playerid][acGiveAmmo][ac_s] == -65535 &&
				ac_gtc - ACInfo[playerid][acGtc][6] > ac_gpp)
				{
					if(ACInfo[playerid][acACAllow][16] &&
					(ACInfo[playerid][acAmmo][ac_s] == 0 || ac_a > ACInfo[playerid][acAmmo][ac_s] ||
					ac_a < 0 < ACInfo[playerid][acAmmo][ac_s]))
					{
						#if defined DEBUG
							printf("[ANTICHEAT] AC ammo: %d, ammo: %d, weaponid: %d",
							ACInfo[playerid][acAmmo][ac_s], ac_a, ac_w);
						#endif
						#if defined OnCheatDetected
							ac_KickWithCode(playerid, "", 0, 16, 1);
							if(ACInfo[playerid][acKicked] > 0) return 0;
						#else
							return ac_KickWithCode(playerid, "", 0, 16, 1);
						#endif
					}
					ACInfo[playerid][acAmmo][ac_s] = ac_a;
				}
				GetPlayerHealth(playerid, ac_tmp);
				new ac_health = floatround(ac_tmp, floatround_tozero);
				if(ACInfo[playerid][acSet][1] != -1)
				{
					if(ACInfo[playerid][acSet][1] > 255)
					{
						ac_health += 256 * (((ACInfo[playerid][acSet][1] - (ACInfo[playerid][acSet][1] % 256)) / 256) - 1);
						if(ACInfo[playerid][acSet][1] - ac_health > 255) ac_health += 256;
					}
					if(ACInfo[playerid][acSet][1] == ac_health || ACInfo[playerid][acDmgRes] ||
					ACInfo[playerid][acSet][1] > ac_health && ac_gtc - ACInfo[playerid][acGtc][2] > ac_gpp)
					{
						ACInfo[playerid][acSet][1] = -1;
						ACInfo[playerid][acCheatCount][9] = 0;
						ACInfo[playerid][acDmgRes] = false;
						#if defined FreezeSyncPacket
							if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
						#endif
					}
					else if(ac_gtc - ACInfo[playerid][acGtc][2] > ac_gpp)
					{
						if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][3])
						{
							if(++ACInfo[playerid][acNOPCount][3] > AC_MAX_NOP_WARNINGS)
							{
								#if defined DEBUG
									printf(DEBUG_CODE_5, playerid, "SetPlayerHealth");
									printf("[ANTICHEAT] AC health: %d, health: %d", ACInfo[playerid][acSet][1], ac_health);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 52, 3);
									if(ACInfo[playerid][acKicked] > 0) return 0;
									#if defined FreezeSyncPacket
										else if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
									#endif
									ACInfo[playerid][acSet][1] = -1;
								#else
									return ac_KickWithCode(playerid, "", 0, 52, 3);
								#endif
							}
							#if defined OnNOPWarning
								else OnNOPWarning(playerid, 3, ACInfo[playerid][acNOPCount][3]);
							#endif
						}
						else if(++ACInfo[playerid][acNOPCount][3] > AC_MAX_NOP_WARNINGS)
						{
							ACInfo[playerid][acSet][1] = -1;
							#if defined FreezeSyncPacket
								if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
							#endif
						}
					}
				}
				else if(ACInfo[playerid][acACAllow][12])
				{
					if(ACInfo[playerid][acHealth] > 255)
					{
						ac_health += 256 * (((ACInfo[playerid][acHealth] - (ACInfo[playerid][acHealth] % 256)) / 256) - 1);
						if(ACInfo[playerid][acHealth] - ac_health > 255) ac_health += 256;
					}
					if(ac_health > ACInfo[playerid][acHealth])
					{
						#if AC_USE_RESTAURANTS
							if(ac_health - ACInfo[playerid][acHealth] > 70 || !ac_InRestaurant(playerid, ac_i))
							{
						#endif
							#if AC_USE_VENDING_MACHINES
								if(ac_health - ACInfo[playerid][acHealth] > 35 || !ac_NearVendingMachine(playerid, ac_i))
								{
							#endif
								#if defined DEBUG
									printf("[ANTICHEAT] AC health: %d, health: %d", ACInfo[playerid][acHealth], ac_health);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 12);
									if(ACInfo[playerid][acKicked] > 0) return 0;
								#else
									return ac_KickWithCode(playerid, "", 0, 12);
								#endif
							#if AC_USE_VENDING_MACHINES
								}
							#endif
						#if AC_USE_RESTAURANTS
							}
						#endif
					}
				}
				GetPlayerArmour(playerid, ac_tmp);
				new ac_armour = floatround(ac_tmp, floatround_tozero);
				if(ACInfo[playerid][acSet][2] != -1)
				{
					if(ACInfo[playerid][acSet][2] > 255)
					{
						ac_armour += 256 * (((ACInfo[playerid][acSet][2] - (ACInfo[playerid][acSet][2] % 256)) / 256) - 1);
						if(ACInfo[playerid][acSet][2] - ac_armour > 255) ac_armour += 256;
					}
					if(ACInfo[playerid][acSet][2] == ac_armour || ACInfo[playerid][acDmgRes] ||
					ACInfo[playerid][acSet][2] > ac_armour && ac_gtc - ACInfo[playerid][acGtc][4] > ac_gpp)
					{
						ACInfo[playerid][acSet][2] = -1;
						ACInfo[playerid][acCheatCount][9] = 0;
						ACInfo[playerid][acDmgRes] = false;
						#if defined FreezeSyncPacket
							if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
						#endif
					}
					else if(ac_gtc - ACInfo[playerid][acGtc][4] > ac_gpp)
					{
						if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][5])
						{
							if(++ACInfo[playerid][acNOPCount][5] > AC_MAX_NOP_WARNINGS)
							{
								#if defined DEBUG
									printf(DEBUG_CODE_5, playerid, "SetPlayerArmour");
									printf("[ANTICHEAT] AC armour: %d, armour: %d", ACInfo[playerid][acSet][2], ac_armour);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 52, 4);
									if(ACInfo[playerid][acKicked] > 0) return 0;
									#if defined FreezeSyncPacket
										else if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
									#endif
									ACInfo[playerid][acSet][2] = -1;
								#else
									return ac_KickWithCode(playerid, "", 0, 52, 4);
								#endif
							}
							#if defined OnNOPWarning
								else OnNOPWarning(playerid, 4, ACInfo[playerid][acNOPCount][5]);
							#endif
						}
						else if(++ACInfo[playerid][acNOPCount][5] > AC_MAX_NOP_WARNINGS)
						{
							ACInfo[playerid][acSet][2] = -1;
							#if defined FreezeSyncPacket
								if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
							#endif
						}
					}
				}
				else if(ACInfo[playerid][acACAllow][13])
				{
					if(ACInfo[playerid][acArmour] > 255)
					{
						ac_armour += 256 * (((ACInfo[playerid][acArmour] - (ACInfo[playerid][acArmour] % 256)) / 256) - 1);
						if(ACInfo[playerid][acArmour] - ac_armour > 255) ac_armour += 256;
					}
					if(ac_armour > ACInfo[playerid][acArmour])
					{
						#if AC_USE_AMMUNATIONS
							if(ac_armour == 100 && ac_InAmmuNation(playerid, ac_i))
							{
								ACInfo[playerid][acCheatCount][20] = 0;
								if(ACInfo[playerid][acSet][10] != -1) ACInfo[playerid][acSet][10] += 200;
								else ACInfo[playerid][acSet][10] = 200;
								ACInfo[playerid][acGtc][17] = ac_gtc + 2850;
							}
							else
							{
						#endif
							#if defined DEBUG
								printf("[ANTICHEAT] AC armour: %d, armour: %d", ACInfo[playerid][acArmour], ac_armour);
							#endif
							#if defined OnCheatDetected
								ac_KickWithCode(playerid, "", 0, 13);
								if(ACInfo[playerid][acKicked] > 0) return 0;
							#else
								return ac_KickWithCode(playerid, "", 0, 13);
							#endif
						#if AC_USE_AMMUNATIONS
							}
						#endif
					}
				}
				if(ac_health < ACInfo[playerid][acHealth] || ac_armour < ACInfo[playerid][acArmour])
				{
					ACInfo[playerid][acDmgRes] = ACInfo[playerid][acVehDmgRes] = false;
					ACInfo[playerid][acCheatCount][9] = 0;
				}
				else if(ACInfo[playerid][acACAllow][19] &&
				ACInfo[playerid][acDmgRes] && ac_gtc - ACInfo[playerid][acGtc][13] > ac_gpp)
				{
					ACInfo[playerid][acDmgRes] = ACInfo[playerid][acVehDmgRes] = false;
					if(++ACInfo[playerid][acCheatCount][9] > AC_MAX_GODMODE_WARNINGS)
					{
						#undef AC_MAX_GODMODE_WARNINGS
						#if defined DEBUG
							printf("[ANTICHEAT] AC health: %d, health: %d, AC armour: %d, armour: %d",
							ACInfo[playerid][acHealth], ac_health, ACInfo[playerid][acArmour], ac_armour);
						#endif
						#if defined OnCheatDetected
							ac_KickWithCode(playerid, "", 0, 19);
							if(ACInfo[playerid][acKicked] > 0) return 0;
							ACInfo[playerid][acCheatCount][9] = 0;
						#else
							return ac_KickWithCode(playerid, "", 0, 19);
						#endif
					}
					#if defined OnCheatWarning
						else OnCheatWarning(playerid, "", 0, 19, 0, ACInfo[playerid][acCheatCount][9]);
					#endif
				}
				#if AC_USE_TUNING_GARAGES
				if(ACInfo[playerid][acSet][11] != -1)
				{
					if(ac_money < ACInfo[playerid][acMoney] &&
					ACInfo[playerid][acMoney] - ac_money >= ACInfo[playerid][acSet][11]) ACInfo[playerid][acSet][11] = -1;
					else if(ac_gtc - ACInfo[playerid][acGtc][18] > ac_gpp)
					{
						if(ACInfo[playerid][acACAllow][23])
						{
							if(++ACInfo[playerid][acCheatCount][21] > AC_MAX_NOP_WARNINGS)
							{
								#if defined DEBUG
									printf("[ANTICHEAT] Money: %d, old money: %d, components price: %d",
									ac_money, ACInfo[playerid][acMoney], ACInfo[playerid][acSet][11]);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 23, 3);
									if(ACInfo[playerid][acKicked] > 0) return 0;
									ACInfo[playerid][acSet][11] = -1;
								#else
									return ac_KickWithCode(playerid, "", 0, 23, 3);
								#endif
							}
							#if defined OnCheatWarning
								else OnCheatWarning(playerid, "", 0, 23, 3, ACInfo[playerid][acCheatCount][21]);
							#endif
						}
						else if(++ACInfo[playerid][acCheatCount][21] > AC_MAX_NOP_WARNINGS) ACInfo[playerid][acSet][11] = -1;
					}
				}
				#endif
				if(ACInfo[playerid][acSet][0] != -1 && ac_gtc - ACInfo[playerid][acGtc][0] > ac_gpp)
				{
					if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][2] && ac_i != ACInfo[playerid][acSet][0])
					{
						if(++ACInfo[playerid][acNOPCount][2] > AC_MAX_NOP_WARNINGS)
						{
							#if defined DEBUG
								printf(DEBUG_CODE_5, playerid, "SetPlayerInterior");
								printf("[ANTICHEAT] AC interior: %d, interiorid: %d", ACInfo[playerid][acSet][0], ac_i);
							#endif
							#if defined OnCheatDetected
								ac_KickWithCode(playerid, "", 0, 52, 5);
								if(ACInfo[playerid][acKicked] > 0) return 0;
								ACInfo[playerid][acSet][0] = -1;
							#else
								return ac_KickWithCode(playerid, "", 0, 52, 5);
							#endif
						}
						#if defined OnNOPWarning
							else OnNOPWarning(playerid, 5, ACInfo[playerid][acNOPCount][2]);
						#endif
					}
					else if(++ACInfo[playerid][acNOPCount][2] > AC_MAX_NOP_WARNINGS) ACInfo[playerid][acSet][0] = -1;
				}
				if(ACInfo[playerid][acSet][5] != -1 && ac_gtc - ACInfo[playerid][acGtc][11] > ac_gpp)
				{
					if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][8])
					{
						if(++ACInfo[playerid][acNOPCount][8] > AC_MAX_NOP_WARNINGS)
						{
							#if defined DEBUG
								printf(DEBUG_CODE_5, playerid, "TogglePlayerSpectating");
							#endif
							#if defined OnCheatDetected
								ac_KickWithCode(playerid, "", 0, 52, 6);
								if(ACInfo[playerid][acKicked] > 0) return 0;
								ACInfo[playerid][acSet][5] = -1;
							#else
								return ac_KickWithCode(playerid, "", 0, 52, 6);
							#endif
						}
						#if defined OnNOPWarning
							else OnNOPWarning(playerid, 6, ACInfo[playerid][acNOPCount][8]);
						#endif
					}
					else if(++ACInfo[playerid][acNOPCount][8] > AC_MAX_NOP_WARNINGS) ACInfo[playerid][acSet][5] = -1;
				}
				new ac_vehid = GetPlayerVehicleID(playerid);
				if(ACInfo[playerid][acSet][9] != -1 && ac_vehid > 0 && ac_gtc - ACInfo[playerid][acGtc][7] > ac_gpp)
				{
					if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][11])
					{
						new Float:ac_vX, Float:ac_vY, Float:ac_vZ;
						GetVehicleVelocity(ac_vehid, ac_vX, ac_vY, ac_vZ);
						if(ac_GetSpeed(ac_vX, ac_vY, ac_vZ) > 30) ACInfo[playerid][acGtc][7] = ac_gpp + 1650;
						else
						{
							#if defined DEBUG
								printf(DEBUG_CODE_5, playerid, "RemovePlayerFromVehicle");
								printf("[ANTICHEAT] Veh model: %d, veh: %d", GetVehicleModel(ac_vehid), ac_vehid);
							#endif
							#if defined OnCheatDetected
								ac_KickWithCode(playerid, "", 0, 52, 8);
								if(ACInfo[playerid][acKicked] > 0) return 0;
								ACInfo[playerid][acSet][9] = -1;
							#else
								return ac_KickWithCode(playerid, "", 0, 52, 8);
							#endif
						}
					}
					else ACInfo[playerid][acSet][9] = -1;
				}
				ac_s = GetPlayerVehicleSeat(playerid);
				if(ACInfo[playerid][acSet][8] != -1)
				{
					if(ACInfo[playerid][acSet][8] == ac_vehid &&
					(ACInfo[playerid][acSet][4] == ac_s || ACInfo[playerid][acSet][4] == -1))
					{
						if(ACInfo[playerid][acVeh] > 0)
						{
							new ac_t = ACInfo[playerid][acVeh];
							if(ACVehInfo[ac_t][acDriver] == playerid) ACVehInfo[ac_t][acDriver] = INVALID_PLAYER_ID;
							if(ac_IsAnAircraftEx(GetVehicleModel(ac_t))) ACInfo[playerid][acParachute] = 2;
						}
						if(ac_sa == PLAYER_STATE_DRIVER)
						{
							ACVehInfo[ac_vehid][acDriver] = playerid;
							GetVehicleZAngle(ac_vehid, ACVehInfo[ac_vehid][acZAngle]);
							ACInfo[playerid][acGtc][8] = ac_gtc + 1650;
							ACInfo[playerid][acSetVehHealth] = -1.0;
							ACInfo[playerid][acLastPosX] = ac_pX;
							ACInfo[playerid][acLastPosY] = ac_pY;
						}
						ACInfo[playerid][acEnterVeh] =
						ACInfo[playerid][acCheatCount][10] = 0;
						ACInfo[playerid][acVehDmgRes] = false;
						ACInfo[playerid][acEnterSeat] =
						ACInfo[playerid][acSet][9] =
						ACInfo[playerid][acSet][8] =
						ACInfo[playerid][acSet][7] = -1;
						ACInfo[playerid][acSeat] = ac_s;
					}
					else if(ac_gtc - ACInfo[playerid][acGtc][1] > ac_gpp)
					{
						if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][7] &&
						ACInfo[playerid][acSet][4] != -1 && ACVehInfo[ACInfo[playerid][acSet][8]][acSpawned] &&
						IsVehicleStreamedIn(ACInfo[playerid][acSet][8], playerid))
						{
							if(++ACInfo[playerid][acNOPCount][7] > AC_MAX_NOP_WARNINGS)
							{
								#if defined DEBUG
									printf(DEBUG_CODE_5, playerid, "PutPlayerInVehicle");
									printf("[ANTICHEAT] AC veh: %d, veh: %d, AC seat: %d, seatid: %d",
									ACInfo[playerid][acSet][8], ac_vehid, ACInfo[playerid][acSet][4], ac_s);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 52, 9);
									if(ACInfo[playerid][acKicked] > 0) return 0;
									ACInfo[playerid][acSet][8] = -1;
								#else
									return ac_KickWithCode(playerid, "", 0, 52, 9);
								#endif
							}
							#if defined OnNOPWarning
								else OnNOPWarning(playerid, 9, ACInfo[playerid][acNOPCount][7]);
							#endif
						}
						else if(++ACInfo[playerid][acNOPCount][7] > AC_MAX_NOP_WARNINGS) ACInfo[playerid][acSet][8] = -1;
					}
				}
				else
				{
					new Float:ac_dist_set = 25000.0;
					if(ACInfo[playerid][acSet][7] != -1)
					{
						ac_dist_set = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acSetPosX], ACInfo[playerid][acSetPosY], (ACInfo[playerid][acTpToZ] ? ac_pZ : ACInfo[playerid][acSetPosZ]));
						if(ac_dist_set < 15.0)
						{
							ACInfo[playerid][acSet][7] = -1;
							ACInfo[playerid][acCheatCount][1] =
							ACInfo[playerid][acCheatCount][2] =
							ACInfo[playerid][acGtc][10] = 0;
							ACInfo[playerid][acPosX] = ACInfo[playerid][acLastPosX] = ac_pX;
							ACInfo[playerid][acPosY] = ACInfo[playerid][acLastPosY] = ac_pY;
							ACInfo[playerid][acPosZ] = ac_pZ;
							#if defined FreezeSyncPacket
								if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
							#endif
						}
						else if(ac_gtc - ACInfo[playerid][acGtc][10] > ac_gpp)
						{
							if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][10])
							{
								if(++ACInfo[playerid][acNOPCount][10] > AC_MAX_NOP_WARNINGS)
								{
									#if defined DEBUG
										printf(DEBUG_CODE_5, playerid, "SetPlayerPos");
										printf("[ANTICHEAT] Dist: %f, acSet[7]: %d", ac_dist_set, ACInfo[playerid][acSet][7]);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 52, 10);
										if(ACInfo[playerid][acKicked] > 0) return 0;
										#if defined FreezeSyncPacket
											else if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
										#endif
										ACInfo[playerid][acSet][7] = -1;
									#else
										return ac_KickWithCode(playerid, "", 0, 52, 10);
									#endif
								}
								#if defined OnNOPWarning
									else OnNOPWarning(playerid, 10, ACInfo[playerid][acNOPCount][10]);
								#endif
							}
							else if(++ACInfo[playerid][acNOPCount][10] > AC_MAX_NOP_WARNINGS)
							{
								ACInfo[playerid][acSet][7] = -1;
								#if defined FreezeSyncPacket
									if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
								#endif
							}
						}
					}
					new Float:ac_vX, Float:ac_vY, Float:ac_vZ, ac_specact = GetPlayerSpecialAction(playerid),
					Float:ac_dist = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
					if(ac_vehid > 0)
					{
						if(ACInfo[playerid][acVeh] > 0)
						{
							if(ACInfo[playerid][acVeh] != ac_vehid)
							{
								if(ACInfo[playerid][acACAllow][4])
								{
									#if defined DEBUG
										printf("[ANTICHEAT] AC veh: %d, veh: %d", ACInfo[playerid][acVeh], ac_vehid);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 4, 2);
										if(ACInfo[playerid][acKicked] > 0) return 0;
									#else
										return ac_KickWithCode(playerid, "", 0, 4, 2);
									#endif
								}
							}
							else if(ACInfo[playerid][acACAllow][50] && ACInfo[playerid][acSeat] != ac_s)
							{
								#if defined DEBUG
									printf("[ANTICHEAT] AC seat: %d, seatid: %d, veh model: %d, veh: %d",
									ACInfo[playerid][acSeat], ac_s, GetVehicleModel(ac_vehid), ac_vehid);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 50);
									if(ACInfo[playerid][acKicked] > 0) return 0;
								#else
									return ac_KickWithCode(playerid, "", 0, 50);
								#endif
							}
						}
						if(ac_sa == PLAYER_STATE_DRIVER)
						{
							if(ACInfo[playerid][acACAllow][32] && ACVehInfo[ac_vehid][acDriver] != playerid &&
							ACVehInfo[ac_vehid][acDriver] != INVALID_PLAYER_ID)
							{
								#if defined DEBUG
									printf("[ANTICHEAT] AC driver: %d, driver: %d, veh: %d",
									ACVehInfo[ac_vehid][acDriver], playerid, ac_vehid);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 32);
								#endif
								if(ACInfo[playerid][acSet][7] != -1) ClearAnimations(playerid, 1);
								else SetPlayerPos(playerid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
								return 0;
							}
							new Float:ac_vHealth;
							GetVehicleHealth(ac_vehid, ac_vHealth);
							if(ACInfo[playerid][acSetVehHealth] != -1.0)
							{
								if(ACInfo[playerid][acSetVehHealth] == ac_vHealth ||
								ACInfo[playerid][acSetVehHealth] > ac_vHealth && ac_gtc - ACInfo[playerid][acGtc][3] > ac_gpp)
								{
									ACInfo[playerid][acSetVehHealth] = -1.0;
									ACInfo[playerid][acCheatCount][10] = 0;
									ACInfo[playerid][acVehDmgRes] = false;
									#if defined FreezeSyncPacket
										if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
									#endif
								}
								else if(ac_gtc - ACInfo[playerid][acGtc][3] > ac_gpp)
								{
									if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][4])
									{
										if(++ACInfo[playerid][acNOPCount][4] > AC_MAX_NOP_WARNINGS)
										{
											#if defined DEBUG
												printf(DEBUG_CODE_5, playerid, "SetVehicleHealth");
												printf("[ANTICHEAT] AC veh health: %f, veh health: %f, veh: %d",
												ACInfo[playerid][acSetVehHealth], ac_vHealth, ac_vehid);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 52, 11);
												if(ACInfo[playerid][acKicked] > 0) return 0;
												#if defined FreezeSyncPacket
													else if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
												#endif
												ACInfo[playerid][acSetVehHealth] = -1.0;
											#else
												return ac_KickWithCode(playerid, "", 0, 52, 11);
											#endif
										}
										#if defined OnNOPWarning
											else OnNOPWarning(playerid, 11, ACInfo[playerid][acNOPCount][4]);
										#endif
									}
									else if(++ACInfo[playerid][acNOPCount][4] > AC_MAX_NOP_WARNINGS)
									{
										ACInfo[playerid][acSetVehHealth] = -1.0;
										#if defined FreezeSyncPacket
											if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
										#endif
									}
								}
							}
							else if(ACInfo[playerid][acACAllow][11] &&
							(!ac_IsValidFloat(ac_vHealth) || ac_vHealth > ACVehInfo[ac_vehid][acHealth] &&
							!ACInfo[playerid][acModShop] && ac_vHealth))
							{
								#if AC_USE_PAYNSPRAY
									if(!ac_InPayNSpray(playerid, ac_i))
									{
								#endif
									#if defined DEBUG
										printf("[ANTICHEAT] AC veh health: %f, veh health: %f, veh: %d, playerid: %d",
										ACVehInfo[ac_vehid][acHealth], ac_vHealth, ac_vehid, playerid);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 11);
										if(ACInfo[playerid][acKicked] > 0) return 0;
									#endif
									SetVehicleHealth(ac_vehid, ACVehInfo[ac_vehid][acHealth]);
								#if AC_USE_PAYNSPRAY
									}
								#endif
							}
							if(ACInfo[playerid][acVehDmgRes])
							{
								if(ac_vHealth < ACVehInfo[ac_vehid][acHealth])
								{
									ACInfo[playerid][acDmgRes] = ACInfo[playerid][acVehDmgRes] = false;
									ACInfo[playerid][acCheatCount][10] = 0;
								}
								else if(ACInfo[playerid][acACAllow][20] && ac_gtc - ACInfo[playerid][acGtc][14] > ac_gpp)
								{
									ACInfo[playerid][acDmgRes] = ACInfo[playerid][acVehDmgRes] = false;
									if(++ACInfo[playerid][acCheatCount][10] > AC_MAX_GODMODE_VEH_WARNINGS)
									{
										#undef AC_MAX_GODMODE_VEH_WARNINGS
										#if defined DEBUG
											printf("[ANTICHEAT] AC veh health: %f, veh health: %f, veh: %d",
											ACVehInfo[ac_vehid][acHealth], ac_vHealth, ac_vehid);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 20);
											if(ACInfo[playerid][acKicked] > 0) return 0;
											ACInfo[playerid][acCheatCount][10] = 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 20);
										#endif
									}
									#if defined OnCheatWarning
										else OnCheatWarning(playerid, "", 0, 20, 0, ACInfo[playerid][acCheatCount][10]);
									#endif
								}
							}
							GetVehicleVelocity(ac_vehid, ac_vX, ac_vY, ac_vZ);
							new Float:ac_zAngle, ac_vsp = ac_GetSpeed(ac_vX, ac_vY, ac_vZ);
							GetVehicleZAngle(ac_vehid, ac_zAngle);
							if(ac_dist > 0.8)
							{
								if(ac_dist >= 80.0 && ac_dist - ACVehInfo[ac_vehid][acPosDiff] > (ac_dist / 2.6) * 1.8 &&
								ac_dist_set >= 80.0 && ac_dist_set - ACVehInfo[ac_vehid][acPosDiff] > (ac_dist_set / 2.6) * 1.8)
								{
									#if defined VectorSize
									if(ACInfo[playerid][acACAllow][3] && ac_gtc - ACInfo[playerid][acGtc][19] > ac_gpp &&
									(ACInfo[playerid][acPosZ] >= -90.0 || ac_pZ - ACInfo[playerid][acPosZ] < 40.0 ||
									VectorSize(ac_pX - ACInfo[playerid][acPosX], ac_pY - ACInfo[playerid][acPosY], 0.0) >= 180.0 ||
									++ACInfo[playerid][acCheatCount][19] > AC_MAX_TELEPORT_GLITCH_WARNINGS))
									#else
									if(ACInfo[playerid][acACAllow][3] && ac_gtc - ACInfo[playerid][acGtc][19] > ac_gpp &&
									(ACInfo[playerid][acPosZ] >= -90.0 || ac_pZ - ACInfo[playerid][acPosZ] < 40.0 ||
									floatsqroot(floatpower(ac_pX - ACInfo[playerid][acPosX], 2.0) + floatpower(ac_pY - ACInfo[playerid][acPosY], 2.0)) >= 180.0 ||
									++ACInfo[playerid][acCheatCount][19] > AC_MAX_TELEPORT_GLITCH_WARNINGS))
									#endif
									{
										#if defined DEBUG
											printf("[ANTICHEAT] Dist: %f, dist set: %f, old pos diff: %f, speed: %d, veh: %d",
											ac_dist, ac_dist_set, ACVehInfo[ac_vehid][acPosDiff], ac_vsp, ac_vehid);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 3, 2);
											if(ACInfo[playerid][acKicked] > 0) return 0;
											ACInfo[playerid][acCheatCount][19] = 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 3, 2);
										#endif
									}
									ACInfo[playerid][acLastPosX] = ac_pX;
									ACInfo[playerid][acLastPosY] = ac_pY;
								}
								else if(ac_vsp < 12 && ac_gtc - ACInfo[playerid][acGtc][10] > ac_gpp)
								{
									if(ac_dist >= 40.0 && ac_dist_set >= 40.0)
									{
										if(ACInfo[playerid][acACAllow][3])
										{
											#if defined DEBUG
												printf("[ANTICHEAT] Speed: %d, dist: %f, dist set: %f", ac_vsp, ac_dist, ac_dist_set);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 3, 4);
												if(ACInfo[playerid][acKicked] > 0) return 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 3, 4);
											#endif
										}
									}
									else if(ACInfo[playerid][acACAllow][1])
									{
										if(++ACInfo[playerid][acCheatCount][2] > AC_MAX_AIR_VEH_WARNINGS)
										{
											#if defined DEBUG
												printf("[ANTICHEAT] Speed: %d, dist: %f, veh: %d", ac_vsp, ac_dist, ac_vehid);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 1, 1);
												if(ACInfo[playerid][acKicked] > 0) return 0;
												ACInfo[playerid][acCheatCount][2] = 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 1, 1);
											#endif
										}
										#if defined OnCheatWarning
											else OnCheatWarning(playerid, "", 0, 1, 1, ACInfo[playerid][acCheatCount][2]);
										#endif
									}
								}
							}
							ac_i = GetVehicleModel(ac_vehid);
							new ac_spDiff = ac_vsp - ACVehInfo[ac_vehid][acSpeed];
							if(ac_gtc - ACInfo[playerid][acGtc][8] > ac_gpp)
							{
								if(ACInfo[playerid][acACAllow][10])
								{
									if(ac_spDiff > 220 || ac_vsp > 620)
									{
										#if defined DEBUG
											printf("[ANTICHEAT] Speed: %d, old speed: %d, veh model: %d, veh: %d",
											ac_vsp, ACVehInfo[ac_vehid][acSpeed], ac_i, ac_vehid);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 10, 3);
											if(ACInfo[playerid][acKicked] > 0) return 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 10, 3);
										#endif
									}
									else if(ac_spDiff >= 20 &&
									ACVehInfo[ac_vehid][acSpeedDiff] <= ac_spDiff && ACVehInfo[ac_vehid][acHealth] <= ac_vHealth &&
									!(ac_IsValidVehicleModel(ac_i) && (ac_spDiff < 65 && (ac_i == 432 || ac_i == 449 || ac_IsATrainLoco(ac_i)) ||
									ac_spDiff < 45 && ac_IsABmx(ac_i) && floatabs(ac_vX) <= 0.76 && floatabs(ac_vY) <= 0.76 && floatabs(ac_vZ) <= 0.76 ||
									ac_i != 449 && !ac_IsATrainLoco(ac_i) && !ac_IsABmx(ac_i) && ACVehInfo[ac_vehid][acHealth] < 250.0)))
									{
										ACInfo[playerid][acCheatCount][14] += (1 * AC_SPEEDHACK_VEH_RESET_DELAY);
										if(ACInfo[playerid][acCheatCount][14] > AC_MAX_SPEEDHACK_VEH_WARNINGS)
										{
											#if defined DEBUG
												printf("[ANTICHEAT] Speed: %d, old speed: %d, veh model: %d, veh: %d",
												ac_vsp, ACVehInfo[ac_vehid][acSpeed], ac_i, ac_vehid);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 10, 1);
												if(ACInfo[playerid][acKicked] > 0) return 0;
												ACInfo[playerid][acCheatCount][14] = 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 10, 1);
											#endif
										}
										#if defined OnCheatWarning
											else OnCheatWarning(playerid, "", 0, 10, 1, floatround(ACInfo[playerid][acCheatCount][14] / AC_SPEEDHACK_VEH_RESET_DELAY));
										#endif
									}
								}
								if(ACInfo[playerid][acACAllow][25] &&
								ac_vsp > 15 && ac_abs(ac_spDiff) < 25 &&
								floatround(floatabs(ac_zAngle - ACVehInfo[ac_vehid][acZAngle])) == 180 &&
								(ac_vX < 0.0) != (ACVehInfo[ac_vehid][acVelX] < 0.0) &&
								(ac_vY < 0.0) != (ACVehInfo[ac_vehid][acVelY] < 0.0) &&
								(ac_vZ < 0.0) != (ACVehInfo[ac_vehid][acVelZ] < 0.0))
								{
									#undef ac_abs
									#if defined DEBUG
										printf("[ANTICHEAT] Speed: %d, speed diff: %d, z angle: %f, old z angle: %f, veh: %d",
										ac_vsp, ac_spDiff, ac_zAngle, ACVehInfo[ac_vehid][acZAngle], ac_vehid);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 25);
										if(ACInfo[playerid][acKicked] > 0) return 0;
									#else
										return ac_KickWithCode(playerid, "", 0, 25);
									#endif
								}
								if(ac_IsAnAircraftEx(ac_i))
								{
									if(ACInfo[playerid][acACAllow][10] && (ac_sa = ac_GetSpeed(ac_vX, ac_vY)) > 270)
									{
										#if defined DEBUG
											printf("[ANTICHEAT] Speed (x, y): %d, veh model: %d, veh: %d", ac_sa, ac_i, ac_vehid);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 10, 2);
											if(ACInfo[playerid][acKicked] > 0) return 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 10, 2);
										#endif
									}
								}
								else if(ACInfo[playerid][acACAllow][8])
								{
									ac_tmp = ac_pZ - ACInfo[playerid][acPosZ];
									if(ac_vZ >= 0.1 && ac_vZ > ACVehInfo[ac_vehid][acVelZ] &&
									floatabs(ACInfo[playerid][acPosX] - ac_pX) < ac_tmp / 2.0 &&
									floatabs(ACInfo[playerid][acPosY] - ac_pY) < ac_tmp / 2.0 ||
									ac_vZ >= 0.0 && ac_tmp <= -1.0 || ac_vZ <= 0.0 && ac_tmp >= 1.0)
									{
										if(++ACInfo[playerid][acCheatCount][3] > (ac_IsABmxEx(ac_i) ? AC_MAX_FLYHACK_BIKE_WARNINGS : AC_MAX_FLYHACK_VEH_WARNINGS))
										{
											#undef AC_MAX_FLYHACK_BIKE_WARNINGS
											#if defined DEBUG
												printf("[ANTICHEAT] Vel z: %f, old vel z: %f, pos diff x, y, z: %f, %f, %f, veh: %d",
												ac_vZ, ACVehInfo[ac_vehid][acVelZ], ACInfo[playerid][acPosX] - ac_pX, ACInfo[playerid][acPosY] - ac_pY, ac_tmp, ac_vehid);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 8, 1);
												if(ACInfo[playerid][acKicked] > 0) return 0;
												ACInfo[playerid][acCheatCount][3] = 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 8, 1);
											#endif
										}
										#if defined OnCheatWarning
											else OnCheatWarning(playerid, "", 0, 8, 1, ACInfo[playerid][acCheatCount][3]);
										#endif
									}
								}
								ACVehInfo[ac_vehid][acSpeedDiff] = ac_spDiff;
							}
							else if(ACInfo[playerid][acACAllow][10] &&
							ACVehInfo[ac_vehid][acSpeed] < ac_vsp && (ac_spDiff > 220 || ac_vsp > 620))
							{
								#if defined DEBUG
									printf("[ANTICHEAT] Speed: %d, old speed: %d, veh model: %d, veh: %d",
									ac_vsp, ACVehInfo[ac_vehid][acSpeed], ac_i, ac_vehid);
								#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 10, 5);
									if(ACInfo[playerid][acKicked] > 0) return 0;
								#else
									return ac_KickWithCode(playerid, "", 0, 10, 5);
								#endif
							}
							ACVehInfo[ac_vehid][acPosX] = ac_pX;
							ACVehInfo[ac_vehid][acPosY] = ac_pY;
							ACVehInfo[ac_vehid][acPosZ] = ac_pZ;
							ACVehInfo[ac_vehid][acVelX] = ac_vX;
							ACVehInfo[ac_vehid][acVelY] = ac_vY;
							ACVehInfo[ac_vehid][acVelZ] = ac_vZ;
							ACVehInfo[ac_vehid][acSpeed] = ac_vsp;
							ACVehInfo[ac_vehid][acPosDiff] = ac_dist;
							if(ACInfo[playerid][acSetVehHealth] == -1.0) ACVehInfo[ac_vehid][acHealth] = ac_vHealth;
							ACVehInfo[ac_vehid][acZAngle] = ac_zAngle;
						}
						ACInfo[playerid][acSeat] = ac_s;
					}
					else
					{
						GetPlayerVelocity(playerid, ac_vX, ac_vY, ac_vZ);
						ac_s = ac_GetSpeed(ac_vX, ac_vY, ac_vZ);
						if(ACInfo[playerid][acAnim] != (ac_sa = GetPlayerAnimationIndex(playerid)))
						{
							if(ac_sa == -1)
							{
								if(ACInfo[playerid][acACAllow][24])
								{
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 24);
										if(ACInfo[playerid][acKicked] > 0) return 0;
									#else
										return ac_KickWithCode(playerid, "", 0, 24);
									#endif
								}
							}
							else if(ACInfo[playerid][acACAllow][30] && !ac_PedAnims)
							{
								ac_i = GetPlayerSkin(playerid);
								if(ac_sa == 1231 && ac_w != WEAPON_PARACHUTE && 1 <= ac_i < AC_MAX_SKINS && ac_i != 74)
								{
									#undef AC_MAX_SKINS
									if(++ACInfo[playerid][acCheatCount][17] > AC_MAX_CJ_RUN_WARNINGS)
									{
										#undef AC_MAX_CJ_RUN_WARNINGS
										#if defined DEBUG
											printf("[ANTICHEAT] Skin: %d, old anim: %d, weaponid: %d",
											ac_i, ACInfo[playerid][acAnim], ac_w);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 30);
											if(ACInfo[playerid][acKicked] > 0) return 0;
											ACInfo[playerid][acCheatCount][17] = 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 30);
										#endif
									}
									#if defined OnCheatWarning
										else OnCheatWarning(playerid, "", 0, 30, 0, ACInfo[playerid][acCheatCount][17]);
									#endif
								}
								else ACInfo[playerid][acCheatCount][17] = 0;
							}
						}
						else if(ACInfo[playerid][acACAllow][7])
						{
							if(ac_sa == 157 || ac_sa == 159 || ac_sa == 161 || ac_sa == 1058)
							{
								if(++ACInfo[playerid][acCheatCount][13] > AC_MAX_FLYHACK_WARNINGS)
								{
									#if defined DEBUG
										printf("[ANTICHEAT] Anim: %d, old anim: %d, old veh: %d",
										ac_sa, ACInfo[playerid][acAnim], ACInfo[playerid][acVeh]);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 7, 2);
										if(ACInfo[playerid][acKicked] > 0) return 0;
										ACInfo[playerid][acCheatCount][13] = 0;
									#else
										return ac_KickWithCode(playerid, "", 0, 7, 2);
									#endif
								}
								#if defined OnCheatWarning
									else OnCheatWarning(playerid, "", 0, 7, 2, ACInfo[playerid][acCheatCount][13]);
								#endif
							}
							else if(1538 <= ac_sa <= 1544 && ac_s > 42 && ACInfo[playerid][acSpeed] < ac_s)
							{
								if(++ACInfo[playerid][acCheatCount][13] > AC_MAX_FLYHACK_WARNINGS)
								{
									#if defined DEBUG
										printf("[ANTICHEAT] Speed: %d, old speed: %d, anim: %d",
										ac_s, ACInfo[playerid][acSpeed], ac_sa);
									#endif
									#if defined OnCheatDetected
										ac_KickWithCode(playerid, "", 0, 7, 3);
										if(ACInfo[playerid][acKicked] > 0) return 0;
										ACInfo[playerid][acCheatCount][13] = 0;
									#else
										return ac_KickWithCode(playerid, "", 0, 7, 3);
									#endif
								}
								#if defined OnCheatWarning
									else OnCheatWarning(playerid, "", 0, 7, 3, ACInfo[playerid][acCheatCount][13]);
								#endif
							}
							else
							{
								#if defined VectorSize
									ac_tmp = VectorSize(ac_vX, ac_vY, 0.0);
								#else
									ac_tmp = floatsqroot(floatpower(ac_vX, 2.0) + floatpower(ac_vY, 2.0));
								#endif
								if(958 <= ac_sa <= 979 && (ac_vZ > 0.1 || ac_tmp > 0.9))
								{
									if(++ACInfo[playerid][acCheatCount][13] > AC_MAX_FLYHACK_WARNINGS)
									{
										#undef AC_MAX_FLYHACK_WARNINGS
										#if defined DEBUG
											printf("[ANTICHEAT] Anim: %d, old anim: %d, weaponid: %d, spec act: %d, vel x, y: %f, vel z: %f",
											ac_sa, ACInfo[playerid][acAnim], ac_w, ac_specact, ac_tmp, ac_vZ);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 7, 1);
											if(ACInfo[playerid][acKicked] > 0) return 0;
											ACInfo[playerid][acCheatCount][13] = 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 7, 1);
										#endif
									}
									#if defined OnCheatWarning
										else OnCheatWarning(playerid, "", 0, 7, 1, ACInfo[playerid][acCheatCount][13]);
									#endif
								}
								else ACInfo[playerid][acCheatCount][13] = 0;
							}
						}
						if(ACInfo[playerid][acSet][3] != -1)
						{
							if(ac_specact == ACInfo[playerid][acSet][3])
							{
								ACInfo[playerid][acSet][3] = -1;
								#if defined FreezeSyncPacket
									if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
								#endif
							}
							else if(ac_gtc - ACInfo[playerid][acGtc][5] > ac_gpp)
							{
								if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][6] &&
								ac_specact != SPECIAL_ACTION_DUCK &&
								!(SPECIAL_ACTION_ENTER_VEHICLE <= ac_specact <= SPECIAL_ACTION_EXIT_VEHICLE))
								{
									if(++ACInfo[playerid][acNOPCount][6] > AC_MAX_NOP_WARNINGS)
									{
										#if defined DEBUG
											printf(DEBUG_CODE_5, playerid, "SetPlayerSpecialAction");
											printf("[ANTICHEAT] AC spec act: %d, spec act: %d", ACInfo[playerid][acSet][3], ac_specact);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 52, 12);
											if(ACInfo[playerid][acKicked] > 0) return 0;
											#if defined FreezeSyncPacket
												else if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
											#endif
											ACInfo[playerid][acSet][3] = -1;
										#else
											return ac_KickWithCode(playerid, "", 0, 52, 12);
										#endif
									}
									#if defined OnNOPWarning
										else OnNOPWarning(playerid, 12, ACInfo[playerid][acNOPCount][6]);
									#endif
								}
								else if(++ACInfo[playerid][acNOPCount][6] > AC_MAX_NOP_WARNINGS)
								{
									ACInfo[playerid][acSet][3] = -1;
									#if defined FreezeSyncPacket
										if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) FreezeSyncPacket(playerid, E_ALL_SYNC, true);
									#endif
								}
								#undef AC_MAX_NOP_WARNINGS
							}
						}
						else if(ac_specact != ACInfo[playerid][acSpecAct])
						{
							if(ac_specact == ACInfo[playerid][acNextSpecAct]) ACInfo[playerid][acNextSpecAct] = -1;
							else if(ACInfo[playerid][acACAllow][18])
							{
								switch(ac_specact)
								{
									case SPECIAL_ACTION_NONE:
									{
										switch(ACInfo[playerid][acSpecAct])
										{
											case SPECIAL_ACTION_USECELLPHONE, 24, 25:
											{
												#if defined OnCheatDetected
													ac_KickWithCode(playerid, "", 0, 18, 1);
													if(ACInfo[playerid][acKicked] > 0) return 0;
												#else
													return ac_KickWithCode(playerid, "", 0, 18, 1);
												#endif
											}
										}
									}
									case SPECIAL_ACTION_DUCK:
									{
										if(ACInfo[playerid][acSpecAct] > SPECIAL_ACTION_NONE &&
										!(SPECIAL_ACTION_DRINK_BEER <= ACInfo[playerid][acSpecAct] <= 24))
										{
											#if defined DEBUG
												printf("[ANTICHEAT] AC spec act: %d, spec act: %d", ACInfo[playerid][acSpecAct], ac_specact);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 18, 2);
												if(ACInfo[playerid][acKicked] > 0) return 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 18, 2);
											#endif
										}
									}
									case SPECIAL_ACTION_USEJETPACK:
									{
										if((ac_tmp = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acDropJpX], ACInfo[playerid][acDropJpY], ACInfo[playerid][acDropJpZ])) >= 15.0)
										{
											#if defined DEBUG
												printf("[ANTICHEAT] AC spec act: %d, spec act: %d, dist: %f",
												ACInfo[playerid][acSpecAct], ac_specact, ac_tmp);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 18, 3);
												if(ACInfo[playerid][acKicked] > 0) return 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 18, 3);
											#endif
										}
										else ACInfo[playerid][acNextSpecAct] = ACInfo[playerid][acSpecAct];
										ACInfo[playerid][acDropJpX] =
										ACInfo[playerid][acDropJpY] =
										ACInfo[playerid][acDropJpZ] = 25000.0;
									}
									case SPECIAL_ACTION_ENTER_VEHICLE:
									{
										switch(ACInfo[playerid][acSpecAct])
										{
											case SPECIAL_ACTION_DANCE1, SPECIAL_ACTION_DANCE2, SPECIAL_ACTION_DANCE3, SPECIAL_ACTION_DANCE4, SPECIAL_ACTION_USECELLPHONE, 68:
											{
												#if defined OnCheatDetected
													ac_KickWithCode(playerid, "", 0, 18, 4);
													if(ACInfo[playerid][acKicked] > 0) return 0;
												#else
													return ac_KickWithCode(playerid, "", 0, 18, 4);
												#endif
											}
										}
									}
									default:
									{
										if(!((SPECIAL_ACTION_DRINK_BEER <= ac_specact <= 24 &&
										ACInfo[playerid][acSpecAct] == SPECIAL_ACTION_DUCK ||
										ACInfo[playerid][acSpecAct] == SPECIAL_ACTION_ENTER_VEHICLE) &&
										ac_specact == ACInfo[playerid][acLastSpecAct]) &&
										(ACInfo[playerid][acVeh] == 0 || ac_specact != SPECIAL_ACTION_EXIT_VEHICLE &&
										!(24 <= ac_specact <= 25) && ac_specact != SPECIAL_ACTION_USECELLPHONE))
										{
											#if defined DEBUG
												printf("[ANTICHEAT] AC spec act: %d, spec act: %d, Last spec act: %d, old veh: %d",
												ACInfo[playerid][acSpecAct], ac_specact, ACInfo[playerid][acLastSpecAct], ACInfo[playerid][acVeh]);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 18, 5);
												if(ACInfo[playerid][acKicked] > 0) return 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 18, 5);
											#endif
										}
									}
								}
							}
							ACInfo[playerid][acLastSpecAct] = ACInfo[playerid][acSpecAct];
						}
						ac_a = GetPlayerSurfingVehicleID(playerid);
						if(!IsVehicleStreamedIn(ac_a, playerid) && GetPlayerSurfingObjectID(playerid) == INVALID_OBJECT_ID)
						{
							if(ac_dist > 0.7)
							{
								if(ac_dist >= 40.0 && ac_dist_set >= 40.0)
								{
									#if defined VectorSize
									if(ACInfo[playerid][acACAllow][2] && !ACInfo[playerid][acIntEnterExits] &&
									(ACInfo[playerid][acPosZ] >= -90.0 || ac_pZ - ACInfo[playerid][acPosZ] < 40.0 ||
									VectorSize(ac_pX - ACInfo[playerid][acPosX], ac_pY - ACInfo[playerid][acPosY], 0.0) >= 180.0 ||
									++ACInfo[playerid][acCheatCount][19] > AC_MAX_TELEPORT_GLITCH_WARNINGS))
									#else
									if(ACInfo[playerid][acACAllow][2] && !ACInfo[playerid][acIntEnterExits] &&
									(ACInfo[playerid][acPosZ] >= -90.0 || ac_pZ - ACInfo[playerid][acPosZ] < 40.0 ||
									floatsqroot(floatpower(ac_pX - ACInfo[playerid][acPosX], 2.0) + floatpower(ac_pY - ACInfo[playerid][acPosY], 2.0)) >= 180.0 ||
									++ACInfo[playerid][acCheatCount][19] > AC_MAX_TELEPORT_GLITCH_WARNINGS))
									#endif
									{
										#undef AC_MAX_TELEPORT_GLITCH_WARNINGS
										#if defined DEBUG
											printf("[ANTICHEAT] Dist: %f, dist set: %f, speed: %d, pos x, y, z: %f, %f, %f, old pos x, y, z: %f, %f, %f",
											ac_dist, ac_dist_set, ac_s, ac_pX, ac_pY, ac_pZ, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 2, 2);
											if(ACInfo[playerid][acKicked] > 0) return 0;
											ACInfo[playerid][acCheatCount][19] = 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 2, 2);
										#endif
									}
									ACInfo[playerid][acLastPosX] = ac_pX;
									ACInfo[playerid][acLastPosY] = ac_pY;
								}
								else if(ac_s < ac_dist * (ac_dist < 1.0 ? 12.0 : 5.0) && ac_gtc - ACInfo[playerid][acGtc][10] > ac_gpp)
								{
									if(ac_s < 3 && (ac_dist >= 30.0 && ac_dist_set >= 30.0 ||
									ac_dist >= 20.0 && ac_dist_set >= 20.0 && ac_gtc - ACInfo[playerid][acUpdateTick] < 1500))
									{
										if(ACInfo[playerid][acACAllow][2])
										{
											#if defined DEBUG
												printf("[ANTICHEAT] Speed: %d, dist: %f, dist set: %f", ac_s, ac_dist, ac_dist_set);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 2, 3);
												if(ACInfo[playerid][acKicked] > 0) return 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 2, 3);
											#endif
										}
									}
									else if(ACInfo[playerid][acACAllow][0] && (ac_s || ac_dist >= 3.0))
									{
										if(++ACInfo[playerid][acCheatCount][1] > AC_MAX_AIR_WARNINGS)
										{
											#undef AC_MAX_AIR_WARNINGS
											#if defined DEBUG
												printf("[ANTICHEAT] Speed: %d, dist: %f", ac_s, ac_dist);
											#endif
											#if defined OnCheatDetected
												ac_KickWithCode(playerid, "", 0, 0);
												if(ACInfo[playerid][acKicked] > 0) return 0;
												ACInfo[playerid][acCheatCount][1] = 0;
											#else
												return ac_KickWithCode(playerid, "", 0, 0);
											#endif
										}
										#if defined OnCheatWarning
											else OnCheatWarning(playerid, "", 0, 0, 0, ACInfo[playerid][acCheatCount][1]);
										#endif
									}
								}
							}
							if(ac_gtc - ACInfo[playerid][acGtc][9] > ac_gpp)
							{
								if(ACInfo[playerid][acACAllow][9] && ACInfo[playerid][acSpeed] < ac_s)
								{
									if(ac_s > 518)
									{
										#if defined DEBUG
											printf("[ANTICHEAT] Speed: %d, old speed: %d", ac_s, ACInfo[playerid][acSpeed]);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 9, 1);
											if(ACInfo[playerid][acKicked] > 0) return 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 9, 1);
										#endif
									}
									else
									{
										ac_i = ac_GetSpeed(ac_vX, ac_vY);
										ac_tmp = ac_pZ - ACInfo[playerid][acPosZ];
										if((ac_s >= 258 || ac_i > 180 || floatabs(ac_vZ) > 1.0 && floatabs(ac_tmp) < 2.0) &&
										ACInfo[playerid][acHealth] <= ac_health)
										{
											if(++ACInfo[playerid][acCheatCount][15] > AC_MAX_SPEEDHACK_WARNINGS)
											{
												#if defined DEBUG
													printf("[ANTICHEAT] Speed: %d, speed x, y: %d, vel z: %f, pos diff z: %f, old speed: %d",
													ac_s, ac_i, ac_vZ, ac_tmp, ACInfo[playerid][acSpeed]);
												#endif
												#if defined OnCheatDetected
													ac_KickWithCode(playerid, "", 0, 9, 2);
													if(ACInfo[playerid][acKicked] > 0) return 0;
													ACInfo[playerid][acCheatCount][15] = 0;
												#else
													return ac_KickWithCode(playerid, "", 0, 9, 2);
												#endif
											}
											#if defined OnCheatWarning
												else OnCheatWarning(playerid, "", 0, 9, 2, ACInfo[playerid][acCheatCount][15]);
											#endif
										}
										else ACInfo[playerid][acCheatCount][15] = 0;
									}
								}
								ACInfo[playerid][acSpeed] = ac_s;
							}
							else if(ACInfo[playerid][acACAllow][9] && ACInfo[playerid][acSpeed] < ac_s && ac_s > 518)
							{
								#if defined DEBUG
										printf("[ANTICHEAT] Speed: %d, old speed: %d", ac_s, ACInfo[playerid][acSpeed]);
									#endif
								#if defined OnCheatDetected
									ac_KickWithCode(playerid, "", 0, 9, 4);
									if(ACInfo[playerid][acKicked] > 0) return 0;
								#else
									return ac_KickWithCode(playerid, "", 0, 9, 4);
								#endif
							}
						}
						else if(ac_gtc - ACInfo[playerid][acGtc][9] > ac_gpp)
						{
							if(ACInfo[playerid][acACAllow][9] && ac_a != INVALID_VEHICLE_ID)
							{
								GetVehicleVelocity(ac_a, ac_vX, ac_vY, ac_vZ);
								new ac_vsp = ac_GetSpeed(ac_vX, ac_vY, ac_vZ);
								if(ac_s - ac_vsp > 220)
								{
									if(++ACInfo[playerid][acCheatCount][15] > AC_MAX_SPEEDHACK_WARNINGS)
									{
										#undef AC_MAX_SPEEDHACK_WARNINGS
										#if defined DEBUG
											printf("[ANTICHEAT] Speed: %d, old speed: %d, veh speed: %d",
											ac_s, ACInfo[playerid][acSpeed], ac_vsp);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 9, 3);
											if(ACInfo[playerid][acKicked] > 0) return 0;
											ACInfo[playerid][acCheatCount][15] = 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 9, 3);
										#endif
									}
									#if defined OnCheatWarning
										else OnCheatWarning(playerid, "", 0, 9, 3, ACInfo[playerid][acCheatCount][15]);
									#endif
								}
								else ACInfo[playerid][acCheatCount][15] = 0;
							}
							ACInfo[playerid][acSpeed] = ac_s;
						}
						ACInfo[playerid][acSpecAct] = ac_specact;
						ACInfo[playerid][acAnim] = ac_sa;
					}
				}
				ACInfo[playerid][acVeh] = ac_vehid;
				ACInfo[playerid][acHealth] = ac_health;
				ACInfo[playerid][acArmour] = ac_armour;
				if(ac_gtc - ACInfo[playerid][acGtc][6] > ac_gpp) ACInfo[playerid][acHoldWeapon] = ac_w;
				ACInfo[playerid][acLastWeapon] = ac_w;
				ACInfo[playerid][acPosX] = ac_pX;
				ACInfo[playerid][acPosY] = ac_pY;
				ACInfo[playerid][acPosZ] = ac_pZ;
			}
		}
	#if AC_USE_NPC || defined IsPlayerDying
		}
	#endif
	ACInfo[playerid][acUpdateTick] = ac_gtc;
	#if defined ac_OnPlayerUpdate
		ac_gpp = ac_OnPlayerUpdate(playerid);
	#endif
	#if !defined FreezeSyncPacket
		if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) return 0;
	#endif
	#if defined ac_OnPlayerUpdate
		return ac_gpp;
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerUpdate
	#undef OnPlayerUpdate
#else
	#define _ALS_OnPlayerUpdate
#endif
#define OnPlayerUpdate ac_OnPlayerUpdate
#if defined ac_OnPlayerUpdate
	forward ac_OnPlayerUpdate(playerid);
#endif

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		if((newkeys & KEY_SECONDARY_ATTACK) && ACInfo[playerid][acSpecAct] == SPECIAL_ACTION_USEJETPACK &&
		GetPlayerSpecialAction(playerid) != SPECIAL_ACTION_USEJETPACK)
		{
			ACInfo[playerid][acDropJpX] = ACInfo[playerid][acPosX];
			ACInfo[playerid][acDropJpY] = ACInfo[playerid][acPosY];
			ACInfo[playerid][acDropJpZ] = ACInfo[playerid][acPosZ];
		}
		new ac_w = GetPlayerWeapon(playerid);
		if((newkeys & KEY_CROUCH) && (24 <= ac_w <= 25 || 33 <= ac_w <= 34)) ACInfo[playerid][acCheatCount][12] = 0;
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerKeyStateChange
		return ac_OnPlayerKeyStateChange(playerid, newkeys, oldkeys);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerKeyStateChange
	#undef OnPlayerKeyStateChange
#else
	#define _ALS_OnPlayerKeyStateChange
#endif
#define OnPlayerKeyStateChange ac_OnPlayerKeyStateChange
#if defined ac_OnPlayerKeyStateChange
	forward ac_OnPlayerKeyStateChange(playerid, newkeys, oldkeys);
#endif

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	if(ACInfo[playerid][acKicked] > 0) return 1;
	new ac_gtc = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_gtc - ACInfo[playerid][acCall][2] < ac_Mtfc[2][0]) ac_FloodDetect(playerid, 2);
		else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][2] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][2] = ac_gtc;
	#if defined ac_OnPlayerClickMap
		return ac_OnPlayerClickMap(playerid, fX, fY, fZ);
	#else
		return 0;
	#endif
}

#if defined _ALS_OnPlayerClickMap
	#undef OnPlayerClickMap
#else
	#define _ALS_OnPlayerClickMap
#endif
#define OnPlayerClickMap ac_OnPlayerClickMap
#if defined ac_OnPlayerClickMap
	forward ac_OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ);
#endif

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	if(ACInfo[playerid][acKicked] > 0) return 1;
	new ac_gtc = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_gtc - ACInfo[playerid][acCall][3] < ac_Mtfc[3][0])
		{
			ac_FloodDetect(playerid, 3);
			return 1;
		}
		if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][3] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][3] = ac_gtc;
	#if defined ac_OnPlayerClickPlayer
		return ac_OnPlayerClickPlayer(playerid, clickedplayerid, source);
	#else
		return 0;
	#endif
}

#if defined _ALS_OnPlayerClickPlayer
	#undef OnPlayerClickPlayer
#else
	#define _ALS_OnPlayerClickPlayer
#endif
#define OnPlayerClickPlayer ac_OnPlayerClickPlayer
#if defined ac_OnPlayerClickPlayer
	forward ac_OnPlayerClickPlayer(playerid, clickedplayerid, source);
#endif

#if defined OnPlayerClickTextDraw
	public OnPlayerClickTextDraw(playerid, Text:clickedid)
	{
		if(ACInfo[playerid][acKicked] > 0) return 1;
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][4] < ac_Mtfc[4][0])
			{
				ac_FloodDetect(playerid, 4);
				return 1;
			}
			if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][4] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][4] = ac_gtc;
		#if defined ac_OnPlayerClickTextDraw
			return ac_OnPlayerClickTextDraw(playerid, clickedid);
		#else
			return 0;
		#endif
	}

	#if defined _ALS_OnPlayerClickTextDraw
		#undef OnPlayerClickTextDraw
	#else
		#define _ALS_OnPlayerClickTextDraw
	#endif
	#define OnPlayerClickTextDraw ac_OnPlayerClickTextDraw
	#if defined ac_OnPlayerClickTextDraw
		forward ac_OnPlayerClickTextDraw(playerid, Text:clickedid);
	#endif
#endif

/*
public OnPlayerCommandText(playerid, cmdtext[])
{
	if(ACInfo[playerid][acKicked] > 0) return 1;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][5] < ac_Mtfc[5][0])
			{
				ac_FloodDetect(playerid, 5);
				return 1;
			}
			if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][5] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][5] = ac_gtc;
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerCommandText
		return ac_OnPlayerCommandText(playerid, cmdtext);
	#else
		return 0;
	#endif
}

#if defined _ALS_OnPlayerCommandText
	#undef OnPlayerCommandText
#else
	#define _ALS_OnPlayerCommandText
#endif
#define OnPlayerCommandText ac_OnPlayerCommandText
#if defined ac_OnPlayerCommandText
	forward ac_OnPlayerCommandText(playerid, cmdtext[]);
#endif
*/

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_gtc = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_gtc - ACInfo[playerid][acCall][6] < ac_Mtfc[6][0]) ac_FloodDetect(playerid, 6);
		else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][6] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][6] = ac_gtc;
	new ac_model = GetVehicleModel(vehicleid);
	if(ACInfo[playerid][acACAllow][44] &&
	(ac_model <= 0 || !IsVehicleStreamedIn(vehicleid, playerid) && !ac_IsATrainCarriageEx(ac_model)))
	{
		#if defined DEBUG
			printf("[ANTICHEAT] Veh: %d, veh model: %d, ispassenger: %d", vehicleid, ac_model, ispassenger);
		#endif
		return ac_KickWithCode(playerid, "", 0, 44, 1);
	}
	#if defined SetVehicleFakePosForPlayer\
		&& defined SetVehicleFakeZAngleForPlayer
		if(ACInfo[playerid][acACAllow][5] && !ac_IsATrainPartEx(ac_model))
		{
			new Float:ac_dist = GetVehicleDistanceFromPoint(vehicleid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
			if(ac_dist >= 30.0 || ac_dist >= 20.0 && ac_model != 553 && ac_model != 577 && ac_model != 592)
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Veh model: %d, veh: %d, dist: %f, ispassenger: %d, playerid: %d",
					ac_model, vehicleid, ac_dist, ispassenger, playerid);
				#endif
				#if defined OnCheatDetected
					ac_KickWithCode(playerid, "", 0, 5, 3);
				#endif
				if(ACInfo[playerid][acSet][7] != -1) ClearAnimations(playerid, 1);
				else SetPlayerPos(playerid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
				SetVehicleFakePosForPlayer(playerid, vehicleid, ACVehInfo[vehicleid][acPosX], ACVehInfo[vehicleid][acPosY], ACVehInfo[vehicleid][acPosZ]);
				SetVehicleFakeZAngleForPlayer(playerid, vehicleid, ACVehInfo[vehicleid][acZAngle]);
			}
		}
	#endif
	new ac_doors, ac_tmp;
	GetVehicleParamsEx(vehicleid, ac_tmp, ac_tmp, ac_tmp, ac_doors, ac_tmp, ac_tmp, ac_tmp);
	if(ispassenger || ac_doors != VEHICLE_PARAMS_ON)
	{
		if(ac_doors != VEHICLE_PARAMS_ON) ACInfo[playerid][acEnterSeat] = -1;
		else ACInfo[playerid][acEnterSeat] = ispassenger;
		if(ACInfo[playerid][acEnterVeh] != vehicleid)
		{
			ACInfo[playerid][acEnterVeh] = vehicleid;
			if(ac_model == 570 || ac_IsABoatEx(ac_model)) ACInfo[playerid][acEnterVehTick] = 0;
			else ACInfo[playerid][acEnterVehTick] = ac_gtc;
		}
	}
	else if(ACInfo[playerid][acEnterVeh] != vehicleid ||
	ACInfo[playerid][acEnterSeat] != -1 && ACInfo[playerid][acEnterSeat] != ispassenger)
	{
		ACInfo[playerid][acEnterSeat] = -1;
		ACInfo[playerid][acEnterVeh] = 0;
	}
	#if defined ac_OnPlayerEnterVehicle
		return ac_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerEnterVehicle
	#undef OnPlayerEnterVehicle
#else
	#define _ALS_OnPlayerEnterVehicle
#endif
#define OnPlayerEnterVehicle ac_OnPlayerEnterVehicle
#if defined ac_OnPlayerEnterVehicle
	forward ac_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
#endif

public OnPlayerExitVehicle(playerid, vehicleid)
{
	#if defined IsPlayerDying
		if(ACInfo[playerid][acKicked] > 0 || IsPlayerDying(playerid)) return 0;
	#else
		if(ACInfo[playerid][acKicked] > 0 || ACInfo[playerid][acDead]) return 0;
	#endif
	new ac_gtc = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_gtc - ACInfo[playerid][acCall][7] < ac_Mtfc[7][0]) ac_FloodDetect(playerid, 7);
		else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][7] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][7] = ac_gtc;
	if(ACInfo[playerid][acACAllow][44] && !IsVehicleStreamedIn(vehicleid, playerid))
	{
		#if defined DEBUG
			printf("[ANTICHEAT] Veh: %d, veh model: %d", vehicleid, GetVehicleModel(vehicleid));
		#endif
		return ac_KickWithCode(playerid, "", 0, 44, 5);
	}
	if(ac_IsAnAircraftEx(GetVehicleModel(ACInfo[playerid][acVeh]))) ACInfo[playerid][acParachute] = 1;
	else if(ACInfo[playerid][acParachute] != 2) ACInfo[playerid][acParachute] = 0;
	#if defined ac_OnPlayerExitVehicle
		return ac_OnPlayerExitVehicle(playerid, vehicleid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerExitVehicle
	#undef OnPlayerExitVehicle
#else
	#define _ALS_OnPlayerExitVehicle
#endif
#define OnPlayerExitVehicle ac_OnPlayerExitVehicle
#if defined ac_OnPlayerExitVehicle
	forward ac_OnPlayerExitVehicle(playerid, vehicleid);
#endif

#if defined OnPlayerPickUpDynamicPickup
	#if defined STREAMER_ENABLE_TAGS
		public OnPlayerPickUpDynamicPickup(playerid, STREAMER_TAG_PICKUP:pickupid)
	#else
		public OnPlayerPickUpDynamicPickup(playerid, pickupid)
	#endif
	{
		if(ACInfo[playerid][acKicked] > 0) return 0;
		new ac_i = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_i - ACInfo[playerid][acCall][8] < ac_Mtfc[8][0]) ac_FloodDetect(playerid, 8);
			else if(ac_i - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][8] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		#if defined Streamer_GetDistanceToItem
			if(ACInfo[playerid][acACAllow][6])
			{
				new Float:ac_dist, Float:ac_dist_set;
				Streamer_GetDistanceToItem(ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ], STREAMER_TYPE_PICKUP, pickupid, ac_dist);
				Streamer_GetDistanceToItem(ACInfo[playerid][acSetPosX], ACInfo[playerid][acSetPosY], (ACInfo[playerid][acTpToZ] ? ACInfo[playerid][acPosZ] : ACInfo[playerid][acSetPosZ]), STREAMER_TYPE_PICKUP, pickupid, ac_dist_set);
				if(ac_dist >= 15.0 && (ACInfo[playerid][acSet][7] == -1 || ac_dist_set >= 15.0))
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Dyn pickupid: %d, dist: %f, dist set: %f, acSet[7]: %d, playerid: %d",
						_:pickupid, ac_dist, ac_dist_set, ACInfo[playerid][acSet][7], playerid);
					#endif
					#if defined OnCheatDetected
						ac_KickWithCode(playerid, "", 0, 6, 2);
					#endif
					return 0;
				}
			}
		#endif
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][8] = ac_i;
		#if AC_USE_PICKUP_WEAPONS\
			&& defined Streamer_GetIntData
			switch((ac_i = Streamer_GetIntData(STREAMER_TYPE_PICKUP, pickupid, E_STREAMER_EXTRA_ID)))
			{
				case 1: ACInfo[playerid][acSpecAct] = SPECIAL_ACTION_USEJETPACK;
				case 2: ACInfo[playerid][acHealth] = 100;
				case 3: ACInfo[playerid][acArmour] = 100;
				default:
				{
					if(1 <= (ac_i - 100) <= 46)
					{
						ac_i -= 100;
						new ac_s = ac_wSlot[ac_i];
						if(ACInfo[playerid][acWeapon][ac_s] == ac_i ||
						3 <= ac_s <= 5 && ACInfo[playerid][acWeapon][ac_s] > 0) ACInfo[playerid][acAmmo][ac_s] += ac_pAmmo[ac_i];
					}
				}
			}
		#endif
		ACInfo[playerid][acLastPickup] = _:pickupid + MAX_PICKUPS;
		#if defined ac_OnPlayerPickUpDynamicPickup
			return ac_OnPlayerPickUpDynamicPickup(playerid, pickupid);
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnPlayerPickUpDynamicPicku\
		|| defined _ALS_OnPlayerPickUpDynPickup\
		|| defined _ALS_OnPlayerPickUpDynamicPick || defined _ALS_OnPlayerPickUpDynamicPUp
		#undef OnPlayerPickUpDynamicPickup
	#else
		#define _ALS_OnPlayerPickUpDynamicPicku
		#define _ALS_OnPlayerPickUpDynPickup
		#define _ALS_OnPlayerPickUpDynamicPick
		#define _ALS_OnPlayerPickUpDynamicPUp
	#endif
	#define OnPlayerPickUpDynamicPickup ac_OnPlayerPickUpDynamicPickup
	#if defined ac_OnPlayerPickUpDynamicPickup
		#if defined STREAMER_ENABLE_TAGS
			forward ac_OnPlayerPickUpDynamicPickup(playerid, STREAMER_TAG_PICKUP:pickupid);
		#else
			forward ac_OnPlayerPickUpDynamicPickup(playerid, pickupid);
		#endif
	#endif
#endif

public OnPlayerPickUpPickup(playerid, pickupid)
{
	if(ACInfo[playerid][acKicked] > 0 || !(0 <= pickupid < MAX_PICKUPS)) return 0;
	#if defined Streamer_GetItemStreamerID\
		&& defined IsValidDynamicPickup
		#if defined STREAMER_ENABLE_TAGS
			new STREAMER_TAG_PICKUP:streamerid = STREAMER_TAG_PICKUP:Streamer_GetItemStreamerID(playerid, STREAMER_TYPE_PICKUP, pickupid);
		#else
			new streamerid = Streamer_GetItemStreamerID(playerid, STREAMER_TYPE_PICKUP, pickupid);
		#endif
		if(!IsValidDynamicPickup(streamerid))
		{
	#endif
		new ac_i = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_i - ACInfo[playerid][acCall][8] < ac_Mtfc[8][0]) ac_FloodDetect(playerid, 8);
			else if(ac_i - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][8] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		if(ACInfo[playerid][acACAllow][6])
		{
			#if defined VectorSize
				new Float:ac_dist = GetPlayerDistanceFromPoint(playerid, ACPickInfo[pickupid][acPosX], ACPickInfo[pickupid][acPosY], ACPickInfo[pickupid][acPosZ]),
				Float:ac_dist_set = VectorSize(ACInfo[playerid][acSetPosX] - ACPickInfo[pickupid][acPosX], ACInfo[playerid][acSetPosY] - ACPickInfo[pickupid][acPosY], (ACInfo[playerid][acTpToZ] ? ACPickInfo[pickupid][acPosZ] : ACInfo[playerid][acSetPosZ]) - ACPickInfo[pickupid][acPosZ]);
			#else
				new Float:ac_dist = GetPlayerDistanceFromPoint(playerid, ACPickInfo[pickupid][acPosX], ACPickInfo[pickupid][acPosY], ACPickInfo[pickupid][acPosZ]),
				Float:ac_dist_set = floatsqroot(floatpower(ACInfo[playerid][acSetPosX] - ACPickInfo[pickupid][acPosX], 2.0) + floatpower(ACInfo[playerid][acSetPosY] - ACPickInfo[pickupid][acPosY], 2.0) + floatpower((ACInfo[playerid][acTpToZ] ? ACPickInfo[pickupid][acPosZ] : ACInfo[playerid][acSetPosZ]) - ACPickInfo[pickupid][acPosZ], 2.0));
			#endif
			if(ac_dist >= 15.0 && (ACInfo[playerid][acSet][7] == -1 || ac_dist_set >= 15.0))
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Pickupid: %d, dist: %f, dist set: %f, acSet[7]: %d, playerid: %d",
					pickupid, ac_dist, ac_dist_set, ACInfo[playerid][acSet][7], playerid);
				#endif
				#if defined OnCheatDetected
					ac_KickWithCode(playerid, "", 0, 6, 1);
				#endif
				return 0;
			}
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][8] = ac_i;
		#if AC_USE_PICKUP_WEAPONS
			switch(ACPickInfo[pickupid][acType])
			{
				case 1: ACInfo[playerid][acSpecAct] = SPECIAL_ACTION_USEJETPACK;
				case 2: ACInfo[playerid][acHealth] = 100;
				case 3: ACInfo[playerid][acArmour] = 100;
				case 4:
				{
					ac_i = ACPickInfo[pickupid][acWeapon];
					new ac_s = ac_wSlot[ac_i];
					if(ACInfo[playerid][acWeapon][ac_s] == ac_i ||
					3 <= ac_s <= 5 && ACInfo[playerid][acWeapon][ac_s] > 0) ACInfo[playerid][acAmmo][ac_s] += ac_pAmmo[ac_i];
				}
			}
		#endif
		ACInfo[playerid][acLastPickup] = pickupid;
	#if defined Streamer_GetItemStreamerID\
		&& defined IsValidDynamicPickup
		}
	#endif
	#if defined ac_OnPlayerPickUpPickup
		return ac_OnPlayerPickUpPickup(playerid, pickupid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerPickUpPickup
	#undef OnPlayerPickUpPickup
#else
	#define _ALS_OnPlayerPickUpPickup
#endif
#define OnPlayerPickUpPickup ac_OnPlayerPickUpPickup
#if defined ac_OnPlayerPickUpPickup
	forward ac_OnPlayerPickUpPickup(playerid, pickupid);
#endif

public OnPlayerRequestClass(playerid, classid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_i;
	#if !defined PAWNRAKNET_INC_
		if(!ACInfo[playerid][acForceClass])
		{
			#if defined WC_IsPlayerSpawned
				if(WC_IsPlayerSpawned(playerid)) return 0;
			#elseif defined IsPlayerSpawned
				if(IsPlayerSpawned(playerid)) return 0;
			#else
				ac_i = GetPlayerState(playerid);
				if(PLAYER_STATE_ONFOOT <= ac_i < PLAYER_STATE_WASTED || ac_i == PLAYER_STATE_SPAWNED) return 0;
			#endif
		}
	#endif
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		ac_i = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_i - ACInfo[playerid][acCall][9] < ac_Mtfc[9][0]) ac_FloodDetect(playerid, 9);
			else if(ac_i - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][9] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acClassRes] = true;
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][9] = ac_i;
		ACInfo[playerid][acSpawnPosX] = ac_ClassPos[classid][0];
		ACInfo[playerid][acSpawnPosY] = ac_ClassPos[classid][1];
		ACInfo[playerid][acSpawnPosZ] = ac_ClassPos[classid][2];
		ACInfo[playerid][acSpawnWeapon1] = ac_ClassWeapon[classid][0];
		ACInfo[playerid][acSpawnAmmo1] = ac_ClassAmmo[classid][0];
		ACInfo[playerid][acSpawnWeapon2] = ac_ClassWeapon[classid][1];
		ACInfo[playerid][acSpawnAmmo2] = ac_ClassAmmo[classid][1];
		ACInfo[playerid][acSpawnWeapon3] = ac_ClassWeapon[classid][2];
		ACInfo[playerid][acSpawnAmmo3] = ac_ClassAmmo[classid][2];
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerRequestClass
		return ac_OnPlayerRequestClass(playerid, classid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerRequestClass
	#undef OnPlayerRequestClass
#else
	#define _ALS_OnPlayerRequestClass
#endif
#define OnPlayerRequestClass ac_OnPlayerRequestClass
#if defined ac_OnPlayerRequestClass
	forward ac_OnPlayerRequestClass(playerid, classid);
#endif

public OnPlayerSelectedMenuRow(playerid, row)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_gtc = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_gtc - ACInfo[playerid][acCall][10] < ac_Mtfc[10][0]) ac_FloodDetect(playerid, 10);
		else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][10] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][10] = ac_gtc;
	#if defined ac_OnPlayerSelectedMenuRow
		return ac_OnPlayerSelectedMenuRow(playerid, row);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerSelectedMenuRow
	#undef OnPlayerSelectedMenuRow
#else
	#define _ALS_OnPlayerSelectedMenuRow
#endif
#define OnPlayerSelectedMenuRow ac_OnPlayerSelectedMenuRow
#if defined ac_OnPlayerSelectedMenuRow
	forward ac_OnPlayerSelectedMenuRow(playerid, row);
#endif

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_s, bool:ac_ur;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][11] < ac_Mtfc[11][0])
			{
				if(newstate != PLAYER_STATE_ONFOOT || oldstate != PLAYER_STATE_SPAWNED)
				{
					new ac_model;
					if(oldstate == PLAYER_STATE_DRIVER) ac_model = GetVehicleModel(ACInfo[playerid][acVeh]);
					else if(newstate == PLAYER_STATE_DRIVER) ac_model = GetVehicleModel(GetPlayerVehicleID(playerid));
					if(!ac_IsABoatEx(ac_model)) ac_FloodDetect(playerid, 11);
				}
			}
			else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][11] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][11] = ac_gtc;
		ac_s = GetPlayerPing(playerid);
		switch(oldstate)
		{
			case PLAYER_STATE_NONE, PLAYER_STATE_WASTED:
			{
				if(ACInfo[playerid][acACAllow][48] && !(PLAYER_STATE_SPAWNED <= newstate <= PLAYER_STATE_SPECTATING))
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Newstate: %d, oldstate: %d", newstate, oldstate);
					#endif
					ac_KickWithCode(playerid, "", 0, 48, 2);
				}
			}
			case PLAYER_STATE_DRIVER:
			{
				new ac_t = ACInfo[playerid][acVeh];
				if(ACVehInfo[ac_t][acDriver] == playerid) ACVehInfo[ac_t][acDriver] = INVALID_PLAYER_ID;
				ac_t = GetVehicleModel(ac_t);
				if(1 <= ACInfo[playerid][acHealth] < 5 && ac_IsABikeEx(ac_t)) ACInfo[playerid][acHealth] = 5;
				new Float:ac_x, Float:ac_y, Float:ac_z;
				GetPlayerPos(playerid, ac_x, ac_y, ac_z);
				#if defined VectorSize
				if(ACInfo[playerid][acACAllow][2] &&
				newstate == PLAYER_STATE_ONFOOT && ac_gtc - ACInfo[playerid][acGtc][10] > ac_s &&
				(ACInfo[playerid][acPosZ] >= -90.0 || ac_z - ACInfo[playerid][acPosZ] < 40.0 ||
				VectorSize(ac_x - ACInfo[playerid][acPosX], ac_y - ACInfo[playerid][acPosY], 0.0) >= 180.0))
				#else
				if(ACInfo[playerid][acACAllow][2] &&
				newstate == PLAYER_STATE_ONFOOT && ac_gtc - ACInfo[playerid][acGtc][10] > ac_s &&
				(ACInfo[playerid][acPosZ] >= -90.0 || ac_z - ACInfo[playerid][acPosZ] < 40.0 ||
				floatsqroot(floatpower(ac_x - ACInfo[playerid][acPosX], 2.0) + floatpower(ac_y - ACInfo[playerid][acPosY], 2.0)) >= 180.0))
				#endif
				{
					if(!ac_IsAnAircraftEx(ac_t)) ac_z = ACInfo[playerid][acPosZ];
					if((ac_x = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ac_z)) >= 50.0)
					{
						#if defined DEBUG
							printf("[ANTICHEAT] Veh model: %d, veh: %d, dist: %f", ac_t, ACInfo[playerid][acVeh], ac_x);
						#endif
						ac_KickWithCode(playerid, "", 0, 2, 4);
					}
				}
				GetPlayerVelocity(playerid, ac_x, ac_y, ac_z);
				ACInfo[playerid][acSpeed] = ac_GetSpeed(ac_x, ac_y, ac_z);
				if(ACInfo[playerid][acSet][7] == 3) ACInfo[playerid][acSet][7] = -1;
				ACInfo[playerid][acGtc][15] = ACInfo[playerid][acGtc][9] = ac_gtc + 1650;
			}
			case PLAYER_STATE_PASSENGER:
			{
				new Float:ac_x, Float:ac_y, Float:ac_z;
				GetPlayerPos(playerid, ac_x, ac_y, ac_z);
				#if defined VectorSize
				if(ACInfo[playerid][acACAllow][2] &&
				newstate == PLAYER_STATE_ONFOOT && ac_gtc - ACInfo[playerid][acGtc][10] > ac_s &&
				(ACInfo[playerid][acPosZ] >= -90.0 || ac_z - ACInfo[playerid][acPosZ] < 40.0 ||
				VectorSize(ac_x - ACInfo[playerid][acPosX], ac_y - ACInfo[playerid][acPosY], 0.0) >= 180.0))
				#else
				if(ACInfo[playerid][acACAllow][2] &&
				newstate == PLAYER_STATE_ONFOOT && ac_gtc - ACInfo[playerid][acGtc][10] > ac_s &&
				(ACInfo[playerid][acPosZ] >= -90.0 || ac_z - ACInfo[playerid][acPosZ] < 40.0 ||
				floatsqroot(floatpower(ac_x - ACInfo[playerid][acPosX], 2.0) + floatpower(ac_y - ACInfo[playerid][acPosY], 2.0)) >= 180.0))
				#endif
				{
					new ac_vehid = ACInfo[playerid][acVeh], ac_model = GetVehicleModel(ac_vehid);
					ac_s = ACVehInfo[ac_vehid][acDriver];
					ac_x = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
					if(ac_x >= 180.0 || ac_x >= 50.0 && (ac_s == INVALID_PLAYER_ID || ac_gtc - ACInfo[ac_s][acUpdateTick] < 2000) && !ac_IsATrainPartEx(ac_model))
					{
						#if defined DEBUG
							if(ac_s == INVALID_PLAYER_ID) printf("[ANTICHEAT] Veh model: %d, veh: %d, dist: %f", ac_model, ac_vehid, ac_x);
							else printf("[ANTICHEAT] Veh model: %d, veh: %d, driver AFK time: %d, dist: %f", ac_model, ac_vehid, ac_gtc - ACInfo[ac_s][acUpdateTick], ac_x);
						#endif
						ac_KickWithCode(playerid, "", 0, 2, 5);
					}
				}
				GetPlayerVelocity(playerid, ac_x, ac_y, ac_z);
				ACInfo[playerid][acSpeed] = ac_GetSpeed(ac_x, ac_y, ac_z);
				ACInfo[playerid][acGtc][15] = ACInfo[playerid][acGtc][9] = ac_gtc + 1650;
			}
			case PLAYER_STATE_SPECTATING:
			{
				if(ACInfo[playerid][acACAllow][48] &&
				!(PLAYER_STATE_WASTED <= newstate <= PLAYER_STATE_SPAWNED) && ac_gtc - ACInfo[playerid][acGtc][16] > ac_s)
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Newstate: %d", newstate);
					#endif
					ac_KickWithCode(playerid, "", 0, 48, 3);
				}
			}
		}
		switch(newstate)
		{
			case PLAYER_STATE_ONFOOT:
			{
				ACInfo[playerid][acSet][9] =
				ACInfo[playerid][acEnterSeat] = -1;
				ACInfo[playerid][acCheatCount][12] =
				ACInfo[playerid][acEnterVeh] = 0;
				if(PLAYER_STATE_DRIVER <= oldstate <= PLAYER_STATE_PASSENGER)
				{
					GetPlayerPos(playerid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
					ACInfo[playerid][acLastPosX] = ACInfo[playerid][acPosX];
					ACInfo[playerid][acLastPosY] = ACInfo[playerid][acPosY];
				}
			}
			case PLAYER_STATE_DRIVER, PLAYER_STATE_PASSENGER:
			{
				ACInfo[playerid][acSet][9] = -1;
				new ac_vehid = GetPlayerVehicleID(playerid), ac_seat = GetPlayerVehicleSeat(playerid);
				ac_s = GetVehicleModel(ac_vehid);
				if(ac_s <= 0)
				{
					if(ACInfo[playerid][acACAllow][44])
					{
						#if defined DEBUG
							printf("[ANTICHEAT] Veh model: %d, veh: %d, seatid: %d", ac_s, ac_vehid, ac_seat);
						#endif
						ac_KickWithCode(playerid, "", 0, 44, 2);
					}
				}
				else if(ACInfo[playerid][acSet][8] == -1)
				{
					if(ACInfo[playerid][acACAllow][44])
					{
						new ac_maxseats = ac_GetMaxPassengers(ac_s);
						if(newstate == PLAYER_STATE_DRIVER)
						{
							if(ac_seat != 0 || ac_maxseats == 15)
							{
								#if defined DEBUG
									printf("[ANTICHEAT] Veh model: %d, veh: %d, seatid: %d", ac_s, ac_vehid, ac_seat);
								#endif
								ac_KickWithCode(playerid, "", 0, 44, 3);
							}
						}
						else if(ac_seat < 1 || ac_maxseats == 15 || ac_seat > ac_maxseats && !ac_IsABusEx(ac_s) && ac_s != 570)
						{
							#if defined DEBUG
								printf("[ANTICHEAT] Veh model: %d, veh: %d, max seats: %d, seatid: %d",
								ac_s, ac_vehid, ac_maxseats, ac_seat);
							#endif
							ac_KickWithCode(playerid, "", 0, 44, 4);
						}
					}
					if(ACInfo[playerid][acACAllow][4] && !ACInfo[playerid][acSpec])
					{
						if(ACInfo[playerid][acEnterVeh] != ac_vehid ||
						ACInfo[playerid][acEnterSeat] != -1 && ACInfo[playerid][acEnterSeat] != _:!!ac_seat ||
						ac_gtc - ACInfo[playerid][acEnterVehTick] < 300)
						{
							#if defined DEBUG
								printf("[ANTICHEAT] Entered veh: %d, veh: %d, entered seat: %d, seat: %d, veh model: %d, enter time: %d",
								ACInfo[playerid][acEnterVeh], ac_vehid, ACInfo[playerid][acEnterSeat], ac_seat, ac_s, ac_gtc - ACInfo[playerid][acEnterVehTick]);
							#endif
							ac_KickWithCode(playerid, "", 0, 4, 1);
						}
						else
						{
							new Float:ac_dist = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
							if(newstate == PLAYER_STATE_DRIVER)
							{
								if(ac_dist >= 30.0 || ac_dist >= 20.0 && ac_s != 553 && ac_s != 577 && ac_s != 592)
								{
									#if defined DEBUG
										printf("[ANTICHEAT] Veh model: %d, veh: %d, dist: %f", ac_s, ac_vehid, ac_dist);
									#endif
									ac_KickWithCode(playerid, "", 0, 4, 3);
								}
							}
							else if(ac_dist >= 80.0 || ac_dist >= 30.0 && ac_gtc - ACInfo[playerid][acUpdateTick] >= 1500)
							{
								#if defined DEBUG
									printf("[ANTICHEAT] Veh model: %d, veh: %d, AFK time: %d, dist: %f",
									ac_s, ac_vehid, ac_gtc - ACInfo[playerid][acUpdateTick], ac_dist);
								#endif
								ac_KickWithCode(playerid, "", 0, 4, 4);
							}
							#if defined SetVehicleFakePosForPlayer\
								&& defined SetVehicleFakeZAngleForPlayer
								if(ACInfo[playerid][acKicked] < 1 && !ac_IsATrainPartEx(ac_s))
								{
									ac_dist = GetPlayerDistanceFromPoint(playerid, ACVehInfo[ac_vehid][acPosX], ACVehInfo[ac_vehid][acPosY], ACVehInfo[ac_vehid][acPosZ]);
									if(newstate == PLAYER_STATE_DRIVER)
									{
										if(ac_dist >= 30.0 || ac_dist >= 20.0 && ac_s != 553 && ac_s != 577 && ac_s != 592)
										{
											#if defined DEBUG
												printf("[ANTICHEAT] Veh model: %d, veh: %d, dist: %f", ac_s, ac_vehid, ac_dist);
											#endif
											ac_KickWithCode(playerid, "", 0, 4, 5);
										}
									}
									else if(ac_dist >= 80.0 || ac_dist >= 30.0 && ac_gtc - ACInfo[playerid][acUpdateTick] >= 1500)
									{
										#if defined DEBUG
											printf("[ANTICHEAT] Veh model: %d, veh: %d, AFK time: %d, dist: %f",
											ac_s, ac_vehid, ac_gtc - ACInfo[playerid][acUpdateTick], ac_dist);
										#endif
										ac_KickWithCode(playerid, "", 0, 4, 6);
									}
								}
							#endif
						}
					}
					if(newstate == PLAYER_STATE_DRIVER && ACInfo[playerid][acKicked] < 1)
					{
						ACVehInfo[ac_vehid][acDriver] = playerid;
						GetPlayerPos(playerid, ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ]);
						ACInfo[playerid][acLastPosX] = ACInfo[playerid][acPosX];
						ACInfo[playerid][acLastPosY] = ACInfo[playerid][acPosY];
						ACInfo[playerid][acSetVehHealth] = -1.0;
						ACInfo[playerid][acCheatCount][10] = 0;
						ACInfo[playerid][acVehDmgRes] = false;
					}
					ACInfo[playerid][acEnterSeat] = -1;
					ACInfo[playerid][acEnterVeh] = 0;
				}
			}
			case PLAYER_STATE_SPAWNED:
			{
				if(ACInfo[playerid][acSpec] &&
				(ACInfo[playerid][acSet][6] < 2 || ACInfo[playerid][acSet][6] == 4))
				{
					ACInfo[playerid][acSet][3] =
					ACInfo[playerid][acSet][7] =
					ACInfo[playerid][acSet][8] = -1;
					ACInfo[playerid][acSpec] = false;
				}
				else
				{
					if(ACInfo[playerid][acACAllow][27] &&
					(ACInfo[playerid][acSpawnRes] < 1 || ac_gtc - ACInfo[playerid][acSpawnTick] < 1000))
					{
						#if defined DEBUG
							printf("[ANTICHEAT] Spawn res: %d, respawn time: %d",
							ACInfo[playerid][acSpawnRes], ac_gtc - ACInfo[playerid][acSpawnTick]);
						#endif
						ac_KickWithCode(playerid, "", 0, 27);
						#if defined OnCheatDetected
							ACInfo[playerid][acSpawnRes] = 1;
						#endif
					}
					if(ACInfo[playerid][acSpawnRes] > 0) ACInfo[playerid][acSpawnRes]--;
					if(!(1 <= ACInfo[playerid][acSet][6] <= 2))
					{
						for(ac_s = 11; ac_s >= 0; --ac_s) ACInfo[playerid][acSet][ac_s] = -1;
						ac_ur = true;
					}
				}
				if(!(1 <= ACInfo[playerid][acSet][6] <= 2))
				{
					for(ac_s = 12; ac_s >= 0; --ac_s)
					{
						ACInfo[playerid][acSetWeapon][ac_s] = -1;
						ACInfo[playerid][acGiveAmmo][ac_s] = -65535;
					}
					ACInfo[playerid][acNextSpecAct] = -1;
					ACInfo[playerid][acUnFrozen] = true;
					#if defined FreezeSyncPacket
						FreezeSyncPacket(playerid, E_ALL_SYNC, false);
					#endif
				}
				for(ac_s = 12; ac_s >= 0; --ac_s)
				{
					ACInfo[playerid][acWeapon][ac_s] =
					ACInfo[playerid][acAmmo][ac_s] = 0;
				}
				ACInfo[playerid][acForceClass] =
				ACInfo[playerid][acDead] = false;
				ACInfo[playerid][acPosX] = ACInfo[playerid][acSpawnPosX];
				ACInfo[playerid][acPosY] = ACInfo[playerid][acSpawnPosY];
				ACInfo[playerid][acPosZ] = ACInfo[playerid][acSpawnPosZ];
				ACInfo[playerid][acLastPosX] = ACInfo[playerid][acPosX];
				ACInfo[playerid][acLastPosY] = ACInfo[playerid][acPosY];
				ACInfo[playerid][acSet][6] = -1;
				ACInfo[playerid][acLastSpecAct] =
				ACInfo[playerid][acSpecAct] =
				ACInfo[playerid][acSpeed] =
				ACInfo[playerid][acVeh] = 0;
				if(ac_IsValidWeapon(ACInfo[playerid][acSpawnWeapon1]))
				{
					ac_s = ac_wSlot[ACInfo[playerid][acSpawnWeapon1]];
					ACInfo[playerid][acWeapon][ac_s] = ACInfo[playerid][acSpawnWeapon1];
					ACInfo[playerid][acAmmo][ac_s] = ACInfo[playerid][acSpawnAmmo1];
				}
				if(ac_IsValidWeapon(ACInfo[playerid][acSpawnWeapon2]))
				{
					ac_s = ac_wSlot[ACInfo[playerid][acSpawnWeapon2]];
					ACInfo[playerid][acWeapon][ac_s] = ACInfo[playerid][acSpawnWeapon2];
					ACInfo[playerid][acAmmo][ac_s] = ACInfo[playerid][acSpawnAmmo2];
				}
				if(ac_IsValidWeapon(ACInfo[playerid][acSpawnWeapon3]))
				{
					ac_s = ac_wSlot[ACInfo[playerid][acSpawnWeapon3]];
					ACInfo[playerid][acWeapon][ac_s] = ACInfo[playerid][acSpawnWeapon3];
					ACInfo[playerid][acAmmo][ac_s] = ACInfo[playerid][acSpawnAmmo3];
				}
			}
			case PLAYER_STATE_SPECTATING:
			{
				if(ACInfo[playerid][acACAllow][21] && !ACInfo[playerid][acSpec] &&
				ACInfo[playerid][acSet][5] == -1) ac_KickWithCode(playerid, "", 0, 21);
				if(ACInfo[playerid][acKicked] < 1)
				{
					ACInfo[playerid][acHealth] = 100;
					ACInfo[playerid][acSet][5] = -1;
					ACInfo[playerid][acSpec] = true;
				}
			}
		}
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerStateChange
		ac_s = ac_OnPlayerStateChange(playerid, newstate, oldstate);
	#endif
	if(ac_ur)
	{
		if(ACInfo[playerid][acSet][0] == -1) SetPlayerInterior(playerid, 0);
		if(ACInfo[playerid][acSet][1] == -1) SetPlayerHealth(playerid, 100.0);
		if(ACInfo[playerid][acSet][2] == -1) SetPlayerArmour(playerid, 0.0);
	}
	#if defined ac_OnPlayerStateChange
		return ac_s;
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerStateChange
	#undef OnPlayerStateChange
#else
	#define _ALS_OnPlayerStateChange
#endif
#define OnPlayerStateChange ac_OnPlayerStateChange
#if defined ac_OnPlayerStateChange
	forward ac_OnPlayerStateChange(playerid, newstate, oldstate);
#endif

#if defined OnPlayerWeaponShot
	public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
	{
		#if defined IsPlayerDying
			if(ACInfo[playerid][acKicked] > 0 || IsPlayerDying(playerid)) return 0;
		#else
			if(ACInfo[playerid][acKicked] > 0 || ACInfo[playerid][acDead]) return 0;
		#endif
		if(ACInfo[playerid][acACAllow][22] && !ac_LagCompMode)
		{
			#if defined OnCheatDetected
				ac_KickWithCode(playerid, "", 0, 22);
			#endif
			return 0;
		}
		if(ACInfo[playerid][acACAllow][47] &&
		(!(BULLET_HIT_TYPE_NONE <= hittype <= BULLET_HIT_TYPE_PLAYER_OBJECT) ||
		hittype == BULLET_HIT_TYPE_PLAYER && !(0 <= hitid < MAX_PLAYERS) ||
		hittype == BULLET_HIT_TYPE_VEHICLE && !(1 <= hitid < MAX_VEHICLES) ||
		hittype == BULLET_HIT_TYPE_OBJECT && !(1 <= hitid < MAX_OBJECTS) ||
		hittype == BULLET_HIT_TYPE_PLAYER_OBJECT && !(1 <= hitid < MAX_OBJECTS) ||
		!ac_IsBulletWeapon(weaponid)))
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Hittype: %d, hitid: %d, weaponid: %d", hittype, hitid, weaponid);
			#endif
			return ac_KickWithCode(playerid, "", 0, 47, 1);
		}
		new Float:ac_oX, Float:ac_oY, Float:ac_oZ, Float:ac_hX, Float:ac_hY, Float:ac_hZ;
		GetPlayerLastShotVectors(playerid, ac_oX, ac_oY, ac_oZ, ac_hX, ac_hY, ac_hZ);
		if(ACInfo[playerid][acACAllow][34])
		{
			new Float:ac_dist = GetPlayerDistanceFromPoint(playerid, ac_oX, ac_oY, ac_oZ);
			if(ac_dist >= 80.0 || ac_dist >= 15.0 && ACInfo[playerid][acVeh] == 0 &&
			!IsVehicleStreamedIn(GetPlayerSurfingVehicleID(playerid), playerid) &&
			GetPlayerSurfingObjectID(playerid) == INVALID_OBJECT_ID)
			{
				if(++ACInfo[playerid][acCheatCount][5] > AC_MAX_AFK_GHOST_WARNINGS)
				{
					#undef AC_MAX_AFK_GHOST_WARNINGS
					#if defined DEBUG
						printf("[ANTICHEAT] Weaponid: %d, origin dist: %f", weaponid, ac_dist);
					#endif
					#if defined OnCheatDetected
						ac_KickWithCode(playerid, "", 0, 34);
						if(ACInfo[playerid][acKicked] > 0) return 0;
						ACInfo[playerid][acCheatCount][5] = 0;
					#else
						return ac_KickWithCode(playerid, "", 0, 34);
					#endif
				}
				#if defined OnCheatWarning
					else OnCheatWarning(playerid, "", 0, 34, 0, ACInfo[playerid][acCheatCount][5]);
				#endif
			}
			else ACInfo[playerid][acCheatCount][5] = 0;
		}
		new ac_gtc = GetTickCount(), ac_gpp = GetPlayerPing(playerid);
		if(ACInfo[playerid][acACAllow][29])
		{
			if(hittype > BULLET_HIT_TYPE_NONE)
			{
				if(fX == 0.0 && fY == 0.0 && fZ == 0.0 || ac_oX == ac_hX && ac_oY == ac_hY ||
				ac_oX == ACInfo[playerid][acPosX] || ac_oY == ACInfo[playerid][acPosY] || ac_oZ == ACInfo[playerid][acPosZ])
				{
					if(++ACInfo[playerid][acCheatCount][11] > AC_MAX_SILENT_AIM_WARNINGS)
					{
						#undef AC_MAX_SILENT_AIM_WARNINGS
						#if defined DEBUG
							printf("[ANTICHEAT] Hittype: %d, weaponid: %d, pZ: %f, oZ: %f, fX, fY, fZ: %f, %f, %f",
							hittype, weaponid, ACInfo[playerid][acPosZ], ac_oZ, fX, fY, fZ);
						#endif
						#if defined OnCheatDetected
							ac_KickWithCode(playerid, "", 0, 29, 1);
							if(ACInfo[playerid][acKicked] > 0) return 0;
							ACInfo[playerid][acCheatCount][11] = 0;
						#else
							return ac_KickWithCode(playerid, "", 0, 29, 1);
						#endif
					}
					#if defined OnCheatWarning
						else OnCheatWarning(playerid, "", 0, 29, 1, ACInfo[playerid][acCheatCount][11]);
					#endif
				}
				else
				{
					if(hittype == BULLET_HIT_TYPE_PLAYER && hitid != INVALID_PLAYER_ID)
					{
						#if defined IsPlayerDying
							if(!IsPlayerDying(hitid))
						#else
							if(!ACInfo[hitid][acDead])
						#endif
						{
							if(ac_gtc - ACInfo[hitid][acSetPosTick] > ac_gpp && ac_gtc - ACInfo[hitid][acUpdateTick] < 1500)
							{
								new Float:ac_dist = GetPlayerDistanceFromPoint(hitid, ac_hX, ac_hY, ac_hZ);
								if(ac_dist >= 50.0 || ac_dist >= 20.0 && ACInfo[hitid][acVeh] == 0 &&
								!IsVehicleStreamedIn(GetPlayerSurfingVehicleID(hitid), hitid) &&
								GetPlayerSurfingObjectID(hitid) == INVALID_OBJECT_ID)
								{
									if(++ACInfo[playerid][acCheatCount][6] > AC_MAX_PRO_AIM_WARNINGS)
									{
										#undef AC_MAX_PRO_AIM_WARNINGS
										#if defined DEBUG
											printf("[ANTICHEAT] Weaponid: %d, hit dist: %f", weaponid, ac_dist);
										#endif
										#if defined OnCheatDetected
											ac_KickWithCode(playerid, "", 0, 29, 2);
											if(ACInfo[playerid][acKicked] > 0) return 0;
											ACInfo[playerid][acCheatCount][6] = 0;
										#else
											return ac_KickWithCode(playerid, "", 0, 29, 2);
										#endif
									}
									#if defined OnCheatWarning
										else OnCheatWarning(playerid, "", 0, 29, 2, ACInfo[playerid][acCheatCount][6]);
									#endif
								}
								else ACInfo[playerid][acCheatCount][6] = 0;
							}
						}
					}
					ACInfo[playerid][acCheatCount][11] = 0;
				}
			}
			else ACInfo[playerid][acCheatCount][11] = 0;
		}
		new ac_i, ac_t, bool:ac_ur, bool:ac_ur2;
		switch(hittype)
		{
			case BULLET_HIT_TYPE_PLAYER:
			{
				if(hitid != INVALID_PLAYER_ID && ACInfo[hitid][acACAllow][19] && ACInfo[hitid][acUnFrozen])
				{
					#if AC_USE_NPC && defined IsPlayerDying
						if(!IsPlayerNPC(hitid) && !IsPlayerDying(hitid))
					#elseif AC_USE_NPC
						if(!IsPlayerNPC(hitid) && !ACInfo[hitid][acDead])
					#elseif defined IsPlayerDying
						if(!IsPlayerDying(hitid))
					#else
						if(!ACInfo[hitid][acDead])
					#endif
					{
						if(ac_gtc - ACInfo[hitid][acSetPosTick] > ac_gpp &&
						IsPlayerInRangeOfPoint(hitid, ac_wMinRange[weaponid - 22], ac_oX, ac_oY, ac_oZ) &&
						!(SPECIAL_ACTION_ENTER_VEHICLE <= ACInfo[hitid][acSpecAct] <= SPECIAL_ACTION_EXIT_VEHICLE))
						{
							ac_t = GetPlayerTeam(playerid);
							if(ac_t == NO_TEAM || ac_t != GetPlayerTeam(hitid))
							{
								#if AC_USE_RESTAURANTS
									if(!ac_InRestaurant(hitid, ACInfo[hitid][acInt]))
									{
								#endif
									#if AC_USE_AMMUNATIONS
										if(!ac_InAmmuNation(hitid, ACInfo[hitid][acInt]))
										{
									#endif
										#if AC_USE_CASINOS
											if(!ac_InCasino(hitid, ACInfo[hitid][acInt]))
											{
										#endif
											ac_ur = true;
										#if AC_USE_CASINOS
											}
										#endif
									#if AC_USE_AMMUNATIONS
										}
									#endif
								#if AC_USE_RESTAURANTS
									}
								#endif
							}
						}
					}
				}
			}
			case BULLET_HIT_TYPE_VEHICLE:
			{
				if(hitid != INVALID_VEHICLE_ID)
				{
					ac_i = ACVehInfo[hitid][acDriver];
					#if AC_USE_NPC
						if(ac_i != INVALID_PLAYER_ID && !IsPlayerNPC(ac_i))
					#else
						if(ac_i != INVALID_PLAYER_ID)
					#endif
					{
						if(ACInfo[ac_i][acACAllow][20] && ACInfo[ac_i][acUnFrozen] &&
						ACVehInfo[hitid][acHealth] >= 250.0 && ac_gtc - ACInfo[ac_i][acSetPosTick] > ac_gpp)
						{
							ac_t = GetPlayerTeam(playerid);
							if(!ac_VehFriendlyFire || ac_t == NO_TEAM || ac_t != GetPlayerTeam(ac_i))
							{
								ac_t = GetVehicleModel(hitid);
								new Float:ac_wX, Float:ac_wY, Float:ac_wZ;
								GetVehicleModelInfo(ac_t, VEHICLE_MODEL_INFO_WHEELSFRONT, ac_hX, ac_hY, ac_hZ);
								GetVehicleModelInfo(ac_t, VEHICLE_MODEL_INFO_WHEELSREAR, ac_oX, ac_oY, ac_oZ);
								GetVehicleModelInfo(ac_t, VEHICLE_MODEL_INFO_WHEELSMID, ac_wX, ac_wY, ac_wZ);
								#if defined VectorSize
									if(VectorSize(ac_hX - fX, ac_hY - fY, ac_hZ - fZ) > 1.2 &&
									VectorSize(-ac_hX - fX, ac_hY - fY, ac_hZ - fZ) > 1.2 &&
									VectorSize(ac_oX - fX, ac_oY - fY, ac_oZ - fZ) > 1.2 &&
									VectorSize(-ac_oX - fX, ac_oY - fY, ac_oZ - fZ) > 1.2 &&
									(ac_wX == 0.0 && ac_wY == 0.0 && ac_wZ == 0.0 || VectorSize(ac_wX - fX, ac_wY - fY, ac_wZ - fZ) > 1.2 &&
									VectorSize(-ac_wX - fX, ac_wY - fY, ac_wZ - fZ) > 1.2)) ac_ur2 = true;
								#else
									if(floatsqroot(floatpower(ac_hX - fX, 2.0) + floatpower(ac_hY - fY, 2.0) + floatpower(ac_hZ - fZ, 2.0)) > 1.2 &&
									floatsqroot(floatpower(-ac_hX - fX, 2.0) + floatpower(ac_hY - fY, 2.0) + floatpower(ac_hZ - fZ, 2.0)) > 1.2 &&
									floatsqroot(floatpower(ac_oX - fX, 2.0) + floatpower(ac_oY - fY, 2.0) + floatpower(ac_oZ - fZ, 2.0)) > 1.2 &&
									floatsqroot(floatpower(-ac_oX - fX, 2.0) + floatpower(ac_oY - fY, 2.0) + floatpower(ac_oZ - fZ, 2.0)) > 1.2 &&
									(ac_wX == 0.0 && ac_wY == 0.0 && ac_wZ == 0.0 || floatsqroot(floatpower(ac_wX - fX, 2.0) + floatpower(ac_wY - fY, 2.0) + floatpower(ac_wZ - fZ, 2.0)) > 1.2 &&
									floatsqroot(floatpower(-ac_wX - fX, 2.0) + floatpower(ac_wY - fY, 2.0) + floatpower(ac_wZ - fZ, 2.0)) > 1.2)) ac_ur2 = true;
								#endif
							}
						}
					}
				}
			}
		}
		new ac_s = ac_wSlot[weaponid];
		ac_t = GetPlayerState(playerid);
		if(ACInfo[playerid][acACAllow][47])
		{
			if(ac_t == PLAYER_STATE_DRIVER)
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Weaponid: %d, state: %d, veh model: %d, veh: %d",
					weaponid, ac_t, GetVehicleModel(ACInfo[playerid][acVeh]), ACInfo[playerid][acVeh]);
				#endif
				return ac_KickWithCode(playerid, "", 0, 47, 6);
			}
			else
			{
				if(ACInfo[playerid][acLastWeapon] != weaponid && ac_t != PLAYER_STATE_PASSENGER ||
				ACInfo[playerid][acWeapon][ac_s] != weaponid && ACInfo[playerid][acSetWeapon][ac_s] != weaponid)
				{
					if(++ACInfo[playerid][acCheatCount][16] > AC_MAX_FAKE_WEAPON_WARNINGS)
					{
						#undef AC_MAX_FAKE_WEAPON_WARNINGS
						#if defined DEBUG
							printf("[ANTICHEAT] Armed weapon: %d, AC weapon: %d, weaponid: %d, state: %d",
							ACInfo[playerid][acLastWeapon], ACInfo[playerid][acWeapon][ac_s], weaponid, ac_t);
						#endif
						ac_KickWithCode(playerid, "", 0, 47, 2);
						#if defined OnCheatDetected
							ACInfo[playerid][acCheatCount][16] = 0;
						#endif
					}
					#if defined OnCheatWarning
						else OnCheatWarning(playerid, "", 0, 47, 2, ACInfo[playerid][acCheatCount][16]);
					#endif
					return 0;
				}
				else ACInfo[playerid][acCheatCount][16] = 0;
			}
		}
		if(ACInfo[playerid][acACAllow][26])
		{
			ac_i = ac_gtc - ACInfo[playerid][acShotTick];
			if(ACInfo[playerid][acShotWeapon] == weaponid)
			{
				if(weaponid != WEAPON_MINIGUN && ac_t != PLAYER_STATE_PASSENGER)
				{
					if(ac_gtc - ACInfo[playerid][acReloadTick] < 110)
					{
						#if defined DEBUG
							printf("[ANTICHEAT] Weaponid: %d, reload time: %d, state: %d",
							weaponid, ac_gtc - ACInfo[playerid][acReloadTick], ac_t);
						#endif
						#if defined OnCheatDetected
							ac_KickWithCode(playerid, "", 0, 26, 4);
							if(ACInfo[playerid][acKicked] > 0) return 0;
							ACInfo[playerid][acReloadTick] = 0;
						#else
							return ac_KickWithCode(playerid, "", 0, 26, 4);
						#endif
					}
					else if(ac_i < 30 || ac_i < 50 && ac_s != 4)
					{
						if(++ACInfo[playerid][acCheatCount][8] > AC_MAX_RAPID_FIRE_WARNINGS)
						{
							#undef AC_MAX_RAPID_FIRE_WARNINGS
							#if defined DEBUG
								printf("[ANTICHEAT] Fire rate: %d, weaponid: %d", ac_i, weaponid);
							#endif
							#if defined OnCheatDetected
								ac_KickWithCode(playerid, "", 0, 26, 1);
								if(ACInfo[playerid][acKicked] > 0) return 0;
								ACInfo[playerid][acCheatCount][8] = 0;
							#else
								return ac_KickWithCode(playerid, "", 0, 26, 1);
							#endif
						}
						#if defined OnCheatWarning
							else OnCheatWarning(playerid, "", 0, 26, 1, ACInfo[playerid][acCheatCount][8]);
						#endif
					}
					else ACInfo[playerid][acCheatCount][8] = 0;
					if(weaponid == 25 && ac_i < 600 || (weaponid == 24 || 33 <= weaponid <= 34) && ac_i < 380)
					{
						if(++ACInfo[playerid][acCheatCount][12] > AC_MAX_AUTO_C_WARNINGS)
						{
							#undef AC_MAX_AUTO_C_WARNINGS
							#if defined DEBUG
								printf("[ANTICHEAT] Fire rate: %d, weaponid: %d", ac_i, weaponid);
							#endif
							#if defined OnCheatDetected
								ac_KickWithCode(playerid, "", 0, 26, 2);
								if(ACInfo[playerid][acKicked] > 0) return 0;
								ACInfo[playerid][acCheatCount][12] = 0;
							#else
								return ac_KickWithCode(playerid, "", 0, 26, 2);
							#endif
						}
						#if defined OnCheatWarning
							else OnCheatWarning(playerid, "", 0, 26, 2, ACInfo[playerid][acCheatCount][12]);
						#endif
					}
				}
			}
			else if(ac_i < 30)
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Fire rate: %d, weaponid: %d, last weapon: %d",
					ac_i, weaponid, ACInfo[playerid][acShotWeapon]);
				#endif
				#if defined OnCheatDetected
					ac_KickWithCode(playerid, "", 0, 26, 3);
					if(ACInfo[playerid][acKicked] > 0) return 0;
				#else
					return ac_KickWithCode(playerid, "", 0, 26, 3);
				#endif
			}
			if(GetPlayerWeaponState(playerid) == WEAPONSTATE_LAST_BULLET) ACInfo[playerid][acReloadTick] = ac_gtc;
		}
		if(ACInfo[playerid][acACAllow][17] && ac_t != PLAYER_STATE_PASSENGER &&
		ACInfo[playerid][acGiveAmmo][ac_s] == -65535 && ac_gtc - ACInfo[playerid][acGtc][6] > ac_gpp)
		{
			ac_t = GetPlayerAmmo(playerid);
			if(ACInfo[playerid][acAmmo][ac_s] == 0)
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Weaponid: %d, AC ammo: %d, ammo: %d", weaponid, ACInfo[playerid][acAmmo][ac_s], ac_t);
				#endif
				#if defined OnCheatDetected
					ac_KickWithCode(playerid, "", 0, 17, 1);
					if(ACInfo[playerid][acKicked] > 0) return 0;
					ACInfo[playerid][acAmmo][ac_s] = ac_t;
				#else
					return ac_KickWithCode(playerid, "", 0, 17, 1);
				#endif
			}
			if(ACInfo[playerid][acAmmo][ac_s] < ac_t)
			{
				switch(weaponid)
				{
					case WEAPON_MINIGUN:
					{
						if(++ACInfo[playerid][acCheatCount][7] > 9)
						{
							#if defined DEBUG
								printf("[ANTICHEAT] Weaponid: %d, AC ammo: %d, ammo: %d, acCheatCount[7]: %d",
								weaponid, ACInfo[playerid][acAmmo][ac_s], ac_t, ACInfo[playerid][acCheatCount][7]);
							#endif
							#if defined OnCheatDetected
								ac_KickWithCode(playerid, "", 0, 17, 2);
								if(ACInfo[playerid][acKicked] > 0) return 0;
								ACInfo[playerid][acCheatCount][7] = 0;
								ACInfo[playerid][acAmmo][ac_s] = ac_t;
							#else
								return ac_KickWithCode(playerid, "", 0, 17, 2);
							#endif
						}
						#if defined OnCheatWarning
							else OnCheatWarning(playerid, "", 0, 17, 2, ACInfo[playerid][acCheatCount][7]);
						#endif
					}
					default:
					{
						if(ac_t - ACInfo[playerid][acAmmo][ac_s] > 6)
						{
							#if defined DEBUG
								printf("[ANTICHEAT] Weaponid: %d, AC ammo: %d, ammo: %d",
								weaponid, ACInfo[playerid][acAmmo][ac_s], ac_t);
							#endif
							#if defined OnCheatDetected
								ac_KickWithCode(playerid, "", 0, 17, 3);
								if(ACInfo[playerid][acKicked] > 0) return 0;
								ACInfo[playerid][acCheatCount][7] = 0;
								ACInfo[playerid][acAmmo][ac_s] = ac_t;
							#else
								return ac_KickWithCode(playerid, "", 0, 17, 3);
							#endif
						}
					}
				}
			}
			else ACInfo[playerid][acCheatCount][7] = 0;
		}
		if(ACInfo[playerid][acAmmo][ac_s] != 0) ACInfo[playerid][acAmmo][ac_s]--;
		if(ACInfo[playerid][acAmmo][ac_s] < -32768) ACInfo[playerid][acAmmo][ac_s] += 65536;
		ACInfo[playerid][acShotWeapon] = weaponid;
		ACInfo[playerid][acShotTick] = ac_gtc;
		#if defined ac_OnPlayerWeaponShot
			ac_i = ac_OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, fX, fY, fZ);
			if(ac_i)
			{
		#endif
			if(ACInfo[playerid][acACAllow][33] && !ACInfo[playerid][acUnFrozen]) return 0;
			if(ac_ur)
			{
				ACInfo[hitid][acDmgRes] = true;
				ACInfo[hitid][acGtc][13] = ac_gtc + 165;
			}
			if(ac_ur2)
			{
				ac_t = ACVehInfo[hitid][acDriver];
				ACInfo[ac_t][acVehDmgRes] = true;
				ACInfo[ac_t][acGtc][14] = ac_gtc + 165;
			}
		#if defined ac_OnPlayerWeaponShot
			}
			return ac_i;
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnPlayerWeaponShot
		#undef OnPlayerWeaponShot
	#else
		#define _ALS_OnPlayerWeaponShot
	#endif
	#define OnPlayerWeaponShot ac_OnPlayerWeaponShot
	#if defined ac_OnPlayerWeaponShot
		forward ac_OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ);
	#endif
#endif

public OnVehicleMod(playerid, vehicleid, componentid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_i = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_i - ACInfo[playerid][acCall][12] < ac_Mtfc[12][0]) return ac_FloodDetect(playerid, 12);
		if(ac_i - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][12] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	if(ACInfo[playerid][acACAllow][23] && !ACInfo[playerid][acModShop])
	{
		#if defined OnCheatDetected
			ac_KickWithCode(playerid, "", 0, 23, 2);
			if(ACInfo[playerid][acKicked] > 0) return 0;
		#else
			return ac_KickWithCode(playerid, "", 0, 23, 2);
		#endif
	}
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][12] = ac_i;
	#if AC_USE_TUNING_GARAGES
		ACInfo[playerid][acGtc][18] = ac_i + 3250;
	#endif
	if(ACInfo[playerid][acACAllow][43] && !ac_IsCompatible((ac_i = GetVehicleModel(vehicleid)), componentid))
	{
		#if defined DEBUG
			printf("[ANTICHEAT] Veh model: %d, veh: %d, componentid: %d", ac_i, vehicleid, componentid);
		#endif
		return ac_KickWithCode(playerid, "", 0, 43, 1);
	}
	#if AC_USE_TUNING_GARAGES
		ac_i = componentid - 1000;
		if(ACInfo[playerid][acSet][11] != -1) ACInfo[playerid][acSet][11] += ac_cPrice[ac_i];
		else ACInfo[playerid][acSet][11] = ac_cPrice[ac_i];
		ACInfo[playerid][acCheatCount][21] = 0;
	#endif
	#if defined ac_OnVehicleMod
		return ac_OnVehicleMod(playerid, vehicleid, componentid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnVehicleMod
	#undef OnVehicleMod
#else
	#define _ALS_OnVehicleMod
#endif
#define OnVehicleMod ac_OnVehicleMod
#if defined ac_OnVehicleMod
	forward ac_OnVehicleMod(playerid, vehicleid, componentid);
#endif

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_gtc = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_gtc - ACInfo[playerid][acCall][13] < ac_Mtfc[13][0]) ac_FloodDetect(playerid, 13);
		else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][13] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	if(ACInfo[playerid][acACAllow][43] && !(0 <= paintjobid <= 2) && paintjobid != 255)
	{
		#if defined DEBUG
			printf("[ANTICHEAT] Veh model: %d, veh: %d, paintjobid: %d", GetVehicleModel(vehicleid), vehicleid, paintjobid);
		#endif
		ac_KickWithCode(playerid, "", 0, 43, 2);
	}
	else if(ACInfo[playerid][acACAllow][23] && !ACInfo[playerid][acModShop]) ac_KickWithCode(playerid, "", 0, 23, 4);
	if(ACInfo[playerid][acKicked] < 1)
	{
		if(paintjobid == 255) ACVehInfo[vehicleid][acPaintJob] = 3;
		else ACVehInfo[vehicleid][acPaintJob] = paintjobid;
	}
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][13] = ac_gtc;
	#if defined ac_OnVehiclePaintjob
		return ac_OnVehiclePaintjob(playerid, vehicleid, paintjobid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnVehiclePaintjob
	#undef OnVehiclePaintjob
#else
	#define _ALS_OnVehiclePaintjob
#endif
#define OnVehiclePaintjob ac_OnVehiclePaintjob
#if defined ac_OnVehiclePaintjob
	forward ac_OnVehiclePaintjob(playerid, vehicleid, paintjobid);
#endif

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_gtc = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_gtc - ACInfo[playerid][acCall][14] < ac_Mtfc[14][0]) return ac_FloodDetect(playerid, 14);
		if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][14] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	#if !AC_USE_TUNING_GARAGES && !AC_USE_PAYNSPRAY
		if(ACInfo[playerid][acACAllow][23])
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Veh model: %d, veh: %d, color1: %d, color2: %d",
				GetVehicleModel(vehicleid), vehicleid, color1, color2);
			#endif
			#if defined OnCheatDetected
				ac_KickWithCode(playerid, "", 0, 23, 5);
				if(ACInfo[playerid][acKicked] > 0) return 0;
			#else
				return ac_KickWithCode(playerid, "", 0, 23, 5);
			#endif
		}
	#endif
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][14] = ac_gtc;
	#if defined ac_OnVehicleRespray
		return ac_OnVehicleRespray(playerid, vehicleid, color1, color2);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnVehicleRespray
	#undef OnVehicleRespray
#else
	#define _ALS_OnVehicleRespray
#endif
#define OnVehicleRespray ac_OnVehicleRespray
#if defined ac_OnVehicleRespray
	forward ac_OnVehicleRespray(playerid, vehicleid, color1, color2);
#endif

public OnVehicleSpawn(vehicleid)
{
	ACVehInfo[vehicleid][acPaintJob] = 3;
	ACVehInfo[vehicleid][acHealth] = 1000.0;
	ACVehInfo[vehicleid][acSpawned] = true;
	ACVehInfo[vehicleid][acTrSpeed] = -1;
	ACVehInfo[vehicleid][acPosDiff] =
	ACVehInfo[vehicleid][acVelX] =
	ACVehInfo[vehicleid][acVelY] =
	ACVehInfo[vehicleid][acVelZ] = 0.0;
	ACVehInfo[vehicleid][acSpeed] =
	ACVehInfo[vehicleid][acTires] =
	ACVehInfo[vehicleid][acDoors] =
	ACVehInfo[vehicleid][acPanels] =
	ACVehInfo[vehicleid][acLastSpeed] =
	ACVehInfo[vehicleid][acSpeedDiff] = 0;
	ACVehInfo[vehicleid][acPosX] = ACVehInfo[vehicleid][acSpawnPosX];
	ACVehInfo[vehicleid][acPosY] = ACVehInfo[vehicleid][acSpawnPosY];
	ACVehInfo[vehicleid][acPosZ] = ACVehInfo[vehicleid][acSpawnPosZ];
	ACVehInfo[vehicleid][acZAngle] = ACVehInfo[vehicleid][acSpawnZAngle];
	ACVehInfo[vehicleid][acDriver] = INVALID_PLAYER_ID;
	new ac_gtc = GetTickCount() + 2650;
	#if defined foreach
		foreach(new ac_i : Player)
		{
			if(ACInfo[ac_i][acVeh] != vehicleid) continue;
	#else
		#if defined GetPlayerPoolSize
			for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
		#else
			for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
		#endif
		{
			if(!IsPlayerInVehicle(ac_i, vehicleid)) continue;
	#endif
		ACInfo[ac_i][acSetPosTick] = ACInfo[ac_i][acGtc][10] = ac_gtc;
	}
	#if defined ac_OnVehicleSpawn
		return ac_OnVehicleSpawn(vehicleid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnVehicleSpawn
	#undef OnVehicleSpawn
#else
	#define _ALS_OnVehicleSpawn
#endif
#define OnVehicleSpawn ac_OnVehicleSpawn
#if defined ac_OnVehicleSpawn
	forward ac_OnVehicleSpawn(vehicleid);
#endif

public OnVehicleDeath(vehicleid, killerid)
{
	#if AC_USE_NPC
	if(0 <= killerid < MAX_PLAYERS && !IsPlayerNPC(killerid))
	#else
	if(0 <= killerid < MAX_PLAYERS)
	#endif
	{
		new ac_gtc = GetTickCount();
		if(ACInfo[killerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[killerid][acCall][15] < ac_Mtfc[15][0]) ac_FloodDetect(killerid, 15);
			else if(ac_gtc - ACInfo[killerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(killerid, 27);
			else ACInfo[killerid][acFloodCount][15] = ACInfo[killerid][acFloodCount][27] = 0;
		}
		ACInfo[killerid][acCall][27] = ACInfo[killerid][acCall][15] = ac_gtc;
	}
	new Float:ac_vHealth;
	GetVehicleHealth(vehicleid, ac_vHealth);
	if(ac_vHealth < 250.0) ACVehInfo[vehicleid][acSpawned] = false;
	#if defined ac_OnVehicleDeath
		return ac_OnVehicleDeath(vehicleid, killerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnVehicleDeath
	#undef OnVehicleDeath
#else
	#define _ALS_OnVehicleDeath
#endif
#define OnVehicleDeath ac_OnVehicleDeath
#if defined ac_OnVehicleDeath
	forward ac_OnVehicleDeath(vehicleid, killerid);
#endif

public OnPlayerText(playerid, text[])
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][16] < ac_Mtfc[16][0]) return ac_FloodDetect(playerid, 16);
			if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][16] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][16] = ac_gtc;
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerText
		return ac_OnPlayerText(playerid, text);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerText
	#undef OnPlayerText
#else
	#define _ALS_OnPlayerText
#endif
#define OnPlayerText ac_OnPlayerText
#if defined ac_OnPlayerText
	forward ac_OnPlayerText(playerid, text[]);
#endif

public OnPlayerEnterCheckpoint(playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][17] < ac_Mtfc[17][0]) ac_FloodDetect(playerid, 17);
			else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][17] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][17] = ac_gtc;
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerEnterCheckpoint
		return ac_OnPlayerEnterCheckpoint(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerEnterCheckpoint
	#undef OnPlayerEnterCheckpoint
#else
	#define _ALS_OnPlayerEnterCheckpoint
#endif
#define OnPlayerEnterCheckpoint ac_OnPlayerEnterCheckpoint
#if defined ac_OnPlayerEnterCheckpoint
	forward ac_OnPlayerEnterCheckpoint(playerid);
#endif

public OnPlayerLeaveCheckpoint(playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][18] < ac_Mtfc[18][0]) ac_FloodDetect(playerid, 18);
			else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][18] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][18] = ac_gtc;
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerLeaveCheckpoint
		return ac_OnPlayerLeaveCheckpoint(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerLeaveCheckpoint
	#undef OnPlayerLeaveCheckpoint
#else
	#define _ALS_OnPlayerLeaveCheckpoint
#endif
#define OnPlayerLeaveCheckpoint ac_OnPlayerLeaveCheckpoint
#if defined ac_OnPlayerLeaveCheckpoint
	forward ac_OnPlayerLeaveCheckpoint(playerid);
#endif

public OnPlayerRequestSpawn(playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_gtc;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][19] < ac_Mtfc[19][0]) ac_FloodDetect(playerid, 19);
			else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][19] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		if(!ACInfo[playerid][acClassRes])
		{
			ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][19] = ac_gtc;
			return 0;
		}
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerRequestSpawn
		new ac_i = ac_OnPlayerRequestSpawn(playerid);
		if(ac_i)
		{
	#endif
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][19] = ac_gtc;
		ACInfo[playerid][acSpawnTick] = ACInfo[playerid][acNOPCount][9] = 0;
		ACInfo[playerid][acSpawnRes] = 1;
		ACInfo[playerid][acSet][6] = 3;
	#if defined ac_OnPlayerRequestSpawn
		}
		return ac_i;
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerRequestSpawn
	#undef OnPlayerRequestSpawn
#else
	#define _ALS_OnPlayerRequestSpawn
#endif
#define OnPlayerRequestSpawn ac_OnPlayerRequestSpawn
#if defined ac_OnPlayerRequestSpawn
	forward ac_OnPlayerRequestSpawn(playerid);
#endif

public OnPlayerExitedMenu(playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	new ac_gtc = GetTickCount();
	if(ACInfo[playerid][acACAllow][49])
	{
		if(ac_gtc - ACInfo[playerid][acCall][20] < ac_Mtfc[20][0]) ac_FloodDetect(playerid, 20);
		else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
		else ACInfo[playerid][acFloodCount][20] = ACInfo[playerid][acFloodCount][27] = 0;
	}
	ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][20] = ac_gtc;
	#if defined ac_OnPlayerExitedMenu
		return ac_OnPlayerExitedMenu(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerExitedMenu
	#undef OnPlayerExitedMenu
#else
	#define _ALS_OnPlayerExitedMenu
#endif
#define OnPlayerExitedMenu ac_OnPlayerExitedMenu
#if defined ac_OnPlayerExitedMenu
	forward ac_OnPlayerExitedMenu(playerid);
#endif

public OnPlayerEnterRaceCheckpoint(playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][21] < ac_Mtfc[21][0]) ac_FloodDetect(playerid, 21);
			else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][21] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][21] = ac_gtc;
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerEnterRaceCheckpoint
		return ac_OnPlayerEnterRaceCheckpoint(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerEnterRaceCheckpoin\
	|| defined _ALS_OnPlayerEnterRaceCP
	#undef OnPlayerEnterRaceCheckpoint
#else
	#define _ALS_OnPlayerEnterRaceCheckpoin
	#define _ALS_OnPlayerEnterRaceCP
#endif
#define OnPlayerEnterRaceCheckpoint ac_OnPlayerEnterRaceCheckpoint
#if defined ac_OnPlayerEnterRaceCheckpoint
	forward ac_OnPlayerEnterRaceCheckpoint(playerid);
#endif

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if AC_USE_NPC
		if(!IsPlayerNPC(playerid))
		{
	#endif
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][22] < ac_Mtfc[22][0]) ac_FloodDetect(playerid, 22);
			else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][22] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][22] = ac_gtc;
	#if AC_USE_NPC
		}
	#endif
	#if defined ac_OnPlayerLeaveRaceCheckpoint
		return ac_OnPlayerLeaveRaceCheckpoint(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerLeaveRaceCheckpoin\
	|| defined _ALS_OnPlayerLeaveRaceCP
	#undef OnPlayerLeaveRaceCheckpoint
#else
	#define _ALS_OnPlayerLeaveRaceCheckpoin
	#define _ALS_OnPlayerLeaveRaceCP
#endif
#define OnPlayerLeaveRaceCheckpoint ac_OnPlayerLeaveRaceCheckpoint
#if defined ac_OnPlayerLeaveRaceCheckpoint
	forward ac_OnPlayerLeaveRaceCheckpoint(playerid);
#endif

#if defined OnPlayerClickPlayerTextDraw
	public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
	{
		if(ACInfo[playerid][acKicked] > 0) return 1;
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][23] < ac_Mtfc[23][0])
			{
				ac_FloodDetect(playerid, 23);
				return 1;
			}
			if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][23] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][23] = ac_gtc;
		#if defined ac_OnPlayerClickPlayerTextDraw
			return ac_OnPlayerClickPlayerTextDraw(playerid, playertextid);
		#else
			return 0;
		#endif
	}

	#if defined _ALS_OnPlayerClickPlayerTextDra\
		|| defined _ALS_OnPlayerClickPlayerTD
		#undef OnPlayerClickPlayerTextDraw
	#else
		#define _ALS_OnPlayerClickPlayerTextDra
		#define _ALS_OnPlayerClickPlayerTD
	#endif
	#define OnPlayerClickPlayerTextDraw ac_OnPlayerClickPlayerTextDraw
	#if defined ac_OnPlayerClickPlayerTextDraw
		forward ac_OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid);
	#endif
#endif

public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	if(ACInfo[playerid][acKicked] > 0) return 1;
	new ac_gtc = GetTickCount(), ac_panels, ac_doors, ac_tires, ac_tmp;
	GetVehicleDamageStatus(vehicleid, ac_panels, ac_doors, ac_tmp, ac_tires);
	if(ACVehInfo[vehicleid][acPanels] != ac_panels || ACVehInfo[vehicleid][acDoors] != ac_doors ||
	ACVehInfo[vehicleid][acTires] != ac_tires)
	{
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][24] < ac_Mtfc[24][0]) ac_FloodDetect(playerid, 24);
			else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else
			{
				if(ACInfo[playerid][acFloodCount][24] > 0) ACInfo[playerid][acFloodCount][24]--;
				ACInfo[playerid][acFloodCount][27] = 0;
			}
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][24] = ac_gtc;
	}
	ACVehInfo[vehicleid][acTires] = ac_tires;
	ACVehInfo[vehicleid][acDoors] = ac_doors;
	ACVehInfo[vehicleid][acPanels] = ac_panels;
	#if defined ac_OnVehicleDamageStatusUpdate
		return ac_OnVehicleDamageStatusUpdate(vehicleid, playerid);
	#else
		return 0;
	#endif
}

#if defined _ALS_OnVehicleDamageStatusUpdat\
	|| defined _ALS_OnVehicleDamageStatusUpd
	#undef OnVehicleDamageStatusUpdate
#else
	#define _ALS_OnVehicleDamageStatusUpdat
	#define _ALS_OnVehicleDamageStatusUpd
#endif
#define OnVehicleDamageStatusUpdate ac_OnVehicleDamageStatusUpdate
#if defined ac_OnVehicleDamageStatusUpdate
	forward ac_OnVehicleDamageStatusUpdate(vehicleid, playerid);
#endif

#if defined OnVehicleSirenStateChange
	public OnVehicleSirenStateChange(playerid, vehicleid, newstate)
	{
		if(ACInfo[playerid][acKicked] > 0) return 1;
		#if AC_USE_NPC
			if(!IsPlayerNPC(playerid))
			{
		#endif
			new ac_gtc = GetTickCount();
			if(ACInfo[playerid][acACAllow][49])
			{
				if(ac_gtc - ACInfo[playerid][acCall][25] < ac_Mtfc[25][0]) ac_FloodDetect(playerid, 25);
				else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
				else ACInfo[playerid][acFloodCount][25] = ACInfo[playerid][acFloodCount][27] = 0;
			}
			ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][25] = ac_gtc;
		#if AC_USE_NPC
			}
		#endif
		#undef AC_USE_NPC
		#if defined ac_OnVehicleSirenStateChange
			return ac_OnVehicleSirenStateChange(playerid, vehicleid, newstate);
		#else
			return 0;
		#endif
	}

	#if defined _ALS_OnVehicleSirenStateChange
		#undef OnVehicleSirenStateChange
	#else
		#define _ALS_OnVehicleSirenStateChange
	#endif
	#define OnVehicleSirenStateChange ac_OnVehicleSirenStateChange
	#if defined ac_OnVehicleSirenStateChange
		forward ac_OnVehicleSirenStateChange(playerid, vehicleid, newstate);
	#endif
#endif

#if defined OnPlayerSelectDynamicObject
	#if defined STREAMER_ENABLE_TAGS
		public OnPlayerSelectDynamicObject(playerid, STREAMER_TAG_OBJECT:objectid, modelid, Float:x, Float:y, Float:z)
	#else
		public OnPlayerSelectDynamicObject(playerid, objectid, modelid, Float:x, Float:y, Float:z)
	#endif
	{
		if(ACInfo[playerid][acKicked] > 0) return 0;
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][26] < ac_Mtfc[26][0]) ac_FloodDetect(playerid, 26);
			else if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][26] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][26] = ac_gtc;
		#if defined ac_OnPlayerSelectDynamicObject
			return ac_OnPlayerSelectDynamicObject(playerid, objectid, modelid, x, y, z);
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnPlayerSelectDynamicObjec\
		|| defined _ALS_OnPlayerSelectDynObject || defined _ALS_OnPlayerSelectDynamicObj
		#undef OnPlayerSelectDynamicObject
	#else
		#define _ALS_OnPlayerSelectDynamicObjec
		#define _ALS_OnPlayerSelectDynObject
		#define _ALS_OnPlayerSelectDynamicObj
	#endif
	#define OnPlayerSelectDynamicObject ac_OnPlayerSelectDynamicObject
	#if defined ac_OnPlayerSelectDynamicObject
		#if defined STREAMER_ENABLE_TAGS
			forward ac_OnPlayerSelectDynamicObject(playerid, STREAMER_TAG_OBJECT:objectid, modelid, Float:x, Float:y, Float:z);
		#else
			forward ac_OnPlayerSelectDynamicObject(playerid, objectid, modelid, Float:x, Float:y, Float:z);
		#endif
	#endif
#endif

#if defined OnPlayerSelectObject
	public OnPlayerSelectObject(playerid, type, objectid, modelid, Float:fX, Float:fY, Float:fZ)
	{
		if(ACInfo[playerid][acKicked] > 0) return 1;
		new ac_gtc = GetTickCount();
		if(ACInfo[playerid][acACAllow][49])
		{
			if(ac_gtc - ACInfo[playerid][acCall][26] < ac_Mtfc[26][0])
			{
				ac_FloodDetect(playerid, 26);
				return 1;
			}
			if(ac_gtc - ACInfo[playerid][acCall][27] < ac_Mtfc[27][0]) ac_FloodDetect(playerid, 27);
			else ACInfo[playerid][acFloodCount][26] = ACInfo[playerid][acFloodCount][27] = 0;
		}
		ACInfo[playerid][acCall][27] = ACInfo[playerid][acCall][26] = ac_gtc;
		#if defined ac_OnPlayerSelectObject
			return ac_OnPlayerSelectObject(playerid, type, objectid, modelid, fX, fY, fZ);
		#else
			return 0;
		#endif
	}

	#if defined _ALS_OnPlayerSelectObject
		#undef OnPlayerSelectObject
	#else
		#define _ALS_OnPlayerSelectObject
	#endif
	#define OnPlayerSelectObject ac_OnPlayerSelectObject
	#if defined ac_OnPlayerSelectObject
		forward ac_OnPlayerSelectObject(playerid, type, objectid, modelid, Float:fX, Float:fY, Float:fZ);
	#endif
#endif

#if defined OnTrailerUpdate
	public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z)
#elseif defined GetServerTickRate
	public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z)
#else
	public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat)
#endif
{
	if(ACInfo[playerid][acKicked] > 0) return 0;
	#if defined OnTrailerUpdate
		if(ACInfo[playerid][acACAllow][31] &&
		(new_x != new_x || new_y != new_y || new_z != new_z || vel_x != vel_x || vel_y != vel_y || vel_z != vel_z ||
		floatabs(new_x) >= 25000.0 || floatabs(new_y) >= 25000.0 || floatabs(new_z) >= 25000.0 ||
		floatabs(vel_x) >= 100.0 || floatabs(vel_y) >= 100.0 || floatabs(vel_z) >= 100.0 ||
		floatabs(vel_x - ACVehInfo[vehicleid][acVelX]) >= 2.6 && floatabs(vel_x) >= floatabs(ACVehInfo[vehicleid][acVelX]) ||
		floatabs(vel_y - ACVehInfo[vehicleid][acVelY]) >= 2.6 && floatabs(vel_y) >= floatabs(ACVehInfo[vehicleid][acVelY]) ||
		floatabs(vel_z - ACVehInfo[vehicleid][acVelZ]) >= 2.6 && floatabs(vel_z) >= floatabs(ACVehInfo[vehicleid][acVelZ])))
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Pos x, y, z: %f, %f, %f, vel x, y, z: %f, %f, %f", new_x, new_y, new_z, vel_x, vel_y, vel_z);
			#endif
			return ac_KickWithCode(playerid, "", 0, 31, 2);
		}
		new ac_vsp = ac_GetSpeed(vel_x, vel_y, vel_z);
	#elseif defined GetServerTickRate
		if(ACInfo[playerid][acACAllow][31] &&
		(new_x != new_x || new_y != new_y || new_z != new_z ||
		floatabs(new_x) >= 25000.0 || floatabs(new_y) >= 25000.0 || floatabs(new_z) >= 25000.0))
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Pos x, y, z: %f, %f, %f", new_x, new_y, new_z);
			#endif
			return ac_KickWithCode(playerid, "", 0, 31, 2);
		}
	#endif
	new ac_gtc = GetTickCount(), ac_gpp = GetPlayerPing(playerid), Float:ac_x, Float:ac_y, Float:ac_z, Float:ac_dist;
	#if defined GetServerTickRate
		GetVehiclePos(vehicleid, ac_x, ac_y, ac_z);
		if(ACInfo[playerid][acACAllow][5])
		{
			ac_dist = GetPlayerDistanceFromPoint(playerid, new_x, new_y, new_z);
			if(ac_dist >= 120.0)
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Dist: %f, veh: %d, seat: %d, playerid: %d", ac_dist, vehicleid, passenger_seat, playerid);
				#endif
				#if defined OnCheatDetected
					ac_KickWithCode(playerid, "", 0, 5, 4);
				#endif
				GetVehicleZAngle(vehicleid, ACVehInfo[vehicleid][acZAngle]);
				#if defined SetVehicleFakeZAngleForPlayer
					SetVehicleFakeZAngleForPlayer(playerid, vehicleid, ACVehInfo[vehicleid][acZAngle]);
				#else
					SetVehicleZAngle(vehicleid, ACVehInfo[vehicleid][acZAngle]);
				#endif
				#if defined SetVehicleFakePosForPlayer
					SetVehicleFakePosForPlayer(playerid, vehicleid, ac_x, ac_y, ac_z);
				#else
					SetVehiclePos(vehicleid, ac_x, ac_y, ac_z);
				#endif
				return 0;
			}
		}
		ac_dist = GetVehicleDistanceFromPoint(vehicleid, new_x, new_y, new_z);
		if(passenger_seat > 0)
		{
			new Float:ac_zDiff = new_z - ac_z;
			#if defined OnTrailerUpdate
			if(ACInfo[playerid][acACAllow][31] &&
			((vel_z >= ACVehInfo[vehicleid][acVelZ] || ac_zDiff >= -0.8) &&
			(floatabs(vel_x - ACVehInfo[vehicleid][acVelX]) >= 1.0 ||
			floatabs(vel_y - ACVehInfo[vehicleid][acVelY]) >= 1.0 ||
			VectorSize(ACVehInfo[vehicleid][acVelX], ACVehInfo[vehicleid][acVelY], 0.0) >= 0.3 &&
			(floatabs(vel_x) >= floatabs(ACVehInfo[vehicleid][acVelX]) || floatabs(vel_y) >= floatabs(ACVehInfo[vehicleid][acVelY]))) ||
			ac_zDiff >= -5.0 && (floatabs(new_x - ac_x) >= 8.0 || floatabs(new_y - ac_y) >= 8.0)))
			{
				if(++ACInfo[playerid][acCheatCount][4] > AC_MAX_CARSHOT_WARNINGS)
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Vel x, y, z: %f, %f, %f, old vel x, y: %f, %f, pos diff x, y, z: %f, %f, %f, veh: %d",
						vel_x, vel_y, vel_z, ACVehInfo[vehicleid][acVelX], ACVehInfo[vehicleid][acVelY], new_x - ac_x, new_y - ac_y, ac_zDiff, vehicleid);
					#endif
					#if defined OnCheatDetected
						ac_KickWithCode(playerid, "", 0, 31, 1);
						if(ACInfo[playerid][acKicked] > 0) return 0;
						ACInfo[playerid][acCheatCount][4] = 0;
					#else
						return ac_KickWithCode(playerid, "", 0, 31, 1);
					#endif
				}
				#if defined OnCheatWarning
					else OnCheatWarning(playerid, "", 0, 31, 1, ACInfo[playerid][acCheatCount][4]);
				#endif
			}
			else if(ACInfo[playerid][acACAllow][8] &&
			(vel_z >= 0.1 && vel_z > ACVehInfo[vehicleid][acVelZ] &&
			floatabs(ac_x - new_x) < ac_zDiff / 2.0 && floatabs(ac_y - new_y) < ac_zDiff / 2.0 ||
			vel_z >= 0.0 && ac_zDiff <= -1.0 || vel_z <= 0.0 && ac_zDiff >= 1.0))
			{
				if(++ACInfo[playerid][acCheatCount][3] > AC_MAX_FLYHACK_VEH_WARNINGS)
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Vel z: %f, old vel z: %f, pos diff x, y, z: %f, %f, %f, veh: %d",
						vel_z, ACVehInfo[vehicleid][acVelZ], ac_x - new_x, ac_y - new_y, ac_zDiff, vehicleid);
					#endif
					#if defined OnCheatDetected
						ac_KickWithCode(playerid, "", 0, 8, 2);
						if(ACInfo[playerid][acKicked] > 0) return 0;
						ACInfo[playerid][acCheatCount][3] = 0;
					#else
						return ac_KickWithCode(playerid, "", 0, 8, 2);
					#endif
				}
				#if defined OnCheatWarning
					else OnCheatWarning(playerid, "", 0, 8, 2, ACInfo[playerid][acCheatCount][3]);
				#endif
			}
			else if(ACInfo[playerid][acACAllow][1] && ac_dist >= 2.6 && ac_vsp < 63)
			{
				if(++ACInfo[playerid][acCheatCount][2] > AC_MAX_AIR_VEH_WARNINGS)
				{
					#undef AC_MAX_AIR_VEH_WARNINGS
					#if defined DEBUG
						printf("[ANTICHEAT] Speed: %d, dist: %f, old pos diff: %f, veh: %d, seat: %d",
						ac_vsp, ac_dist, ACVehInfo[vehicleid][acPosDiff], vehicleid, passenger_seat);
					#endif
					#if defined OnCheatDetected
						ac_KickWithCode(playerid, "", 0, 1, 2);
						if(ACInfo[playerid][acKicked] > 0) return 0;
						ACInfo[playerid][acCheatCount][2] = 0;
					#else
						return ac_KickWithCode(playerid, "", 0, 1, 2);
					#endif
				}
				#if defined OnCheatWarning
					else OnCheatWarning(playerid, "", 0, 1, 2, ACInfo[playerid][acCheatCount][2]);
				#endif
			}
			#else
			if(ACInfo[playerid][acACAllow][31] &&
			ac_zDiff >= -5.0 && (floatabs(new_x - ac_x) >= 8.0 || floatabs(new_y - ac_y) >= 8.0))
			{
				if(++ACInfo[playerid][acCheatCount][4] > AC_MAX_CARSHOT_WARNINGS)
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Pos diff x, y, z: %f, %f, %f, veh: %d",
						new_x - ac_x, new_y - ac_y, ac_zDiff, vehicleid);
					#endif
					#if defined OnCheatDetected
						ac_KickWithCode(playerid, "", 0, 31, 1);
						if(ACInfo[playerid][acKicked] > 0) return 0;
						ACInfo[playerid][acCheatCount][4] = 0;
					#else
						return ac_KickWithCode(playerid, "", 0, 31, 1);
					#endif
				}
				#if defined OnCheatWarning
					else OnCheatWarning(playerid, "", 0, 31, 1, ACInfo[playerid][acCheatCount][4]);
				#endif
			}
			#endif
		}
		if(ACInfo[playerid][acACAllow][5] &&
		(ac_dist >= 25.0 || ac_dist >= 15.0 && ac_gtc - ACInfo[playerid][acGtc][15] > ac_gpp) &&
		ac_dist - ACVehInfo[vehicleid][acPosDiff] > (ac_dist / 3.0) * 1.6 &&
		(ac_z >= -45.0 || VectorSize(new_x - ac_x, new_y - ac_y, 0.0) >= 180.0))
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Dist: %f, old pos diff: %f, old pos z: %f, veh: %d, seat: %d, playerid: %d",
				ac_dist, ACVehInfo[vehicleid][acPosDiff], ac_z, vehicleid, passenger_seat, playerid);
			#endif
			#if defined OnCheatDetected
				ac_KickWithCode(playerid, "", 0, 5, 1);
			#endif
			GetVehicleZAngle(vehicleid, ACVehInfo[vehicleid][acZAngle]);
			#if defined SetVehicleFakeZAngleForPlayer
				SetVehicleFakeZAngleForPlayer(playerid, vehicleid, ACVehInfo[vehicleid][acZAngle]);
			#else
				SetVehicleZAngle(vehicleid, ACVehInfo[vehicleid][acZAngle]);
			#endif
			#if defined SetVehicleFakePosForPlayer
				SetVehicleFakePosForPlayer(playerid, vehicleid, ac_x, ac_y, ac_z);
			#else
				SetVehiclePos(vehicleid, ac_x, ac_y, ac_z);
			#endif
			return 0;
		}
	#else
		GetVehiclePos(vehicleid, ac_x, ac_y, ac_z);
		if(ACInfo[playerid][acACAllow][5])
		{
			ac_dist = GetPlayerDistanceFromPoint(playerid, ac_x, ac_y, ac_z);
			if(ac_dist >= 120.0)
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Dist: %f, veh: %d, seat: %d, playerid: %d", ac_dist, vehicleid, passenger_seat, playerid);
				#endif
				#if defined OnCheatDetected
					ac_KickWithCode(playerid, "", 0, 5, 4);
				#endif
				SetVehicleZAngle(vehicleid, ACVehInfo[vehicleid][acZAngle]);
				SetVehiclePos(vehicleid, ACVehInfo[vehicleid][acPosX], ACVehInfo[vehicleid][acPosY], ACVehInfo[vehicleid][acPosZ]);
				return 0;
			}
		}
		ac_dist = GetVehicleDistanceFromPoint(vehicleid, ACVehInfo[vehicleid][acPosX], ACVehInfo[vehicleid][acPosY], ACVehInfo[vehicleid][acPosZ]);
		if(passenger_seat > 0)
		{
			new Float:ac_zDiff = ac_z - ACVehInfo[vehicleid][acPosZ];
			if(ACInfo[playerid][acACAllow][31] && ac_zDiff >= -5.0 &&
			(floatabs(ac_x - ACVehInfo[vehicleid][acPosX]) >= 8.0 || floatabs(ac_y - ACVehInfo[vehicleid][acPosY]) >= 8.0))
			{
				if(++ACInfo[playerid][acCheatCount][4] > AC_MAX_CARSHOT_WARNINGS)
				{
					#if defined DEBUG
						printf("[ANTICHEAT] Pos diff x, y, z: %f, %f, %f, veh: %d",
						ac_x - ACVehInfo[vehicleid][acPosX], ac_y - ACVehInfo[vehicleid][acPosY], ac_zDiff, vehicleid);
					#endif
					#if defined OnCheatDetected
						ac_KickWithCode(playerid, "", 0, 31, 1);
						if(ACInfo[playerid][acKicked] > 0) return 0;
						ACInfo[playerid][acCheatCount][4] = 0;
					#else
						return ac_KickWithCode(playerid, "", 0, 31, 1);
					#endif
				}
				#if defined OnCheatWarning
					else OnCheatWarning(playerid, "", 0, 31, 1, ACInfo[playerid][acCheatCount][4]);
				#endif
			}
		}
		#if defined VectorSize
		if(ACInfo[playerid][acACAllow][5] &&
		(ac_dist >= 25.0 || ac_dist >= 15.0 && ac_gtc - ACInfo[playerid][acGtc][15] > ac_gpp) &&
		ac_dist - ACVehInfo[vehicleid][acPosDiff] > (ac_dist / 3.0) * 1.6 &&
		(ACVehInfo[vehicleid][acPosZ] >= -45.0 || VectorSize(ac_x - ACVehInfo[vehicleid][acPosX], ac_y - ACVehInfo[vehicleid][acPosY], 0.0) >= 180.0))
		#else
		if(ACInfo[playerid][acACAllow][5] &&
		(ac_dist >= 25.0 || ac_dist >= 15.0 && ac_gtc - ACInfo[playerid][acGtc][15] > ac_gpp) &&
		ac_dist - ACVehInfo[vehicleid][acPosDiff] > (ac_dist / 3.0) * 1.6 &&
		(ACVehInfo[vehicleid][acPosZ] >= -45.0 || floatsqroot(floatpower(ac_x - ACVehInfo[vehicleid][acPosX], 2.0) + floatpower(ac_y - ACVehInfo[vehicleid][acPosY], 2.0)) >= 180.0))
		#endif
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Dist: %f, old pos diff: %f, old pos z: %f, veh: %d, seat: %d, playerid: %d",
				ac_dist, ACVehInfo[vehicleid][acPosDiff], ACVehInfo[vehicleid][acPosZ], vehicleid, passenger_seat, playerid);
			#endif
			#if defined OnCheatDetected
				ac_KickWithCode(playerid, "", 0, 5, 1);
			#endif
			SetVehicleZAngle(vehicleid, ACVehInfo[vehicleid][acZAngle]);
			SetVehiclePos(vehicleid, ACVehInfo[vehicleid][acPosX], ACVehInfo[vehicleid][acPosY], ACVehInfo[vehicleid][acPosZ]);
			return 0;
		}
	#endif
	#undef AC_MAX_FLYHACK_VEH_WARNINGS
	#undef AC_MAX_CARSHOT_WARNINGS
	#if defined ac_OnUnoccupiedVehicleUpdate
		#if defined OnTrailerUpdate
			new ac_a = ac_OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, new_x, new_y, new_z, vel_x, vel_y, vel_z);
		#elseif defined GetServerTickRate
			new ac_a = ac_OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, new_x, new_y, new_z);
		#else
			new ac_a = ac_OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat);
		#endif
	#endif
	#if defined OnTrailerUpdate
		#if defined ac_OnUnoccupiedVehicleUpdate
			if(ac_a)
			{
		#endif
			ACVehInfo[vehicleid][acPosDiff] = ac_dist;
			ACVehInfo[vehicleid][acSpeedDiff] = ac_vsp - ACVehInfo[vehicleid][acSpeed];
			ACVehInfo[vehicleid][acSpeed] = ac_vsp;
			ACVehInfo[vehicleid][acPosX] = new_x;
			ACVehInfo[vehicleid][acPosY] = new_y;
			ACVehInfo[vehicleid][acPosZ] = new_z;
			ACVehInfo[vehicleid][acVelX] = vel_x;
			ACVehInfo[vehicleid][acVelY] = vel_y;
			ACVehInfo[vehicleid][acVelZ] = vel_z;
		#if defined ac_OnUnoccupiedVehicleUpdate
			}
		#endif
	#elseif defined GetServerTickRate
		#if defined ac_OnUnoccupiedVehicleUpdate
			if(ac_a)
			{
		#endif
			ACVehInfo[vehicleid][acPosDiff] = ac_dist;
			ACVehInfo[vehicleid][acPosX] = new_x;
			ACVehInfo[vehicleid][acPosY] = new_y;
			ACVehInfo[vehicleid][acPosZ] = new_z;
		#if defined ac_OnUnoccupiedVehicleUpdate
			}
		#endif
	#else
		GetVehicleZAngle(vehicleid, ACVehInfo[vehicleid][acZAngle]);
		ACVehInfo[vehicleid][acPosDiff] = ac_dist;
		ACVehInfo[vehicleid][acPosX] = ac_x;
		ACVehInfo[vehicleid][acPosY] = ac_y;
		ACVehInfo[vehicleid][acPosZ] = ac_z;
	#endif
	#if defined ac_OnUnoccupiedVehicleUpdate
		return ac_a;
	#else
		return 1;
	#endif
}

#if defined _ALS_OnUnoccupiedVehicleUpdate
	#undef OnUnoccupiedVehicleUpdate
#else
	#define _ALS_OnUnoccupiedVehicleUpdate
#endif
#define OnUnoccupiedVehicleUpdate ac_OnUnoccupiedVehicleUpdate
#if defined ac_OnUnoccupiedVehicleUpdate
	#if defined OnTrailerUpdate
		forward ac_OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z);
	#elseif defined GetServerTickRate
		forward ac_OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z);
	#else
		forward ac_OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat);
	#endif
#endif

#if defined OnTrailerUpdate
	public OnTrailerUpdate(playerid, vehicleid)
	{
		if(ACInfo[playerid][acKicked] > 0) return 0;
		#if defined PAWNRAKNET_INC_
			#if defined ac_OnTrailerUpdate
				new ac_a = ac_OnTrailerUpdate(playerid, vehicleid);
				if(ac_a)
				{
			#endif
				if(ACVehInfo[vehicleid][acTrSpeed] != -1)
				{
					ACVehInfo[vehicleid][acSpeedDiff] = ACVehInfo[vehicleid][acTrSpeedDiff];
					ACVehInfo[vehicleid][acVelX] = ACVehInfo[vehicleid][acTrVelX];
					ACVehInfo[vehicleid][acVelY] = ACVehInfo[vehicleid][acTrVelY];
					ACVehInfo[vehicleid][acVelZ] = ACVehInfo[vehicleid][acTrVelZ];
					ACVehInfo[vehicleid][acSpeed] = ACVehInfo[vehicleid][acTrSpeed];
					ACVehInfo[vehicleid][acTrSpeed] = -1;
				}
			#if defined ac_OnTrailerUpdate
				}
				return ac_a;
			#else
				return 1;
			#endif
		#elseif defined ac_OnTrailerUpdate
			return ac_OnTrailerUpdate(playerid, vehicleid);
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnTrailerUpdate
		#undef OnTrailerUpdate
	#else
		#define _ALS_OnTrailerUpdate
	#endif
	#define OnTrailerUpdate ac_OnTrailerUpdate
	#if defined ac_OnTrailerUpdate
		forward ac_OnTrailerUpdate(playerid, vehicleid);
	#endif
#endif

#if defined OnPlayerEditAttachedObject
	public OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
	{
		if(ACInfo[playerid][acKicked] > 0) return 1;
		if(ACInfo[playerid][acACAllow][46] && 384 <= modelid <= 393)
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Object modelid: %d", modelid);
			#endif
			ac_KickWithCode(playerid, "", 0, 46);
			return 1;
		}
		#if defined ac_OnPlayerEditAttachedObject
			return ac_OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, fScaleX, fScaleY, fScaleZ);
		#else
			return 0;
		#endif
	}

	#if defined _ALS_OnPlayerEditAttachedObject
		#undef OnPlayerEditAttachedObject
	#else
		#define _ALS_OnPlayerEditAttachedObject
	#endif
	#define OnPlayerEditAttachedObject ac_OnPlayerEditAttachedObject
	#if defined ac_OnPlayerEditAttachedObject
		forward ac_OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ);
	#endif
#endif

#if defined OnPlayerEnterDynamicArea
	#if defined STREAMER_ENABLE_TAGS
		public OnPlayerEnterDynamicArea(playerid, STREAMER_TAG_AREA:areaid)
	#else
		public OnPlayerEnterDynamicArea(playerid, areaid)
	#endif
	{
		if(ACInfo[playerid][acKicked] > 0) return 0;
		#if defined ac_OnPlayerEnterDynamicArea
			return ac_OnPlayerEnterDynamicArea(playerid, areaid);
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnPlayerEnterDynamicArea
		#undef OnPlayerEnterDynamicArea
	#else
		#define _ALS_OnPlayerEnterDynamicArea
	#endif
	#define OnPlayerEnterDynamicArea ac_OnPlayerEnterDynamicArea
	#if defined ac_OnPlayerEnterDynamicArea
		#if defined STREAMER_ENABLE_TAGS
			forward ac_OnPlayerEnterDynamicArea(playerid, STREAMER_TAG_AREA:areaid);
		#else
			forward ac_OnPlayerEnterDynamicArea(playerid, areaid);
		#endif
	#endif
#endif

#if defined OnPlayerLeaveDynamicArea
	#if defined STREAMER_ENABLE_TAGS
		public OnPlayerLeaveDynamicArea(playerid, STREAMER_TAG_AREA:areaid)
	#else
		public OnPlayerLeaveDynamicArea(playerid, areaid)
	#endif
	{
		if(ACInfo[playerid][acKicked] > 0) return 0;
		#if defined ac_OnPlayerLeaveDynamicArea
			return ac_OnPlayerLeaveDynamicArea(playerid, areaid);
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnPlayerLeaveDynamicArea
		#undef OnPlayerLeaveDynamicArea
	#else
		#define _ALS_OnPlayerLeaveDynamicArea
	#endif
	#define OnPlayerLeaveDynamicArea ac_OnPlayerLeaveDynamicArea
	#if defined ac_OnPlayerLeaveDynamicArea
		#if defined STREAMER_ENABLE_TAGS
			forward ac_OnPlayerLeaveDynamicArea(playerid, STREAMER_TAG_AREA:areaid);
		#else
			forward ac_OnPlayerLeaveDynamicArea(playerid, areaid);
		#endif
	#endif
#endif

#if defined PAWNRAKNET_INC_
	public OnIncomingPacket(playerid, packetid, BitStream:bs)
	{
		if(ACInfo[playerid][acKicked] > 0 && ACInfo[playerid][acOnline]) return 0;
		#if defined ac_OnIncomingPacket
			return ac_OnIncomingPacket(playerid, packetid, bs);
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnIncomingPacket
		#undef OnIncomingPacket
	#else
		#define _ALS_OnIncomingPacket
	#endif
	#define OnIncomingPacket ac_OnIncomingPacket
	#if defined ac_OnIncomingPacket
		forward ac_OnIncomingPacket(playerid, packetid, BitStream:bs);
	#endif

	public OnIncomingRPC(playerid, rpcid, BitStream:bs)
	{
		if(ACInfo[playerid][acKicked] > 0 && ACInfo[playerid][acOnline]) return 0;
		#if defined ac_OnIncomingRPC
			return ac_OnIncomingRPC(playerid, rpcid, bs);
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnIncomingRPC
		#undef OnIncomingRPC
	#else
		#define _ALS_OnIncomingRPC
	#endif
	#define OnIncomingRPC ac_OnIncomingRPC
	#if defined ac_OnIncomingRPC
		forward ac_OnIncomingRPC(playerid, rpcid, BitStream:bs);
	#endif

	//ID_DRIVER_SYNC
	IPacket:200(playerid, BitStream:bs)
	{
		new ac_cData[PR_InCarSync];
		BS_IgnoreBits(bs, 8);
		BS_ReadInCarSync(bs, ac_cData);
		if(!ac_IsValidFloat(ac_cData[PR_quaternion][0]) || !ac_IsValidFloat(ac_cData[PR_quaternion][1]) ||
		!ac_IsValidFloat(ac_cData[PR_quaternion][2]) || !ac_IsValidFloat(ac_cData[PR_quaternion][3])) return 0;
		if(ACInfo[playerid][acACAllow][44] && !(1 <= ac_cData[PR_vehicleId] < MAX_VEHICLES))
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Veh: %d", ac_cData[PR_vehicleId]);
			#endif
			#if defined OnCheatDetected
				ac_KickWithCode(playerid, "", 0, 44, 7);
				if(ACInfo[playerid][acKicked] > 0) return 0;
			#else
				return ac_KickWithCode(playerid, "", 0, 44, 7);
			#endif
		}
		if(!ac_IsValidFloat(ac_cData[PR_trainSpeed]))
		{
			ac_cData[PR_trainSpeed] = 0.0;
			BS_SetWriteOffset(bs, 8);
			BS_WriteInCarSync(bs, ac_cData);
		}
		return 1;
	}

	//ID_AIM_SYNC
	IPacket:203(playerid, BitStream:bs)
	{
		new ac_aData[PR_AimSync];
		BS_IgnoreBits(bs, 8);
		BS_ReadAimSync(bs, ac_aData);
		if(ACInfo[playerid][acLastWeapon] == WEAPON_BOMB && ac_aData[PR_camMode] != 4) return 0;
		if(!ac_IsValidFloat(ac_aData[PR_aimZ]))
		{
			ac_aData[PR_aimZ] = 0.0;
			BS_SetWriteOffset(bs, 8);
			BS_WriteAimSync(bs, ac_aData);
		}
		ACInfo[playerid][acLastCamMode] = ac_aData[PR_camMode];
		return 1;
	}

	//ID_ONFOOT_SYNC
	IPacket:207(playerid, BitStream:bs)
	{
		new ac_fData[PR_OnFootSync];
		BS_IgnoreBits(bs, 8);
		BS_ReadOnFootSync(bs, ac_fData);
		if(!ac_IsValidFloat(ac_fData[PR_quaternion][0]) || !ac_IsValidFloat(ac_fData[PR_quaternion][1]) ||
		!ac_IsValidFloat(ac_fData[PR_quaternion][2]) || !ac_IsValidFloat(ac_fData[PR_quaternion][3])) return 0;
		if(!ac_IsValidFloat(ac_fData[PR_surfingOffsets][0]) ||
		!ac_IsValidFloat(ac_fData[PR_surfingOffsets][1]) ||
		!ac_IsValidFloat(ac_fData[PR_surfingOffsets][2]))
		{
			ac_fData[PR_surfingOffsets][0] =
			ac_fData[PR_surfingOffsets][1] =
			ac_fData[PR_surfingOffsets][2] = 0.0;
			ac_fData[PR_surfingVehicleId] = 0;
			BS_SetWriteOffset(bs, 8);
			BS_WriteOnFootSync(bs, ac_fData);
		}
		else if(ac_fData[PR_surfingVehicleId] != 0 &&
		ac_fData[PR_surfingOffsets][0] == 0.0 && ac_fData[PR_surfingOffsets][1] == 0.0 &&
		ac_fData[PR_surfingOffsets][2] == 0.0)
		{
			ac_fData[PR_surfingVehicleId] = 0;
			BS_SetWriteOffset(bs, 8);
			BS_WriteOnFootSync(bs, ac_fData);
		}
		if(ac_fData[PR_weaponId] == WEAPON_BOMB && ACInfo[playerid][acLastCamMode] != 4)
		{
			ac_fData[PR_weaponId] = 0;
			BS_SetWriteOffset(bs, 8);
			BS_WriteOnFootSync(bs, ac_fData);
		}
		return 1;
	}

	//ID_UNOCCUPIED_SYNC
	IPacket:209(playerid, BitStream:bs)
	{
		new ac_uData[PR_UnoccupiedSync];
		BS_IgnoreBits(bs, 8);
		BS_ReadUnoccupiedSync(bs, ac_uData);
		if(ac_uData[PR_seatId] > 0 &&
		(ac_uData[PR_seatId] != ACInfo[playerid][acSeat] || ac_uData[PR_vehicleId] != ACInfo[playerid][acVeh]) ||
		ac_uData[PR_roll][0] != ac_uData[PR_roll][0] ||
		ac_uData[PR_roll][1] != ac_uData[PR_roll][1] ||
		ac_uData[PR_roll][2] != ac_uData[PR_roll][2] ||
		ac_uData[PR_direction][0] != ac_uData[PR_direction][0] ||
		ac_uData[PR_direction][1] != ac_uData[PR_direction][1] ||
		ac_uData[PR_direction][2] != ac_uData[PR_direction][2] ||
		ac_uData[PR_angularVelocity][0] != ac_uData[PR_angularVelocity][0] ||
		ac_uData[PR_angularVelocity][1] != ac_uData[PR_angularVelocity][1] ||
		ac_uData[PR_angularVelocity][2] != ac_uData[PR_angularVelocity][2] ||
		!ac_IsValidFloat(ac_uData[PR_vehicleHealth]) ||
		floatabs(ac_uData[PR_roll][0]) >= 1.0 ||
		floatabs(ac_uData[PR_roll][1]) >= 1.0 ||
		floatabs(ac_uData[PR_roll][2]) >= 1.0 ||
		floatabs(ac_uData[PR_direction][0]) >= 1.0 ||
		floatabs(ac_uData[PR_direction][1]) >= 1.0 ||
		floatabs(ac_uData[PR_direction][2]) >= 1.0 ||
		floatabs(ac_uData[PR_angularVelocity][0]) >= 1.0 ||
		floatabs(ac_uData[PR_angularVelocity][1]) >= 1.0 ||
		floatabs(ac_uData[PR_angularVelocity][2]) >= 1.0) return 0;
		#if defined VectorSize
			if((ac_uData[PR_roll][0] * ac_uData[PR_direction][0]) +
			(ac_uData[PR_roll][1] * ac_uData[PR_direction][1]) +
			(ac_uData[PR_roll][2] * ac_uData[PR_direction][2]) >= 0.000001 ||
			1.0 - VectorSize(ac_uData[PR_direction][0], ac_uData[PR_direction][1], ac_uData[PR_direction][2]) >= 0.000001 ||
			1.0 - VectorSize(ac_uData[PR_roll][0], ac_uData[PR_roll][1], ac_uData[PR_roll][2]) >= 0.000001) return 0;
		#else
			if((ac_uData[PR_roll][0] * ac_uData[PR_direction][0]) +
			(ac_uData[PR_roll][1] * ac_uData[PR_direction][1]) +
			(ac_uData[PR_roll][2] * ac_uData[PR_direction][2]) >= 0.000001 ||
			1.0 - floatsqroot(floatpower(ac_uData[PR_direction][0], 2.0) +
			floatpower(ac_uData[PR_direction][1], 2.0) + floatpower(ac_uData[PR_direction][2], 2.0)) >= 0.000001 ||
			1.0 - floatsqroot(floatpower(ac_uData[PR_roll][0], 2.0) +
			floatpower(ac_uData[PR_roll][1], 2.0) + floatpower(ac_uData[PR_roll][2], 2.0)) >= 0.000001) return 0;
		#endif
		return 1;
	}

	//ID_TRAILER_SYNC
	IPacket:210(playerid, BitStream:bs)
	{
		new ac_tData[PR_TrailerSync], trailerid;
		BS_IgnoreBits(bs, 8);
		BS_ReadTrailerSync(bs, ac_tData);
		trailerid = ac_tData[PR_trailerId];
		if(!(1 <= trailerid < MAX_VEHICLES) || ACVehInfo[trailerid][acDriver] != INVALID_PLAYER_ID ||
		!ac_IsValidFloat(ac_tData[PR_quaternion][0]) || !ac_IsValidFloat(ac_tData[PR_quaternion][1]) ||
		!ac_IsValidFloat(ac_tData[PR_quaternion][2]) || !ac_IsValidFloat(ac_tData[PR_quaternion][3])) return 0;
		if(ACInfo[playerid][acACAllow][31] &&
		(floatabs(ac_tData[PR_velocity][0] - ACVehInfo[trailerid][acVelX]) >= 2.6 &&
		floatabs(ac_tData[PR_velocity][0]) >= floatabs(ACVehInfo[trailerid][acVelX]) ||
		floatabs(ac_tData[PR_velocity][1] - ACVehInfo[trailerid][acVelY]) >= 2.6 &&
		floatabs(ac_tData[PR_velocity][1]) >= floatabs(ACVehInfo[trailerid][acVelY]) ||
		floatabs(ac_tData[PR_velocity][2] - ACVehInfo[trailerid][acVelZ]) >= 2.6 &&
		floatabs(ac_tData[PR_velocity][2]) >= floatabs(ACVehInfo[trailerid][acVelZ])))
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Pos x, y, z: %f, %f, %f, vel x, y, z: %f, %f, %f",
				ac_tData[PR_position][0], ac_tData[PR_position][1], ac_tData[PR_position][2], ac_tData[PR_velocity][0], ac_tData[PR_velocity][1], ac_tData[PR_velocity][2]);
			#endif
			return ac_KickWithCode(playerid, "", 0, 31, 3);
		}
		if(ACInfo[playerid][acACAllow][5])
		{
			new Float:ac_dist = GetVehicleDistanceFromPoint(trailerid, ac_tData[PR_position][0], ac_tData[PR_position][1], ac_tData[PR_position][2]);
			if(ac_dist >= 80.0)
			{
				new Float:ac_x, Float:ac_y, Float:ac_z;
				GetVehiclePos(trailerid, ac_x, ac_y, ac_z);
				#if defined DEBUG
					printf("[ANTICHEAT] Dist: %f, old pos z: %f, veh: %d, playerid: %d", ac_dist, ac_z, trailerid, playerid);
				#endif
				#if defined OnCheatDetected
					ac_KickWithCode(playerid, "", 0, 5, 2);
				#endif
				GetVehicleZAngle(trailerid, ACVehInfo[trailerid][acZAngle]);
				#if defined SetVehicleFakeZAngleForPlayer
					SetVehicleFakeZAngleForPlayer(playerid, trailerid, ACVehInfo[trailerid][acZAngle]);
				#else
					SetVehicleZAngle(trailerid, ACVehInfo[trailerid][acZAngle]);
				#endif
				#if defined SetVehicleFakePosForPlayer
					SetVehicleFakePosForPlayer(playerid, trailerid, ac_x, ac_y, ac_z);
				#else
					SetVehiclePos(trailerid, ac_x, ac_y, ac_z);
				#endif
				return 0;
			}
		}
		new ac_vsp = ac_GetSpeed(ac_tData[PR_velocity][0], ac_tData[PR_velocity][1], ac_tData[PR_velocity][2]);
		ACVehInfo[trailerid][acTrSpeedDiff] = ac_vsp - ACVehInfo[trailerid][acSpeed];
		ACVehInfo[trailerid][acTrVelX] = ac_tData[PR_velocity][0];
		ACVehInfo[trailerid][acTrVelY] = ac_tData[PR_velocity][1];
		ACVehInfo[trailerid][acTrVelZ] = ac_tData[PR_velocity][2];
		ACVehInfo[trailerid][acTrSpeed] = ac_vsp;
		return 1;
	}

	//ID_PASSENGER_SYNC
	IPacket:211(playerid, BitStream:bs)
	{
		if(ACInfo[playerid][acACAllow][44])
		{
			new ac_pData[PR_PassengerSync];
			BS_IgnoreBits(bs, 8);
			BS_ReadPassengerSync(bs, ac_pData);
			if(ac_pData[PR_seatId] < 1 || !(1 <= ac_pData[PR_vehicleId] < MAX_VEHICLES))
			{
				#if defined DEBUG
					printf("[ANTICHEAT] AC seat: %d, seat: %d, veh: %d",
					ACInfo[playerid][acSeat], ac_pData[PR_seatId], ac_pData[PR_vehicleId]);
				#endif
				#if defined OnCheatDetected
					ac_KickWithCode(playerid, "", 0, 44, 6);
					if(ACInfo[playerid][acKicked] > 0) return 0;
				#else
					return ac_KickWithCode(playerid, "", 0, 44, 6);
				#endif
			}
		}
		return 1;
	}

	//RPC_RequestClass
	IRPC:128(playerid, BitStream:bs)
	{
		if(!ACInfo[playerid][acForceClass])
		{
			#if defined WC_IsPlayerSpawned
				if(WC_IsPlayerSpawned(playerid)) return 0;
			#elseif defined IsPlayerSpawned
				if(IsPlayerSpawned(playerid)) return 0;
			#else
				new ac_i = GetPlayerState(playerid);
				if(PLAYER_STATE_ONFOOT <= ac_i < PLAYER_STATE_WASTED || ac_i == PLAYER_STATE_SPAWNED) return 0;
			#endif
		}
		return 1;
	}
#endif

#if defined PAWNRAKNET_INC_ || defined SendRPC
	static SetVehicleFakePosForPlayer(playerid, vehicleid, Float:x, Float:y, Float:z)
	{
		if(!IsPlayerConnected(playerid) || GetVehicleModel(vehicleid) <= 0) return 0;
		#if defined PAWNRAKNET_INC_
			new BitStream:bs = BS_New();
			BS_WriteValue(bs, PR_UINT16, vehicleid, PR_FLOAT, x, PR_FLOAT, y, PR_FLOAT, z);
			#if defined PR_SendRPC
				PR_SendRPC(bs, playerid, 159);
			#else
				BS_RPC(bs, playerid, 159);
			#endif
			BS_Delete(bs);
		#else
			SendRPC(playerid, 159, BS_UNSIGNEDSHORT, vehicleid, BS_FLOAT, x, BS_FLOAT, y, BS_FLOAT, z);
		#endif
		return 1;
	}

	static SetVehicleFakeZAngleForPlayer(playerid, vehicleid, Float:z_angle)
	{
		if(!IsPlayerConnected(playerid) || GetVehicleModel(vehicleid) <= 0) return 0;
		#if defined PAWNRAKNET_INC_
			new BitStream:bs = BS_New();
			BS_WriteValue(bs, PR_UINT16, vehicleid, PR_FLOAT, z_angle);
			#if defined PR_SendRPC
				PR_SendRPC(bs, playerid, 160);
			#else
				BS_RPC(bs, playerid, 160);
			#endif
			BS_Delete(bs);
		#else
			SendRPC(playerid, 160, BS_UNSIGNEDSHORT, vehicleid, BS_FLOAT, z_angle);
		#endif
		return 1;
	}
#endif

ac_fpublic ac_Timer(playerid)
{
	if(!IsPlayerConnected(playerid) || ACInfo[playerid][acKicked] > 0) return 0;
	new ac_gpp;
	#if defined NetStats_MessagesRecvPerSecond
		if(ACInfo[playerid][acACAllow][51] && (ac_gpp = NetStats_MessagesRecvPerSecond(playerid)) > AC_MAX_MSGS_REC_DIFF)
		{
			#if defined DEBUG
				printf("[ANTICHEAT] Max msgs per sec: %d, msgs per sec: %d", AC_MAX_MSGS_REC_DIFF, ac_gpp);
			#endif
			ac_KickWithCode(playerid, "", 0, 51);
		}
	#endif
	#undef AC_MAX_MSGS_REC_DIFF
	ac_gpp = GetPlayerPing(playerid);
	if(ACInfo[playerid][acACAllow][38])
	{
		if(ac_gpp > AC_MAX_PING)
		{
			if(++ACInfo[playerid][acCheatCount][0] > AC_MAX_PING_WARNINGS)
			{
				#if defined DEBUG
					printf("[ANTICHEAT] Max ping: %d, ping: %d", AC_MAX_PING, ac_gpp);
				#endif
				#undef AC_MAX_PING
				#undef AC_MAX_PING_WARNINGS
				ac_KickWithCode(playerid, "", 0, 38);
				#if defined OnCheatDetected
					ACInfo[playerid][acCheatCount][0] = 0;
				#endif
			}
			#if defined OnCheatWarning
				else OnCheatWarning(playerid, "", 0, 38, 0, ACInfo[playerid][acCheatCount][0]);
			#endif
		}
		else ACInfo[playerid][acCheatCount][0] = 0;
	}
	new ac_gtc = GetTickCount();
	#if defined IsPlayerDying
	if(!IsPlayerDying(playerid))
	#else
	if(!ACInfo[playerid][acDead])
	#endif
	{
		if(ac_gtc - ACInfo[playerid][acUpdateTick] < 1500)
		{
			new ac_t, ac_s = ACInfo[playerid][acLastWeapon];
			if(ac_s != -1 && ac_gtc - ACInfo[playerid][acGtc][6] > ac_gpp)
			{
				#if AC_USE_AMMUNATIONS
					new ac_m;
				#endif
				#if AC_USE_PICKUP_WEAPONS\
					&& defined Streamer_GetDistanceToItem\
					&& defined Streamer_GetIntData
					new Float:ac_pick_dist;
					if(ACInfo[playerid][acLastPickup] > MAX_PICKUPS)
					{
						Streamer_GetDistanceToItem(ACInfo[playerid][acPosX], ACInfo[playerid][acPosY], ACInfo[playerid][acPosZ], STREAMER_TYPE_PICKUP, ACInfo[playerid][acLastPickup] - MAX_PICKUPS, ac_pick_dist);
						ac_t = Streamer_GetIntData(STREAMER_TYPE_PICKUP, ACInfo[playerid][acLastPickup] - MAX_PICKUPS, E_STREAMER_EXTRA_ID) - 100;
					}
				#endif
				ac_s = ac_wSlot[ac_s];
				for(new ac_i, ac_w, ac_a, bool:ac_cw; ac_i <= 12; ++ac_i)
				{
					GetPlayerWeaponData(playerid, ac_i, ac_w, ac_a);
					if(ac_w == WEAPON_SATCHEL) ac_cw = true;
					if(ac_s != ac_i)
					{
						if(ACInfo[playerid][acSetWeapon][ac_i] > 0)
						{
							if(ACInfo[playerid][acSetWeapon][ac_i] == ac_w)
							{
								ACInfo[playerid][acSetWeapon][ac_i] = -1;
								ACInfo[playerid][acWeapon][ac_i] = ac_w;
							}
							else if(ac_gtc - ACInfo[playerid][acGtcSetWeapon][ac_i] > ac_gpp)
							{
								if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][0])
								{
									if(++ACInfo[playerid][acNOPCount][0] > AC_MAX_NOP_TIMER_WARNINGS)
									{
										#if defined DEBUG
											printf(DEBUG_CODE_5, playerid, "GivePlayerWeapon");
											printf("[ANTICHEAT] AC weapon: %d, weaponid: %d", ACInfo[playerid][acSetWeapon][ac_i], ac_w);
										#endif
										ac_KickWithCode(playerid, "", 0, 52, 13);
										#if defined OnCheatDetected
											ACInfo[playerid][acSetWeapon][ac_i] = -1;
										#endif
									}
									#if defined OnNOPWarning
										else OnNOPWarning(playerid, 13, ACInfo[playerid][acNOPCount][0]);
									#endif
								}
								else if(++ACInfo[playerid][acNOPCount][0] > AC_MAX_NOP_TIMER_WARNINGS) ACInfo[playerid][acSetWeapon][ac_i] = -1;
							}
						}
						else
						{
							if(ACInfo[playerid][acWeapon][ac_i] != ac_w)
							{
								#if AC_USE_PICKUP_WEAPONS
									#if defined Streamer_GetDistanceToItem\
										&& defined Streamer_GetIntData
									if(0 <= ACInfo[playerid][acLastPickup] < MAX_PICKUPS &&
									ACPickInfo[ACInfo[playerid][acLastPickup]][acWeapon] == ac_w &&
									ac_a <= (3 <= ac_i <= 5 ? (ACInfo[playerid][acAmmo][ac_i] + ac_pAmmo[ac_w]) : ac_pAmmo[ac_w]) &&
									IsPlayerInRangeOfPoint(playerid, 15.0, ACPickInfo[ACInfo[playerid][acLastPickup]][acPosX],
									ACPickInfo[ACInfo[playerid][acLastPickup]][acPosY], ACPickInfo[ACInfo[playerid][acLastPickup]][acPosZ]) ||
									ACInfo[playerid][acLastPickup] > MAX_PICKUPS && ac_t == ac_w &&
									ac_a <= (3 <= ac_i <= 5 ? (ACInfo[playerid][acAmmo][ac_i] + ac_pAmmo[ac_w]) : ac_pAmmo[ac_w]) && ac_pick_dist <= 15.0)
									#else
									if(0 <= ACInfo[playerid][acLastPickup] < MAX_PICKUPS &&
									ACPickInfo[ACInfo[playerid][acLastPickup]][acWeapon] == ac_w &&
									ac_a <= (3 <= ac_i <= 5 ? (ACInfo[playerid][acAmmo][ac_i] + ac_pAmmo[ac_w]) : ac_pAmmo[ac_w]) &&
									IsPlayerInRangeOfPoint(playerid, 15.0, ACPickInfo[ACInfo[playerid][acLastPickup]][acPosX],
									ACPickInfo[ACInfo[playerid][acLastPickup]][acPosY], ACPickInfo[ACInfo[playerid][acLastPickup]][acPosZ]))
									#endif
									{
										ACInfo[playerid][acWeapon][ac_i] = ac_w;
										ACInfo[playerid][acAmmo][ac_i] = ac_a;
									}
									else
									{
								#endif
									if(ac_w == 0 || ac_w == WEAPON_BOMB && ac_cw ||
									ac_w == WEAPON_PARACHUTE && ACInfo[playerid][acVeh] > 0 && ACInfo[playerid][acParachute] > 0)
									{
										if(ac_w == WEAPON_PARACHUTE) ACInfo[playerid][acParachute] = 0;
										ACInfo[playerid][acWeapon][ac_i] = ac_w;
										ACInfo[playerid][acAmmo][ac_i] = ac_a;
									}
									else if(ACInfo[playerid][acACAllow][15] && !(16 <= ac_w <= 43 && ac_a == 0))
									{
										#if defined DEBUG
											printf("[ANTICHEAT] AC weaponid: %d, AC ammo: %d, weaponid: %d, ammo: %d",
											ACInfo[playerid][acWeapon][ac_i], ACInfo[playerid][acAmmo][ac_i], ac_w, ac_a);
										#endif
										ac_KickWithCode(playerid, "", 0, 15, 2);
										#if defined OnCheatDetected
											if(ACInfo[playerid][acKicked] < 1)
											{
												ACInfo[playerid][acWeapon][ac_i] = ac_w;
												ACInfo[playerid][acAmmo][ac_i] = ac_a;
											}
										#endif
									}
								#if AC_USE_PICKUP_WEAPONS
									}
								#endif
								#undef AC_USE_PICKUP_WEAPONS
							}
							if(ACInfo[playerid][acGiveAmmo][ac_i] != -65535)
							{
								if(ACInfo[playerid][acGiveAmmo][ac_i] == ac_a ||
								ACInfo[playerid][acGiveAmmo][ac_i] > ac_a && !(ac_a < 0 <= ACInfo[playerid][acGiveAmmo][ac_i]) &&
								ac_gtc - ACInfo[playerid][acGtcGiveAmmo][ac_i] > ac_gpp)
								{
									ACInfo[playerid][acGiveAmmo][ac_i] = -65535;
									ACInfo[playerid][acAmmo][ac_i] = ac_a;
								}
								else if(ac_gtc - ACInfo[playerid][acGtcGiveAmmo][ac_i] > ac_gpp)
								{
									if(ACInfo[playerid][acACAllow][52] && ACInfo[playerid][acNOPAllow][1])
									{
										if(++ACInfo[playerid][acNOPCount][1] > AC_MAX_NOP_TIMER_WARNINGS)
										{
											#if defined DEBUG
												printf(DEBUG_CODE_5, playerid, "SetPlayerAmmo");
												printf("[ANTICHEAT] AC ammo: %d, ammo: %d, weaponid: %d",
												ACInfo[playerid][acGiveAmmo][ac_i], ac_a, ac_w);
											#endif
											ac_KickWithCode(playerid, "", 0, 52, 14);
											#if defined OnCheatDetected
												ACInfo[playerid][acGiveAmmo][ac_i] = -65535;
											#endif
										}
										#if defined OnNOPWarning
											else OnNOPWarning(playerid, 14, ACInfo[playerid][acNOPCount][1]);
										#endif
									}
									else if(++ACInfo[playerid][acNOPCount][1] > AC_MAX_NOP_TIMER_WARNINGS) ACInfo[playerid][acGiveAmmo][ac_i] = -65535;
								}
							}
							else if(16 <= ac_w <= 43)
							{
								if(ac_a == 0) ACInfo[playerid][acAmmo][ac_i] = 0;
								else if(ACInfo[playerid][acACAllow][16] && ac_w != WEAPON_BOMB &&
								(ac_a > ACInfo[playerid][acAmmo][ac_i] || ac_a < 0 <= ACInfo[playerid][acAmmo][ac_i]) &&
								(!ac_LagCompMode || !ac_IsBulletWeapon(ac_w) || ac_gtc - ACInfo[playerid][acShotTick] > 3850))
								{
									#if defined DEBUG
										printf("[ANTICHEAT] AC ammo: %d, ammo: %d, weaponid: %d",
										ACInfo[playerid][acAmmo][ac_i], ac_a, ac_w);
									#endif
									ac_KickWithCode(playerid, "", 0, 16, 2);
									#if defined OnCheatDetected
										if(ACInfo[playerid][acKicked] < 1) ACInfo[playerid][acAmmo][ac_i] = ac_a;
									#endif
								}
							}
						}
					}
					else if(ac_IsBulletWeapon(ac_w))
					{
						if(ac_a > ACInfo[playerid][acAmmo][ac_i] || ac_a < 0 <= ACInfo[playerid][acAmmo][ac_i])
						{
							if(ACInfo[playerid][acGiveAmmo][ac_i] == -65535)
							{
								#if AC_USE_AMMUNATIONS
									if(ac_w <= 32 && ac_InAmmuNation(playerid, ACInfo[playerid][acInt]) &&
									(ac_m = ac_a - ACInfo[playerid][acAmmo][ac_i]) % ac_AmmuNationInfo[ac_w - 22][1] == 0)
									{
										if(ACInfo[playerid][acSet][10] != -1) ACInfo[playerid][acSet][10] += ac_AmmuNationInfo[ac_w - 22][0] * (ac_m / ac_AmmuNationInfo[ac_w - 22][1]);
										else ACInfo[playerid][acSet][10] = ac_AmmuNationInfo[ac_w - 22][0] * (ac_m / ac_AmmuNationInfo[ac_w - 22][1]);
										ACInfo[playerid][acAmmo][ac_i] += ac_m;
										ACInfo[playerid][acGtc][17] = ac_gtc + 2850;
										ACInfo[playerid][acCheatCount][20] = 0;
									}
									else
									{
								#endif
									if(ACInfo[playerid][acACAllow][16] && (!ac_LagCompMode || ac_gtc - ACInfo[playerid][acShotTick] > 3850))
									{
										#if defined DEBUG
											printf("[ANTICHEAT] AC ammo: %d, ammo: %d, weaponid: %d",
											ACInfo[playerid][acAmmo][ac_i], ac_a, ac_w);
										#endif
										ac_KickWithCode(playerid, "", 0, 16, 3);
										#if defined OnCheatDetected
											if(ACInfo[playerid][acKicked] < 1) ACInfo[playerid][acAmmo][ac_i] = ac_a;
										#endif
									}
								#if AC_USE_AMMUNATIONS
									}
								#endif
							}
						}
						else if(ACInfo[playerid][acAmmo][ac_i] != 0) ACInfo[playerid][acAmmo][ac_i] = ac_a;
					}
				}
			}
			if((ac_s = GetPlayerState(playerid)) == PLAYER_STATE_DRIVER)
			{
				ac_t = ACInfo[playerid][acVeh];
				if(ACInfo[playerid][acACAllow][35] && GetPlayerCameraMode(playerid) == 55) ac_KickWithCode(playerid, "", 0, 35);
				if(ACInfo[playerid][acACAllow][3] && ACInfo[playerid][acSet][8] == -1)
				{
					new Float:ac_time, Float:ac_maxdist = 140.0,
					Float:ac_dist = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acLastPosX], ACInfo[playerid][acLastPosY], ACInfo[playerid][acPosZ]),
					Float:ac_dist_set = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acSetPosX], ACInfo[playerid][acSetPosY], ACInfo[playerid][acPosZ]);
					if((ac_time = (ac_gtc - ACInfo[playerid][acTimerTick]) / 1000.0) > 1.0) ac_maxdist *= ac_time;
					if(ac_dist >= ac_maxdist && (ACInfo[playerid][acSet][7] == -1 || ac_dist_set >= ac_maxdist))
					{
						#if defined DEBUG
							printf("[ANTICHEAT] Dist: %f, dist set: %f, acSet[7]: %d, speed: %d, veh: %d",
							ac_dist, ac_dist_set, ACInfo[playerid][acSet][7], ACVehInfo[ac_t][acSpeed], ac_t);
						#endif
						ac_KickWithCode(playerid, "", 0, 3, 3);
					}
				}
				ACInfo[playerid][acLastPosX] = ACInfo[playerid][acPosX];
				ACInfo[playerid][acLastPosY] = ACInfo[playerid][acPosY];
				ac_s = ac_GetSpeed(ACVehInfo[ac_t][acVelX], ACVehInfo[ac_t][acVelY]);
				if(ACInfo[playerid][acACAllow][10] && ac_gtc - ACInfo[playerid][acGtc][8] > ac_gpp)
				{
					new ac_model = GetVehicleModel(ac_t), ac_maxdiff = 80,
					Float:ac_time = (ac_gtc - ACInfo[playerid][acTimerTick]) / 1100.0;
					if(ac_s - ACVehInfo[ac_t][acLastSpeed] >= (ac_time > 1.0 ? floatround(ac_maxdiff * ac_time) : ac_maxdiff) &&
					(!ac_IsValidVehicleModel(ac_model) || ac_model != 449 && !ac_IsATrainLoco(ac_model) && !ac_IsAnAirplane(ac_model)))
					{
						ACInfo[playerid][acCheatCount][18] += (1 * AC_SPEEDHACK_VEH_RESET_DELAY);
						if(ACInfo[playerid][acCheatCount][18] > AC_MAX_SPEEDHACK_VEH_WARNINGS)
						{
							#undef AC_MAX_SPEEDHACK_VEH_WARNINGS
							#if defined DEBUG
								printf("[ANTICHEAT] Speed: %d, last speed: %d, veh model: %d, veh: %d",
								ac_s, ACVehInfo[ac_t][acLastSpeed], ac_model, ac_t);
							#endif
							ac_KickWithCode(playerid, "", 0, 10, 4);
							#if defined OnCheatDetected
								ACInfo[playerid][acCheatCount][18] = 0;
							#endif
						}
						#if defined OnCheatWarning
							else OnCheatWarning(playerid, "", 0, 10, 4, floatround(ACInfo[playerid][acCheatCount][18] / AC_SPEEDHACK_VEH_RESET_DELAY));
						#endif
						#undef AC_SPEEDHACK_VEH_RESET_DELAY
					}
				}
				ACVehInfo[ac_t][acLastSpeed] = ac_s;
			}
			else if(ac_s == PLAYER_STATE_ONFOOT)
			{
				if(ACInfo[playerid][acACAllow][2] && ACInfo[playerid][acSet][8] == -1 &&
				!IsVehicleStreamedIn(GetPlayerSurfingVehicleID(playerid), playerid) &&
				GetPlayerSurfingObjectID(playerid) == INVALID_OBJECT_ID)
				{
					new Float:ac_time, Float:ac_maxdist = 80.0,
					Float:ac_dist = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acLastPosX], ACInfo[playerid][acLastPosY], ACInfo[playerid][acPosZ]),
					Float:ac_dist_set = GetPlayerDistanceFromPoint(playerid, ACInfo[playerid][acSetPosX], ACInfo[playerid][acSetPosY], ACInfo[playerid][acPosZ]);
					if((ac_time = (ac_gtc - ACInfo[playerid][acTimerTick]) / 1000.0) > 1.0) ac_maxdist *= ac_time;
					if(ac_dist >= ac_maxdist && (ACInfo[playerid][acSet][7] == -1 || ac_dist_set >= ac_maxdist))
					{
						#if defined DEBUG
							printf("[ANTICHEAT] Dist: %f, dist set: %f, acSet[7]: %d, speed: %d, old pos x, y: %f, %f",
							ac_dist, ac_dist_set, ACInfo[playerid][acSet][7], ACInfo[playerid][acSpeed], ACInfo[playerid][acLastPosX], ACInfo[playerid][acLastPosY]);
						#endif
						ac_KickWithCode(playerid, "", 0, 2, 6);
					}
				}
				ACInfo[playerid][acLastPosX] = ACInfo[playerid][acPosX];
				ACInfo[playerid][acLastPosY] = ACInfo[playerid][acPosY];
			}
			ac_t = orig_GetPlayerMoney(playerid);
			#if AC_USE_AMMUNATIONS
				if(ACInfo[playerid][acSet][10] != -1)
				{
					if(ac_t < ACInfo[playerid][acMoney] &&
					ACInfo[playerid][acMoney] - ac_t >= ACInfo[playerid][acSet][10]) ACInfo[playerid][acSet][10] = -1;
					else if(ac_gtc - ACInfo[playerid][acGtc][17] > ac_gpp)
					{
						if(ACInfo[playerid][acACAllow][15])
						{
							if(++ACInfo[playerid][acCheatCount][20] > AC_MAX_NOP_TIMER_WARNINGS)
							{
								#if defined DEBUG
									printf("[ANTICHEAT] Money: %d, old money: %d, price: %d",
									ac_t, ACInfo[playerid][acMoney], ACInfo[playerid][acSet][10]);
								#endif
								ac_KickWithCode(playerid, "", 0, 15, 4);
								#if defined OnCheatDetected
									ACInfo[playerid][acSet][10] = -1;
								#endif
							}
							#if defined OnCheatWarning
								else OnCheatWarning(playerid, "", 0, 15, 4, ACInfo[playerid][acCheatCount][20]);
							#endif
						}
						else if(++ACInfo[playerid][acCheatCount][20] > AC_MAX_NOP_TIMER_WARNINGS) ACInfo[playerid][acSet][10] = -1;
					}
				}
			#endif
			#if AC_USE_TUNING_GARAGES
				if(ACInfo[playerid][acSet][11] != -1)
				{
					if(ac_t < ACInfo[playerid][acMoney] &&
					ACInfo[playerid][acMoney] - ac_t >= ACInfo[playerid][acSet][11]) ACInfo[playerid][acSet][11] = -1;
					else if(ac_gtc - ACInfo[playerid][acGtc][18] > ac_gpp)
					{
						if(ACInfo[playerid][acACAllow][23])
						{
							if(++ACInfo[playerid][acCheatCount][21] > AC_MAX_NOP_TIMER_WARNINGS)
							{
								#if defined DEBUG
									printf("[ANTICHEAT] Money: %d, old money: %d, components price: %d",
									ac_t, ACInfo[playerid][acMoney], ACInfo[playerid][acSet][11]);
								#endif
								ac_KickWithCode(playerid, "", 0, 23, 6);
								#if defined OnCheatDetected
									ACInfo[playerid][acSet][11] = -1;
								#endif
							}
							#if defined OnCheatWarning
								else OnCheatWarning(playerid, "", 0, 23, 6, ACInfo[playerid][acCheatCount][21]);
							#endif
						}
						else if(++ACInfo[playerid][acCheatCount][21] > AC_MAX_NOP_TIMER_WARNINGS) ACInfo[playerid][acSet][11] = -1;
					}
				}
			#endif
			#undef AC_USE_TUNING_GARAGES
			#undef AC_MAX_NOP_TIMER_WARNINGS
			if(ACInfo[playerid][acNOPCount][11] > 0) ACInfo[playerid][acNOPCount][11]--;
			else
			{
				if(ACInfo[playerid][acACAllow][14] && ac_t > ACInfo[playerid][acMoney] &&
				(!ACInfo[playerid][acStuntBonus] || ACInfo[playerid][acVeh] == 0 && ac_gtc - ACInfo[playerid][acGtc][15] > ac_gpp))
				{
					#if AC_USE_CASINOS
						if(!ac_InCasino(playerid, ACInfo[playerid][acInt]))
						{
					#endif
						#if defined DEBUG
							printf("[ANTICHEAT] AC money: %d, money: %d, stunt bonus: %d, veh: %d, playerid: %d",
							ACInfo[playerid][acMoney], ac_t, ACInfo[playerid][acStuntBonus], ACInfo[playerid][acVeh], playerid);
						#endif
						#if defined OnCheatDetected
							ac_KickWithCode(playerid, "", 0, 14);
						#endif
						ac_t = ACInfo[playerid][acMoney];
						ResetPlayerMoney(playerid);
						GivePlayerMoney(playerid, ac_t);
					#if AC_USE_CASINOS
						}
					#endif
				}
				ACInfo[playerid][acMoney] = ac_t;
			}
		}
		else
		{
			if(ACInfo[playerid][acSet][9] != -1) ACInfo[playerid][acGtc][7] += (ac_gtc - ACInfo[playerid][acTimerTick]);
			if(ac_gtc - ACInfo[playerid][acGtc][9] <= ac_gpp) ACInfo[playerid][acGtc][9] += (ac_gtc - ACInfo[playerid][acTimerTick]);
			if(ac_gtc - ACInfo[playerid][acGtc][8] <= ac_gpp) ACInfo[playerid][acGtc][8] += (ac_gtc - ACInfo[playerid][acTimerTick]);
			if(ac_gtc - ACInfo[playerid][acGtc][6] <= ac_gpp) ACInfo[playerid][acGtc][6] += (ac_gtc - ACInfo[playerid][acTimerTick]);
		}
		if(ACInfo[playerid][acCheatCount][14] > 0) ACInfo[playerid][acCheatCount][14]--;
		if(ACInfo[playerid][acCheatCount][18] > 0) ACInfo[playerid][acCheatCount][18]--;
		ACInfo[playerid][acCheatCount][1] = ACInfo[playerid][acCheatCount][2] =
		ACInfo[playerid][acCheatCount][3] = ACInfo[playerid][acCheatCount][4] =
		ACInfo[playerid][acCheatCount][19] = 0;
	}
	if(ACInfo[playerid][acKicked] < 1)
	{
		ACInfo[playerid][acTimerTick] = ac_gtc;
		ACInfo[playerid][acTimerID] = SetTimerEx("ac_Timer", 1000, false, "i", playerid);
	}
	return 1;
}

#if !defined OnCheatDetected
	//Don't make changes in this public
	//To customize punishments, declare 'OnCheatDetected' in your script
	ac_fpublic ac_OnCheatDetected(playerid, ip_address[], type, code)
	{
		if(type)
		{
			#if defined BlockIpAddress
				BlockIpAddress(ip_address, 0);
			#else
				static ac_strtmp[32];
				format(ac_strtmp, sizeof ac_strtmp, "banip %s", ip_address);
				SendRconCommand(ac_strtmp);
			#endif
		}
		else
		{
			switch(code)
			{
				case 40: SendClientMessage(playerid, AC_DEFAULT_COLOR, MAX_CONNECTS_MSG);
				case 41: SendClientMessage(playerid, AC_DEFAULT_COLOR, UNKNOWN_CLIENT_MSG);
				default:
				{
					static ac_strtmp[sizeof KICK_MSG];
					format(ac_strtmp, sizeof ac_strtmp, KICK_MSG, code);
					SendClientMessage(playerid, AC_DEFAULT_COLOR, ac_strtmp);
					#undef AC_DEFAULT_COLOR
				}
			}
			AntiCheatKickWithDesync(playerid, code);
		}
		return 1;
	}
#endif

ac_fpublic ac_KickTimer(playerid) return Kick(playerid);

#undef ac_fpublic

stock AntiCheatGetHealth(playerid, &Float:health)
{
	if(!IsPlayerConnected(playerid)) return 0;
	health = ACInfo[playerid][acHealth];
	return 1;
}

stock AntiCheatGetArmour(playerid, &Float:armour)
{
	if(!IsPlayerConnected(playerid)) return 0;
	armour = ACInfo[playerid][acArmour];
	return 1;
}

stock AntiCheatGetWeaponData(playerid, slot, &weapons, &ammo)
{
	if(!IsPlayerConnected(playerid)) return 0;
	if(!(0 <= slot <= 12)) return -1;
	weapons = ACInfo[playerid][acWeapon][slot];
	ammo = ACInfo[playerid][acAmmo][slot];
	return 1;
}

stock AntiCheatGetPos(playerid, &Float:x, &Float:y, &Float:z)
{
	if(!IsPlayerConnected(playerid)) return 0;
	x = ACInfo[playerid][acPosX];
	y = ACInfo[playerid][acPosY];
	z = ACInfo[playerid][acPosZ];
	return 1;
}

stock AntiCheatGetSpawnPos(playerid, &Float:x, &Float:y, &Float:z)
{
	if(!IsPlayerConnected(playerid)) return 0;
	x = ACInfo[playerid][acSpawnPosX];
	y = ACInfo[playerid][acSpawnPosY];
	z = ACInfo[playerid][acSpawnPosZ];
	return 1;
}

stock AntiCheatGetSpawnWeapon(playerid, &weapon1, &weapon1_ammo, &weapon2, &weapon2_ammo, &weapon3, &weapon3_ammo)
{
	if(!IsPlayerConnected(playerid)) return 0;
	weapon1 = ACInfo[playerid][acSpawnWeapon1];
	weapon1_ammo = ACInfo[playerid][acSpawnAmmo1];
	weapon2 = ACInfo[playerid][acSpawnWeapon2];
	weapon2_ammo = ACInfo[playerid][acSpawnAmmo2];
	weapon3 = ACInfo[playerid][acSpawnWeapon3];
	weapon3_ammo = ACInfo[playerid][acSpawnAmmo3];
	return 1;
}

stock AntiCheatGetVehicleHealth(vehicleid, &Float:health)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	health = ACVehInfo[vehicleid][acHealth];
	return 1;
}

stock AntiCheatGetVehiclePos(vehicleid, &Float:x, &Float:y, &Float:z)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	x = ACVehInfo[vehicleid][acPosX];
	y = ACVehInfo[vehicleid][acPosY];
	z = ACVehInfo[vehicleid][acPosZ];
	return 1;
}

stock AntiCheatGetVehicleVelocity(vehicleid, &Float:x, &Float:y, &Float:z)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	x = ACVehInfo[vehicleid][acVelX];
	y = ACVehInfo[vehicleid][acVelY];
	z = ACVehInfo[vehicleid][acVelZ];
	return 1;
}

stock AntiCheatGetVehicleZAngle(vehicleid, &Float:z_angle)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	z_angle = ACVehInfo[vehicleid][acZAngle];
	return 1;
}

stock AntiCheatGetVehicleSpawnPos(vehicleid, &Float:x, &Float:y, &Float:z)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	x = ACVehInfo[vehicleid][acSpawnPosX];
	y = ACVehInfo[vehicleid][acSpawnPosY];
	z = ACVehInfo[vehicleid][acSpawnPosZ];
	return 1;
}

stock AntiCheatGetVehicleSpawnZAngle(vehicleid, &Float:z_angle)
{
	if(GetVehicleModel(vehicleid) <= 0) return 0;
	z_angle = ACVehInfo[vehicleid][acSpawnZAngle];
	return 1;
}

stock AntiCheatGetPickupPos(pickupid, &Float:x, &Float:y, &Float:z)
{
	if(!(0 <= pickupid < MAX_PICKUPS) || ACPickInfo[pickupid][acType] <= 0) return 0;
	x = ACPickInfo[pickupid][acPosX];
	y = ACPickInfo[pickupid][acPosY];
	z = ACPickInfo[pickupid][acPosZ];
	return 1;
}

static ac_IsValidVehicleModel(modelid) return (400 <= modelid <= 611);

static ac_IsAnAirplane(modelid) return (ac_vType[modelid - 400] == 1);

static ac_IsAnAircraftEx(modelid) return (ac_IsValidVehicleModel(modelid) && 1 <= ac_vType[modelid - 400] <= 2);

static ac_IsABoatEx(modelid) return (ac_IsValidVehicleModel(modelid) && ac_vType[modelid - 400] == 3);

static ac_IsABmx(modelid) return (ac_vType[modelid - 400] == 4);

static ac_IsABmxEx(modelid) return (ac_IsValidVehicleModel(modelid) && ac_vType[modelid - 400] == 4);

static ac_IsABikeEx(modelid) return (ac_IsValidVehicleModel(modelid) && 4 <= ac_vType[modelid - 400] <= 5);

static ac_IsABusEx(modelid) return (ac_IsValidVehicleModel(modelid) && ac_vType[modelid - 400] == 6);

static ac_IsATrainLoco(modelid) return (ac_vType[modelid - 400] == 8);

static ac_IsATrainCarriageEx(modelid) return (ac_IsValidVehicleModel(modelid) && ac_vType[modelid - 400] == 9);

static ac_IsATrainPartEx(modelid) return (ac_IsValidVehicleModel(modelid) && 7 <= ac_vType[modelid - 400] <= 9);

static ac_IsValidDamageReason(weaponid) return (0 <= weaponid <= 18 || 22 <= weaponid <= 46 || 49 <= weaponid <= 54);

static ac_IsValidWeapon(weaponid) return (0 <= weaponid <= 18 || 22 <= weaponid <= 46);

static ac_IsBulletWeapon(weaponid) return (weaponid == 38 || 22 <= weaponid <= 34);

static ac_IsValidFloat(Float:value) return (value == value && value != Float:0x7F800000 && value != Float:0xFF800000);

#if defined VectorSize
	static ac_GetSpeed(Float:ac_x, Float:ac_y, Float:ac_z = 0.0) return floatround(VectorSize(ac_x, ac_y, ac_z) * 179.28625);
#else
	static ac_GetSpeed(Float:ac_x, Float:ac_y, Float:ac_z = 0.0) return floatround(floatsqroot(floatpower(ac_x, 2.0) + floatpower(ac_y, 2.0) + floatpower(ac_z, 2.0)) * 179.28625);
#endif

static ac_IsVehicleSeatOccupied(vehicleid, seat)
{
	#if defined foreach
		foreach(new ac_i : Player)
		{
			if(ACInfo[ac_i][acVeh] == vehicleid && ACInfo[ac_i][acSeat] == seat) return 1;
		}
	#else
		#if defined GetPlayerPoolSize
			for(new ac_i = GetPlayerPoolSize(); ac_i >= 0; --ac_i)
		#else
			for(new ac_i = MAX_PLAYERS - 1; ac_i >= 0; --ac_i)
		#endif
		{
			if(IsPlayerInVehicle(ac_i, vehicleid) && ACInfo[ac_i][acSeat] == seat) return 1;
		}
	#endif
	return 0;
}

#if AC_USE_RESTAURANTS
	static ac_InRestaurant(playerid, interiorid)
	{
		switch(interiorid)
		{
			case 5:
			{
				if(IsPlayerInRangeOfPoint(playerid, 3.0, ac_Restaurants[0][0], ac_Restaurants[0][1], ac_Restaurants[0][2])) return 1;
			}
			case 9:
			{
				if(IsPlayerInRangeOfPoint(playerid, 3.0, ac_Restaurants[1][0], ac_Restaurants[1][1], ac_Restaurants[1][2])) return 1;
			}
			case 10:
			{
				if(IsPlayerInRangeOfPoint(playerid, 3.0, ac_Restaurants[2][0], ac_Restaurants[2][1], ac_Restaurants[2][2])) return 1;
			}
		}
		return 0;
	}
#endif
#undef AC_USE_RESTAURANTS

#if AC_USE_AMMUNATIONS
	static ac_InAmmuNation(playerid, interiorid)
	{
		switch(interiorid)
		{
			case 1:
			{
				if(IsPlayerInRangeOfPoint(playerid, 3.0, ac_AmmuNations[0][0], ac_AmmuNations[0][1], ac_AmmuNations[0][2])) return 1;
			}
			case 4:
			{
				if(IsPlayerInRangeOfPoint(playerid, 3.0, ac_AmmuNations[1][0], ac_AmmuNations[1][1], ac_AmmuNations[1][2])) return 1;
			}
			case 6:
			{
				if(IsPlayerInRangeOfPoint(playerid, 3.0, ac_AmmuNations[2][0], ac_AmmuNations[2][1], ac_AmmuNations[2][2]) ||
				IsPlayerInRangeOfPoint(playerid, 3.0, ac_AmmuNations[3][0], ac_AmmuNations[3][1], ac_AmmuNations[3][2])) return 1;
			}
			case 7:
			{
				if(IsPlayerInRangeOfPoint(playerid, 3.0, ac_AmmuNations[4][0], ac_AmmuNations[4][1], ac_AmmuNations[4][2])) return 1;
			}
		}
		return 0;
	}
#endif
#undef AC_USE_AMMUNATIONS

#if AC_USE_PAYNSPRAY
	static ac_InPayNSpray(playerid, interiorid)
	{
		if(interiorid == 0)
		{
			for(new ac_i = sizeof(ac_PayNSpray) - 1; ac_i >= 0; --ac_i)
			{
				if(IsPlayerInRangeOfPoint(playerid, 7.5, ac_PayNSpray[ac_i][0], ac_PayNSpray[ac_i][1], ac_PayNSpray[ac_i][2])) return 1;
			}
		}
		return 0;
	}
#endif
#undef AC_USE_PAYNSPRAY

#if AC_USE_VENDING_MACHINES
	static ac_NearVendingMachine(playerid, interiorid)
	{
		switch(interiorid)
		{
			case 0:
			{
				for(new ac_i = 44; ac_i >= 0; --ac_i)
				{
					if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[ac_i][0], ac_vMachines[ac_i][1], ac_vMachines[ac_i][2])) return 1;
				}
			}
			case 1:
			{
				for(new ac_i = 51; ac_i >= 45; --ac_i)
				{
					if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[ac_i][0], ac_vMachines[ac_i][1], ac_vMachines[ac_i][2])) return 1;
				}
			}
			case 2:
			{
				if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[52][0], ac_vMachines[52][1], ac_vMachines[52][2])) return 1;
			}
			case 3:
			{
				for(new ac_i = 58; ac_i >= 53; --ac_i)
				{
					if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[ac_i][0], ac_vMachines[ac_i][1], ac_vMachines[ac_i][2])) return 1;
				}
			}
			case 6:
			{
				if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[59][0], ac_vMachines[59][1], ac_vMachines[59][2]) ||
				IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[60][0], ac_vMachines[60][1], ac_vMachines[60][2])) return 1;
			}
			case 7:
			{
				if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[61][0], ac_vMachines[61][1], ac_vMachines[61][2])) return 1;
			}
			case 15:
			{
				if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[62][0], ac_vMachines[62][1], ac_vMachines[62][2])) return 1;
			}
			case 16:
			{
				if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[63][0], ac_vMachines[63][1], ac_vMachines[63][2]) ||
				IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[64][0], ac_vMachines[64][1], ac_vMachines[64][2]) ||
				IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[65][0], ac_vMachines[65][1], ac_vMachines[65][2])) return 1;
			}
			case 17:
			{
				for(new ac_i = 72; ac_i >= 66; --ac_i)
				{
					if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[ac_i][0], ac_vMachines[ac_i][1], ac_vMachines[ac_i][2])) return 1;
				}
			}
			case 18:
			{
				if(IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[73][0], ac_vMachines[73][1], ac_vMachines[73][2]) ||
				IsPlayerInRangeOfPoint(playerid, 1.5, ac_vMachines[74][0], ac_vMachines[74][1], ac_vMachines[74][2])) return 1;
			}
		}
		return 0;
	}
#endif
#undef AC_USE_VENDING_MACHINES

#if AC_USE_CASINOS
	static ac_InCasino(playerid, interiorid)
	{
		switch(interiorid)
		{
			case 1:
			{
				for(new ac_i = 41; ac_i >= 0; --ac_i)
				{
					if(IsPlayerInRangeOfPoint(playerid, ac_Casinos[ac_i][3], ac_Casinos[ac_i][0], ac_Casinos[ac_i][1], ac_Casinos[ac_i][2])) return 1;
				}
			}
			case 10:
			{
				for(new ac_i = 61; ac_i >= 42; --ac_i)
				{
					if(IsPlayerInRangeOfPoint(playerid, ac_Casinos[ac_i][3], ac_Casinos[ac_i][0], ac_Casinos[ac_i][1], ac_Casinos[ac_i][2])) return 1;
				}
			}
			case 12:
			{
				for(new ac_i = 70; ac_i >= 62; --ac_i)
				{
					if(IsPlayerInRangeOfPoint(playerid, ac_Casinos[ac_i][3], ac_Casinos[ac_i][0], ac_Casinos[ac_i][1], ac_Casinos[ac_i][2])) return 1;
				}
			}
		}
		return 0;
	}
#endif
#undef AC_USE_CASINOS

static ac_IsCompatible(modelid, componentid)
{
	if(ac_IsValidVehicleModel(modelid))
	{
		switch(componentid)
		{
			case 1000..1191:
			{
				componentid -= 1000;
				if(ac_vMods[(modelid - 400) * 6 + (componentid >>> 5)] & 1 << (componentid & 0b00011111)) return 1;
			}
			case 1192, 1193:
			{
				if(modelid == 576) return 1;
			}
		}
	}
	return 0;
}

static ac_GetMaxPassengers(modelid)
{
	if(ac_IsValidVehicleModel(modelid))
	{
		modelid -= 400;
		return ((ac_MaxPassengers[modelid >>> 3] >>> ((modelid & 7) << 2)) & 0xF);
	}
	return 0xF;
}

static ac_IpToInt(const ip[])
{
	#if defined sscanf
		new ac_b0, ac_b1, ac_b2, ac_b3;
		sscanf(ip, "p<.>iiii", ac_b3, ac_b2, ac_b1, ac_b0);
		return (ac_b0 | ac_b1 << 8 | ac_b2 << 16 | ac_b3 << 24);
	#else
		new ac_bytes[1], ac_pos;
		ac_bytes{0} = strval(ip[ac_pos]);
		while(ac_pos < 15 && ip[ac_pos++] != '.'){}
		ac_bytes{1} = strval(ip[ac_pos]);
		while(ac_pos < 15 && ip[ac_pos++] != '.'){}
		ac_bytes{2} = strval(ip[ac_pos]);
		while(ac_pos < 15 && ip[ac_pos++] != '.'){}
		ac_bytes{3} = strval(ip[ac_pos]);
		return ac_bytes[0];
	#endif
}

static ac_FloodDetect(playerid, publicid)
{
	if(ACInfo[playerid][acKicked] < 1)
	{
		if(++ACInfo[playerid][acFloodCount][publicid] > ac_Mtfc[publicid][1])
		{
			#if defined DEBUG
				printf(DEBUG_CODE_1, playerid, ac_Mtfc[publicid][1], publicid);
				#if !defined mysql_included
					#undef DEBUG
				#endif
			#endif
			#if defined OnCheatDetected
				ac_KickWithCode(playerid, "", 0, 49, publicid);
				ACInfo[playerid][acFloodCount][publicid] = ACInfo[playerid][acFloodCount][27] = 0;
			#else
				return ac_KickWithCode(playerid, "", 0, 49, publicid);
			#endif
		}
		#if defined OnFloodWarning
			else OnFloodWarning(playerid, publicid, ACInfo[playerid][acFloodCount][publicid]);
		#endif
	}
	return 0;
}

static ac_KickWithCode(playerid, ip_address[], type, code, code2 = 0)
{
	if(type == 0 && (!IsPlayerConnected(playerid) || ACInfo[playerid][acKicked] > 0)) return 0;
	#if AC_USE_STATISTICS
		ac_sInfo[5]++;
		switch(code)
		{
			case 0..35, 37, 39, 51: ac_sInfo[0]++;
			case 36, 38, 40, 41, 50: ac_sInfo[4]++;
			case 42: ac_sInfo[1]++;
			case 47..49: ac_sInfo[3]++;
			case 43..46: ac_sInfo[2]++;
		}
	#endif
	#undef AC_USE_STATISTICS
	#if defined NO_SUSPICION_LOGS
		#pragma unused code2
	#else
		new ac_strtmp[6];
		if(code2) format(ac_strtmp, sizeof ac_strtmp, " (%d)", code2);
		if(type) printf(SUSPICION_2, ip_address, code, ac_strtmp);
		else printf(SUSPICION_1, playerid, code, ac_strtmp);
	#endif
	#if defined OnCheatDetected
		OnCheatDetected(playerid, ip_address, type, code);
	#else
		ac_OnCheatDetected(playerid, ip_address, type, code);
	#endif
	return 0;
}

#if AC_USE_CONFIG_FILES
	static ac_LoadCfg()
	{
		static ac_strtmp[10];
		new ac_i, ac_string[415], File:ac_cfgFile;
		if(fexist(AC_CONFIG_FILE))
		{
			if((ac_cfgFile = fopen(AC_CONFIG_FILE, io_read)))
			{
				#if defined sscanf
					new ac_j;
				#endif
				while(fread(ac_cfgFile, ac_string) > 0)
				{
					#if defined sscanf
						sscanf(ac_string, "i'//'i", ac_j, ac_i);
						ac_ACAllow[ac_i] = (ac_j != 0);
					#else
						if((ac_i = strfind(ac_string, "//")) != -1)
						{
							strmid(ac_strtmp, ac_string, ac_i + 2, strlen(ac_string));
							if(0 <= (ac_i = strval(ac_strtmp)) < sizeof ac_ACAllow) ac_ACAllow[ac_i] = (strval(ac_string) != 0);
						}
					#endif
				}
				fclose(ac_cfgFile);
			}
			else return 0;
		}
		else if((ac_cfgFile = fopen(AC_CONFIG_FILE, io_write)))
		{
			#undef AC_CONFIG_FILE
			for(; ac_i < sizeof ac_ACAllow; ++ac_i)
			{
				format(ac_strtmp, sizeof ac_strtmp, "%d //%d\r\n", ac_ACAllow[ac_i], ac_i);
				strcat(ac_string, ac_strtmp);
			}
			fwrite(ac_cfgFile, ac_string);
			fclose(ac_cfgFile);
		}
		else return 0;
		return 1;
	}

	static ac_LoadNOPCfg()
	{
		static ac_strtmp[10];
		new ac_i, ac_string[87], File:ac_cfgFile;
		if(fexist(AC_NOP_CONFIG_FILE))
		{
			if((ac_cfgFile = fopen(AC_NOP_CONFIG_FILE, io_read)))
			{
				#if defined sscanf
					new ac_j;
				#endif
				while(fread(ac_cfgFile, ac_string) > 0)
				{
					#if defined sscanf
						sscanf(ac_string, "i'//'i", ac_j, ac_i);
						ac_NOPAllow[ac_i] = (ac_j != 0);
					#else
						if((ac_i = strfind(ac_string, "//")) != -1)
						{
							strmid(ac_strtmp, ac_string, ac_i + 2, strlen(ac_string));
							if(0 <= (ac_i = strval(ac_strtmp)) < sizeof ac_NOPAllow) ac_NOPAllow[ac_i] = (strval(ac_string) != 0);
						}
					#endif
				}
				fclose(ac_cfgFile);
			}
			else return 0;
		}
		else if((ac_cfgFile = fopen(AC_NOP_CONFIG_FILE, io_write)))
		{
			#undef AC_NOP_CONFIG_FILE
			for(; ac_i < sizeof ac_NOPAllow; ++ac_i)
			{
				format(ac_strtmp, sizeof ac_strtmp, "%d //%d\r\n", ac_NOPAllow[ac_i], ac_i);
				strcat(ac_string, ac_strtmp);
			}
			fwrite(ac_cfgFile, ac_string);
			fclose(ac_cfgFile);
		}
		else return 0;
		return 1;
	}
#endif
#undef AC_USE_CONFIG_FILES

#endif
