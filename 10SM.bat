::10SM v1.1
::CHANGELOG

::v1.1
::Fixed crash on right click
::Enabled pinning tiles from within the start menu
::Hid file copy operations on install
::Fixed Explorer not restarting on install
::Added Uninstall option

::v1.0
::Initial Release



@ECHO off
cls
:start
ECHO.
ECHO 1. Install Windows 10 Start Menu
ECHO 2. Restore Windows 11 Start Menu

set choice=
set /p choice=Select option 1 or 2: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto install
if '%choice%'=='2' goto restore

ECHO "%choice%" is not valid, try again
ECHO.
goto start
:install
start install.bat
goto end
:restore
start restore.bat
goto end
:end


echo Success
echo Press any key to close this window.
pause > nul