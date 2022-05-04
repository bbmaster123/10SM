<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/Start-Menu-build-282"><img src="https://github.com/bbmaster123/10SM/blob/main/Start-Menu-build-282.png" width="100%" height="100%" float="left" style="max-width: 100%"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png"><img src="https://github.com/bbmaster123/10SM/blob/main/start-fullscreen.png" width="100%" height="100%" style="max-width: 100%;"></a>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/bbmaster123/10SM/blob/main/10NC.png"><img src="https://github.com/bbmaster123/10SM/blob/main/10NC.png" width="100%" height="100%" style="max-width: 100%;"></a>

# 10SM
## Native Windows 10 Start Menu/Fullscreen Start for Windows 11
#### Tested on build 22000.652 &amp; 22610
# 
###### <p>Now that I have a little more free time, I have started to revisit this project. Initally, I wanted to solve the exit delay issue before working on anything less important. Because of this, my first version of 10SM was done entirely with BAT scripting, before dropping that concept in favour of manual installation. I am also a novice at developing windows apps, although I know some HTML, CSS, Java, and PHP from when I was learning to make self hosted websites, so I'm not starting at 0 thankfully. Unfortunately, implementing a fix for the exit delay in 10SM is still beyond my level of understanding, so I still have some learning to do! </br> </br> Going forward, I will release a GUI (coming soon) capable of installing and uninstalling the start menu and changing start menu settings as a learning experience. This will get me familiar with Visual Studio and creating GUI interfaces, but it wont be clean, ideal code, and it wont solve the exit delay, sorry. I'll have to work up to that.</br> </br> As well, due to multiple requests, I will integrate the windows 10 action center into 10SM for those running the stable releases shortly after the GUI is posted. </br> </br>-bbmaster123</br>May 4 2022</p>

#
###### <p><i>*ExplorerPatcher has implemented the Windows 10 start menu as a feature in a recent update. I encourage both users and non users of 10SM to check it out here: https://github.com/valinet/ExplorerPatcher </br>Please remember to remove 10SM before doing so to avoid any potential issues </br>*While this works right now, it may or may not continue to work in future versions of Windows 11</i></P>



# 
<p><b>Manual Install Instructions</b></br>
*Installing the files required to restore the start menu requires manually replacing system files, please proceed with caution</i> </p>

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

cheers everyone!
