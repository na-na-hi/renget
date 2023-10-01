#Satanos rewrite (HEAVY WIP)
@everyone
NOTICE FROM ADMINISTRATORS:
A hack called SATANOS has been spreading around and we'd like to make an official statement on it. DO NOT DOWNLOAD OR SHARE DOWNLOAD LINKS. SATANOS contains copious amounts of malware inside and could potentially destroy your PC.
In addition to having graphic violence and gore images inside the files, the game has what appears to be CP. YOU COULD POTENTIALLY GET ARRESTED FOR DOWNLOADING THIS GAME. 
If you die ingame, the hack will attempt to start printing black pages from any printer it can find connected to the PC. If it can't find any, it will begin to create massive text files to clog your hard drive and waste ram. 
Epilepsy-inducing imagery is common, as well as deafening screamers that could damage your ears among countless other things.
When asked, creator of this hack (who shall remain anonymous) claimed that this was to "make an immersive experience". The majority of his messages were incoherent rambling consisting of variations of "he made me do it" or "it was prophesized".

###PART ONE: interview
**Atlas97**
thank you for letting me reach out to you
about the hack and all
i just have some questions

**LeftShotOmega**
go on
its just been difficult for me recently

**Atlas97**
ok
why did you put all that malware in the hack
was it supposed to be a prank or smth???

**LeftShotOmega**
i wanted it to be a horror hack
startle the player
make an immersive experience

**Atlas97**
so having real cp in the files was for shock value?

**LeftShotOmega**
...
he made me do it
i couldnt stop him

**Atlas97**
him?

**LeftShotOmega**
if i don't work 
he starves me
FUCK
FUCK

**Atlas97**
u ok...?

**LeftShotOmega**
oh god
hell know
nononononono

**Atlas97**
whoever he is, i dont think he can read our conversation
youre ok

**LeftShotOmega**
you dont understand
i fall asleep for hours at a time
and when i wake up
theres stuff i didn't make 
i cant tell what stuff is mine and what is his

**Atlas97**
do you need help?

**LeftShotOmega**
I'm fine
My work is not yet done
It was prophesized
Wandering eyes linger far too long

*LeftShotOmega has left the chat*
*Atlas97 has left the chat*

###PART TWO: malware analysis
To better understand the scope of the inner workings of this hack, I will decompile and explain the technical details of the malware present inside to help keep members safe. To do this, I will be using a virtual machine to run a test of the game. Upon opening the game, the program will attempt to brute force administrator access, preferably without the knowledge of the user. This process takes around an hour to complete, and noticeably lags your computer. 
Once administrator access is granted, the game will begin to track your inputs via a keylogger. For some reason, there is a cloud archive of player inputs, tracking the gameplay style. The motivation for this tracking is unknown.
Other information that SATANOS gathers and uses include your name, IP address, connected devices and home address if at all possible. This information is used mostly as scareware to give the player the illusion of in-game sentience. 
Uninstalling the game will not work, because the minute the install finishes the game creates several hidden DLL files that will automatically cancel the deletion of the hack. Before deciding if the uninstall is permitted, it checks for completion of the game. Presumably, it will only allow you to delete it if you finish the game without cheats. 
While I examined the code, the game attempted to crash my computer several times in order to prevent tampering. Because this was being ran on a virtual machine, the amount of control over my PC the game could exert was drastically limited.
Large swathes of text were completely illegible, seemingly written in an indecipherable language. The only matches I could find were phrases in Latin, Hebrew, and Anglo-Saxon. Despite this, the engine is able to run the code without much difficulty.