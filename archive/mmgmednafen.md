# /mmg/: Multiplayer Mednafen General

## 1) What?

Mednafen is a multi-system emulator, but mostly we use it for PS1 games. It also has a netplay function. We use the netplay function to all connect to server and take turns taking Controller 1 to play games together.

## 2) Setup

*tl;dr*:

- Download emulator
- Download bios
- Download rom
- For local play, run `mednafen.exe c:\path\to\rom.cue`
- For remote play, run something like `mednafen.exe -connect -netplay.host mednafen-us.emuparadise.org -netplay.port 4046 -netplay.nick YOURNAMEHERE --netplay.gamekey mmg "C:\path\to\rom.cue"`
- To configure controls, `Alt + Shift + 1`

Unlike Telemelt, you will need a copy of the game and to run the emulator on your own.

(For this guide, I will assume you are on Windows. But if you're on other OSes, just ask in the thread for help.)

#### 2a. Games
For getting games, use the Rentry in the OP. Hosts may also give rom links. I think for PS1 games you generally want them in the .cue+.bin format.

A common alternative to the OP Rentry is emuparadise. You need a install work-around script to download stuff from emuparadise.

1. Install greasemonkey/tampermonkey extension to your browswer
2. Install the following script: https://gist.github.com/Eptun/3fdcc84552e75e452731cd4621c535e9/raw/d1dcc00185085ce10df8bebcc2a640fd01ef9058/emuparadise.eptun.user.js

Now when you go on an Emuparadise game page, you should see a link that says "Download using the workaround script"

#### 2b. Mednafen (The emulator)

For the emulator, everybody needs to be on the exact same version. The current stable version is [1.27.1](https://mednafen.github.io/releases/files/mednafen-1.27.1-win64.zip). So download that.

For PS1, you also need to download a BIOS, which is kind of like the "OS" of the system. You need different BIOSes for different locales (e.g. US vs JP). Go [download them](https://gist.github.com/juanbrujo/cf55d223ad01927a48f9ebac9f50bdee). In your Mednafen installation, put the BIOSes in the `firmware` folder.

Mednafen is a command-line emulator. This means that there is no GUI (point and click interface) for you to use. You just put stuff into a terminal and pray your command works. If it works, a little windows will show up and you can play games in it. If you really want a GUI, you can use one like [MedGui Reborn](https://github.com/Speedvicio/MedGuiReborn) but really you don't need that.

If you're on windows, you want to open command prompt (Win+R, "cmd"). This should open a little black box which you can enter commands.

- `cd` to change directories. `cd ..` to go back.
- `dir` to show what's in the directory.

First, you want to make sure you can even boot the game locally. To do that, navigate to inside your Mednafen folder, and run `mednafen.exe c:\path\to\rom.cue`. If this doesn't work you have bigger problems.

If that works, you can try connecting to a netplay session. Likely, you are trying to join an existing one, so someone should give you a command. Remember to modify it to set your **nickname** and the **path to the game**. But you can also just join+create a netplay session on your own with the following command:

```dos
mednafen.exe -connect -netplay.host mednafen-us.emuparadise.org -netplay.port 4046 -netplay.nick YOURNAMEHERE -netplay.gamekey mmg "C:\path\to\rom.cue"
```

Let's break this down:

* `-connect`: I want to connect to server for netplay
* `-netplay.host ARG`: The server you're connecting to. There are [many options](https://forum.fobby.net/index.php?t=msg&goto=6303).
* `-netplay.port ARG`: Port. Probably don't worry about this.
* `-netplay.nick`: Your nickname.
* `-netplay.gamekey`: Game key for uniquely identifying a session (see FAQ below). Usually just leaving it as `mmg` is fine.

If everything works, a window will open, and you should be instantly thrown into a netplay session.

#### 2c. I'm in, what now?

**Controls**: First, if you haven't already configured your controls, you can do so by hitting `Alt + Shift + 1`.

**Using the console**:

In netplay, we chat and pass around controls using the console. Press `T`, and a black box will pop up for you to chat or enter commands into. If you just type in regular text, it will be sent as a message to everyone else. But there are a couple commands too:

* `/list`: List the players in the session.
* `/take 1`: Take over controller 1. This is usually what we use to pass around control - the next player has to take the controller. Note that it boots other people off the controller too.
* `/drop 1`: Removes you from controller 1, if you need to for some reason. Usually people just take the controller from you.
* `/ping`: Check your ping to the server. Lower is better.

Escape cancels out of the console, but I think hitting Escape again quits you out, so be careful.

**Other hotkeys**

- F5: save state
- F7: load state
- 0-9: Choose save state slot
- See: https://mednafen.github.io/documentation/#Section_key_assignments

## 3) Hosting Mednafen sessions

Creating a netplay session requires no setup, just like Telemelt. You just connect to the server with a game and you're instantly doing netplay already.

* Please provide links to the roms.
* Please provide the full command to run Mednafen, for convenience. This will also capture other info like the game key and server.

## 4) Running a Mednafen server on Linode.

This is only if you want to start up your own Linode instance to run your own Mednafen server (e.g. for banning trolls). You will need a paid Linode account to do this, although signing up you get $100 free. Also it costs $0.015 an HOUR to run the server, so it's pretty cheap. I'll assume you've already set up an account and everything.

* Go to https://cloud.linode.com/linodes
* Click the "Create Linode" button
* Select the following options:
    - Image: Ubuntu 21.10
    - Region: Newark, NJ (or anywhere else you want)
    - Plan: Shared CPU -> Linode 2GB (This is just what I've tested, maybe others work well too)
    - Linode Label/Add Tags: Skip
    - Root Password: Put in a password here. Let's call it MEDNAPASS123 for now.
    - Then hit "Create Linode" on the right.
* It'll take a while for Linode to build your instance. At the top left, it should say "PROVISIONING" with a yellow circle. Wait for it to turn green and say "RUNNING"
* Note the IP Address in the table. That's the server's IP Address that mednafen will connect to
* On the top right, click the "Launch LISH Console" button, this will open up a new window with a terminal for you to use.
* In the console, hit Enter and it should prompt you for your login. Login with `root`, password `MEDNAPASS123`
* Now let's install some stuff. Run each of the following commands one by one.

```bash
sudo apt update
sudo apt install -y linux-tools-lowlatency
sudo apt install -y build-essential
wget https://mednafen.github.io/releases/files/mednafen-server-0.5.2.tar.xz
tar -xf mednafen-server-0.5.2.tar.xz
cd mednafen-server
./configure
make
make install
cd src
```

You should end up in `/root/mednafen-server/src`

* To run the server, run the command `nice -n -20 ./mednafen-server standard.conf`. Now you should be able to connect to the server via a mednafen client! To exit, hit `ctrl+C`. Note that this simple way of running means that if you exist your terminal session, the mednafen-server program gets killed as well. There are ways to avoid this via things like `tmux`, but since this is a lightweight guide just leave it open.
* If you mess up at any point and don't want to actually troubleshoot, just delete the server and start over. (You have to "Delete" it, if you "Power Off" you still get charged.) Delete is found in the top right under the "..." button.

**Remember to Delete your server when done.**

#### (Optional) Banning funny trolls by adding an IP whitelist.

You should be able to see the list of IP addresses and the users connecting in the logs with something like:

```
Client 4 connecting from 12.34.567.89 on Sat Dec  4 06:20:43 2021
Client(protocol 3) 4 assigned to game 0 as player mask 0x00000010 <USERNAME> - EmuID=mednafen 1.27.1
```

Where `USERNAME`'s IP address is ' `12.34.567.89` 

Given a list of IP addresses you trust, run the following commands, repeating the second line as necessary cross the different IP addresses you want to whitelist:

```bash
sudo ufw default deny incoming
sudo ufw allow from 12.34.567.89/24
sudo ufw allow from 12.34.567.90/24
sudo ufw allow from 12.34.567.91/24
sudo ufw enable
```

If you need to delete someone from the whitelist, run `ufw status numbered`, and then `ufw delete NUM` where `NUM` is the entry you want to delete.

## 5) FAQ

**Q: I am running into permission errors**

Try running your command prompt in administrator mode, and placing all your files in user-owned directories, such as My Documents.

**Q: What is a game key?**

The netplay servers use a combination of an MD5 hash of the game and the game key to uniquely identify a session. That's why we don't need to name sessions or add passwords. Theoretically, if you don't set a game key (leaving it with a default value), some other rando playing the same game at the same time might end up in your session.

**Q: Why do people keep saying "gasp", "drumroll", etc?**

It's a hold over from telemelt. People are just reacting to the game.

**Q: Why does the game lag from time to time?**

The server/engine has a 1-3 second lag when states are loaded, and states are saved+loaded every time someone joins.

**Q: Why is the input so laggy?**

Your inputs get sent to the server, and the server sends game info back. This is not like telemelt, where the emulator is completely running locally with 0 latency. Host and pick a closer server, get a better Internet connection, or move continents.
