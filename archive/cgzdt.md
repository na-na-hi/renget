-> **TwitterSpaces**<-
[Go Back to the Tools Page](https://rentry.org/35q46)
[Go back to the Main Page](https://rentry.org/ei9vd)
***
- #####Mumei 
	- https://cloudup.com/cBt6Q3x1RSv 

***
https://github.com/HitomaruKonpaku/twspace-crawler
**Alternative Install steps**
https://github.com/HitomaruKonpaku/twspace-crawler/blob/master/INSTALLATION.md
***
-> **Install Steps**<-
***
Install node https://nodejs.org/en/ (I have 16.13.1 installed)

Then just make a folder where you want to have twitter space audio downloaded.
Like I have mine at "J:\Nanashi Mumei Ch. hololive-EN\Space"
![](https://cldup.com/83z2ulCyGz.png)
You can just put the ffmpeg files in here.

ffmpeg https://www.gyan.dev/ffmpeg/builds/ I have "ffmpeg-git-full.7z" Then you just extract it, get the files from bin folder and put them wherever you're going to have twspace crawler files at.

Just downloaded newest release from here
https://github.com/HitomaruKonpaku/twspace-crawler/tags  get the zip file.

Unzip it into the same folder you put ffmpeg at. (so all the files should look like the image above.)
***
Then you need to open cmd in that folder, you can just click on the address bar in file explorer.
![](https://cldup.com/e-CzwpaIX2.png)

Then just type "cmd" and press enter.
![](https://cldup.com/djRufn3HEr.png)

Then just type or paste this in cmd

`npm install twspace-crawler`

***
***
You can get your auth token from your twitter account.

Just need to be signed into your twitter account. 
Open this in a new tab (chrome)

`chrome://settings/cookies/detail?site=twitter.com&search=cookies`
Click on `auth_token` and you'll need the number under `Content` for the next step.

Next just go to the folder you have twspace saved.

Make a copy of `.env.example` Then open the copy in notepad. Once opened remove `TWITTER_AUTHORIZATION=` and just leave 
`TWITTER_AUTH_TOKEN=` Then you just paste that number that was from `Content` so it looks something like this.

```
TWITTER_AUTH_TOKEN= "Number here"

```
You can save and close the file.
***
***

***
Next you'll open the `config.json` with notepad, If you just want Mumei then copy and replace all of it with this instead.

```
{
  "interval": 30000,
  "users": [
    {
      "username": "nanashimumei_en"
    }
  ]
}

```
Then just save it and close it.

If you want to download from everyone in hololive you can just make a copy of `config.example.json` then rename it to `config.json`
***
Now you can just make a .bat file that has this in it. 

Just open notepad and copy this into it.

```
@ECHO OFF
twspace-crawler --env ./.env --config ./config.json --force-open --debug
PAUSE
```
When saving it you can just name it something like this `Space Download.bat` save it to the same folder locations as other files.

***
Then you can just open that for twspace-crawler to run.

When you run the .bat file it should look something like this.
![](https://cldup.com/KZe-91ZNwM.png)
***
If you want to test it, you can just go here https://twitter.com/hashtag/space?src=hashtag_click&f=live
Look for a random space that's currently running and replace the "nanashimumei_en" with that user just to see if it works. It downloads the space once the space has ended.
***
After the test just switch back to "nanashimumei_en" or whatever you had before.
***
After it finally downloads something it will have the files saved in a folder named "download"
![](https://cldup.com/ELI_WUPnVR.png)
***
