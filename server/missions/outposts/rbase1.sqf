// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: Outpost1.sqf
//	@file Author: JoSchaap, AgentRev

[
	// Class, Position, Direction, Init (optional)
	["Land_PowerPoleWooden_small_F", [3.50317, 2.47949, 0], 325],
	["Land_PowerPoleWooden_small_F", [-4.50623, 2.23486, 0], 35],
	["Land_BagFence_Long_F", [3.52722, 4.10938, 0], 90],
	["Land_PowerPoleWooden_small_F", [-3.84167, -4.69043, 0], 150],
	["Land_BagFence_Long_F", [-4.8949, 3.82715, 0], 90],
	["Land_BagFence_Long_F", [4.29211, -6.27881, 0], 90],
	["Land_BagFence_Long_F", [-4.06665, -6.43359, 0], 90],
	["Land_BagBunker_Tower_F", [5.96436, 7.86963, 0], 180],
	["Land_BagBunker_Small_F", [-6.06433, -10.0005, 0], 0],
	["Land_BagBunker_Small_F", [6.27478, -9.8975, 0], 0],
	["Box_FIA_Support_F", [6.26294, -10.02422, 0], 180, { [_this, ["mission_TOP_Gear1","mission_TOP_Sniper","mission_USSpecial","mission_USLaunchers","mission_USSpecial","mission_Main_A3snipers"] call BIS_fnc_selectRandom] call fn_refillbox }],
	["Land_HBarrier_5_F", [-11.583, -5.92871, 0], 45],
	["Land_HBarrier_5_F", [-12.4873, 5.40869, 0], 315],
	["CamoNet_INDP_open_F", [14.4102, -1.2915, 0], 270], //CamoNet_INDP_open_F
	["Land_BagBunker_Small_F", [-15.6963, -0.902344, 0], 90],
	["Land_PowerPoleWooden_small_F", [14.8219, 1.71777, 0], 85],
	["I_HMG_01_high_F", [6.15, 8.8, 0], 0, { if (random 1 < 0.5) exitWith { deleteVehicle _this }; [_this] call vehicleSetup }]
]
