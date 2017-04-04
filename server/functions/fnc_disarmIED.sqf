/*
	DISARM IED - ADD VALUE TO CIVILIAN TRUST!
*/

titleText ["Disarming IED...\nRemain still and focused!", "PLAIN DOWN"];

sleep INSRXN_disarmIEDTime + (random INSRXN_disarmIEDTime);

deleteVehicle IED;

titleText ["IED Disarmed.\nGreat work! You have saved lives.", "PLAIN DOWN"];

INSRXN_civilianTrust = INSRXN_civilianTrust + INSRXN_disarmIEDValue;
publicVariable "INSRXN_civilianTrust";

INSRXN_IEDdisarmed = INSRXN_IEDdisarmed + 1;
publicVariable "INSRXN_IEDdisarmed";
