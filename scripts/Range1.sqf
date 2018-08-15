/*
below is prototype script for new marine range scoring
*/
params["_object",	"_caller"]; // Grab params from default addAction input
timerSet = 0;

_nextTarget = nextTarget1;
_score = 0;
_targets = [pt1, pt1_1, pt1_2];
_loop = 1;
_loop2 = 1;

{_x  animate["terc",1]} forEach _targets; //puts the targets down before the start

nopop=true;

"Setting up Range 1" remoteExec ["hint", _caller]; // Range setup hints to player who called the action.
sleep 2;
"Get Ready Range 1..." remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller];

"Target 300 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"10 rounds, Standing" remoteExec ["hint", _caller];
sleep 2;
"60 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

for [{_i=1},{_i<=10},{_i=_i+1}] do { //loop the target at 300 meters for first target group
		
		
		_currentTarget = _targets select 1; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
					_score = _score+1;
					_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				_i = 11;
				nextTarget5 = 0;
				_nextTarget = 0;
			};
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};
	
"Target 300 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"10 rounds, kneeling" remoteExec ["hint", _caller];
sleep 2;
"60 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

for [{_i=1},{_i<=10},{_i=_i+1}] do { //loop the target at 300 meters for first target group
		
		
		_currentTarget = _targets select 1; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				_i = 11;
				nextTarget5 = 0;
				_nextTarget = 0;
			};
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};

	
"Target 300 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"10 rounds, prone" remoteExec ["hint", _caller];
sleep 2;
"60 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

for [{_i=1},{_i<=10},{_i=_i+1}] do { //loop the target at 300 meters for first target group
		
		
		_currentTarget = _targets select 1; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 11;
			};
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};
	
"Target 200 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"10 rounds, Standing" remoteExec ["hint", _caller];
sleep 2;
"60 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

for [{_i=1},{_i<=10},{_i=_i+1}] do { //loop the target at 200 meters for first target group
		
		
		_currentTarget = _targets select 0; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
					_score = _score+1;
					_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 11;
			};
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};
	
"Target 200 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"10 rounds, kneeling" remoteExec ["hint", _caller];
sleep 2;
"60 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

for [{_i=1},{_i<=10},{_i=_i+1}] do { //loop the target at 200 meters for first target group
		
		
		_currentTarget = _targets select 0; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 11;
			};
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};

	
"Target 200 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"10 rounds, prone" remoteExec ["hint", _caller];
sleep 2;
"60 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

for [{_i=1},{_i<=10},{_i=_i+1}] do { //loop the target at 200 meters for first target group
		
		
		_currentTarget = _targets select 0; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 11;
			};
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};	
	
	
"Target 300 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"20 rounds, Rapid fire, kneeling" remoteExec ["hint", _caller];
sleep 2;
"40 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

execVM "scripts\Timer.sqf"; //extra script to set time for second target group

for [{_i=1},{_i<=20},{_i=_i+1}] do { //loop the target at 200 meters for second target group
		
		
		_currentTarget = _targets select 1; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 21;
			};
			if (timerSet == 1) then{
				_loop = 0;
				timerSet = 0;
				_i = 21;
			};	
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};	

while {_loop2 == 1} do{
	if (timerActive == 0) then{
		_loop2 = 0;
	};
};	
_loop2 = 1;


"Target 300 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"20 rounds, Rapid fire, prone" remoteExec ["hint", _caller];
sleep 2;
"40 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

execVM "scripts\Timer.sqf"; //extra script to set time for second target group

for [{_i=1},{_i<=20},{_i=_i+1}] do { //loop the target at 200 meters for second target group
		
		
		_currentTarget = _targets select 1; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 21;
			};
			if (timerSet == 1) then{
				_loop = 0;
				timerSet = 0;
				_i = 21;
			};	
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};	

while {_loop2 == 1} do{
	if (timerActive == 0) then{
		_loop2 = 0;
	};
};
_loop2 = 1;

"Target 200 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"20 rounds, Rapid fire, kneeling" remoteExec ["hint", _caller];
sleep 2;
"40 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

execVM "scripts\Timer.sqf"; //extra script to set time for second target group

for [{_i=1},{_i<=20},{_i=_i+1}] do { //loop the target at 200 meters for second target group
		
		
		_currentTarget = _targets select 0; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 21;
			};
			if (timerSet == 1) then{
				_loop = 0;
				timerSet = 0;
				_i = 21;
			};	
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};	

while {_loop2 == 1} do{
	if (timerActive == 0) then{
		_loop2 = 0;
	};
};	
_loop2 = 1;


"Target 200 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"20 rounds, Rapid fire, prone" remoteExec ["hint", _caller];
sleep 2;
"40 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

execVM "scripts\Timer.sqf"; //extra script to set time for second target group

for [{_i=1},{_i<=20},{_i=_i+1}] do { //loop the target at 200 meters for second target group
		
		
		_currentTarget = _targets select 0; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 21;
			};
			if (timerSet == 1) then{
				_loop = 0;
				timerSet = 0;
				_i = 21;
			};	
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};	

while {_loop2 == 1} do{
	if (timerActive == 0) then{
		_loop2 = 0;
	};
};	
_loop2 = 1;


"Target 500 meters" remoteExec ["hint", _caller]; //hints to the shooter
sleep 2;
"10 rounds, prone" remoteExec ["hint", _caller];
sleep 2;
"60 seconds, Start" remoteExec ["hint", _caller];
sleep 2;
"" remoteExec ["hint", _caller]; //removes scripts

for [{_i=1},{_i<=10},{_i=_i+1}] do { //loop the target at 200 meters for first target group
		
		
		_currentTarget = _targets select 2; // Select a random target from the _targets pool
		
		_currentTarget animate["terc", 0]; // and pop it up
		sleep 1;
		while {_loop == 1} do{
			_nextTarget = nextTarget5;
			if (_currentTarget animationPhase "terc" > 0.1) then{
				_score = _score+1;
				_loop = 0;
			};
			if (_nextTarget == 1) then{
				_loop = 0;
				nextTarget5 = 0;
				_nextTarget = 0;
				_i = 11;
			};
		};
		
		_loop = 1;
		_currentTarget animate["terc", 1]; // Ensure it's set down again.
		
		
		sleep 1; // Sleep for the next target
	};	
	
"Range 1 Complete" remoteExec ["hint", _caller];
sleep 2;
format["Score %1",_score] remoteExec ["hint", _caller];
sleep 5;
"" remoteExec ["hint", _caller];