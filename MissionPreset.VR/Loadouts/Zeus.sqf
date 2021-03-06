//Zeus
sleep 2;
hint "Zeus Kit Given";

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
player addPrimaryWeaponItem "CUP_optic_MicroT1";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk318_PMAG";
player addPrimaryWeaponItem "rhsusf_acc_kac_grip";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "U_mas_ukl_B_CombatUniform_m2";
player addVest "V_mas_ukl_PlateCarrierLR_rgr";
player addBackpack "TFAR_rt1523g_sage";

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
player addItemToUniform "B_IR_Grenade";
player addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_PMAG";
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_PMAG";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItemToVest "SmokeShellBlue";
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToBackpack "CUP_NVG_PVS15_tan";
player addItemToBackpack "CUP_muzzle_snds_M16";
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_PMAG";};
player addHeadgear "H_Cap_khaki_specops_UK";
player addGoggles "G_Shades_Blue";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";

comment "Set identity";
[player,"LivonianHead_3","ace_novoice"] call BIS_fnc_setIdentity;
