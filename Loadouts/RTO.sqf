comment "Exported from Arsenal by Cpl I.Cormac";
 
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
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_quikclot";};
_this addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_packingBandage";};
_this addItemToUniform "rhsusf_mag_7x45acp_MHP";
_this addVest "V_PlateCarrier_Kerry";
for "_i" from 1 to 7 do {_this addItemToVest "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 5 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 4 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
_this addBackpack "tfw_ilbe_dd_coy";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_epinephrine";};
_this addItemToBackpack "ACE_Flashlight_XL50";
_this addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_tourniquet";};
_this addItemToBackpack "ACE_IR_Strobe_Item";
_this addItemToBackpack "ACE_RangeCard";
_this addItemToBackpack "ACE_RangeTable_82mm";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_fieldDressing";};
_this addItemToBackpack "tfw_rf3080Item";
_this addItemToBackpack "ACE_EntrenchingTool";
_this addItemToBackpack "ItemcTabHCam";
_this addItemToBackpack "tfw_whip";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_EarPlugs";};
_this addItemToBackpack "rhsusf_ANPVS_14";
_this addItemToBackpack "ACE_Vector";
for "_i" from 1 to 2 do {_this addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {_this addItemToBackpack "SmokeShellBlue";};
_this addItemToBackpack "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {_this addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_M84";};
_this addItemToBackpack "B_IR_Grenade";
_this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset_blk";
_this addGoggles "CUP_FR_NeckScarf";
 
comment "Add weapons";
_this addWeapon "rhs_weap_m4_carryhandle_mstock";
_this addPrimaryWeaponItem "rhsusf_acc_nt4_black";
_this addPrimaryWeaponItem "rhs_acc_perst1ik_ris";
_this addPrimaryWeaponItem "sma_spitfire_03_rds_low_black";
_this addPrimaryWeaponItem "rhsusf_acc_grip1";
_this addWeapon "rhsusf_weap_m1911a1";
_this addWeapon "Laserdesignator";
 
comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "tf_microdagr";
_this linkItem "tf_anprc152_44";
_this linkItem "ItemMicroDAGR";
 
 
