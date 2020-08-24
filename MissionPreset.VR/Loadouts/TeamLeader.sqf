//TL/SL
sleep 2;
hint "TeamLeader/SquadLeader Kit Given";

waitUntil {!isNull player};       //to prevent MP / JIP issues

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
player addWeapon "rhs_weap_hk416d10_m320";
player addPrimaryWeaponItem "CUP_acc_LLM_black";
player addPrimaryWeaponItem "rhsusf_acc_su230_mrds_3d";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_Mk318_PMAG";
player addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
player addWeapon "rhs_weap_M136";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "U_mas_ukl_B_CombatUniform_S_mtp";
player addVest "V_mas_ukl_PlateCarrier1_rgr";
player addBackpack "TFAR_rt1523g_sage";

comment "Add binoculars";
player addMagazine "Laserbatteries";
player addWeapon "Laserdesignator";

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
player addItemToUniform "Laserbatteries";
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_PMAG";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItemToVest "SmokeShellBlue";
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";};
player addItemToBackpack "CUP_NVG_PVS15_tan";
player addItemToBackpack "CUP_muzzle_snds_M16";
for "_i" from 1 to 2 do {player addItemToBackpack "40xtra_1Rnd_40mm_mswhite";};
for "_i" from 1 to 4 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
player addItemToBackpack "UGL_FlareRed_F";
for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
player addItemToBackpack "SmokeShellBlue";
player addItemToBackpack "SmokeShellRed";
player addItemToBackpack "SmokeShellGreen";
player addHeadgear "H_mas_ukl_opscorn";
player addGoggles "G_Shades_Black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";

comment "Set identity";
[player,"LivonianHead_3","ace_novoice"] call BIS_fnc_setIdentity;
