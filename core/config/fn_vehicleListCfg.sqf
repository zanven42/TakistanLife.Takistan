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
		_return = 
		[
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
			["CUP_C_UAZ_Open_TK_CIV",40000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000]
		];	
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_SUV_01_F",20000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",30000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
		
		if(license_civ_rebel) then {
			_return = 
			[
				["B_Heli_Light_01_F",253000],
				["O_Heli_Light_02_unarmed_F",750000],
				["B_Heli_Light_01_armed_F",253000],
				["O_Heli_Light_02_F",750000],
				["CUP_O_Mi8_RU",750000],
				["CUP_B_Mi17_CDF",750000],
				["CUP_B_Mi35_CZ",750000],
				["CUP_B_Mi171Sh_ACR",750000]
			];
		};
	};
		
	case "cop_air":
	{
		_return =
		[
			["CUP_B_UH1Y_UNA_USMC",253000],
			["CUP_B_AW159_Unarmed_BAF",150000],
			["CUP_Merlin_HC3",150000],
			["CUP_B_UH60L_US",150000],
			["CUP_B_UH60L_Unarmed_US",150000],
			["B_Heli_Light_01_F",150000]
			
		];
		
		if(__GETC__(life_coplevel) > 8) then {
			_return = 
			[
				["CUP_B_CH47F_GB",153000],
				["CUP_B_UH1Y_GUNSHIP_USMC",150000],
				["CUP_B_AW159_Armed_BAF",153000],
				["O_Heli_Light_02_F",150000],
				["CUP_B_C130J_USMC",150000],
				["CUP_B_MV22_USMC",150000],
				["CUP_B_CH47F_USA",150000],
				["CUP_B_CH53E_USMC",150000]
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
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	
	case "reb_blk":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["B_Heli_Light_01_armed_F",253000],
			["O_Heli_Light_02_F",750000],
			["CUP_O_Mi8_RU",750000],
			["CUP_B_Mi17_CDF",750000],
			["CUP_B_Mi35_CZ",750000],
			["CUP_B_Mi171Sh_ACR",750000]
		];
	};
};

_return;
