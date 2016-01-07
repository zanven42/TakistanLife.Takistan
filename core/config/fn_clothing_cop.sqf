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
ctrlSetText[3103,"TPF/NATO Clothing Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["rds_uniform_Policeman",nil,25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["CUP_U_O_TK_Officer",nil,350];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["CUP_U_O_TK_Green",nil,550];
			_ret pushBack ["CUP_U_O_TK_MixedCamo",nil,550];
		};
	};

	//Hats
	case 1:
	{
		_ret pushBack ["rds_police_cap",nil,25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_Beret_blk",nil,350];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["H_Beret_02",nil,550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,550];
		};
	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Bandanna_oli",nil,25],
			["G_Aviator",nil,20]
		];
	};

	//Vest
	case 3:
	{
		_ret pushBack ["CUP_V_O_TK_OfficerBelt2",nil,25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["TRYK_V_Sheriff_BA_OD",nil,350];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["TRYK_V_tacv1LC_SRF_OD",nil,550];
		};
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
