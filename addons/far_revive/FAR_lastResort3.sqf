// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: FAR_lastResort.sqf
//	@file Author: AgentRev
//	@Edited 09/27/15 -wRV

private ["_hasOne", "_hasTwo", "_lolZ", "_pos", "_gas", "_medicine"];

_hasOne = "SmokeShellYellow" in magazines player;
_hasTwo = "SmokeShellYellow" in magazines player;

_medicine = 	[									// ["filename", volume, bomb timer]
				["lol", 0.7, 1.75],
				["lol2", 0.7, 1.9]
			] call BIS_fnc_selectRandom;

setNoGasStatus={
    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [0];
    "dynamicBlur" ppEffectCommit 10;
    resetCamShake;
    20 fadeSound 1;
};

setGasStatus = { 
    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [15];
	"dynamicBlur" ppEffectCommit 5;
	enableCamShake true;
	addCamShake [10, 45, 10];
//	player setFatigue 0;
	5 fadeSound 0.1;
};

gasDamage = {
switch (true) do
	{
	case(_damageRadius < 3.5):
		{player setDamage (damage player + 0.15);
		  sleep 1;
		};
  
    case(_damageRadius < 5 && _damageRadius > 2.5):
		{player setDamage (damage player + 0.10);
		 sleep 2;
		};
		
    case(_damageRadius < 10 && _damageRadius > 5):
		 {player setDamage (damage player + 0.05);
		  sleep 3;
		 };
	};
};
	
  
if !(player getVariable ["performingDuty2", false]) then
{
	if (_hasOne || _hasTwo) then
	{
			player setVariable ["performingDuty2", true];
			playSound3D [call currMissionDir + "client\sounds\" + (_medicine select 0) + ".ogg", vehicle player, false, getPosASL player, (_medicine select 1), 1, 1000];

			if (_hasTwo) then
			{
				_lolZ = "SmokeShellYellow";
				player removeMagazine "SmokeShellYellow";
			}
			else
			{
				_lolZ = "SmokeShellYellow";
				player removeMagazine "SmokeShellYellow";
			};

			sleep (_medicine select 2);

			_pos = getPosATL player;
			//_pos set [2, (_pos select 2) + 0.5];
			_gas = "SmokeShellYellow" createVehicle _pos;
			_gas = "SmokeShellYellow" createVehicle _pos;
			_gas attachto [_pos,[0,0,0]];
			//_gas = createMine [_lolZ, _pos, [], 0]; //createMine
			//_gas setDamage 1;
			//player setDamage 1;
			_smokeShell = nearestObject [getPosATL player, "SmokeShellYellow"];
			//_curPlayerInvulnState = player getVariable ["isAdminInvulnerable", false];
			_damageRadius = (_smokeShell distance player);
			_damageRadius < 10 && velocity _smokeShell isEqualTo [ 0, 0, 0 ];
			//&& !_curPlayerInvulnState;
			_gas setDamage 0.49;
			call setGasStatus;
			player setDamage 1;
			player setVariable ["performingDuty2", nil];
	}
	else
	{
		titleText ["Missing funny gas canisters.", "PLAIN", 0.3];
	};
};