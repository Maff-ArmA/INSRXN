_factory = _this select 0;

for "_i" from 1 to 4 do
{
		sleep 3 + random 2;
"SmallSecondary" createVehicle getPosATL _factory;  
};

for "_i" from 1 to 2 do
{
	sleep 2 + random 3;
"HelicopterExploSmall" createVehicle getPosATL _factory;
};
sleep 2;
"HelicopterExploBig" createVehicle getPosATL _factory;

deleteVehicle _factory;

titleText ["IED Factory Destroyed.\nOutstanding effort!", "PLAIN DOWN"];

_destMrk = createMarker [(str (getPos _factory)), getPos _factory];
_destMrk setMarkerType "hd_warning";
_destMrk setMarkerColor "ColorOrange";
_destMrk setMarkerText "IED Factory destroyed";

INSRXN_civilianTrust = INSRXN_civilianTrust + INSRXN_destroyFactoryValue;
publicVariable "INSRXN_civilianTrust";

INSRXN_factoriesDestroyed = INSRXN_factoriesDestroyed + 1;
publicVariable "INSRXN_factoriesDestroyed";
