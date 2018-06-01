//nul=[1,0,0,0,0,0,0,0] execVM "scripts\MGrange.sqf" 
_zero = 1;
_target300m = [t2,t2_2,t2_3,t2_4]; //sets for target group at 500 meters
_targets = [t1,t1_2,t1_3,t1_4,t2,t2_2,t2_3,t2_4,t3,t3_2,t3_3,t3_4,t4,t4_2,t4_3,t4_4,t5,t5_2,t5_3,t5_4];

	{_x  animate["terc",1]} forEach _targets; //sets the targets to be down at start
	nopop = true; //sets the targets to only pop up with a trigger

	
{_x animate["terc",0]} forEach _target300m; //sets up all targets of group
		
sleep 30;
			
{_x animate["terc",1]} forEach _target300m;
			
_zero = 0;