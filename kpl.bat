@echo off
goto menu

:menu
cls
title Kroner's Pekora Launcher
echo           _____                    _____                    _____  
echo         /\    \                  /\    \                  /\    \ 
echo        /::\____\                /::\    \                /::\____\
echo       /:::/    /               /::::\    \              /:::/    /
echo      /:::/    /               /::::::\    \            /:::/    / 
echo     /:::/    /               /:::/\:::\    \          /:::/    /  
echo    /:::/____/               /:::/__\:::\    \        /:::/    /   
echo   /::::\    \              /::::\   \:::\    \      /:::/    /    
echo  /::::::\____\________    /::::::\   \:::\    \    /:::/    /     
echo /:::/\:::::::::::\    \  /:::/\:::\   \:::\____\  /:::/    /      
echo/:::/  ^|:::::::::::\____\/:::/  \:::\   \:::^|    ^|/:::/____/       
echo\::/   ^|::^|~~~^|~~~~~     \::/    \:::\  /:::^|____^|\:::\    \       
echo \/____^|::^|   ^|           \/_____/\:::\/:::/    /  \:::\    \      
echo       ^|::^|   ^|                    \::::::/    /    \:::\    \     
echo       ^|::^|   ^|                     \::::/    /      \:::\    \    
echo       ^|::^|   ^|                      \::/____/        \:::\    \   
echo       ^|::^|   ^|                       ~~               \:::\    \  
echo       ^|::^|   ^|                                         \:::\    \ 
echo       \::^|   ^|                                          \:::\____\
echo        \:^|   ^|                                           \::/    /
echo         \^|___^|                                            \/____/ 
echo.
echo -----------------------------------------------------------------------
echo Kroner's Pekora Launcher
echo -----------------------------------------------------------------------
echo 1. Help
echo 2. Join server
echo.
set /p number="Choose an option [1-2]: "

if "%number%"=="1" goto help
if "%number%"=="2" goto joiningthingy

:joiningthingy
cls
echo.
set /p authticket="AuthTicket (without quotes or --): "
echo.
set /p gameid="Game ID (only number): "
echo.
echo Launching Pekora for game ID %gameid%...
timeout /t 1 /nobreak >nul

"ProjectXPlayerBeta.exe" --authenticationUrl "https://www.pekora.org/Login/Negotiate.ashx" --authenticationTicket "%authticket%" --joinScriptUrl "https://www.pekora.org/Game/PlaceLauncher.ashx?request=RequestGame^&placeId=%gameid%^&isPartyLeader=false^&gender=^&isTeleport=true"

echo Game is running! Bailing out.
timeout /t 3 /nobreak >nul
exit

:help
cls
echo This code is NOT official Pekora launcher. It's only temporary solution.
echo .
echo For the code to work, put it simply in the 2021M. Warning! Do not put it anywhere else!
echo You can create shortcut for desktop... and that's it.
echo .
echo DM me on Discord if you need help: kroneristaken
echo .
echo Press any key to return to main menu...
pause >nul
goto menu