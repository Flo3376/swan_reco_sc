@echo off

echo %1
echo %2

cd\
cd %2
cd keybinding_sc

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

copy  /Y %1"\USER\Client\0\Profiles\default\*"

copy actionmaps.xml %2\my_kb.xml
