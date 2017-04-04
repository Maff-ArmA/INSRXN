for "_i" from 1 to INSRXN_factoryCount do
{
	_iedFactory = INSRXN_factoryType createVehicle INSRXN_tempPos;
		_pos = INSRXN_buildingPositions select floor random count INSRXN_buildingPositions;
			_iedFactory setPosATL _pos;
				_iedFactory addEventHandler ["HandleDamage", { if (_this select 4 == "PipeBomb") then {1} else {0}; }];
					_iedFactory addEventHandler ["killed", { [_this select 0] execVM "fnc_destroyFactory.sqf"} ];
};
