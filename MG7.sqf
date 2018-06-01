//nul=[0,0,0,0,0,0,0,1] execVM "scripts\MGrange.sqf" 

_score = 0;
_ARscore = "";
_targets = [t1,t1_2,t1_3,t1_4,t2,t2_2,t2_3,t2_4,t3,t3_2,t3_3,t3_4,t4,t4_2,t4_3,t4_4,t5,t5_2,t5_3,t5_4];
_target200m = [t1,t1_2,t1_3,t1_4]; //sets for target group at 200 meters
_target300m = [t2,t2_2,t2_3,t2_4]; //sets for target group at 300 meters
_target400m = [t3,t3_2,t3_3,t3_4]; //sets for target group at 400 meters


{_x  animate["terc",1]} forEach _targets; //sets the targets to be down at start
nopop = true; //sets the targets to only pop up with a trigger

{_x animate["terc",0]} forEach _target200m;
{_x animate["terc",0]} forEach _target300m;
{_x animate["terc",0]} forEach _target400m;		
		
sleep 45;


if (t1 animationPhase "terc" > 0.1 && t1_2 animationPhase "terc" > 0.1 && t1_3 animationPhase "terc" > 0.1 && t1_4 animationPhase "terc" > 0.1) then
{ //^tests if all the targets were hit
			_score = _score+1;
};
if (t2 animationPhase "terc" > 0.1 && t2_2 animationPhase "terc" > 0.1 && t2_3 animationPhase "terc" > 0.1 && t2_4 animationPhase "terc" > 0.1) then
{ //^tests if all the targets were hit
			_score = _score+1;
};
if (t3 animationPhase "terc" > 0.1 && t3_2 animationPhase "terc" > 0.1 && t3_3 animationPhase "terc" > 0.1 && t3_4 animationPhase "terc" > 0.1) then
{ //^tests if all the targets were hit
			_score = _score+1;
};


{_x animate["terc",1]} forEach _target200m; //resets the target
{_x animate["terc",1]} forEach _target300m; //resets the target
{_x animate["terc",1]} forEach _target400m; //resets the target

_ARscore = format ["Autorifleman Group Six: %1 of 3",_score];
rangeMasterAR sideChat _ARscore;