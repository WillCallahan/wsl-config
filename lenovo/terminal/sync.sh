#!/bin/bash

echo "Syncing Windows Terminal Settings..."
cp /c/Users/willc/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json settings.json
echo "Syncing Icons..."
cp *.png /c/Users/willc/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/
cp *.ico /c/Users/willc/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/
echo "Settings Synced!"
