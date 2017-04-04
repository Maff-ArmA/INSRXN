/*
		ALPHA		=		BRITISH ARMY
		BRAVO		=		US ARMY
		CHARLIE		=		USMC

		ZULU		=		US ARMY AIR
		
		
	*	PLAYERS HAVE TO GET AMMO FROM CRATE
		SHOULD STOP ACCIDENTAL FRIENDLY FIRE WHILE SPAWNING IN.
*/

private ["_BAK","_MAG","_WEP","_BOX"];

_BAK = [];
_MAG = [];
_WEP = [];

if (str player in ["ALPHA_1", "ALPHA_5"]) then
{
	_BAK = 
	[   
		["US_Backpack_EP1", 1]
	];

	_MAG = 
	[
		["30Rnd_556x45_Stanag", 30],	
		["SmokeShell", 8],
		["BAF_L109A1_HE", 8],
		["PipeBomb", 2]
	];
	_WEP =
	[
		["BAF_L85A2_RIS_ACOG", 1],
		["BAF_L85A2_RIS_Holo", 1],
		["Binocular_Vector", 1]
	];
};

if (str player in ["ALPHA_2"]) then
{
	_BAK = 
	[   
		["US_Backpack_EP1", 1]
	];

	_MAG = 
	[
		["30Rnd_556x45_Stanag", 30],	
		["SmokeShell", 8],
		["BAF_L109A1_HE", 8],
		["PipeBomb", 2]
	];
	_WEP =
	[
		["BAF_L85A2_RIS_ACOG", 1],
		["BAF_L85A2_RIS_Holo", 1]
	];
};

if (str player in ["ALPHA_3"]) then
{
	_BAK = 
	[   
		["US_Backpack_EP1", 1]
	];

	_MAG = 
	[
		["30Rnd_556x45_Stanag", 30],	
		["SmokeShell", 8],
		["BAF_L109A1_HE", 8],
		["1Rnd_HE_M203", 16],
		["PipeBomb", 2]
	];
	_WEP =
	[
		["BAF_L85A2_UGL_ACOG", 1],
		["BAF_L85A2_UGL_Holo", 1]
	];
};

if (str player in ["ALPHA_4", "ALPHA_6"]) then
{
	_BAK = 
	[   
	];

	_MAG = 
	[
		["200Rnd_556x45_L110A1", 15],	
		["SmokeShell", 8],
		["BAF_L109A1_HE", 8],
		["PipeBomb", 2]
	];
	_WEP =
	[
		["BAF_L110A1_Aim", 1]
	];
};

if (str player in ["ALPHA_7"]) then
{
	_BAK = 
	[   
	];

	_MAG = 
	[
		["100Rnd_762x51_M240", 15],	
		["SmokeShell", 8],
		["BAF_L109A1_HE", 8],
		["PipeBomb", 2]
	];
	_WEP =
	[
		["BAF_L7A2_GPMG", 1]
	];
};

if (str player in ["ALPHA_8"]) then
{
	_BAK = 
	[   
		["US_Backpack_EP1", 1]
	];

	_MAG = 
	[
		["30Rnd_556x45_Stanag", 30],	
		["SmokeShell", 8],
		["BAF_L109A1_HE", 8],
		["PipeBomb", 2]
	];
	_WEP =
	[
		["BAF_L85A2_RIS_Holo", 1]
	];
};

_BOX = "BAF_VehicleBox" createVehicleLocal [0,0,0];
_BOX setDir 45;
_BOX setPos (getMarkerPos "ARO_alphaCrate");
_BOX addEventHandler ["HandleDamage",{}]; 
_BOX allowDamage false;

while {true} do
{
	waitUntil { alive player && { (player distance (markerPos "respawn_west")) < 100 } };
    
		clearBackpackCargoGlobal _BOX;
		clearWeaponCargo _BOX;
		clearMagazineCargo _BOX;

			{_BOX addBackpackCargo [(_x select 0),(_x select 1)]} foreach _BAK;
			{_BOX addMagazineCargo [(_x select 0),(_x select 1)]} foreach _MAG;
			{_BOX addWeaponCargo [(_x select 0),(_x select 1)]} foreach _WEP;
    
    waitUntil { !alive player || { (player distance (markerPos "respawn_west")) > 100 } };
};
