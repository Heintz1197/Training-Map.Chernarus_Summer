/* 
Assuming this is run from an addAction on an object or RangeMaster2's init field:

Defaults:

this setVariable["heinz_range2_inUse", false];
this addAction["Start Range", {_this call heinz_fnc_range2}, [], 0, true, false, "", "!(_target getVariable 'heinz_range2_inUse')"];

 or  customized...

this setVariable["heinz_range2_inUse", false];
 this addAction["Start Range Zombies", {_this call heinz_fnc_range2}, [40, 3, rangeMaster1, [ptz, ptz_1, ptz_2, ptz_3, ptz_4], 0, true, false, "", "!(_target getVariable 'heinz_range2_inUse')"];
 
*/

// Function declared in your init.sqf or Functions library
heinz_fnc_MGzero = {

};