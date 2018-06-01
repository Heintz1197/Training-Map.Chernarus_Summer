execVM "R3F_LOG\init.sqf"; 

heinz_fnc_range1 = {
	
	params["_object",	"_caller", "_id","_args", ["_targetsHit", 0]]; // Grab params from default addAction input and declare _targetsHit to 0

	
	_args params [    // Optional arguments for setting # targets, skill level, rangemaster speaker and targets array.
		["_maxtarg", 40],
		["_skill", 3],
		["_rangeMaster", rangeMaster1],
		["_targets", [pt1,pt1_1, pt1_2, pt1_3, pt1_4, pt1_5, pt1_6, pt1_7, pt1_8, pt1_9]]
	];

	_targetsHit = 0;
	_rangeMaster setVariable["heinz_range1_inUse", true, true]; //Sets the range to in use
	

	{_x  animate["terc",1]} forEach _targets; //puts the targets down before the start

	
	nopop=true; // sets them to stay down until triggered to popup

	
	"Setting up the Range" remoteExec ["hint", _caller]; // Range setup hints to player who called the action.
	sleep 2;
	"Get Ready..." remoteExec ["hint", _caller];
	sleep 2;
	"" remoteExec ["hint", _caller];


	
	for [{_i=1},{_i<=40},{_i=_i+1}] do { //loop random targets until max targets
		
		
		_currentTarget = selectRandom _targets; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up

		
		sleep _skill; // Sleep based on _skill timer
	
		
		if (_currentTarget animationPhase "terc" > 0.1) then //check to see if the target was hit
		{
			
			_targetsHit = _targetsHit + 1;
		};

		
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 3; // Sleep for the next target
	};

	
	"Session Complete" remoteExec ["hint", _caller]; // We're out of targets, so let the shooter know.

	
	{_x  animate["terc",0]} forEach _targets; // Put all the targets up again.

	
	sleep 2; // Rangemaster is tallying your score...

	// replace 0 with _caller if only the shooter should see.
	[_rangeMaster, format["Range 1 Targets :%1 Hit :%2",_maxtarg,_targetsHit]] remoteExec ["sideChat", 0];  
	
	// Open for business again!
	_rangeMaster setVariable["heinz_range1_inUse", false, true];
	
	// Clear the "Course Complete" hint.
	"" remoteExec ["hint", _caller];
};





heinz_fnc_range2 = {
	
	params["_object",	"_caller", "_id","_args", ["_targetsHit", 0]]; // Grab params from default addAction input and declare _targetsHit to 0

	
	_args params [    // Optional arguments for setting # targets, skill level, rangemaster speaker and targets array.
		["_maxtarg", 40],
		["_skill", 3],
		["_rangeMaster", rangeMaster2],
		["_targets", [pt2,pt2_1, pt2_2, pt2_3, pt2_4, pt2_5, pt2_6, pt2_7, pt2_8, pt2_9]]
	];

	_targetsHit2 = 0;
	_rangeMaster setVariable["heinz_range2_inUse", true, true]; //Sets the range to in use
	

	{_x  animate["terc",1]} forEach _targets; //puts the targets down before the start

	
	nopop=true; // sets them to stay down until triggered to popup

	
	"Setting up the Range" remoteExec ["hint", _caller]; // Range setup hints to player who called the action.
	sleep 2;
	"Get Ready..." remoteExec ["hint", _caller];
	sleep 2;
	"" remoteExec ["hint", _caller];


	
	for [{_i=1},{_i<=40},{_i=_i+1}] do { //loop random targets until max targets
		
		
		_currentTarget = selectRandom _targets; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up

		
		sleep _skill; // Sleep based on _skill timer
	
		
		if (_currentTarget animationPhase "terc" > 0.1) then //check to see if the target was hit
		{
			
			_targetsHit2 = _targetsHit2 + 1;
		};

		
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 3; // Sleep for the next target
	};

	
	"Session Complete" remoteExec ["hint", _caller]; // We're out of targets, so let the shooter know.

	
	{_x  animate["terc",0]} forEach _targets; // Put all the targets up again.

	
	sleep 2; // Rangemaster is tallying your score...

	// replace 0 with _caller if only the shooter should see.
	[_rangeMaster, format["Range 2 Targets :%1 Hit :%2",_maxtarg,_targetsHit2]] remoteExec ["sideChat", 0];  
	
	// Open for business again!
	_rangeMaster setVariable["heinz_range2_inUse", false, true];
	
	// Clear the "Course Complete" hint.
	"" remoteExec ["hint", _caller];
};