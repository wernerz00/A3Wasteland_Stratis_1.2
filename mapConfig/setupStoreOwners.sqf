//@file Version: 1.0
//@file Name: setupStoreOwners.sqf
//@file Author: Cael817, Many thanks to AgentRev for the CreateUnit part.
//@file Desc: For placing stores and markers

// If you need the unit object afterwards:
//_unit = missionNamespace getVariable _name;
_debug = false;
_grp = createGroup sideLogic;

//Gunstore 3 - Maxwell
_name = "GunStore3";
_pos = [3271.3972,2944,229.16788]; // Always remember, SQM is [X,Z,Y] and SQF needs [X,Y,Z]
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [3272.032,2944.291,229.16927];
_object = createMarker ["GunStore3_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GunStore3_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//VehStore7 - Maxwell
_name = "VehStore7";
_pos = [3271.3972,2944.8462,229.16788]; //  3272.8662,229.17892,2940.4248
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [3285.4607,2957.146,229.13141];
_object = createMarker ["VehStore7_landSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

_pos = [3283.76,2932.3,0.00143433]; //3288.3525,2936.0068,229.18008
_object = createMarker ["VehStore7_heliSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//Gunstore 6 - Agios
_name = "GunStore6";
_pos = [2763.6104,1760.5659,143.97308];
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [2764.5476,1765.5562,144.08711];
_object = createMarker ["GunStore6_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GunStore6_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;

//GenStore 6 - Airport
_name = "GenStore6";
_pos = [1945.0953,5718.7441,5.6564589];
"C_man_1_1_F" createUnit [_pos, _grp, format ["%1 = this; this setVehicleVarName '%1'; [this] spawn A3W_fnc_setupStoreNPC", _name]];

_pos = [1943.7831,5719,5];
_object = createMarker ["GenStore6_objSpawn", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "GenStore6_objSpawn";
If (_debug) then {
	_object setMarkertype "mil_warning";
}else{
	_object setMarkertype "Empty";
};
_object setMarkerColor "ColorBlack";
_object setMarkerDir 0;


