/*
		ALPHA		=		BRITISH ARMY
		BRAVO		=		US ARMY
		CHARLIE		=		USMC

		ZULU		=		US ARMY AIR
		
		
	*	PLAYERS HAVE TO GET AMMO FROM CRATE
		SHOULD STOP ACCIDENTAL FRIENDLY FIRE WHILE SPAWNING IN.
*/

removeAllWeapons player;
removeBackpack player;

if (!(player hasWeapon "ItemGPS")) then {player addWeapon "ItemGPS"};

if (str player in ["ALPHA_1", "ALPHA_5"]) then
{
	player addWeapon "BAF_L85A2_RIS_ACOG";
	player addWeapon "Binocular_Vector";
};
    
if (str player in ["ALPHA_2"]) then
{
	player addWeapon "BAF_L85A2_RIS_ACOG";
};
    
if (str player in ["ALPHA_3"]) then
{
	player addWeapon "BAF_L85A2_UGL_ACOG";
};
    
if (str player in ["ALPHA_4", "ALPHA_6"]) then
{
	player addWeapon "BAF_L110A1_Aim";
};
    
if (str player in ["ALPHA_7"]) then
{
	player addWeapon "BAF_L7A2_GPMG";
};

if (str player in ["ALPHA_8"]) then
{
	player addWeapon "BAF_L85A2_RIS_Holo";
};

/*

if (str player in ["BRAVO_1"]) then
{
	player addWeapon "M4A1_Aim";
	player addWeapon "Binocular_Vector";
};

if (str player in ["BRAVO_2"]) then
{
	player addWeapon "M4A1_Aim";
};
    
if (str player in ["BRAVO_3"]) then
{
	player addWeapon "M4A1_HWS_GL";
};
    
if (str player in ["BRAVO_4"]) then
{
	player addWeapon "M249_EP1";
};
    
if (str player in ["BRAVO_5"]) then
{
	player addWeapon "M4A1";
};

if (str player in ["CHARLIE_1"]) then
{
	player addWeapon "M16A4_ACG_GL";
	
	player addWeapon "Binocular_Vector";
};

if (str player in ["CHARLIE_2"]) then
{
	player addWeapon "m16a4_acg";
};

if (str player in ["CHARLIE_3"]) then
{
	player addWeapon "M249_EP1";
};
    
if (str player in ["CHARLIE_4"]) then
{
	player addWeapon "m16a4";
};
    
if (str player in ["CHARLIE_5"]) then
{
	player addWeapon "M16A2";
};


if (str player in ["ZULU_1"]) then
{
	player addWeapon "M4A1";
	
	player addWeapon "NVGoggles";
};

if (str player in ["ZULU_2"]) then
{
	player addWeapon "M4A1";
	
	player addWeapon "NVGoggles";
};
