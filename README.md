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
### Update September 2023:
I'm back!
As you may have noticed, this project has been superseded, and has not seen any updates in a while.
First I want to apologize to anyone who reached out but never got a reply. My github is linked to a dedicated email address, which I never really checked. I never got any notifications, or thought to look. I'll have to change that going forward.

Regarding this project, you can now consider it dead. 

#### What happened?
You see, around April of this year, I decided it might be a better idea to pivot to something that isn't being offered elsewhere, and I've always wanted to be able to tag files with a colored dot/overlay icon. I got started learning about DCOM's, activatable classID's, class factories, etc
I made it about as far as adding a list of entries to the context menu, and getting windows to apply a colored overlay, but to change colors required recompiling the whole thing, and I didn't yet have a way to apply the overlay to individual files. 

This takes us to May. Around this time, my father started to get really sick. It turned out he already had stage 4 lung cancer, and he passed in the hospital in June. He had just turned 65 in February, and seemed relatively healthy at the time. Following those events, I became depressed, and abandoned pretty much everything except TOTK, youtube, and RVC (the voice cloning thing). I stopped helping people online, skipped parties, and stopped playing guitar/drums. I just couldn't bring myself to do the things that matter to me.

During June and July, I spent some time training a voice model a few times. I found some songs my dad had recorded in the '80s, but they were poor quality, coming from tape cassettes. There's probably a r2r version somewhere, but I don't have anything to playback an r2r tape on. For now, I wanted to learn and re-record the songs, and have AI dad sing them in high quality. Still working on that, but I spent a fair chunk of time gathering my dataset and training my model. Luckily, there's multiple decades of high quality, digitally recorded music for me to pull from for this.

In August, I got a call for a job at a company my dad used to support part time. Without him coming in from time to time, their systems started having all sorts of weird issues that were piling up, simple things but for the tech-illerate, it was preventing them from getting certain work items completed. Things like reconnecting to the wifi, finding a file, rebooting, updating links on the website, etc.

I've been at my job for around a month, and now I spend most of my day bored at my desk, reading news, messaging my friends/family, and hacking windows. again. I wish I could show some of this to dad, he would have liked to see...

#### What about before that?
that's private, but what I will say is I had to dedicate most of my personal time to something irl, outside of my job at the time. It was a bit of a rough time.

#### So then what's next? 
Well, I'm not 100% sure yet. I wasn't able to get this project to work completely, and my other project fell through before I got some real traction. Coding has never been something I'm good at. Modifying existing code and experimenting, sure. I might start creating repo's of my mods that I personally use, or interesting things I've discovered over time.

#### Like what?
I've got some interesting shortcuts that I'm pretty sure are undocumented, and as I'm stuck on windows server at work, I managed to get some things working that are unsupported on windows server such as windows live photo gallery, MS sticky notes, and clipboard history. Really wish the colored file icon overlay project had worked, though.

#### But what about the Action Center?
I don't know, but if I did I promise I would have already explained it, and posted everything needed to completely restore it. Unfortunately, though it works, it still has the same slow exit bug as the start menu. 

#### Anything else?
I'm back on reddit as well (same username), but I don't post or comment very much so far. Birthday is next week, haven't done a backup in months, somebody side swiped my car while I was parked on the road for 10 mins(light scratches), I miss my dad (and always will), I have several shows and movies to catch up on, a 12 string rickenbacker that truly needs its new strings put on, and I'm probably not dressing as Jesus for halloween this year, for once. I'm also attempting to quit vaping after almost 10 years, trying to gain weight (5ft 6 102.5 lbs isn't enough), and stop biting my finger nails/nail beds, and the inside of my cheeks, like I'm doing right now. I might also finally update my phone from android 8.0 haha!

If you've read this far, thank you for taking an interest in my personal life. I know its not very Githubly, but I appreciate it all the same.

#### TL;DR
This project died around the time my father passed, and in my depression, I neglected to reply to those who reached out. I got a full-time job at a company my dad used to do computer work for. I have lots to work on irl, but I am back now, here and on reddit. I may post some new repo's soon, but they won't be related to 10SM. 

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
