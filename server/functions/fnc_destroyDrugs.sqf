titleText ["Destroying Drugs...", "PLAIN DOWN"];

sleep INSRXN_destroyDrugsTime;

deleteVehicle DRUGS;

titleText ["Drugs Destroyed.\nThe Taliban are funded by the sale of these drugs.\nHowever, civilian farmers also rely on these drugs to make a living.", "PLAIN DOWN"];

INSRXN_civilianTrust = INSRXN_civilianTrust + (random INSRXN_destroyDrugsValue) - (random INSRXN_destroyDrugsValue);
publicVariable "INSRXN_civilianTrust";

INSRXN_drugsDestroyed = INSRXN_drugsDestroyed + 1;
publicVariable "INSRXN_drugsDestroyed";
