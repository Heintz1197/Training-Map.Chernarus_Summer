/* 
this is run from an addAction on an object or RangeMaster4's init field:

this addAction["Start Range", {_this execVM "scripts\Range4.sqf"}, [], 0, true, false];

*/

// Function declared in your init.sqf or Functions library
	params["_object",	"_caller", "_id","_args", ["_targetsHit", 0]]; // Grab params from default addAction input and declare _targetsHit to 0

	// create tablets in a tower away from the ranges equal to the number of ranges
	_args params [    // Optional arguments for setting # targets, skill level, rangemaster speaker and targets array.
		["_maxtarg", 40],
		["_skill", 3],
		["_rangeMaster", rangeMaster4],
		["_targets", [pt4,pt4_1, pt4_2, pt4_3, pt4_4, pt4_5, pt4_6, pt4_7, pt4_8, pt4_9]]
	];

	{_x  animate["terc",1]} forEach _targets; //puts the targets down before the start

 
	nopop=true; // sets them to stay down until triggered to popup

	
	"Setting up Range 4" remoteExec ["hint", _caller]; // Range setup hints to player who called the action.
	sleep 2;
	"Get Ready Range 4..." remoteExec ["hint", _caller];
	sleep 2;
	"" remoteExec ["hint", _caller];

	
	for [{_i=1},{_i<=_maxtarg},{_i=_i+1}] do { //loop random targets until max targets
		
		
		_currentTarget = selectRandom _targets; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up

		
		sleep _skill; // Sleep based on _skill timer
	
		
		if (_currentTarget animationPhase "terc" > 0.1) then //check to see if the target was hit
		{
			
			_targetsHit = _targetsHit+1;
		};

		
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 2; // Sleep for the next target
	};

	
	"Session 4 Complete" remoteExec ["hint", _caller]; // We're out of targets, so let the shooter know.

	
	{_x  animate["terc",0]} forEach _targets; // Put all the targets up again.

	
	sleep 2; // Rangemaster is tallying your score...

	// replace 0 with _caller if only the shooter should see.
	format["Range 4 Targets :%1 Hit :%2",_maxtarg,_targetsHit] remoteExec ["hint", _caller]; 
	
	sleep 5;
	
	// Clear the "Course 4 Complete" hint.
	"" remoteExec ["hint", _caller];