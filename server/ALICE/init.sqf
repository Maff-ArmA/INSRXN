/*

this setVariable ["ALICE_civilianinit", [{_this execVM "civInit.sqf"}]];
this setvariable ["ALICE_forcePopulation",true];
this setvariable ["ALICE_townsize",800];
this setvariable ["spawnDistance",800];
this setvariable ["trafficDistance",1];
this setVariable ["townsFaction",["BIS_TK_CIV"]];
this setVariable ["civilianCount","round (4 * (sqrt %1))"];
this setvariable ["ALICE_populationCoef",1];
this setVariable ["debug",true];

*/

if (isServer) then
{
	_this setSkill 0;
	_this setUnitAbility 0;
	{_this disableAI _x} count ["FSM","TARGET","AUTOTARGET"];
	
	removeAllItems _this;
	removeAllWeapons _this;
	
	_this forceSpeed (random 1.4);
	
	INSRXN_intelAction = [nil, _this, "per", rADDACTION, "Question Civilian","questionCiv.sqf",[],6,false,true,"","(_target distance _this) < 3"] call RE;

	
	/*
		DELETE VEHICLES!
	*/
	if ((vehicle _this) != _this) then
	{
		vehicle _this setPos [0,0,0];		
			systemChat "A vehicle was diverted to [0,0,0]";
	};
	
	/*
		TEMPORARY FIX FOR WRONG CIVILIAN TYPES BEING CREATED
	*/
	if ((faction _this) != "BIS_TK_CIV") then
	{
		_this setPos [0,0,0];			//	DEPORT TOURIST
		deleteVehicle _this;			//	DELETE TOURIST
			systemChat "A tourist was deported to [0,0,0]";
	};	
};
