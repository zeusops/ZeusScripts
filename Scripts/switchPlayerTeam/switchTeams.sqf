/*
	Author: Sam Cooper
	Description: Switches the teams of all the players from west to east
	Return value:None
	Public: Yes
	Parameters:
	0 - <OBJECT> - Unit to remove NVGs from.
	Example(s):
	execVM "switchTeams.sqf";
*/


private _allGroupsWithPlayers = [];

//Creates a list of all the groups with players on blufor
{
	if (side _x == west ) then{
		_allGroupsWithPlayers pushBackUnique group _x
	};
} forEach allPlayers;

//Switches all players in the list to independent
{ 
	_group = createGroup [independent, true];
	_callsign = str _x;
	
	(units _x) joinSilent _group;
	_group setGroupIdGlobal [(_callsign select [2,20])];
	


} forEach _allGroupsWithPlayers;

//Create new groups.
{
	if (side _x == west) then{
		if (_x == leader group _x) then {
			_group = group _x;
			_leader = leader _group;
			_nameGroup = groupId _group;
			_data = [nil, _nameGroup, false];
			_id = clientOwner;
			["RegisterGroup", [_group, _leader, _data]] remoteExecCall ["zeusops_fnc_dynamicGroups", _id];
		};
	};

}forEach allPlayers;