/*
	WORK OUT A WAY TO DETONATE IEDS
		TRIGGERS ARE A HUGE NO-NO DUE TO AMOUNT OF FRAME LOSS!! 
*/

for "_i" from 1 to INSRXN_iedCount do
{
_typ = INSRXN_iedTypes select floor random count INSRXN_iedTypes;
	_ied = _typ createVehicle INSRXN_tempPos;
		_pos = INSRXN_iedPositions select floor random count INSRXN_iedPositions;
			_ied setPosATL _pos;
				_ied setVectorUp surfaceNormal position _ied;
				
					if (isOnRoad _ied) then
					{
						_ied setPosATL (_ied modelToWorld [0,0,-0.06]);
					};
};
