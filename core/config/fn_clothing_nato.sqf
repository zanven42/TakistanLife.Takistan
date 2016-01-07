#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"NATO Clothing Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["TRYK_U_B_MARPAT_Desert2",nil,25],
			["TRYK_U_B_ARO1R_CombatUniform",nil,20]
		];
	};

	//Hats
	case 1:
	{
		_ret =
		[
			["TRYK_H_Booniehat_MARPAT_Desert",nil,25],
			["TRYK_H_AOR1",nil,20],
			["TRYK_H_Helmet_MARPAT_Desert2",nil,20]
			if(__GETC__(life_coplevel) > 13) then
			{
				_ret pushBack ["H_Beret_Colonel",nil,550];
			};
		];
	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Bandanna_khk",nil,25],
			["G_Bandanna_aviator",nil,20]
		];
	};

	//Vest
	case 3:
	{
		_ret =
		[
			["V_TacVest_khk",nil,25],
			["TRYK_V_ArmorVest_AOR1_2",nil,20],
			["TRYK_V_ArmorVest_AOR1",nil,20],
			["V_PlateCarrierH_CTRG",nil,20],
			["CUP_V_B_RRV_DA2",nil,20]
		];
	};


	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;
