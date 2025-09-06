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
echo 2. Join game
echo 3. Settings
echo.
set /p number="Choose an option [1-2]: "

if "%number%"=="1" goto help
if "%number%"=="2" goto joiningthingycheck
if "%number%"=="3" goto settings

:joiningthingycheck
cls
if exist settings.kpl goto joiningthingy2
if not exist settings.kpl goto joiningthingy

:joiningthingy2
cls
set /p "authticket=" < "settings.kpl"
echo.
set /p gameid="Game ID (only number): "
echo.
echo Launching Pekora for game ID %gameid%...timeout /t 1 /nobreak >nul

"ProjectXPlayerBeta.exe" --authenticationUrl "https://www.pekora.org/Login/Negotiate.ashx" --authenticationTicket "%authticket%" --joinScriptUrl "https://www.pekora.org/Game/PlaceLauncher.ashx?request=RequestGame&placeId=%gameid%&isPartyLeader=false&gender=&isTeleport=true"

echo Game is running! Bailing out.
timeout /t 3 /nobreak >nul
exit



:joiningthingy
cls
echo.
set /p authticket="AuthTicket (without quotes or --): "
echo.
set /p gameid="Game ID (only number): "
echo.
echo Launching Pekora for game ID %gameid%...
timeout /t 1 /nobreak >nul

"ProjectXPlayerBeta.exe" --authenticationUrl "https://www.pekora.org/Login/Negotiate.ashx" --authenticationTicket "%authticket%" --joinScriptUrl "https://www.pekora.org/Game/PlaceLauncher.ashx?request=RequestGame&placeId=%gameid%&isPartyLeader=false&gender=&isTeleport=true"

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

:settings
cls
title KPL - Settings
if exist settings.kpl goto smain
if not exist settings.kpl goto createsettings


:createsettings
cls
title KPL - Creating settings file...
echo REPLACE-ME> settings.kpl
echo File for settings settings.kpl has been made. Do not delete it.
timeout /t 3 /nobreak >nul
goto menu

:smain
cls
title KPL - Settings
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
echo Kroner's Pekora Launcher - Settings
echo -----------------------------------------------------------------------
echo 1. View authenticationTicket
echo 2. Change authenticationTicket
echo 3. Delete settings.kpl
echo 4. Go back to menu
set /p settingsselect="Select game: "

if "%settingsselect%"=="1" goto viewAT
if "%settingsselect%"=="2" goto changeAT
if "%settingsselect%"=="3" goto deleteConfig
if "%settingsselect%"=="4" goto menu


:viewAT
echo ----------------------------------------------------------------------------------------
echo Current authenticationTicket (last dot is added automatically by batch, its not in file)
echo ----------------------------------------------------------------------------------------
type settings.kpl
echo .
echo Press any key to go to settings menu...
pause >nul
goto smain

:changeAT
echo -----------------------
echo Opening settings.kpl...
echo -----------------------
notepad.exe "settings.kpl"
pause
goto smain

:deleteConfig
echo ------------------------
echo Deleting settings.kpl...
echo ------------------------
echo You'll be redirected to main menu
DEL "settings.kpl"
timeout /t 5 /nobreak >nul
goto menu