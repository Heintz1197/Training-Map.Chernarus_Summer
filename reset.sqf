_targets = [mt1, mt1_1, mt1_2, mt1_3, mt1_4, mt1_5, mt1_6, mt1_7, mt1_8, mt1_9, mt1_10, mt1_11, mt1_12, mt1_14, mt1_15, mt1_16, mt1_17, mt1_18, mt1_19, mt1_20,mt1_21,mt1_22,mt1_23,mt1_24,mt1_25,mt1_26,mt1_27,mt1_28,mt1_29,mt1_30,mt1_31,mt1_32,mt1_33,mt1_34,mt1_35,mt1_36,mt1_37,mt1_38,mt1_39,mt1_40,mt1_41,mt1_42,mt1_43,mt1_44,mt1_45,mt1_46,mt1_47,mt1_48,mt1_49,mt1_50,mt1_51,mt1_52,mt1_53,mt1_54,mt1_55,mt1_56,mt1_57,mt1_58,mt1_59,mt1_60,mt1_61,mt1_62,mt1_63];
_NumTarget = random 62;
_low = 0;

{_x animate["Terc",1]} forEach _targets; //sets all targets down


sleep 2;
nopop = true;

while {_low < _NumTarget} do {		//loops through to set up each target of the random number
	_UpTarget = selectRandom _targets;
	_UpTarget animate ["Terc",0];					//get all targets to upright pos							
	_low = _low + 1;
};
	
	;	