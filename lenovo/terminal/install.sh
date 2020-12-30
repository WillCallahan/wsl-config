#!/bin/bash

echo "Installing Windows Terminal Settings..."
cp settings.json /c/Users/willc/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json 
echo "Syncing Icons..."
cp *.png /c/Users/willc/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/
cp *.ico /c/Users/willc/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/
echo "Settings Configured!"
