#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "tpf_equipment":
	{
		switch(true) do
		{
			case (playerside !=west):{"You are not a TPF Member"};
			case (__GETC__(life_coplevel) >= 9): {"You are not a TPF Member"};
			case (__GETC__(life_coplevel) <= 8):
			{
				["TPF Equipment",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "nato_equipment":
	{
		switch(true) do
		{
			case (playerside !=west):{"You are not a NATO Member"};
			case (__GETC__(life_coplevel) <= 8): {"You are not a NATO Member"};
			case (__GETC__(life_coplevel) >= 9):
			{
				["NATO Equipment",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "tpf_loadout":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a TPF Member!"};
			case (__GETC__(life_coplevel) >= 9): {"You are not a TPF Member"};
			case (__GETC__(life_coplevel) == 1):
			{
				["TSF Private Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5",nil,20000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_30Rnd_9x19_MP5",nil,125]
							
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["TSF Corporal Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5",nil,20000],
							["CUP_arifle_M4A1_black",nil,10000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,1000]

					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["TSF Sergeant Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5",nil,20000],
							["CUP_arifle_M4A1_black",nil,10000],
							["CUP_arifle_G36A",nil,10000],
							["CUP_arifle_XM8_Carbine",nil,1700],
							["CUP_arifle_FNFAL_railed",nil,1700],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,1000],
							["CUP_30Rnd_556x45_G36",nil,1700],
							["CUP_20Rnd_762x51_FNFAL_M",nil,1700]

					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["TSF Staff Segeant Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5",nil,20000],
							["CUP_arifle_M4A1_black",nil,10000],
							["CUP_arifle_G36A",nil,10000],
							["CUP_arifle_XM8_Carbine",nil,1700],
							["CUP_arifle_FNFAL_railed",nil,1700],
							["CUP_arifle_Mk16_CQC",nil,1700],
							["CUP_arifle_CZ805_A1",nil,10000],
							["CUP_srifle_M14",nil,10000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,1000],
							["CUP_30Rnd_556x45_G36",nil,1700],
							["CUP_20Rnd_762x51_FNFAL_M",nil,1700],
							["CUP_20Rnd_762x51_DMR",nil,50],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["TPF 1st Lieutenant Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5",nil,20000],
							["CUP_arifle_M4A1_black",nil,10000],
							["CUP_arifle_G36A",nil,10000],
							["CUP_arifle_XM8_Carbine",nil,1700],
							["CUP_arifle_FNFAL_railed",nil,1700],
							["CUP_arifle_Mk16_CQC",nil,1700],
							["CUP_arifle_CZ805_A1",nil,10000],
							["CUP_srifle_M14",nil,10000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_arifle_L85A2_Holo_laser",nil,1700],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,10000],
							["CUP_launch_RPG7V",nil,10000],
							["CUP_30Rnd_556x45_G36",nil,1700],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,1700],
							["CUP_30Rnd_556x45_Stanag",nil,50],
							["CUP_20Rnd_762x51_DMR",nil,50],
							["CUP_5Rnd_762x51_M24",nil,10000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["TPF Captain Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5",nil,20000],
							["CUP_arifle_M4A1_black",nil,10000],
							["CUP_arifle_G36A",nil,10000],
							["CUP_arifle_XM8_Carbine",nil,1700],
							["CUP_arifle_FNFAL_railed",nil,1700],
							["CUP_arifle_Mk16_CQC",nil,1700],
							["CUP_arifle_CZ805_A1",nil,10000],
							["CUP_srifle_M14",nil,10000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_arifle_L85A2_Holo_laser",nil,1700],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,10000],
							["CUP_launch_RPG7V",nil,10000],
							["CUP_30Rnd_556x45_G36",nil,1700],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,1700],
							["CUP_30Rnd_556x45_Stanag",nil,50],
							["CUP_20Rnd_762x51_DMR",nil,50],
							["CUP_5Rnd_762x51_M24",nil,10000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_PG7V_M",nil,10000],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["TPF Major Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5",nil,20000],
							["CUP_arifle_M4A1_black",nil,10000],
							["CUP_arifle_G36A",nil,10000],
							["CUP_arifle_XM8_Carbine",nil,1700],
							["CUP_arifle_FNFAL_railed",nil,1700],
							["CUP_arifle_Mk16_CQC",nil,1700],
							["CUP_arifle_CZ805_A1",nil,10000],
							["CUP_srifle_M14",nil,10000],
							["CUP_arifle_L85A2_Holo_laser",nil,1700],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,10000],
							["CUP_srifle_M24_ghillie",nil,1700],
							["CUP_launch_RPG7V",nil,10000],
							["CUP_30Rnd_556x45_G36",nil,1700],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,1700],
							["CUP_30Rnd_556x45_Stanag",nil,50],
							["CUP_20Rnd_762x51_DMR",nil,50],
							["CUP_5Rnd_762x51_M24",nil,10000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_PG7V_M",nil,10000],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 8):
			{
				["TPF General Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5",nil,20000],
							["CUP_arifle_M4A1_black",nil,10000],
							["CUP_arifle_G36A",nil,10000],
							["CUP_arifle_XM8_Carbine",nil,1700],
							["CUP_arifle_FNFAL_railed",nil,1700],
							["CUP_arifle_Mk16_CQC",nil,1700],
							["CUP_arifle_CZ805_A1",nil,10000],
							["CUP_srifle_M14",nil,10000],
							["CUP_arifle_L85A2_Holo_laser",nil,1700],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,10000],
							["CUP_srifle_M24_ghillie",nil,1700],
							["CUP_launch_RPG7V",nil,10000],
							["CUP_30Rnd_556x45_G36",nil,1700],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,1700],
							["CUP_30Rnd_556x45_Stanag",nil,50],
							["CUP_20Rnd_762x51_DMR",nil,50],
							["CUP_5Rnd_762x51_M24",nil,10000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_PG7V_M",nil,10000],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
		};
	};
	case "nato_loadout":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a NATO Member!"};
			case (__GETC__(life_coplevel) <= 8): {"You are not a NATO Member"};
			case (__GETC__(life_coplevel) == 9):
			{
				["NATO Private Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_hgun_glock17_flashlight",nil,7500],
							["CUP_arifle_Mk16_CQC_FG",nil,20000],
							["CUP_arifle_Mk16_STD_EGLM",nil,20000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125]
							
					]
				];
			};
			case (__GETC__(life_coplevel) == 10):
			{
				["NATO Corporal Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_hgun_glock17_flashlight",nil,7500],
							["CUP_arifle_Mk16_CQC_FG",nil,20000],
							["CUP_arifle_Mk16_STD_EGLM",nil,20000],
							["MMG_01_tan_F",nil,20000],
							["CUP_srifle_M40A3",nil,20000],
							["CUP_launch_M136",nil,20000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["150Rnd_93x64_Mag",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_M136_M",nil,125],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]
					]
				];
			};
			case (__GETC__(life_coplevel) == 11):
			{
				["NATO Sergeant Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_hgun_glock17_flashlight",nil,7500],
							["CUP_arifle_Mk16_CQC_FG",nil,20000],
							["CUP_arifle_Mk16_STD_EGLM",nil,20000],
							["MMG_01_tan_F",nil,20000],
							["CUP_srifle_M40A3",nil,20000],
							["CUP_lmg_Mk48_des_Aim_Laser",nil,20000],
							["CUP_arifle_CZ805_B",nil,20000],
							["CUP_srifle_DMR",nil,20000],
							["CUP_launch_M136",nil,20000],
							["CUP_launch_FIM92Stinger",nil,20000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["150Rnd_93x64_Mag",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,125], 
							["CUP_20Rnd_762x51_CZ805B",nil,125], 
							["CUP_20Rnd_762x51_DMR",nil,125], 
							["CUP_M136_M",nil,125],
							["CUP_Stinger_M",nil,125],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 12):
			{
				["NATO Staff Segeant Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_hgun_glock17_flashlight",nil,7500],
							["CUP_arifle_Mk16_CQC_FG",nil,20000],
							["CUP_arifle_Mk16_STD_EGLM",nil,20000],
							["MMG_01_tan_F",nil,20000],
							["CUP_srifle_M40A3",nil,20000],
							["CUP_lmg_Mk48_des_Aim_Laser",nil,20000],
							["CUP_arifle_CZ805_B",nil,20000],
							["CUP_srifle_DMR",nil,20000],
							["CUP_srifle_AWM_des_SBPMII",nil,20000],
							["CUP_lmg_M240",nil,20000],
							["CUP_launch_M136",nil,20000],
							["CUP_launch_FIM92Stinger",nil,20000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["150Rnd_93x64_Mag",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,125], 
							["CUP_20Rnd_762x51_CZ805B",nil,125], 
							["CUP_20Rnd_762x51_DMR",nil,125], 
							["CUP_5Rnd_86x70_L115A1",nil,125], 
							["CUP_M136_M",nil,125],
							["CUP_Stinger_M",nil,125],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]
					]
				];
			};
			case (__GETC__(life_coplevel) >= 13):
			{
				["NATO Level 5 Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_hgun_glock17_flashlight",nil,7500],
							["CUP_arifle_Mk16_CQC_FG",nil,20000],
							["CUP_arifle_Mk16_STD_EGLM",nil,20000],
							["MMG_01_tan_F",nil,20000],
							["CUP_srifle_M40A3",nil,20000],
							["CUP_lmg_Mk48_des_Aim_Laser",nil,20000],
							["CUP_arifle_CZ805_B",nil,20000],
							["CUP_srifle_DMR",nil,20000],
							["CUP_srifle_AWM_des_SBPMII",nil,20000],
							["CUP_lmg_M240",nil,20000],
							["CUP_lmg_L7A2",nil,20000],
							["CUP_launch_M136",nil,20000],
							["CUP_launch_FIM92Stinger",nil,20000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["150Rnd_93x64_Mag",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,125], 
							["CUP_20Rnd_762x51_CZ805B",nil,125], 
							["CUP_20Rnd_762x51_DMR",nil,125], 
							["CUP_5Rnd_86x70_L115A1",nil,125], 
							["CUP_M136_M",nil,125],
							["CUP_Stinger_M",nil,125],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["CUP_lmg_Pecheneg",nil,25000],
						["CUP_lmg_PKM",nil,30000],
						["CUP_arifle_RPK74",nil,50000],
						["CUP_srifle_VSSVintorez",nil,20000],
						["CUP_srifle_SVD",nil,3500],
						["CUP_arifle_AKM",nil,3600],
						["CUP_arifle_AKS74",nil,1000],
						["CUP_arifle_AK107",nil,7500],
						["CUP_arifle_AK74",nil,200],
						["CUP_arifle_Sa58V_camo",nil,125],
						["CUP_srifle_LeeEnfield",nil,300],
						["arifle_Katiba_F",nil,500],
						["arifle_Mk20_F",nil,275],
						["arifle_MXC_Black_F",nil,275],
						["arifle_TRG21_F",nil,275],
						["CUP_hgun_Phantom_Flashlight",nil,275],
						["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",nil,275],
						["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",nil,275],
						["CUP_20Rnd_9x39_SP5_VSS_M",nil,275],
						["CUP_10Rnd_762x54_SVD_M",nil,275],
						["CUP_30Rnd_762x39_AK47_M",nil,275],
						["CUP_30Rnd_545x39_AK_M",nil,275],
						["CUP_30Rnd_Sa58_M",nil,275],
						["30Rnd_65x39_caseless_green",nil,275],
						["30Rnd_556x45_Stanag",nil,275],
						["30Rnd_65x39_caseless_mag",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Abu's Firearms",
					[
						["CUP_srifle_CZ550","CZ 550",6500],
						["CUP_hgun_M9","M9",9850],
						["CUP_hgun_Makarov","Makarov",11500],
						["CUP_hgun_PB6P9_snds","PB 6P9",20000],
						["CUP_hgun_MicroUzi","Micro UZI PDW",20000],
						["CUP_hgun_TaurusTracker455","Taurus Tracker Model 455",2500],
						["CUP_hgun_Glock17","Glock 17",4900],
						["hgun_ACPC2_F",nil,4900],
						["hgun_P07_F",nil,4900],
						["CUP_5x_22_LR_17_HMR_M",nil,25],
						["CUP_15Rnd_9x19_M9",nil,45],
						["CUP_8Rnd_9x18_Makarov_M",nil,50],
						["CUP_30Rnd_9x19_UZI",nil,75],
						["CUP_6Rnd_45ACP_M",nil,75],
						["CUP_17Rnd_9x19_glock17",nil,75],
						["9Rnd_45ACP_Mag",nil,75],
						["16Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
