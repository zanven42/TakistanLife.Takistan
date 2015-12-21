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
		case "cop_equipment":
	{
		switch(true) do
		{
			case (playerside !=west):{"You are not a cop"};
			case (__GETC__(life_coplevel) > 0):
			{
				["Basic Equipment",
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

	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) == 0): {"You are not a whitelisted officer of the law!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["TSF Private Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5","MP5A5",20000],
							["16Rnd_9x21_Mag",nil,50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_30Rnd_9x19_MP5","30Rnd 9mm Magazine",125]
							
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
							["CUP_smg_MP5A5","MP5A5",20000],
							["CUP_arifle_M4A1_black","M4A1 (black)",10000],
							["16Rnd_9x21_Mag",nil,50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_30Rnd_9x19_MP5","30Rnd 9mm Magazine",125],
							["CUP_30Rnd_556x45_Stanag","30Rnd 5.56mm STANAG",1000]

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
							["CUP_smg_MP5A5","MP5A5",20000],
							["CUP_arifle_M4A1_black","M4A1 (black)",10000],
							["CUP_arifle_G36A","G36A",10000],
							["CUP_arifle_XM8_Carbine","XM8",1700],
							["CUP_arifle_FNFAL_railed","FN FAL (Railed)",1700],
							["16Rnd_9x21_Mag",nil,50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_30Rnd_9x19_MP5","30Rnd 9mm Magazine",125],
							["CUP_30Rnd_556x45_Stanag","30Rnd 5.56mm STANAG",1000],
							["CUP_30Rnd_556x45_G36","30Rnd 5.56mm G36",1700],
							["CUP_20Rnd_762x51_FNFAL_M","20Rnd 7.62mm FNFAL",1700]

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
							["CUP_smg_MP5A5","MP5A5",20000],
							["CUP_arifle_M4A1_black","M4A1 (black)",10000],
							["CUP_arifle_G36A","G36A",10000],
							["CUP_arifle_XM8_Carbine","XM8",1700],
							["CUP_arifle_FNFAL_railed","FN FAL (Railed)",1700],
							["CUP_arifle_Mk16_CQC","Mk16 Mod 0 CQC",1700],
							["CUP_arifle_CZ805_A1","CZ 805 A1",10000],
							["CUP_srifle_M14","	M14",10000],
							["16Rnd_9x21_Mag",nil,50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_30Rnd_9x19_MP5","30Rnd 9mm Magazine",125],
							["CUP_30Rnd_556x45_Stanag","30Rnd 5.56mm STANAG",1000],
							["CUP_30Rnd_556x45_G36","30Rnd 5.56mm G36",1700],
							["CUP_20Rnd_762x51_FNFAL_M","20Rnd 7.62mm FNFAL",1700],
							["CUP_20Rnd_762x51_DMR","20Rnd 7.62mm DMR",50],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["NATO 1st Lieutenant Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5","MP5A5",20000],
							["CUP_arifle_M4A1_black","M4A1 (black)",10000],
							["CUP_arifle_G36A","G36A",10000],
							["CUP_arifle_XM8_Carbine","XM8",1700],
							["CUP_arifle_FNFAL_railed","FN FAL (Railed)",1700],
							["CUP_arifle_Mk16_CQC","Mk16 Mod 0 CQC",1700],
							["CUP_arifle_CZ805_A1","CZ 805 A1",10000],
							["CUP_srifle_M14","	M14",10000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_arifle_L85A2_Holo_laser","L85A2 Assault Rifle",1700],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT","M24 (woodland)",10000],
							["CUP_launch_RPG7V","RPG-7V",10000],
							["CUP_30Rnd_556x45_G36","30Rnd 5.56mm G36",1700],
							["CUP_30Rnd_9x19_MP5","30Rnd 9mm Magazine",125],
							["CUP_20Rnd_762x51_FNFAL_M","20Rnd 7.62mm FNFAL",1700],
							["CUP_30Rnd_556x45_Stanag","30Rnd 5.56mm STANAG",50],
							["CUP_20Rnd_762x51_DMR","20Rnd 7.62mm DMR",50],
							["CUP_5Rnd_762x51_M24","5Rnd 7.62mm M24",10000],
							["16Rnd_9x21_Mag",nil,50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["NATO Captain Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5","MP5A5",20000],
							["CUP_arifle_M4A1_black","M4A1 (black)",10000],
							["CUP_arifle_G36A","G36A",10000],
							["CUP_arifle_XM8_Carbine","XM8",1700],
							["CUP_arifle_FNFAL_railed","FN FAL (Railed)",1700],
							["CUP_arifle_Mk16_CQC","Mk16 Mod 0 CQC",1700],
							["CUP_arifle_CZ805_A1","CZ 805 A1",10000],
							["CUP_srifle_M14","	M14",10000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["CUP_arifle_L85A2_Holo_laser","L85A2 Assault Rifle",1700],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT","M24 (woodland)",10000],
							["CUP_launch_RPG7V","RPG-7V",10000],
							["CUP_30Rnd_556x45_G36","30Rnd 5.56mm G36",1700],
							["CUP_30Rnd_9x19_MP5","30Rnd 9mm Magazine",125],
							["CUP_20Rnd_762x51_FNFAL_M","20Rnd 7.62mm FNFAL",1700],
							["CUP_30Rnd_556x45_Stanag","30Rnd 5.56mm STANAG",50],
							["CUP_20Rnd_762x51_DMR","20Rnd 7.62mm DMR",50],
							["CUP_5Rnd_762x51_M24","5Rnd 7.62mm M24",10000],
							["16Rnd_9x21_Mag",nil,50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_PG7V_M","RPG 18",10000],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["NATO Major Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5","MP5A5",20000],
							["CUP_arifle_M4A1_black","M4A1 (black)",10000],
							["CUP_arifle_G36A","G36A",10000],
							["CUP_arifle_XM8_Carbine","XM8",1700],
							["CUP_arifle_FNFAL_railed","FN FAL (Railed)",1700],
							["CUP_arifle_Mk16_CQC","Mk16 Mod 0 CQC",1700],
							["CUP_arifle_CZ805_A1","CZ 805 A1",10000],
							["CUP_srifle_M14","	M14",10000],
							["CUP_arifle_L85A2_Holo_laser","L85A2 Assault Rifle",1700],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT","M24 (woodland)",10000],
							["CUP_srifle_M24_ghillie","	M24 (camo woodland)",1700],
							["CUP_launch_RPG7V","RPG-7V",10000],
							["CUP_30Rnd_556x45_G36","30Rnd 5.56mm G36",1700],
							["CUP_30Rnd_9x19_MP5","30Rnd 9mm Magazine",125],
							["CUP_20Rnd_762x51_FNFAL_M","20Rnd 7.62mm FNFAL",1700],
							["CUP_30Rnd_556x45_Stanag","30Rnd 5.56mm STANAG",50],
							["CUP_20Rnd_762x51_DMR","20Rnd 7.62mm DMR",50],
							["CUP_5Rnd_762x51_M24","5Rnd 7.62mm M24",10000],
							["16Rnd_9x21_Mag",nil,50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_PG7V_M","RPG 18",10000],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
			case (__GETC__(life_coplevel) >= 8):
			{
				["NATO General Loadout",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["CUP_smg_MP5A5","MP5A5",20000],
							["CUP_arifle_M4A1_black","M4A1 (black)",10000],
							["CUP_arifle_G36A","G36A",10000],
							["CUP_arifle_XM8_Carbine","XM8",1700],
							["CUP_arifle_FNFAL_railed","FN FAL (Railed)",1700],
							["CUP_arifle_Mk16_CQC","Mk16 Mod 0 CQC",1700],
							["CUP_arifle_CZ805_A1","CZ 805 A1",10000],
							["CUP_srifle_M14","	M14",10000],
							["CUP_arifle_L85A2_Holo_laser","L85A2 Assault Rifle",1700],
							["CUP_srifle_M24_wdl_LeupoldMk4LRT","M24 (woodland)",10000],
							["CUP_srifle_M24_ghillie","M24 (camo woodland)",1700],
							["CUP_launch_RPG7V","RPG-7V",10000],
							["CUP_30Rnd_556x45_G36","30Rnd 5.56mm G36",1700],
							["CUP_30Rnd_9x19_MP5","30Rnd 9mm Magazine",125],
							["CUP_20Rnd_762x51_FNFAL_M","20Rnd 7.62mm FNFAL",1700],
							["CUP_30Rnd_556x45_Stanag","30Rnd 5.56mm STANAG",50],
							["CUP_20Rnd_762x51_DMR","20Rnd 7.62mm DMR",50],
							["CUP_5Rnd_762x51_M24","5Rnd 7.62mm M24",10000],
							["16Rnd_9x21_Mag",nil,50],
							["20Rnd_556x45_UW_mag","Taser Magazine",125],
							["CUP_PG7V_M","RPG 18",10000],
							["HandGrenade_Stone","Flashbang",1700],
							["SmokeShellBlue","TearGas",50]

					]
				];
			};
		};
	};
	
	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
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
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
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
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
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
