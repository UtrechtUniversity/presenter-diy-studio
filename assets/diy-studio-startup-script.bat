@echo off

TITLE DIY Studio App Console

:: Start OBS
cd /d "C:\Program Files\obs-studio\bin\64bit"
start "" "obs64.exe" --portable

:: Start Dual Monitor Tools
cd /d "C:\Program Files (x86)\Dual Monitor Tools"
start "" "DMT.exe"

:: Start Stream Deck
cd /d "C:\Program Files\Elgato\StreamDeck\"
start "" "StreamDeck.exe"

:: Start DIY Studio App Manager
cd /d "C:\Software\diy-studio-app"
start "" "python" "C:\Software\diy-studio-app-manager\app_manager.py"