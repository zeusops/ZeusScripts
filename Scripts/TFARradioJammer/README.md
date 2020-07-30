# TFAR Radio Jammer

This script is based upon the amazing TFAR jamming script made by Rebel12340 on [Armaholic](http://www.armaholic.com/page.php?id=32660).

## Installation

- Add the files to your mission folder or copy the content over to already existing files.
- In the 3den editor place down the objects you want as the jammer and give them variable names.
- Add the variables names to the list in [initServer.sqf](initServer.sqf).
- Edit the other variables to your liking.

## Usage

The script runs from mission start. To start the script during the mission run global:

```sqf

jamRadiosServer = [missionNamespace getVariable "Jammers",missionNamespace getVariable "JammerRadius", missionNamespace getVariable "JammerStrength"] call ZO_fnc_TFARJamRadios;

```

## Made by

[Sam Cooper](https://github.com/kasteelharry)
