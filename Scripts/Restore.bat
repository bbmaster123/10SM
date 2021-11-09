::Take ownership of files to replace
@echo off 
cd "C:\windows"
taskkill /f /IM explorer.exe >nul 2>&1
takeown /f /q C:\windows\systemapps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\ /r /d y >nul 2>&1 && icacls C:\windows\systemapps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\ /grant administrators:F /t /c /q >nul 2>&1
takeown /f /q C:\Windows\SystemResources\Windows.UI.ShellCommon\ /r /d y >nul 2>&1 && icacls C:\Windows\SystemResources\Windows.UI.ShellCommon\ /grant administrators:F /t /c /q >nul 2>&1
takeown /f /q C:\Windows\ShellExperiences /r /d y >nul 2>&1 && icacls C:\Windows\ShellExperiences\ /grant administrators:F /t /c /q >nul 2>&1
takeown /f /q C:\Windows\ShellExperiences\TileControl.dll /r /d y >nul 2>&1 && icacls C:\Windows\ShellExperiences\TileControl.dll /grant administrators:F /t /c /q  >nul 2>&1

::Remove Windows 10 Start Menu
taskkill /f /im startmenuexperiencehost.exe >nul 2>&1
taskkill /f /im explorer.exe >nul 2>&1
rmdir /q /s C:\windows\systemapps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy
del /F C:\Windows\SystemResources\Windows.UI.ShellCommon\Windows.UI.ShellCommon.pri >nul 2>&1
del /F C:\Windows\SystemResources\Windows.UI.ShellCommon\pris\Windows.UI.ShellCommon.en-US.pri >nul 2>&1
rmdir /s /Q C:\Windows\ShellExperiences
ECHO Removed Windows 10 Start Menu


::Restore Windows 11 Start Menu
taskkill /f /im startmenuexperiencehost.exe >nul 2>&1
ren "C:\windows\systemapps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy.BACKUP" Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy >nul 2>&1
ren "C:\Windows\SystemResources\Windows.UI.ShellCommon\Windows.UI.ShellCommon.pri.BACKUP" Windows.UI.ShellCommon.pri >nul 2>&1
ren "C:\Windows\SystemResources\Windows.UI.ShellCommon\pris\Windows.UI.ShellCommon.en-US.pri.BACKUP" Windows.UI.ShellCommon.en-US.pri >nul 2>&1
taskkill /f /im startmenuexperiencehost.exe >nul 2>&1
ren "C:\Windows\ShellExperiences.BACKUP\" ShellExperiences
ECHO Restored Windows 11 Start Menu


::Add Classic-Start registry entry
regedit /s remove-classic-start.reg >nul 2>&1
ECHO Disabled Registry Entry

::Restart Explorer
C:\Windows\explorer.exe >nul 2>&1

echo Cleaning Up
rmdir /q /s "C:\10SM"
C:\Windows\explorer.exe >nul 2>&1
ECHO restarted Explorer
ECHO Installation complete
exit




