# Arma 3 Map Restriction Dev Branch, Bugs to be expected

This script and files make it possible for the server to restrict who can place markers down/draw on the map depending on which group is allowed to draw on it.

When the "DisableMapRestrictor" global variable is set to true, the script will not start delete markers untill the value is set to false. To stop removing markers, change the value back to false.

## How to use

1. Copy the Repository or download the zip.
2. Copy the functions folder to your mission folder.
3. Copy the 'intiServer.sqf' and the 'initPlayerLocal.sqf' files to your mission folder.
4. If the files already exist then paste the codes, found in **Custom installation**, in the correct files.
5. Run your mission in a dedicated enviroment (should work fine on singleplayer aswell).

If the files are in the mission folder paste the contents of the files in the existing files.

## Made by

[Sam Cooper](https://github.com/kasteelharry)
