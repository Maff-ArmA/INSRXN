for "_i" from 1 to INSRXN_aaCount do
{
	_typ = INSRXN_aaTypes select floor random count INSRXN_aaTypes;
		_aa = _typ createVehicle INSRXN_tempPos;
			_pos = INSRXN_aaPositions select floor random count INSRXN_aaPositions;
				_aa setPosATL _pos;
					//[_aa] execVM "fnc_destroyAA.sqf";
					_aa addEventHandler ["HandleDamage", { if (_this select 4 == "PipeBomb") then {1} else {0}; }];
						_aa addEventHandler ["killed", { [_this select 0] execVM "fnc_destroyAA.sqf"} ];
	_grp = createGroup EAST;
		_gnr = _grp createUnit ["TK_INS_Soldier_EP1", INSRXN_tempPos, [], 0, "NONE"]; 
			_gnr assignAsGunner _aa;
				_gnr moveInGunner _aa;
};
