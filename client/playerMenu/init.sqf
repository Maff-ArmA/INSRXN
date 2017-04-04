/*

	PLAYER MENU
	
		INVESTIGATE IF BRIEFING CAN BE UPDATED *FOR ALL PLAYERS* WITH FIRETEAM PLAYER LIST WHEN NEW PLAYERS JOIN AND LEAVE!
*/


private ["_trg"];


	/*
		SHOW RADIO ON MAP!
	*/
	showRadio true;


		/*
			ALPHA PLAYER LIST
		*/
		_trg = createTrigger ["EmptyDetector", INSRXN_tempPos]; 
		_trg setTriggerText "ALPHA PLAYERS"; 
		_trg setTriggerActivation ["ALPHA", "PRESENT", true]; 		
		_trg setTriggerStatements ["this", "", ""];
		
		
		/*
			BRAVO PLAYER LIST
		*/
		_trg = createTrigger ["EmptyDetector", INSRXN_tempPos]; 
		_trg setTriggerText "BRAVO PLAYERS"; 
		_trg setTriggerActivation ["BRAVO", "PRESENT", true]; 
		_trg setTriggerStatements ["this", "", ""];
		
		
		/*
			CHARLIE PLAYER LIST
		*/
		_trg = createTrigger ["EmptyDetector", INSRXN_tempPos]; 
		_trg setTriggerText "CHARLIE PLAYERS"; 
		_trg setTriggerActivation ["CHARLIE", "PRESENT", true]; 
		_trg setTriggerStatements ["this", "", ""];
		
		
		/*
			DELTA PLAYER LIST
		*/
		_trg = createTrigger ["EmptyDetector", INSRXN_tempPos]; 
		_trg setTriggerText "DELTA PLAYERS"; 
		_trg setTriggerActivation ["DELTA", "PRESENT", true]; 
		_trg setTriggerStatements ["this", "", ""];
		
		
		//////////////////////////////////////////////////////
		
		
		/*
			MISSION STATUS
				DISPLAYS STATS;
					CIVILIAN TRUST
					FACTORIES DESTROYED
					IEDS DISARMED
					AA GUNS DESTROYED
					DRUGS FOUND
						ETC ETC
		*/
		_trg = createTrigger ["EmptyDetector", INSRXN_tempPos]; 
		_trg setTriggerText "MISSION STATUS"; 
		_trg setTriggerActivation ["JULIET", "PRESENT", true]; 
		_trg setTriggerStatements ["this", "", ""];
		
		
		
		
		
		
		
		
		
		
		
