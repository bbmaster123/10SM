<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/build-258.png"><img src="https://github.com/bbmaster123/10SM/blob/main/build-258.png" width="100%" height="100%" float="left" style="max-width: 100%"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png"><img src="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png" width="100%" height="100%" style="max-width: 100%;"></a>

# 10SM
Native Windows 10 Start Menu/Fullscreen Start for Windows 11

*This is still experimental and while I have gotten it to install/uninstall several times in my VM, I cannot guarantee this will work flawlessly on your system.

This is how to manually restore the real windows 10 start menu, tested and working on a clean RTM build. Progress has been made since my last attempt. Unfortunately, my scripting skills aren't at master level and previously received a lot of negativity, so instead of a self extracting exe, I made this repo so others can improve and/or fork this. I also don't have a lot of free time at this moment, but perhaps soon I can get back to this.



Manual Install Instructions
Take ownership of the following files/folders and rename each so they end with .BACKUP

C:\Windows\ShellExperience
C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy
C:\Windows\SystemResources\Windows.UI.ShellCommon\Windows.UI.ShellCommon.pri
C:\Windows\SystemResources\Windows.UI.ShellCommon\pris\Windows.UI.ShellCommon.en-us.pri
C:\Windows\System32\AppResolver.dll
C:\Windows\System32\StartTileData.dll
C:\Windows\System32\TileDataRepository.dll

Replace the above with the files/folders of the same name from the leaked build. you will need to kill startmenuexperiencehost.exe to do so.

Restart Explorer

Known issues:
Start menu is slow to exit
- Tiles can only be pinned by drag and drop from start menu, or from pin to start from outside the start menu
- Tiles can only be unpinned from outside the start menu, or by unpinning an entire group from inside the start menu
- Tiles may not have an icon until after restarting explorer.exe or rebooting
- Tray icons do not work on left click when using windows 11 taskbar. seems something had recently changed, as expected in build .258. If using windows 10 taskbar with windows 10 flyouts, clock and sound work will work. restoring the 2 files in the SystemResources folder fixes this, but breaks right click in start menu.

Resolved Issues:
pinning from outside start menu now works

Discoveries:
Windows 10 notification center is restorable and mostly functional with both taskbars, but I am not currently working on it. Please comment if this interests you

decompiling both sets of .pri files, I can now see the source code, and can see what's changed between them. they are both between 3300 and 3400 lines of code, which will take some time to comb through. Haven't gotten to recompiling or testing yet, still unsure how to compile a pri file. hopefully, by merging the codebases I can create a single file that works for both the start menu and tray icons

cheers everyone!
