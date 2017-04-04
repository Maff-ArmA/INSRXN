/*
	EVENT HANDLER KILLED!
*/

_aa = _this select 0;

_explTypes = ["HelicopterExploBig","HelicopterExploSmall"];


waitUntil { (damage _aa > 0.5)};
								// Should stop AA detonating prematurely!
//waitUntil { (damage _aa > 0.5) && (_aa emptyPositions "gunner")};
//waitUntil { (damage _aa > 0.5) && (isnull (gunner _aa)}; // X


for "_i" from 1 to 4 do
{
_expl = _explTypes select floor random count _explTypes;
	sleep 1 + random 1;
createVehicle [_expl, getPosATL _aa, [], 10, "NONE"];
};			

deleteVehicle _aa;

titleText ["AA gun Destroyed.\nGreat work!", "PLAIN DOWN"];


_destMrk = createMarker [(str (getPos _aa)), getPos _aa];
_destMrk setMarkerType "hd_warning";
_destMrk setMarkerColor "ColorBlue";
_destMrk setMarkerText "AA gun destroyed";

INSRXN_civilianTrust = INSRXN_civilianTrust + INSRXN_destroyAAValue;
publicVariable "INSRXN_civilianTrust";

INSRXN_factoriesDestroyed = INSRXN_factoriesDestroyed + 1;
publicVariable "INSRXN_factoriesDestroyed";
