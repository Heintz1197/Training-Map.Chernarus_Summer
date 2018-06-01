//preping target list
_targetList = nearestObjects [(getMarkerPos "fr_init") , ["TargetPopup_ACR"], 1000];

//score function

bwi_func_target_hit =
    {
        private["_shooter"];
        _shooter = _this select 1;
        _shooter addScore 1;
    };

bwi_func_no_pop =
    {    
        private["_target"];
        sleep 1;
        _target = _this select 0;
        waitUntil {(_target animationPhase "terc") < 1};
        
        _target animate ['terc', 1];
    };

targets100 = [];
targets200 = [];
targets300 = [];
targets500 = [];


TargetsLane1 = [];
TargetsLane2 = [];
TargetsLane3 = [];
TargetsLane4 = [];
TargetsLane5 = [];
TargetsLane6 = [];
TargetsLane7 = [];

//check targets, sort targets

{
    _x addEventHandler ["Hit", {_this call bwi_func_target_hit}];
    _x animate ['terc', 1];
    
    _test100 = [targets100trigger,getPosAtl _x] call BIS_fnc_inTrigger;
    _test200 = [targets200trigger,getPosAtl _x] call BIS_fnc_inTrigger;
    _test300 = [targets300trigger,getPosAtl _x] call BIS_fnc_inTrigger;
    _test500 = [targets500trigger,getPosAtl _x] call BIS_fnc_inTrigger;

    
    _testLane1 = [triggerlane1,getPosAtl _x] call BIS_fnc_inTrigger;
    _testLane2 = [triggerlane2,getPosAtl _x] call BIS_fnc_inTrigger;
    _testLane3 = [triggerlane3,getPosAtl _x] call BIS_fnc_inTrigger;
    _testLane4 = [triggerlane4,getPosAtl _x] call BIS_fnc_inTrigger;
    _testLane5 = [triggerlane5,getPosAtl _x] call BIS_fnc_inTrigger;
    _testLane6 = [triggerlane6,getPosAtl _x] call BIS_fnc_inTrigger;
    _testLane7 = [triggerlane7,getPosAtl _x] call BIS_fnc_inTrigger;
    
    if (_test100) then {targets100 set [count targets100, _x];};
    if (_test200) then {targets200 set [count targets200, _x];};
    if (_test300) then {targets300 set [count targets300, _x];};
    if (_test500) then {targets500 set [count targets500, _x];};

    
    if (_testLane1) then {TargetsLane1 set [count TargetsLane1, _x];_x addEventHandler ["Hit", {_this spawn bwi_Func_No_Pop;}];};
    if (_testLane2) then {TargetsLane2 set [count TargetsLane2, _x];_x addEventHandler ["Hit", {_this spawn bwi_Func_No_Pop;}];};
    if (_testLane3) then {TargetsLane3 set [count TargetsLane3, _x];_x addEventHandler ["Hit", {_this spawn bwi_Func_No_Pop;}];};
    if (_testLane4) then {TargetsLane4 set [count TargetsLane4, _x];_x addEventHandler ["Hit", {_this spawn bwi_Func_No_Pop;}];};
    if (_testLane5) then {TargetsLane5 set [count TargetsLane5, _x];_x addEventHandler ["Hit", {_this spawn bwi_Func_No_Pop;}];};
    if (_testLane6) then {TargetsLane6 set [count TargetsLane6, _x];_x addEventHandler ["Hit", {_this spawn bwi_Func_No_Pop;}];};
    if (_testLane7) then {TargetsLane7 set [count TargetsLane7, _x];_x addEventHandler ["Hit", {_this spawn bwi_Func_No_Pop;}];};

} forEach _targetList;

bwi_Func_clear_all_scores = {
    
    If (!isServer) exitWith {};    
    {
        _x addScore -(score _x);
        _x setVariable ["bwiRangeShotCount", 0,true];
    } forEach playableUnits;

};

bwi_Func_clear_my_score = {
    If (!isServer) exitWith {};
    _unit = _this select 0;    
    _unit addScore -(score _unit);
    _unit setVariable ["bwiRangeShotCount", 0,true];
};


bwi_Func_100_targets =
{
    // [[0],'bwi_Func_100_targets',false,false] spawn BIS_fnc_MP;
    _state = _this select 0;
    {_x animate ['terc', _state];} forEach targets100;

};


bwi_Func_200_targets =
{
    // [[0],'bwi_Func_100_targets',false,false] spawn BIS_fnc_MP;
    _state = _this select 0;
    {_x animate ['terc', _state];} forEach targets200;

};

bwi_Func_300_targets =
{
    _state = _this select 0;
    {_x animate ['terc', _state];} forEach targets300;

};

bwi_Func_500_targets =
{
    _state = _this select 0;
    {_x animate ['terc', _state];} forEach targets500;

};


fr_laptop addAction ["Activate targets at 100m","[[0],'bwi_Func_100_targets',false,false] spawn BIS_fnc_MP;",1];
fr_laptop addAction ["Disable targets at 100m","[[1],'bwi_Func_100_targets',false,false] spawn BIS_fnc_MP;",1];
fr_laptop addAction ["Activate targets at 200m","[[0],'bwi_Func_200_targets',false,false] spawn BIS_fnc_MP;",1];
fr_laptop addAction ["Disable targets at 200m","[[1],'bwi_Func_200_targets',false,false] spawn BIS_fnc_MP;",1];
fr_laptop addAction ["Activate targets at 300m","[[0],'bwi_Func_300_targets',false,false] spawn BIS_fnc_MP;",1];
fr_laptop addAction ["Disable targets at 300m","[[1],'bwi_Func_300_targets',false,false] spawn BIS_fnc_MP;",1];
fr_laptop addAction ["Activate targets at 500m","[[0],'bwi_Func_500_targets',false,false] spawn BIS_fnc_MP;",1];
fr_laptop addAction ["Disable targets at 500m","[[1],'bwi_Func_500_targets',false,false] spawn BIS_fnc_MP;",1];
fr_laptop addAction ["Reset the score","[[player],'bwi_Func_clear_my_score',false,false] spawn BIS_fnc_MP;"];
fr_laptop addAction ["Reset all scores","[[[]],'bwi_Func_clear_all_scores',false,false] spawn BIS_fnc_MP;",1];