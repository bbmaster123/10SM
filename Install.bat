::Take ownership of files to replace
@echo off 
cd "C:\windows"
takeown /f  C:\windows\systemapps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy /r /d y >nul 2>&1 && icacls C:\windows\systemapps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\ /grant administrators:F /t /c /q >nul 2>&1
takeown /f  C:\Windows\SystemResources\Windows.UI.ShellCommon\ /r /d y >nul 2>&1 && icacls C:\Windows\SystemResources\Windows.UI.ShellCommon\ /grant administrators:F /t /c /q >nul 2>&1

takeown /f  C:\Windows\ShellExperiences /r /d y >nul 2>&1 && icacls C:\Windows\ShellExperiences\ /grant administrators:F /t /c /q >nul 2>&1



::Backup Original Start Menu
taskkill /f /im startmenuexperiencehost.exe >nul 2>&1
ren "C:\windows\systemapps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy" Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy.BACKUP >nul 2>&1
ren "C:\Windows\SystemResources\Windows.UI.ShellCommon\Windows.UI.ShellCommon.pri" Windows.UI.ShellCommon.pri.BACKUP >nul 2>&1
ren "C:\Windows\SystemResources\Windows.UI.ShellCommon\pris\Windows.UI.ShellCommon.en-US.pri" Windows.UI.ShellCommon.en-US.pri.BACKUP >nul 2>&1
ren "C:\Windows\ShellExperiences\" ShellExperiences.BACKUP >nul 2>&1
ECHO Backed up original Start Menu


::Copy Start Menu files
cd "C:\10SM"
taskkill /f /im startmenuexperiencehost.exe >nul 2>&1
robocopy Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy "C:\windows\systemapps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy" /njh /njs /ndl /nc /ns /np /nfl >nul 2>&1
copy Windows.UI.ShellCommon.pri "C:\Windows\SystemResources\Windows.UI.ShellCommon\Windows.UI.ShellCommon.pri" >nul 2>&1
copy Windows.UI.ShellCommon.en-US.pri "C:\Windows\SystemResources\Windows.UI.ShellCommon\pris\Windows.UI.ShellCommon.en-US.pri" >nul 2>&1
robocopy ShellExperiences "C:\Windows\ShellExperiences" /njh /njs /ndl /nc /ns /np /nfl >nul 2>&1
ECHO Copied Windows 10 Start Menu


::Add Classic-Start registry entry
regedit /s install-classic-start.reg >nul 2>&1
ECHO Installed Registry Entry


::Restart Explorer
taskkill /f /IM explorer.exe >nul 2>&1
C:\Windows\explorer.exe >nul 2>&1

echo Cleaning Up
rmdir /q /s "C:\10SM"

ECHO restarted Explorer
ECHO Installation complete

exit
