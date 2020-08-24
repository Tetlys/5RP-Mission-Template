//Medic
sleep 2;
hint "Medic Kit Given";

waitUntil {!isNull player};       //to prevent MP / JIP player

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "rhs_weap_hk416d10_grip3";
player addPrimaryWeaponItem "CUP_acc_LLM_black";
player addPrimaryWeaponItem "rhsusf_acc_su230_3d";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk318_PMAG";
player addPrimaryWeaponItem "rhsusf_acc_kac_grip";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "U_mas_ukl_B_CombatUniform_S_mtp";
player addVest "V_mas_ukl_PlateCarrierRF_rgr";
player addBackpack "B_Kitbag_mcamo";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "CUP_NVG_PVS15_tan";
player addItemToUniform "CUP_muzzle_snds_M16";
player addItemToUniform "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_PMAG";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_PMAG";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV_250";};
player addItemToBackpack "ACE_bodyBag";
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
player addItemToBackpack "ACE_surgicalKit";
player addItemToBackpack "adv_aceCPR_AED";
player addHeadgear "H_mas_ukl_opscorn";
player addGoggles "rhs_ess_black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";

comment "Set identity";
[player,"LivonianHead_3","ace_novoice"] call BIS_fnc_setIdentity;
