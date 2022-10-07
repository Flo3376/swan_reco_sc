
echo off
::pensez à télécharger nircmd https://www.nirsoft.net/utils/nircmd.html
::https://www.nirsoft.net/utils/nircmd.zip


nircmd exec show C:\Program Files\Roberts Space Industries\RSI Launcher\RSI Launcher.exe
timeout 5 > nul
cd C:\Users\FP24V\OneDrive\Bureau\
mkdir keybinding
cd C:\Users\FP24V\OneDrive\Bureau\keybinding

set /A run=2


:start

tasklist /fi "ImageName eq RSI Launcher.exe" /fo csv 2>NUL | find /I "RSI Launcher.exe">NUL
::echo etat de error level:%ERRORLEVEL%
if "%ERRORLEVEL%"=="1" (goto exit)

tasklist /fi "ImageName eq StarCitizen.exe" /fo csv 2>NUL | find /I "StarCitizen.exe">NUL
::echo etat de error level:%ERRORLEVEL%
if "%ERRORLEVEL%"=="0" (goto on)
if "%ERRORLEVEL%"=="1" (goto off)

:on
::echo in prg on
::echo etat  de run:%run%
if /I "%run%" EQU "2" goto is_wake
if /I "%run%" EQU "1" goto is_lock
if /I "%run%" EQU "0" goto is_on



:off
::echo in prg off
if /I "%run%" EQU "0" goto is_lock
if /I "%run%" EQU "1" goto is_off
if /I "%run%" EQU "2" goto is_wake

:is_on
::echo in prg is_on
cd C:\Users\FP24V\OneDrive\Bureau\keybinding

set CUR_YYYY=%date:~6,4%
set CUR_MM=%date:~3,2%
set CUR_DD=%date:~0,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%
set SUBFILENAME=%CUR_YYYY%-%CUR_MM%-%CUR_DD%_%"_"%%CUR_HH%-%CUR_NN%-%CUR_SS%
mkdir %SUBFILENAME%
cd %SUBFILENAME%
mkdir start
copy "I:\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Profiles\default\*"  start
set run=1
echo Star Citizen est en route
timeout 5 > nul
goto start

:is_lock
::echo in prg is_lock
timeout 5 > nul
goto start


:is_off
::echo in prg is_off
mkdir end
copy "I:\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Profiles\default\*"  end
cd..

set run=0
echo Star Citizen est inactif
timeout 5 > nul
goto start

:is_wake
::echo in prg is_wake
set run=0
echo Star Citizen est inactif

cd C:\Users\FP24V\OneDrive\Bureau\keybinding

set CUR_YYYY=%date:~6,4%
set CUR_MM=%date:~3,2%
set CUR_DD=%date:~0,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

set SUBFILENAME=%CUR_YYYY%-%CUR_MM%-%CUR_DD%_%"_"%%CUR_HH%-%CUR_NN%-%CUR_SS%
mkdir %SUBFILENAME%
cd %SUBFILENAME%
mkdir end
copy "I:\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Profiles\default\*"  end

timeout 5 > nul
goto start