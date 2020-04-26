/*
    MapRestrictorEssentials

    Runs the script from mission start, can also be run through debug console.
    Make it active by using 'missionNamespace setVariable ["DisableMapRestrictor", false, true];'
    Needs to be called on 'initPlayerLocal.sqf' to have markers in local channels to be removed
*/


////////////////////////////////////////
////                                ////
////      Changeable variables      ////
////                                ////
////////////////////////////////////////

_AllowedToDrawGroup = ["GroupName1", "GroupName2", "etc..."];



////////////////////////////////////////
////                                ////
////        DO NOT CHANGE!          ////
////                                ////
////////////////////////////////////////

missionNamespace setVariable ["WhiteListedIDs", [], true];
missionNamespace setVariable ["DisableMapRestrictor", true, true];
missionNameSpace setVariable ["WhitelistedGroup",_AllowedToDrawGroup, true];

[] spawn kast_fnc_KeepMapClean;

/*
    Will work from version 1.96 and onwards:
*/ 
onPlayerConnected 
{
    missionNamespace setVariable [_name, _idstr, true];
};