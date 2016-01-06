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
							["arifle_sdar_F","Taser Rifle",1500],
							["hgun_P07_snds_F","Stun Pistol",500],
							["hgun_P07_F",nil,1000],
							["CUP_smg_MP5A5",nil,3000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",50],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_optic_MRad",nil,500],
							["CUP_optic_Eotech533Grey",nil,125],
							["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125]

					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["TSF Corporal Loadout",
					[
							["arifle_sdar_F","Taser Rifle",1500],
							["hgun_P07_snds_F","Stun Pistol",500],
							["hgun_P07_F",nil,1000],
							["CUP_smg_MP5A5",nil,3000],
							["CUP_arifle_M4A1_black",nil,3000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",50],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["CUP_optic_MRad",nil,500],
							["CUP_optic_Eotech533Grey",nil,125],
							["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125]

					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["TSF Sergeant Loadout",
					[
							["arifle_sdar_F","Taser Rifle",1500],
							["hgun_P07_snds_F","Stun Pistol",500],
							["hgun_P07_F",nil,1000],
							["CUP_smg_MP5A5",nil,3000],
							["CUP_arifle_M4A1_black",nil,3000],
							["CUP_arifle_G36A",nil,3000],
							["CUP_arifle_XM8_Carbine",nil,3000],
							["CUP_arifle_FNFAL_railed",nil,3000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",50],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["CUP_30Rnd_556x45_G36",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,125],
							["CUP_optic_MRad",nil,500],
							["CUP_optic_Eotech533Grey",nil,125],
							["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125]

					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["TSF Staff Segeant Loadout",
					[
							["arifle_sdar_F","Taser Rifle",1500],
							["hgun_P07_snds_F","Stun Pistol",500],
							["hgun_P07_F",nil,1000],
							["CUP_smg_MP5A5",nil,3000],
							["CUP_arifle_M4A1_black",nil,3000],
							["CUP_arifle_G36A",nil,3000],
							["CUP_arifle_XM8_Carbine",nil,3000],
							["CUP_arifle_FNFAL_railed",nil,3000],
							["CUP_arifle_Mk16_CQC",nil,3000],
							["CUP_arifle_CZ805_A1",nil,3000],
							["CUP_srifle_M14",nil,3000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",50],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["CUP_30Rnd_556x45_G36",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,125],
							["CUP_20Rnd_762x51_DMR",nil,125],
							["SmokeShellBlue","TearGas",50],
							["CUP_optic_MRad",nil,500],
							["CUP_optic_Eotech533Grey",nil,125],
							["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125]

					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["TPF 1st Lieutenant Loadout",
					[
							["arifle_sdar_F","Taser Rifle",1500],
							["hgun_P07_snds_F","Stun Pistol",500],
							["hgun_P07_F",nil,1000],
							["CUP_smg_MP5A5",nil,3000],
							["CUP_arifle_M4A1_black",nil,3000],
							["CUP_arifle_G36A",nil,3000],
							["CUP_arifle_XM8_Carbine",nil,3000],
							["CUP_arifle_FNFAL_railed",nil,3000],
							["CUP_arifle_Mk16_CQC",nil,3000],
							["CUP_arifle_CZ805_A1",nil,3000],
							["CUP_srifle_M14",nil,3000],
							["CUP_arifle_L85A2_Holo_laser",nil,3000],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,3000],
							["CUP_launch_RPG7V",nil,15000],
							["CUP_30Rnd_556x45_G36",nil,125],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["CUP_20Rnd_762x51_DMR",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_PG7V_M",nil,5000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",50],
							["SmokeShellBlue","TearGas",50],
							["CUP_optic_MRad",nil,500],
							["CUP_optic_Eotech533Grey",nil,125],
							["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125]

					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["TPF Captain Loadout",
					[
							["arifle_sdar_F","Taser Rifle",1500],
							["hgun_P07_snds_F","Stun Pistol",500],
							["hgun_P07_F",nil,1000],
							["CUP_smg_MP5A5",nil,3000],
							["CUP_arifle_M4A1_black",nil,3000],
							["CUP_arifle_G36A",nil,3000],
							["CUP_arifle_XM8_Carbine",nil,3000],
							["CUP_arifle_FNFAL_railed",nil,3000],
							["CUP_arifle_Mk16_CQC",nil,3000],
							["CUP_arifle_CZ805_A1",nil,3000],
							["CUP_srifle_M14",nil,3000],
							["CUP_arifle_L85A2_Holo_laser",nil,3000],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,3000],
							["CUP_launch_RPG7V",nil,15000],
							["CUP_30Rnd_556x45_G36",nil,125],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["CUP_20Rnd_762x51_DMR",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",50],
							["CUP_PG7V_M",nil,5000],
							["HandGrenade_Stone","Flashbang",50],
							["SmokeShellBlue","TearGas",50],
							["CUP_optic_Kobra",nil,125],
							["CUP_optic_PSO_1",nil,125],
							["CUP_optic_PechenegScope",nil,125],
							["CUP_optic_MRad",nil,500],
							["CUP_optic_Eotech533Grey",nil,125],
							["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125]

					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["TPF Major Loadout",
					[
							["arifle_sdar_F","Taser Rifle",1500],
							["hgun_P07_snds_F","Stun Pistol",500],
							["hgun_P07_F",nil,1000],
							["CUP_smg_MP5A5",nil,3000],
							["CUP_arifle_M4A1_black",nil,3000],
							["CUP_arifle_G36A",nil,3000],
							["CUP_arifle_XM8_Carbine",nil,3000],
							["CUP_arifle_FNFAL_railed",nil,3000],
							["CUP_arifle_Mk16_CQC",nil,3000],
							["CUP_arifle_CZ805_A1",nil,3000],
							["CUP_srifle_M14",nil,3000],
							["CUP_arifle_L85A2_Holo_laser",nil,3000],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,3000],
							["CUP_srifle_M24_ghillie",nil,3000],
							["CUP_launch_RPG7V",nil,15000],
							["CUP_30Rnd_556x45_G36",nil,125],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["CUP_20Rnd_762x51_DMR",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",50],
							["CUP_PG7V_M",nil,5000],
							["HandGrenade_Stone","Flashbang",50],
							["SmokeShellBlue","TearGas",50],
							["CUP_optic_Kobra",nil,125],
							["CUP_optic_PSO_1",nil,125],
							["CUP_optic_PechenegScope",nil,125],
							["CUP_optic_MRad",nil,500],
							["CUP_optic_Eotech533Grey",nil,125],
							["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 8):
			{
				["TPF General Loadout",
					[
							["arifle_sdar_F","Taser Rifle",1500],
							["hgun_P07_snds_F","Stun Pistol",500],
							["hgun_P07_F",nil,1000],
							["CUP_smg_MP5A5",nil,3000],
							["CUP_arifle_M4A1_black",nil,3000],
							["CUP_arifle_G36A",nil,3000],
							["CUP_arifle_XM8_Carbine",nil,3000],
							["CUP_arifle_FNFAL_railed",nil,3000],
							["CUP_arifle_Mk16_CQC",nil,3000],
							["CUP_arifle_CZ805_A1",nil,3000],
							["CUP_srifle_M14",nil,3000],
							["CUP_arifle_L85A2_Holo_laser",nil,3000],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,3000],
							["CUP_srifle_M24_ghillie",nil,3000],
							["CUP_launch_RPG7V",nil,15000],
							["CUP_30Rnd_556x45_G36",nil,125],
							["CUP_30Rnd_9x19_MP5",nil,125],
							["CUP_20Rnd_762x51_FNFAL_M",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["CUP_20Rnd_762x51_DMR",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["20Rnd_556x45_UW_mag","Taser Magazine",50],
							["CUP_PG7V_M",nil,5000],
							["HandGrenade_Stone","Flashbang",50],
							["SmokeShellBlue","TearGas",50],
							["CUP_optic_MRad",nil,500],
							["CUP_optic_Eotech533Grey",nil,125],
							["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125]
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
							["hgun_P07_snds_F","Stun Pistol",500],
							["CUP_hgun_glock17_flashlight",nil,1500],
							["CUP_arifle_Mk16_CQC_FG",nil,3000],
							["CUP_arifle_Mk16_STD_EGLM",nil,3000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["CUP_optic_Kobra",nil,125],
							["CUP_optic_PSO_1",nil,125],
							["CUP_optic_PechenegScope",nil,125],
							["CUP_optic_CompM2_Desert",nil,50],
							["CUP_optic_SB_3_12x50_PMII",nil,50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 10):
			{
				["NATO Corporal Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",500],
							["CUP_hgun_glock17_flashlight",nil,1500],
							["CUP_arifle_Mk16_CQC_FG",nil,3000],
							["CUP_arifle_Mk16_STD_EGLM",nil,3000],
							["MMG_01_tan_F",nil,3000],
							["CUP_srifle_M40A3",nil,3000],
							["CUP_launch_M136",nil,3000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["150Rnd_93x64_Mag",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_M136_M",nil,125],
							["HandGrenade_Stone","Flashbang",50],
							["SmokeShellBlue","TearGas",50],
							["CUP_optic_Kobra",nil,125],
							["CUP_optic_PSO_1",nil,125],
							["CUP_optic_PechenegScope",nil,125],
							["CUP_optic_CompM2_Desert",nil,50],
							["CUP_optic_SB_3_12x50_PMII",nil,50]
					]
				];
			};
			case (__GETC__(life_coplevel) == 11):
			{
				["NATO Sergeant Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",500],
							["CUP_hgun_glock17_flashlight",nil,1500],
							["CUP_arifle_Mk16_CQC_FG",nil,3000],
							["CUP_arifle_Mk16_STD_EGLM",nil,3000],
							["MMG_01_tan_F",nil,3000],
							["CUP_srifle_M40A3",nil,3000],
							["CUP_lmg_Mk48_des_Aim_Laser",nil,3000],
							["CUP_arifle_CZ805_B",nil,3000],
							["CUP_srifle_DMR",nil,3000],
							["CUP_launch_M136",nil,15000],
							["CUP_launch_FIM92Stinger",nil,15000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["150Rnd_93x64_Mag",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,125],
							["CUP_20Rnd_762x51_CZ805B",nil,125],
							["CUP_20Rnd_762x51_DMR",nil,125],
							["CUP_M136_M",nil,5000],
							["CUP_Stinger_M",nil,5000],
							["HandGrenade_Stone","Flashbang",50],
							["SmokeShellBlue","TearGas",50],
							["CUP_optic_CompM2_Desert",nil,50],
							["CUP_optic_SB_3_12x50_PMII",nil,50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 12):
			{
				["NATO Staff Segeant Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",500],
							["CUP_hgun_glock17_flashlight",nil,1500],
							["CUP_arifle_Mk16_CQC_FG",nil,3000],
							["CUP_arifle_Mk16_STD_EGLM",nil,3000],
							["MMG_01_tan_F",nil,3000],
							["CUP_srifle_M40A3",nil,3000],
							["CUP_lmg_Mk48_des_Aim_Laser",nil,3000],
							["CUP_arifle_CZ805_B",nil,3000],
							["CUP_srifle_DMR",nil,3000],
							["CUP_srifle_AWM_des_SBPMII",nil,3000],
							["CUP_lmg_M240",nil,3000],
							["CUP_launch_M136",nil,15000],
							["CUP_launch_FIM92Stinger",nil,15000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["150Rnd_93x64_Mag",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,125],
							["CUP_20Rnd_762x51_CZ805B",nil,125],
							["CUP_20Rnd_762x51_DMR",nil,125],
							["CUP_5Rnd_86x70_L115A1",nil,125],
							["CUP_M136_M",nil,5000],
							["CUP_Stinger_M",nil,5000],
							["HandGrenade_Stone","Flashbang",50],
							["SmokeShellBlue",nil,50],
							["CUP_optic_CompM2_Desert",nil,50],
							["CUP_optic_SB_3_12x50_PMII",nil,50]
					]
				];
			};
			case (__GETC__(life_coplevel) >= 13):
			{
				["NATO Level 5 Loadout",
					[
							["hgun_P07_snds_F","Stun Pistol",500],
							["CUP_hgun_glock17_flashlight",nil,1500],
							["CUP_arifle_Mk16_CQC_FG",nil,3000],
							["CUP_arifle_Mk16_STD_EGLM",nil,3000],
							["MMG_01_tan_F",nil,3000],
							["CUP_srifle_M40A3",nil,3000],
							["CUP_lmg_Mk48_des_Aim_Laser",nil,3000],
							["CUP_arifle_CZ805_B",nil,3000],
							["CUP_srifle_DMR",nil,3000],
							["CUP_srifle_AWM_des_SBPMII",nil,3000],
							["CUP_lmg_M240",nil,3000],
							["CUP_lmg_L7A2",nil,3000],
							["CUP_launch_M136",nil,15000],
							["CUP_launch_FIM92Stinger",nil,15000],
							["16Rnd_9x21_Mag","Stun Magazine",50],
							["CUP_17Rnd_9x19_glock17",nil,125],
							["CUP_30Rnd_556x45_Stanag",nil,125],
							["150Rnd_93x64_Mag",nil,125],
							["CUP_5Rnd_762x51_M24",nil,125],
							["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,125],
							["CUP_20Rnd_762x51_CZ805B",nil,125],
							["CUP_20Rnd_762x51_DMR",nil,125],
							["CUP_5Rnd_86x70_L115A1",nil,125],
							["CUP_M136_M",nil,5000],
							["CUP_Stinger_M",nil,5000],
							["HandGrenade_Stone","Flashbang",50],
							["SmokeShellBlue","TearGas",50],
							["CUP_optic_CompM2_Desert",nil,50],
							["CUP_optic_SB_3_12x50_PMII",nil,50]
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
						["CUP_lmg_Pecheneg",nil,75000],
						["CUP_lmg_PKM",nil,75000],
						["CUP_arifle_RPK74",nil,75000],
						["CUP_srifle_VSSVintorez",nil,100000],
						["CUP_srifle_SVD",nil,125000],
						["CUP_arifle_AKM",nil,70000],
						["CUP_arifle_AKS74",nil,50000],
						["CUP_arifle_AK107",nil,50000],
						["CUP_arifle_AK74",nil,50000],
						["CUP_arifle_Sa58V_camo",nil,70000],
						["CUP_srifle_LeeEnfield",nil,50000],
						["arifle_Katiba_F",nil,30000],
						["arifle_Mk20_F",nil,25000],
						["arifle_MXC_Black_F",nil,40000],
						["arifle_TRG21_F",nil,25000],
						["CUP_hgun_Phantom_Flashlight",nil,6500],
						["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",nil,1200],
						["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",nil,750],
						["CUP_20Rnd_9x39_SP5_VSS_M",nil,500],
						["CUP_10Rnd_762x54_SVD_M",nil,800],
						["CUP_30Rnd_762x39_AK47_M",nil,275],
						["CUP_30Rnd_545x39_AK_M",nil,275],
						["CUP_30Rnd_Sa58_M",nil,300],
						["CUP_10x_303_M",nil,275],
						["30Rnd_65x39_caseless_green",nil,125],
						["30Rnd_556x45_Stanag",nil,275],
						["30Rnd_65x39_caseless_mag",nil,125],
						["CUP_18Rnd_9x19_Phantom",nil,125]
					]
				];
			};
		};
	};

	case "reb_blk":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["CUP_glaunch_M79",nil,1200000],
						["CUP_launch_RPG7V",nil,750000],
						["CUP_launch_RPG18",nil,750000],
						["CUP_glaunch_Mk13",nil,450000],
						["CUP_glaunch_M32",nil,450000],
						["CUP_srifle_M110",nil,250000],
						["V_HarnessOGL_brn",nil,1200000],
						["CUP_lmg_Mk48_wdl_Aim_Laser",nil,300000],
						["CUP_lmg_Mk48_des_Aim_Laser",nil,300000],
						["CUP_6Rnd_HE_M203",nil,80000],
						["CUP_1Rnd_HE_M203",nil,25000],
						["CUP_1Rnd_HEDP_M203",nil,25000],
						["CUP_PG7V_M",nil,50000],
						["CUP_RPG18_M",nil,50000],
						["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,3000],
						["CUP_20Rnd_762x51_B_M110",nil,3000]
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
						["CUP_srifle_CZ550",nil,12500],
						["CUP_hgun_MicroUzi",nil,12500],
						["CUP_hgun_M9",nil,3500],
						["CUP_hgun_Makarov",nil,3500],
						["CUP_hgun_PB6P9_snds",nil,3500],
						["Taurus Tracker Model 455",nil,6500],
						["CUP_hgun_Glock17","Glock 17",4500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_P07_F",nil,4000],
						["CUP_5x_22_LR_17_HMR_M",nil,50],
						["CUP_15Rnd_9x19_M9",nil,25],
						["CUP_8Rnd_9x18_Makarov_M",nil,25],
						["CUP_30Rnd_9x19_UZI",nil,125],
						["CUP_6Rnd_45ACP_M",nil,25],
						["CUP_17Rnd_9x19_glock17",nil,50],
						["9Rnd_45ACP_Mag",nil,50],
						["16Rnd_9x21_Mag",nil,25]
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
				["Binocular",nil,500],
				["ItemGPS",nil,500],
				["ToolKit",nil,1500],
				["FirstAidKit",nil,500],
				["ItemRadio",nil,500],
				["ItemMap",nil,100]
			]
		];
	};
};
