//Marksman
sleep 2;
hint "Marksman Kit Given";

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
player addWeapon "rhs_weap_sr25_ec";
player addPrimaryWeaponItem "CUP_acc_LLM_black";
player addPrimaryWeaponItem "optic_DMS";
player addPrimaryWeaponItem "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "U_mas_ukl_B_CombatUniform_S_mtp";
player addVest "V_mas_ukl_PlateCarrierRF_rgr";
player addBackpack "B_AssaultPack_mcamo";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_splint";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_Kestrel4500";
player addItemToUniform "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItemToVest "SmokeShellBlue";
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 4 do {player addItemToVest "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag";};
player addItemToBackpack "CUP_NVG_PVS15_tan";
player addItemToBackpack "rhsusf_acc_aac_762sd_silencer";
player addItemToBackpack "CUP_optic_AN_PVS_10_black";
for "_i" from 1 to 6 do {player addItemToBackpack "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag";};
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
