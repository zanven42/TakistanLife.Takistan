#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["RDS_S1203_Civ_02",60000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};

	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};

	case "civ_car":
	{
		_return = [
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["CUP_C_Datsun",40000],
			["C_Van_01_transport_F",40000],
			["CUP_C_Datsun_4seat",40000],
			["CUP_C_Datsun_Covered",40000],
			["CUP_C_Datsun_Plain",40000],
			["CUP_C_CUV_CIV",40000],
			["CUP_C_LR_Transport_CTK",40000],
			["CUP_C_SUV_TK",40000],
			["CUP_C_UAZ_Unarmed_TK_CIV",40000],
			["RDS_Lada_Civ_02",40000],
			["RDS_Gaz24_Civ_03",40000],
			["RDS_Gaz24_Civ_01",40000],
			["RDS_Gaz24_Civ_02",40000],
			["RDS_Golf4_Civ_01",40000],
			["RDS_S1203_Civ_01",40000],
			["RDS_Octavia_Civ_01",40000],
			["RDS_Lada_Civ_04",40000],
			["RDS_Lada_Civ_01",40000]
		];
	};

	case "civ_truck":
	{
		_return = [
			["C_Van_01_transport_F",60000],
			["C_Van_01_box_F",75000],
			["I_Truck_02_transport_F",275000],
			["I_Truck_02_covered_F",350000],
			["CUP_C_Ural_Open_Civ_02",450000],
			["CUP_C_Ural_Civ_02",450000],
			["CUP_C_Ural_Open_Civ_03",450000],
			["CUP_C_Ural_Civ_03",450000],
			["CUP_C_Ural_Open_Civ_01",450000],
			["O_Truck_03_transport_F",450000],
			["O_Truck_03_covered_F",450000],
			["B_Truck_01_transport_F",450000],
			["B_Truck_01_covered_F",450000],
			["B_Truck_01_box_F",450000],
			["O_Truck_03_device_F",450000]
		];
	};

	case "reb_car":
	{
		_return = [
			["B_Quadbike_01_F",2500],
			["I_G_Offroad_01_F",15000],
			["O_G_Offroad_01_F",150000],
			["CUP_I_Datsun_PK",150000],
			["CUP_B_M1030",150000],
			["O_G_Offroad_01_armed_F",150000],
			["CUP_D_UAZ_MG_CHDKZ",150000],
			["CUP_B_LR_MG_GB_W",150000],
			["CUP_O_Ural_Open_CHDKZ",150000],
			["CUP_O_Ural_CHDKZ",150000]
		];
	};

	case "cop_car":
	{
		_return = [
			["C_Offroad_01_F",5000],
			["RDS_Lada_Civ_05",5000],
			["C_SUV_01_F",20000],
			["CUP_C_SUV_CIV",20000],
			["CUP_B_HMMWV_Unarmed_USA",5000],
			["CUP_B_HMMWV_Transport_USA",20000],
			["CUP_I_SUV_Armored_ION",5000],
			["CUP_B_LR_Transport_GB_D",20000],
			["CUP_B_Dingo_Des",5000]
		];

	if(__GETC__(life_coplevel) > 8) then {
		_return = [
			["CUP_B_HMMWV_M2_GPK_ACR",153000],
			["CUP_BAF_Jackal2_L2A1_D",153000],
			["CUP_O_Ural_SLA",150000],
			["CUP_B_M2A3Bradley_USA_D",150000],
			["CUP_B_M1A2_TUSK_MG_DES_US_Army",150000],
			["CUP_B_BRDM2_HQ_CDF",150000]
			];
		};
	};

	case "civ_air":
	{
		_return = [
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["O_Heli_Transport_04_black_F",750000],
			["O_Heli_Transport_04_box_F",750000],
			["CUP_C_Mi17_Civilian_RU",750000],
			["B_Heli_Transport_03_unarmed_F",750000],
			["CUP_Merlin_HC3",750000],
			["CUP_C_MI6A_RU",750000],
			["CUP_C_DC3_CIV",750000]
		];
	};

	case "cop_air":
	{
		_return = [
			["B_Heli_Light_01_stripped_F",253000],
			["O_Heli_Light_02_unarmed_F",150000],
			["CUP_B_AW159_Unarmed_BAF",150000]
		];

		if(__GETC__(life_coplevel) > 8) then {
			_return = [
				["CUP_B_UH1Y_UNA_F",153000],
				["CUP_B_UH1Y_GUNSHIP_F",150000],
				["CUP_B_C130J_USMC",153000],
				["CUP_B_MH60S_FFV_USMC",150000],
				["CUP_B_MV22_USMC",150000],
				["CUP_B_CH53E_USMC",150000],
				["C_Heli_light_01_ion_F",150000]
			];
		};
	};

	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 8) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};

	case "civ_ship":
	{
		_return = [
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "reb_blk":
	{
		_return = [
			["B_Heli_Light_01_armed_F",253000],
			["CUP_O_Mi17_TK",750000],
			["D_Heli_Light_02_F",253000],
			["CUP_O_Mi24_P_RU",750000],
			["CUP_O_BMP2_CHDKZ",253000],
			["CUP_O_BRDM2_CHDKZ",253000],
			["CUP_O_T72_CHDKZ",253000],
			["CUP_O_Ural_ZU23_CHDKZ",253000],
			["CUP_O_BRDM2_HQ_CHDKZ",253000]
		];
	};
};

_return;
