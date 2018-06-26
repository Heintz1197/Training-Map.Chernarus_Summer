comment "Exported from Arsenal by CW2 N. Heintz";

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
_this forceAddUniform "VTN_U_FROG_WDL";
_this addVest "rhsusf_spc_patchless_radio";
for "_i" from 1 to 10 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 3 do {_this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
_this addBackpack "tfw_ilbe_wd";
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_packingBandage";};
_this addItemToBackpack "ACE_CableTie";
_this addItemToBackpack "ACE_salineIV_250";
_this addItemToBackpack "ACE_MapTools";
_this addItemToBackpack "ACE_microDAGR";
_this addItemToBackpack "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_EarPlugs";};
_this addItemToBackpack "ACE_SpraypaintBlack";
_this addItemToBackpack "ACE_SpraypaintGreen";
_this addItemToBackpack "ACE_SpraypaintRed";
_this addItemToBackpack "ACE_EntrenchingTool";
_this addItemToBackpack "rhsusf_ANPVS_14";
_this addItemToBackpack "rhs_googles_clear";
_this addItemToBackpack "tf_anprc152_16";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_M84";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_m18_green";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_m18_red";};
_this addItemToBackpack "rhs_mag_m18_purple";
_this addItemToBackpack "ACE_Chemlight_HiRed";
_this addItemToBackpack "Chemlight_green";
_this addItemToBackpack "Chemlight_blue";
_this addHeadgear "rhsusf_lwh_helmet_marpatwd";
_this addGoggles "rhs_googles_clear";

comment "Add weapons";
_this addWeapon "rhs_weap_m16a4_carryhandle";
_this addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
_this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
_this addWeapon "rhsusf_lrf_Vector21";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "tf_anprc152_14";
_this linkItem "ItemcTab";

 
