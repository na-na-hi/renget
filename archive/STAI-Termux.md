# Installing and running SillyTavern locally on Android using Termux.

SillyTavern is a modified version of TavernAI with a lot of new features.

More information can be found here:
https://github.com/Cohee1207/SillyTavern

Without further ado, let's start with the guide:

[TOC]

## Installing Termux.

To be able to install and run SillyTavern online, you will need a linux environment, Termux is an emulator for a Linux environment so it works. 

Go to https://f-droid.org/en/packages/com.termux/ then scroll down the page then click download apk, after that install it.


![Tavern](https://i.imgur.com/kMauU5f.png)


After installing, once you launch the app you should be greeted with this.


![Termux](https://i.imgur.com/d0TKiRh.png)


The next thing you need to do is update the repositories and check if there are any updates, and update them if any. 

To do that, run this command on termux by copy and pasting it there.

`apt update`
`apt upgrade`

If it prompts you that an update is available, simply write `y` and wait for it to finish, 


![update](https://i.imgur.com/nE3yz9K.png)


After that proceed to the next step.

##  Installing `Git`.

Now that you have Termux installed, the next step is installing the needed dependencies/tools to help you both install and run TavernAI.


First is to download git to be able use the command `git clone`. 

To do that,
Copy and paste this command into Termux and click enter, `pkg install git` this should install git, just wait then after it's done proceed to the next step.


![git](https://i.imgur.com/hEqLQ0r.png)


## Cloning the SillyTavern repository.

The next step you'll need to do now that git is installed, is cloning Cohee's repository. 

You can do it by using this command, `git clone https://github.com/Cohee1207/SillyTavern`

Alternatively, if you want to use the dev branch, which has more features and is more constantly updated, you can use this command instead, `git clone -b dev https://github.com/Cohee1207/SillyTavern` or `cd SillyTavern && git switch dev` if you want to switch to dev if you're already using the main branch. Take note, as it is the dev version, it might break at anytime.

After that it should start cloning the repository, after it's done go to the SillyTavern directory, you can do it using this, `cd SillyTavern`.


![tai](https://i.imgur.com/U87XB25.png)


## Installing node.js and the required dependencies.

Make sure to `cd SillyTavern` before doing this part. Once you do, now you will need to install node and the dependencies needed by SillyTavern, to do so, run this command, `pkg install nodejs` .

After that it should start installing nodejs.


![node](https://i.imgur.com/CQpAuTW.png)


Next is downloading the dependencies, you can do this by running this command, `npm install`. Then just wait for it to finish and you're almost done!


![npm](https://i.imgur.com/aR8PzrE.png)


## Running SillyTavern.

Last and final step weebs! Oh wait sorry.
Ahem! To run tavern after you have completed the above steps, simply use this command, `./start.sh` or `bash start.sh` whichever you want.. 

After that there should be an indication on the termux that tavern is running, after that just copy this link, `https://127.0.0.1:8000` and paste it into your browser and you're done!

![server](https://i.imgur.com/N1OVIC3.png)

# Downloading and running TAI-Extras
Pytorch doesn't work on native android, and as such won't work on the default termux command line. The only way you can run it is through a proot, a proot is basically let's you use another Distro or Distributions in Linux's CLI or command line interface. Basically you will get a VM Terminal or CMD if you're on Windows. So for this one, we'll use a Ubuntu Distro Proot. To install it, go to termux, and write this command. `pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh`

After that it should prompt you to install, if it doesn't it will automatically install for you. Just wait. NOTE: This thing whole thing will definitely take some patience, learn to wait, you can just simply browse other apps as it downloads to so do that.

After it finishes downloading, you should be greeted with a empty UI, with only one line at the top, something with a @localhost in it, this means that it successfully downloaded. 

After that it's time to install some needed dependencies on running the Tai Extra's. Write this command on the terminal , `apt-get update && apt-get upgrade -y
apt-get install git wget vim zip build-essential python2 python3 python3-dev python3-pip libhdf5-dev && pip install torch==1.12.0` after that is should now install python and it's dependencies, now it's back to waiting time, take note, patience!

After it's done, now you need to git clone the repository. First you need to have git installed, so run, `apt install git` and it should install git now. Once that's done clone the repo with, `git clone https://github.com/Cohee1207/TavernAI-extras` and it should clone it now.

After cloning it, cd to it, `cd TavernAI-extras` and then now you need to make some  changes to the files, specifically the requirements.txt or requirements-complete.txt, by default it will just download the one without complete so let's just go with that. 

I'm assuming you already have access to your files directory, if you havent check out my guide below with the material files thingy and come back. Once you can access it now, go to the termux directory - ubuntu22-fs - root - TavernAI-extras and lastly requirements.txt, go open that in a text editor or something and remove the `torch=2.0.0+cu=1.17.0` or something along that line. then click save.

After that go back to termux and run this command, `pip install -r requirements.txt`, again WAIT!

After it install you can run any module that you want, if you want to run the module for expressions, specifically the 28 expressions, you can run it by running this command, `python3 server.py --enable-module=classify --classification-model=joeddav/distilbert-base-uncased-go-emotions-student` after that it should install pytorch_bin or something at first, which will take a long time ngl, but after that it should run properly. After it runs, btw once it shows that it's done, don't touch a thing or the program will end, it should give you a link, but by default that link is already in SillyTavern so just go to it, then click the 3box thingy, 4th icon from the top, then click connect and done. 

By the way, I suggest you also disable phantom process killing as  it might kill off the process, if you received something along the lines of `completed with signal 9` it means it was cut off or stopped by android, to avoid that disable phantom process killing, it's included in the guide, the bottom-most one. 

Now if ever it ended, and you want to run it again, simply run `./start-ubuntu22.sh && cd TavernAI-extras && git pull && python3 server.py --enable-module=classify --classification-model=joeddav/distilbert-base-uncased-go-emotions-student` and done. If you wanna run other modules, it's the same commands as on the pc, go check out https://github.com/Cohee1207/TavernAI-extras for that.

Also if you want to have multiple sessions of termux, so you can run the extensions and tavern at the same time, go hover your fingers to the left edge of your phone and swipe to the right, it should open something, click the new session and you should have another session running, swipe left to right again if you wanna switch sessions and so.

# Miscallenous(Maintaining updates etc.)

## Updating the SillyTavern to the latest

To update your TAI, simply change directory to SillyTavern on termux or `cd SillyTavern` and then run `git pull`. After that it should automatically update it. It will tell you if it's at the latest and if not it will automatically update it.

![gitpull](https://i.imgur.com/wkHCSxT.png)
![git](https://i.imgur.com/0jZqgLS.png)

## Termux Error: Address Already in use

This error is quite common Termux. What makes it happen is because you weren't able to properly close a node process, which leads to it indefinitely being run, even when it's not even on Termux console. 

To fix this, cd or change directory back to the main directory or simply run `cd`. After that you need to run node, to do that, simply run this `node` and then it should greet you with a new message. Running `.help` give's you different commands that you can use with node, to simply clear the already running process, run `.clear` after that it should be done. To leave the node, simply run `.exit` and then you can continue with what you were doing, cd back to SillyTavern and then rerun node server.js or `cd SillyTavern && node server.js` and it should work now.

![boom](https://i.imgur.com/GkMj7Mj.png)

## Accessing Termux files.

So now you want to access the Termux directory, either to change some codes on the files or simply out of curiosity, well I've got ya! 

There's different ways of doing this but the way I recommend you to is use an external file manager, specifically Material Files.

This particular article should cover everything, just follow it. https://www.learntermux.tech/2020/10/Termux-File-Manager.html

### Using Alias

This is more of an optional option(pun intended). If you're familiar with Linux, then you are probably also familiar with  the alias command. For those unfamiliar with it, simply you can replace a command or multiple commands with just 1 keyword. For example you want to cd to SillyTavern and you want to make it easier to do so and just wanna write a few letters or so, that's where Alias comes into play. Now this is optional but this will make your life easier so I added this option.

This Alias will cd you to SillyTavern, automatically update it, and then run node server.js. How to do it? Well first of all you need to be able to access your Termux Directory, refer  to the guide above. And also any file editor, what I use it `QuickEdit`, you can download it on the play store.

Now that you're done and able to access your termux directory, the next step is to find a file named `.bashrc`.

![bash1](https://i.imgur.com/OqiYCPF.png)

Oh yeah show hidden files, click the 3 dots on the upper right corner and click Show hidden files if you can't find it. 

Once you see the file, click it and then open it with Quickedit, after that you should be greeted with this screen.

![quick](https://i.imgur.com/z5dQPuo.jpeg)

Btw, for most of you it's most likely empty or only has one line, I have the others cuz I added them manually myself for other uses, don't mind the,.

The next step is to add the alias command in here, to do that, simply write this command on the empty space `alias Tav="cd SillyTavern && git pull && node server.js"`. You can change the `Tav` to any keyword that you want. Now after doing this, you  must save it, to do that simply click this button,

![12](https://i.imgur.com/Vx4mgX3.png)

After that you should be good to go. You can go back to Termux and simply write `Tav` or the keyword that you changed it to and then it should automatically cd you to SillyTavern, update it and run node server.js.

![ter](https://i.imgur.com/p1zmDUO.png)

![ter1](https://i.imgur.com/qLTDOFJ.png)

## Disabling Phantom Process Killing

This is more of a precaution and is not necessarily needed. Phantom process killing is basically a feature added on android in which it will automatically kill or stop a application or process running on the background to run if it consumes a large amount of battery. This is a big problem on Termux, as usually it will run for a long time. To counter this, you will need to disable that feature.

You can follow this guide to do it manually on termux. Credits to the owner, it isn't mine. https://www.youtube.com/watch?v=IhK55QfWdYc

P.S: Will probably update this to add info on how to change avatar etc. I'm spent already so just wait for that, or you can just hit me up on discord, ArroganceComplex#2659, you can see me lurking on the Pygmalion Server as Arro, mostly in #help-and-questions though. Thats all, Bye!

P.S.2: I recommend you allow termux even at high background power consumption, try fiddling with your battery settings, you'll see it in no time.