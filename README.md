<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/Start-Menu-build-282"><img src="https://github.com/bbmaster123/10SM/blob/main/Start-Menu-build-282.png" width="100%" height="100%" float="left" style="max-width: 100%"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png"><img src="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png" width="100%" height="100%" style="max-width: 100%;"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/10NC.png"><img src="https://github.com/bbmaster123/10SM/blob/main/10NC.png" width="100%" height="100%" style="max-width: 100%;"></a>
# 10SM
Native Windows 10 Start Menu/Fullscreen Start for Windows 11
Tested on build .348

*This is still experimental, please proceed with caution.

Manual Install Instructions

1. Backup and replace files with the ones in the "Files" directory. You will need to take ownership of these files, and also kill startmenuexperiencehost.exe to do this.
2. Install registry entry
3. Restart Explorer/sign out

Known issues:
- Start menu is slow to exit

Resolved Issues:
- pinning/unpinning works correctly
- Tray icons should work now
- right clicking no longer causes the menu to crash

Discoveries:
Windows 10 notification center/action center can be made restorable and mostly functional, but I am not currently working on it. Please comment if this interests you!


the next thing I want to tackle is the slow exit, I seem to have narrowed down the cause to windows.ui.xaml.dll, where it is definitely timing out trying to find some AcivatibleClassID, but that's as far as I've gotten...

cheers everyone!
