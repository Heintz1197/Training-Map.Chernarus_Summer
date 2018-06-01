	_zero = _this select 0;
	_target1 = _this select 1;
	_target2 = _this select 2;
	_target3 = _this select 3;
	_target4 = _this select 4;
	_target5 = _this select 5;
	_target6 = _this select 6;
	_target7 = _this select 7;

	_targets = [t1,t1_2,t1_3,t1_4,t2,t2_2,t2_3,t2_4,t3,t3_2,t3_3,t3_4,t4,t4_2,t4_3,t4_4,t5,t5_2,t5_3,t5_4];
	_target200m = [t1,t1_2,t1_3,t1_4]; //sets for target group at 400 meters
	_target300m = [t2,t2_2,t2_3,t2_4]; //sets for target group at 500 meters
	_target400m = [t3,t3_2,t3_3,t3_4]; //sets for target group at 600 meters
	_target500m = [t4,t4_2,t4_3,t4_4]; //sets for target group at 700 meters
	_target600m = [t5,t5_2,t5_3,t5_4]; //sets for target group at 800 meters

	_score = 0;
	_ARscore = "";

	{_x  animate["terc",1]} forEach _targets; //sets the targets to be down at start
	nopop = true; //sets the targets to only pop up with a trigger

	while {_zero > 0} do
	{
			{_x animate["terc",0]} forEach _target300m; //sets up all targets of group
		
			if (t2 animationPhase "terc" > 0.1 || t2_2 animationPhase "terc" > 0.1 || t2_3 animationPhase "terc" > 0.1 || t2_4 animationPhase "terc" > 0.1) then
			{ //^tests if any of the targets were hit
			{_x animate["terc",1]} forEach _target300m;
			_zero = 0;
			};
	};

while {_target1 > 0} do
	{
		{_x animate["terc",0]} forEach _target200m;
		
		if (t1 animationPhase "terc" > 0.1 && {t1_2 animationPhase "terc" > 0.1} && {t1_3 animationPhase "terc" > 0.1} && {t1_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		sleep 10;
		{_x animate["terc",1]} forEach _target200m; //resets the target
		_target1 = 0;
	};
	
while {_target2 > 0} do
	{
		{_x animate["terc",0]} forEach _target300m;
		
		if ((t2 animationPhase "terc" > 0.1) && (t2_2 animationPhase "terc" > 0.1) && (t2_3 animationPhase "terc" > 0.1) && (t2_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		
		sleep 15;
		{_x animate["terc",1]} forEach _target300m; //resets the target
		_target2 = 0;
	};
	
while {_target3 > 0} do
	{
		{_x animate["terc",0]} forEach _target400m;
		
		if ((t3 animationPhase "terc" > 0.1) && (t3_2 animationPhase "terc" > 0.1) && (t3_3 animationPhase "terc" > 0.1) && (t3_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		
		sleep 20;
		{_x animate["terc",1]} forEach _target400m; //resets the target
		_target3 = 0;
	};

while {_target4 > 0} do
	{
		{_x animate["terc",0]} forEach _target600m;
		
		if ((t5 animationPhase "terc" > 0.1) && (t5_2 animationPhase "terc" > 0.1) && (t5_3 animationPhase "terc" > 0.1) && (t5_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		
		sleep 30;
		{_x animate["terc",1]} forEach _target600m; //resets the target
		_target4 = 0;
	};

while {_target5 > 0} do
	{
		{_x animate["terc",0]} forEach _target200m;
		{_x animate["terc",0]} forEach _target400m;
		
		if ((t1 animationPhase "terc" > 0.1) && (t1_2 animationPhase "terc" > 0.1) && (t1_3 animationPhase "terc" > 0.1) && (t1_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		if ((t3 animationPhase "terc" > 0.1) && (t3_2 animationPhase "terc" > 0.1) && (t3_3 animationPhase "terc" > 0.1) && (t3_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		
		sleep 30;
		{_x animate["terc",1]} forEach _target200m; //resets the target
		{_x animate["terc",1]} forEach _target400m; //resets the target
		
		_target5 = 0;
	};

while {_target6 > 0} do
	{
		{_x animate["terc",0]} forEach _target500m;
		{_x animate["terc",0]} forEach _target600m;
		
		if ((t4 animationPhase "terc" > 0.1) && (t4_2 animationPhase "terc" > 0.1) && (t4_3 animationPhase "terc" > 0.1) && (t4_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		if ((t5 animationPhase "terc" > 0.1) && (t5_2 animationPhase "terc" > 0.1) && (t5_3 animationPhase "terc" > 0.1) && (t5_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		
		sleep 45;
		{_x animate["terc",1]} forEach _target500m; //resets the target
		{_x animate["terc",1]} forEach _target600m; //resets the target
		
		_target6 = 0;
	};
	
while {_target7 > 0} do
	{
		{_x animate["terc",0]} forEach _target200m;
		{_x animate["terc",0]} forEach _target300m;
		{_x animate["terc",0]} forEach _target400m;
		
		if ((t1 animationPhase "terc" > 0.1) && (t1_2 animationPhase "terc" > 0.1) && (t1_3 animationPhase "terc" > 0.1) && (t1_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		if ((t2 animationPhase "terc" > 0.1) && (t2_2 animationPhase "terc" > 0.1) && (t2_3 animationPhase "terc" > 0.1) && (t2_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		if ((t3 animationPhase "terc" > 0.1) && (t3_2 animationPhase "terc" > 0.1) && (t3_3 animationPhase "terc" > 0.1) && (t3_4 animationPhase "terc" > 0.1)) then
		{ //^tests if all the targets were hit
			_score = _score+1;
		};
		
		sleep 45;
		{_x animate["terc",1]} forEach _target200m; //resets the target
		{_x animate["terc",1]} forEach _target300m; //resets the target
		{_x animate["terc",1]} forEach _target400m; //resets the target
		_ARscore = format ["Autorifleman Range Score: %1 of 11",_score];
		rangeMasterAR sideChat _ARscore;
		_target6 = 0;
	};