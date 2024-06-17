<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/Start-Menu-build-282"><img src="https://github.com/bbmaster123/10SM/blob/main/Start-Menu-build-282.png" width="100%" height="100%" float="left" style="max-width: 100%"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png"><img src="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png" width="100%" height="100%" style="max-width: 100%;"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/10NC.png"><img src="https://github.com/bbmaster123/10SM/blob/main/10NC.png" width="100%" height="100%" style="max-width: 100%;"></a>

# 10SM
## Native Windows 10 Start Menu/Fullscreen Start for Windows 11
#### Tested on build 22000.652 &amp; 22610
# 
#### See 10SM in action: [LagLife &mdash; Reverting Windows 11 UI (Pt.2)](https://www.youtube.com/watch?v=SU-jtQqjj-A&t=19s)
##### Be sure to check out part 1 and 3 for other interesting tweaks and windows shenanigans!
#
###### <p><i>*ExplorerPatcher has implemented the Windows 10 start menu. I encourage users and non users of 10SM to check it out here: https://github.com/valinet/ExplorerPatcher </br>Please remember to remove 10SM before doing so, as to avoid any potential issues. Manual installation instructions left below, for posterity or anyone who might benefit</i></p>
#
<p><b>10SM Manual Install Instructions</b></br>
<i>*Installing the files required to restore the start menu requires manually replacing system files, please proceed with caution
 </br>*While this worked on older builds, it may or may not continue to work on more recent versions of Windows 11</i></p>
 
1. Take ownership of required files
2. Backup and replace files with the ones in the "Files" directory; you will need to kill startmenuexperiencehost.exe to do this.
3. Install registry entry
4. Restart Explorer/sign out

<i>*Be sure not to miss any files. The most common bugs when when failing to correctly replace all files are:</i>
 - Right click crashing the start menu
 - Start Menu not working at all
 - Tray icons not working
 
<b>Known issues:</b>
- Start menu is slow to exit

<b>Optional:</b>
- add dword UseLiteLayout and set to 1 under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Control Center\ 

This re-enables Windows 10 Action Center and forces it and the start menu to use light theme. Has slow exit bug, possible other unknown bugs. Working up to at least build 25346.

cheers everyone!
