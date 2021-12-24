<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/Start-Menu-build-282"><img src="https://github.com/bbmaster123/10SM/blob/main/Start-Menu-build-282.png" width="100%" height="100%" float="left" style="max-width: 100%"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png"><img src="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png" width="100%" height="100%" style="max-width: 100%;"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/10NC.png"><img src="https://github.com/bbmaster123/10SM/blob/main/10NC.png" width="100%" height="100%" style="max-width: 100%;"></a>
# 10SM
<b>Native Windows 10 Start Menu/Fullscreen Start for Windows 11</b>

Tested on build .376

<i>*While this works right now, it may or may not continue to work in the future. More on this below

*Installing the files required to restore the start menu requires modifying system files, please proceed with caution</i>

</br>

<b>Manual Install Instructions</b>

1. Backup and replace files with the ones in the "Files" directory. You will need to take ownership of these files, as well as kill startmenuexperiencehost.exe to do this.
2. Install registry entry
3. Restart Explorer/sign out

<i>*Be sure not to miss any files. The most common bugs when when failing to correctly replace all files are:</i>
 - Right click crashing the start menu
 - Start Menu not working at all
 - Tray icons not working
 
<b>Known issues:</b>
- Start menu is slow to exit



<b>Discoveries:</b>

Windows 10 notification center/action center can be made restorable and mostly functional, but I am not currently working on it. Please comment if this interests you!


the next thing I want to tackle is the slow exit. I've been probing startmenuexperiencehost.exe and what I've found is that on exit, the thread times out waiting for a broken xaml animation effect called ExpressionAnimantion https://docs.microsoft.com/en-us/uwp/api/windows.ui.composition.expressionanimation?view=winrt-22000
The thread hangs, the system tells startmenuexperiencehost.exe to destroy the event, and the menu exits without technically crashing. 

The reason I believe the animation is broken right now is that it relies on WRL, or Windows Runtime Library https://docs.microsoft.com/en-us/cpp/cppcx/wrl/windows-runtime-cpp-template-library-wrl?view=msvc-170 but in windows 11, you need to invoke the animation using WinRT https://docs.microsoft.com/en-us/windows/uwp/cpp-and-winrt-apis/
Or at least all of this is as best as I can understand it at the moment! I have no idea at the moment how I would fix this. 

Progress on this will be slow on my end for the next few weeks at least, as I am currently in the middle of a lot of real life things at the moment that will be taking my attention away for a while. But that doesn't mean I am not going to post any progress reports at all, so keep checking back occasionally! 

cheers everyone!
