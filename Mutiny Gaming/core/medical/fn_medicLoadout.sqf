/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "U_Marshal";
player addVest "CUP_V_B_LHDVest_Red";
player addHeadgear "H_Cap_marshal";
player addGoggles "G_Aviator";
player addItem "Medikit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[[player,0,"textures\medic_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

[] call life_fnc_saveGear;
