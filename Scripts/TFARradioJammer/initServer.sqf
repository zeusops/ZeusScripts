/*
	initServer.sqf lines of code 
	By @kasteelharry
*/


///////////////////////////////////
///                             ///
///    EDITABLE VARIABLE        ///
///                             ///
///////////////////////////////////


_jammerNames = [jammer1, jammer2, etc]; //sets the jammer variable names

_jammerRadius = 1000; //Sets jammer radius
_jammerStrength = 100; //Strength of the jammer, max is 100



///////////////////////////////////
///                             ///
///         DO NOT EDIT         ///
///                             ///
///////////////////////////////////

// Jammer

missionNamespace setVariable ["Jammers", _jammerNames, true];
missionNamespace setVariable ["JammerRadius", _jammerRadius, true];
missionNamespace setVariable ["JammerStrength", _JammerStrength, true];
