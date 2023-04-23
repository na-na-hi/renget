###SillyLossy extensions on termux
Before you blindly run anything, I highly suggest you read and understand what the commands do.
Unfortunately pytorch is broken on termux currently. So you'll have to install Ubuntu in proot to run it.
[TOC4]
#####Install and set-up Ubuntu
```sh
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
```
`./start-ubuntu.sh`
`apt-get update && apt-get upgrade -y`
`apt-get install git wget vim zip build-essential python2 python3 python3-dev python3-pip libhdf5-dev`
I may be missing some modules here so if you encounter any errors doing installation, please let me know.
#####Set-up SillyLossy extensions
`git clone https://github.com/SillyLossy/TavernAI-extras taiex`
`cd taiex`
torch==2.0.0+cu117 doesn't seem to work on Ubuntu and the extension seems to work fine without it so we will just remove it from the requirements file.
`vim requirements.txt`
Press i, navigate to the second last line using the arrow keys (touch won't work).
From `torch==2.0.0+cu117` remove `+cu177`.
Click ESC, type `:wq` and hit enter.
Now install requirements,
`pip install -r requirements.txt`
To run the extensions, do:
`python3 server.py --enable-modules=poe` for poe.
`python3 server.py --enable-modules=caption` to send images.
`python3 server.py --enable-modules=classify` for character expression with the default model (6 emotions).
`python3 server.py --enable-module=classify --classification-model=joeddav/distilbert-base-uncased-go-emotions-student` for character expression with 28 emotions.
Check the other modules on their [git page](https://github.com/SillyLossy/TavernAI-extras) and replace the part after the =.
**Note**: caption extension runs an image captioning AI (I think?) **locally on your phone**. This requires good hardware. I was able to get it running on a Snapdragon 778G+ with 8gb RAM, although it shut down all other processes in the background for me. So I wouldn't recommend running it on anything lower.
Same goes for the character expression models, but those are less powerful and will probably run on lower end devices too. I recommend clicking on "acquire wakelock" on the persistent termux notification to make sure it doesn't shut down in the background.
#####Configure Poe extension
Now the extension server is running, to run tavern we need to use another session.
To start a new session pull the sidebar and click on new session. This may be difficult if you're on gesture navigation. To pull the sidebar tap the top left edge of your screen and hold for a second until you see a sidebar popping out and then pull right.
Run tavern like you normally do, go to extension settings and click connect. If you don't see the extension settings you may need to edit your config.conf file in SillyLossy folder and set enableExtensions=true.
To use Poe extension, you need your browser cookies.
Go to poe.com, and login. Make sure to use the brush button (left of the text box) and clear the chat context beforehand.
Install any cookie manager on kiwi, I used [cookie manager](https://chrome.google.com/webstore/detail/cookiemanager-cookie-edit/hdhngoamekjhmnpenphenpaiindoinpo?hl=en). On poe.com, use the extension and copy the long string next to p-b. It should end with %3D%3D.
You can also find the cookies through devtools but it didn't let me copy the cookie.
Past it in your extensions settings, click connect and you're good to go!
#####To run next time
To run the extensions next time, simply start Ubuntu and run the python server.
`./start-ubuntu.sh`
`cd taiex`
And then run whichever module you want to with its appropriate python3 command.
To stop the processes, simply click control+c for the extension server and control+d to close Ubuntu and once again to close the new session.
---
If you have any issues let me know in the /aicg/ threads. Just put termux in your post.
