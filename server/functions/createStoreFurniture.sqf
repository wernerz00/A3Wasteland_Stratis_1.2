// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: createStoreFurniture.sqf
//	@file Author: His_Shadow
//	@file Args:

if (!isServer) exitWith {};

private ["_storeOwner", "_bPos", "_pDir", "_pDDirMod", "_chair", "_desk", "_base", "_deskPos"];

_storeOwner = _this select 0;
_bPos = _this select 1;
_pDir = _this select 2;
_pDDirMod = _this select 3;
_base = getPos _storeOwner;

_pDDirMod = _pDDirMod + 180; // desk model is inverted

_bPos set [2, (_bPos select 2) + 0.05];

_desk = createVehicle ["Land_CashDesk_F", _base, [], 0, "None"]; //Land_CashDesk_F
//_deskPos = [(_bPos select 0) + 1.2 * sin _pDir, (_bPos select 1) + 1.2 * cos _pDir, _bPos select 2];
_deskPos = _bPos vectorAdd ([[0, -0.8, 0], -_pDDirMod] call BIS_fnc_rotateVector2D);
_desk setPosATL _deskPos;
_desk setDir _pDDirMod;
_desk setVariable ["R3F_LOG_disabled", true, true];
_desk allowDamage false;
_desk disableCollisionWith _storeOwner;

_desk
