// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 1, 270, []],
	["GenStore2", 4, 310, []],
	["GenStore3", 4, 340, []],
	["GenStore4", 0, 5, []],
	//["GenStore5", 1, 5, []], // South Coast
	["GenStore6", 1, 155, []], // ArPrt

	["GunStore2", 1, 138, []],
	["GunStore3", 3, 140, []], //mx
	["GunStore4", 1, 30, []],
	["GunStore5", 1, 330, []],
	["GunStore6", 3, 250, []], //agio

	["VehStore1", 0, 195, ["Planes"]],
	["VehStore2", 2, 285, ["Boats"]],
	["VehStore3", 1, 245, ["Planes"]],
	["VehStore4", 1, 135, ["Planes"]],
	["VehStore5", 1, 130, ["Planes","Boats"]],
	//["VehStore6", 1, 130, ["Planes","Boats"]]
	["VehStore7", 0, 240, ["Planes","Boats"]] // mx - ["VehStore7", 1, 340, ["Planes","Boats"]
	
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	['GenStore1', [['weapon', ''], ['uniform', 'U_B_PilotCoveralls']]],
	['GenStore2', [['weapon', ''], ['uniform', 'U_O_PilotCoveralls']]],
	['GenStore3', [['weapon', ''], ['uniform', 'U_I_pilotCoveralls']]],
	['GenStore4', [['weapon', ''], ['uniform', 'U_I_pilotCoveralls']]],
	//['GenStore5', [['weapon', ''], ['uniform', 'U_I_pilotCoveralls']]],
	['GenStore6', [['weapon', ''], ['uniform', 'U_I_pilotCoveralls']]],

	
	["GunStore2", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]], //mx
	["GunStore4", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],	
	["GunStore6", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	

	['VehStore1', [['weapon', ''], ['uniform', 'U_BG_Guerilla2_1']]],
	['VehStore2', [['weapon', ''], ['uniform', 'U_Rangemaster']]],
	['VehStore3', [['weapon', ''], ['uniform', 'U_B_HeliPilotCoveralls']]],
	['VehStore4', [['weapon', ''], ['uniform', 'U_Competitor']]],
	['VehStore5', [['weapon', ''], ['uniform', 'U_Competitor']]],
	//['VehStore6', [['weapon', ''], ['uniform', 'U_Competitor']]]
	['VehStore7', [['weapon', ''], ['uniform', 'U_Rangemaster']]] // max
];
