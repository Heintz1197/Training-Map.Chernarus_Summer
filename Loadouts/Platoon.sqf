comment "Exported from Arsenal by SSgt N. Heintz";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform "rhs_uniform_FROG01_wd";
for "_i" from 1 to 5 do {_this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_this addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {_this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 3 do {_this addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 3 do {_this addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
_this addItemToUniform "ACE_Chemlight_HiYellow";
_this addItemToUniform "ACE_Chemlight_HiWhite";
_this addVest "rhsusf_spc_iar";
for "_i" from 1 to 10 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
_this addItemToVest "ACE_Chemlight_HiRed";
_this addBackpack "tfw_ilbe_dd_coy";
_this addItemToBackpack "ACE_EarPlugs";
_this addItemToBackpack "ALIVE_Tablet";
_this addItemToBackpack "ACE_HuntIR_monitor";
_this addItemToBackpack "ACE_IR_Strobe_Item";
_this addItemToBackpack "ACE_EntrenchingTool";
_this addItemToBackpack "ACE_SpraypaintBlue";
_this addItemToBackpack "ACE_SpraypaintBlack";
_this addItemToBackpack "ACE_SpraypaintGreen";
for "_i" from 1 to 6 do {_this addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 6 do {_this addItemToBackpack "rhs_mag_m714_White";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_m18_green";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_m18_purple";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_m18_red";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_m67";};
_this addHeadgear "rhsusf_lwh_helmet_marpatwd";

comment "Add weapons";
_this addWeapon "rhs_weap_m16a4_carryhandle_M203";
_this addPrimaryWeaponItem "rhsusf_acc_ACOG";
_this addWeapon "rhsusf_weap_m9";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "tf_microdagr";
_this linkItem "tf_anprc152_4";
_this linkItem "ItemGPS";
_this linkItem "rhsusf_ANPVS_15";
