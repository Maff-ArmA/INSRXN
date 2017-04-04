for "_i" from 1 to INSRXN_drugsCount do
{
_typ = INSRXN_drugsTypes select floor random count INSRXN_drugsTypes;
	_drugs = _typ createVehicle INSRXN_tempPos;
		_pos = INSRXN_buildingPositions select floor random count INSRXN_buildingPositions;
			_drugs setPosATL _pos;
};