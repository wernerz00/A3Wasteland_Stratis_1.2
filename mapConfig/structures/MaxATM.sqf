_pos = [2435.9,5690.48,0]; //North gunstore
_object = createVehicle ["Land_Atm_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 28.1818;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage true;

_pos = [3268.78,2942.12,0.405853]; //maxwell
_object = createVehicle ["Land_Atm_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 228.636;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage true;