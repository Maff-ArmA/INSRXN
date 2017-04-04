hintSilent parseText format	["<t size='1.5' color='#ffffff' align='center'>British Army<br/><br/></t><t size='1.25' align='center'>Charlie Fireteam<br/><br/></t><t size='1' align='center'>Section Commander<br/>%1<br/><br/>Rifleman<br/>%2<br/><br/>Grenadier<br/>%3<br/><br/>Automatic Rifleman<br/>%4<br/><br/><t size='1.25' align='center'>Delta Fireteam<br/><br/></t><t size='1' align='center'>Section 2IC<br/>%5<br/><br/>Automatic Rifleman<br/>%6<br/><br/>Machinegunner<br/>%7<br/><br/>Combat Medic<br/>%8<br/><br/></t>", if (isPlayer ALPHA_1) then {name ALPHA_1} else {"<t color='#ff0000'>Offline</t>"}, if (isPlayer ALPHA_2) then {name ALPHA_2} else {"<t color='#ff0000'>Offline</t>"}, if (isPlayer ALPHA_3) then {name ALPHA_3} else {"<t color='#ff0000'>Offline</t>"}, if (isPlayer ALPHA_4) then {name ALPHA_4} else {"<t color='#ff0000'>Offline</t>"}, if (isPlayer ALPHA_5) then {name ALPHA_5} else {"<t color='#ff0000'>Offline</t>"}, if (isPlayer ALPHA_6) then {name ALPHA_6} else {"<t color='#ff0000'>Offline</t>"}, if (isPlayer ALPHA_7) then {name ALPHA_7} else {"<t color='#ff0000'>Offline</t>"}, if (isPlayer ALPHA_8) then {name ALPHA_8} else {"<t color='#ff0000'>Offline</t>"}];
/*
_ALPHA_1 = if (isPlayer ALPHA_1) then {name ALPHA_1} else { "- Offline -" };
_ALPHA_2 = if (isPlayer ALPHA_2) then {name ALPHA_2} else { "- Offline -" };
_ALPHA_3 = if (isPlayer ALPHA_3) then {name ALPHA_3} else { "- Offline -" };
_ALPHA_4 = if (isPlayer ALPHA_4) then {name ALPHA_4} else { "- Offline -" };
_ALPHA_5 = if (isPlayer ALPHA_5) then {name ALPHA_5} else { "- Offline -" };
_ALPHA_6 = if (isPlayer ALPHA_6) then {name ALPHA_6} else { "- Offline -" };
_ALPHA_7 = if (isPlayer ALPHA_7) then {name ALPHA_7} else { "- Offline -" };
_ALPHA_8 = if (isPlayer ALPHA_8) then {name ALPHA_8} else { "- Offline -" };

hintSilent (format["British Army\nPlayer List\n\n\nCharlie Fireteam\n\nSection Commander\n%1\n\nRifleman\n%2\n\nGrenadier\n%3\n\nAutomatic Rifleman\n%4\n\n\nDelta Fireteam\n\nSection 2 i/c\n%5\n\nAutomatic Rifleman\n%6\n\nMachinegunner\n%7\n\nCombat Medic\n%8\n\n", _ALPHA_1, _ALPHA_2, _ALPHA_3, _ALPHA_4, _ALPHA_5, _ALPHA_6, _ALPHA_7, _ALPHA_8]);


//OPS
//hintSilent (format["1 - 1 - C\n\nSection Commander\n%1\n\nRifleman\n%2\n\nGrenadier\n%3\n\nAutomatic Rifleman\n%4\n\n\n1 - 1 - D\n\nSection 2 i/c\n%5\n\nAutomatic Rifleman\n%6\n\nMachinegunner\n%7\n\nMarksman\n%8\n\n", name ALPHA_1, name ALPHA_2, name ALPHA_3, name ALPHA_4, name ALPHA_5, name ALPHA_6, name ALPHA_7, name ALPHA_8]);

*/

/*
	PLAYER LIST - ALPHA
	
	A little more neater than previous attempt!
	
		Only tested in the editor.
			Dead units appear as "Error: No Unit".
				
				Figure out a way to show as "Offline" instead.
*/

//hint (format["British Army\nPlayer List\n\n\nCharlie Fireteam\n\nSection Commander\n%1\n\nRifleman\n%2\n\nGrenadier\n%3\n\nAutomatic Rifleman\n%4\n\n\nDelta Fireteam\n\nSection 2 i/c\n%5\n\nAutomatic Rifleman\n%6\n\nMachinegunner\n%7\n\nCombat Medic\n%8\n\n", name ALPHA_1, name ALPHA_2, name ALPHA_3, name ALPHA_4, name ALPHA_5, name ALPHA_6, name ALPHA_7, name ALPHA_8]);

/*
	N S F W 
			D I R T Y 
						A F !


_playerlist = [
"Alpha Fireteam",
["Fireteam Leader", name ALPHA_1], 
["Rifleman", name ALPHA_2],
["Grenadier", name ALPHA_3],
["Automatic Rifleman", name ALPHA_4],
["Combat Medic", name ALPHA_5]
];

_a = (format["%1%2%3","\n", _playerlist select 0,"\n\n"]);
_b = (format["%1%2%3%4",_playerlist select 1 select 0,"\n",_playerlist select 1 select 1,"\n\n"]);
_c = (format["%1%2%3%4",_playerlist select 2 select 0,"\n",_playerlist select 2 select 1,"\n\n"]);
_d = (format["%1%2%3%4",_playerlist select 3 select 0,"\n",_playerlist select 3 select 1,"\n\n"]);
_e = (format["%1%2%3%4",_playerlist select 4 select 0,"\n",_playerlist select 4 select 1,"\n\n"]);
_f = (format["%1%2%3%4",_playerlist select 5 select 0,"\n",_playerlist select 5 select 1,"\n\n"]);

//_lists = _a + _x + _x + _b + _x + _c + _x + _d + _x + _e + _x + _f + _x + _g + _x + _h + _x + _i + _x + _j + _x + _k;

_FINAL = _a + _b + _c + _d + _e + _f;
hint _FINAL;
