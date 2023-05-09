!!!note -> 🪶  **Tools - ytarchive & Twitterspaces recorders**  🪶 <-
    Here's the instructions for you to use properly the recorders in case of an impromptu karaoke or twitterspace from Mumei : you're going to need it BADLY. This is the fusion of two already existing pastebins made by an anon working on these projects.
    https://pastebin.com/j94zcvxG
    https://rentry.org/cgzdt

[Go back to the Main Page](https://rentry.org/46mci)
[TOC]
#ytarchive : How to use it?
***
https://github.com/Kethsar/ytarchive
***
***
-> **Install Steps - This is assuming you have Windows 10 here.**<-
***

 
Download ytarchive executable from github and put it in a folder.
Download fresh ffmpeg.exe from ffmpeg.org and put it in the same folder.
If you have membership and would like to download members-only streams, install Get cookies.txt addon from google chrome store in your Chrome/Edge browser, get on youtube.com, log in under your account with Moomers membership and hit "export" button in addon. You'll get a txt file, rename it cookies.txt for convenience and place it in the same folder you place everything in.
Install Windows Terminal from the MS Win store, navigate to the folder you placed everything in, press right mouse button and "Run in Windows Terminal". It will open a command line interface window.
There, type in:
ytarchive -c cookies.txt -v -t -r 60 https://www.youtube.com/channel/UC3n5uGu18FoCy23ggWWp8tA/live best
and press Enter.
 
Voila, ytarchive is monitoring her channel for frames every 60 seconds and will start recording in best available quality when she streams right away. You can also point it at already present frame directly:
ytarchive -c cookies.txt -v -t [frame URL]
 
You can monitor its progress in the Windows Terminal as it goes, important bit is to have the number of audio and video fragments be no more than one off from the "max sequence" number by the end of the download, otherwise something in the video will be screwed up somewhere (off by one because sequence starts counting from 0, fragments start from 1).
Once it is done downloading, it will say "Merging files", this is the part where you wait for the finalized download to appear in your folder. Depending on your PC specs and length of the stream this may take quite a while, so don't bother it while it works.
 
Automated downloading on Windows:
 
ytarchive will quit after downloading a stream. To continue stream downloads indefinitely, you can run ytarchive within an infinite loop in a batch script. Open Notepad and write the following.
 
:loop
<your ytarchive command goes here>
goto loop
 
That is ":loop", not a typo. Save as a .bat file (for example, mumei.bat) in your ytarchive folder. Now instead of running the ytarchive command, run mumei.bat instead. Press Ctrl-C at any time to stop it. Running ytarchive in non-interactive mode (by specifying the video format at the end of your command, for example "best") is recommended.
 
This should get you started and give me some peace of mind in case I forget to do the thing or unable to. Nobody will save those guerilla streams if we don't, hooman.

**ANON'S NOTICE ABOUT the "--monitor-channel" COMMAND**
Continually monitor a channel for streams. Requires using a /live URL.
This will go back to checking for a stream after it finishes downloading the current one. Implies '-r 60 --merge' unless set separately. Minimum 30 second wait time, 60 or more recommended. Using 'best' for quality or setting a decently exhaustive list recommended to prevent waiting for
input if selected quality is not available for certain streams. Be careful to monitor your disk usage when using this to avoid filling your drive while away.

.
#Twitterspaces : how to record them?
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

#YTBetter
This is a userscript that returns the ability to rewind in livestreams, install Tampermonkey addon to use:

##Variant 1
Shared many times, known to work.
```javascript
// ==UserScript==
// @name        YTBetter
// @namespace   YTBetter
// @match       https://*.youtube.com/*
// @run-at      document-start
// @grant       none
// @version     2.0
// @author      トワ…
// @description Patches YouTube to bypass some limitations
// ==/UserScript==

"use strict";

// Interop with "Simple YouTube Age Restriction Bypass"
const {
  get: getter,
  set: setter,
} = Object.getOwnPropertyDescriptor(Object.prototype, "playerResponse") ?? {
  set(value) {
    this[Symbol.for("YTBetter")] = value;
  },
  get() {
    return this[Symbol.for("YTBetter")];
  },
};

const isObject = (value) => value != null && typeof value === "object";

Object.defineProperty(Object.prototype, "playerResponse", {
  set(value) {
    if (isObject(value)) {
      const { videoDetails } = value;
      if (isObject(videoDetails)) {
        videoDetails.isLiveDvrEnabled = true;
      }
    }
    setter.call(this, value);
  },
  get() {
    return getter.call(this);
  },
  configurable: true,
});
```

##Variant 2
Appears to be more advanced with hooking into frames on pages like Holodex.
https://greasyfork.org/en/scripts/459535-ytbetter

#/who/-developed scripts
##Preface
Excluding the 4chan-x section which is a userscript edit, these are going to be generally written in Python 3.
To run these, simply copy them into a text file and save it as `[FILENAME].py` (replacing `[FILENAME]` with whatever you want) then execute them through Python's executable or through command prompt with opening command prompt window in the folder it's located and typing `python [FILENAME].py`.

###Using yt-dlp to grab a VOD
Docs: https://github.com/yt-dlp/yt-dlp
Follow the installation in the docs.
To use it, the laziest way is just to do `yt-dlp [URL]` in command prompt and it will automatically pick the highest quality-lowest bitrate version of the stream, this will tend to be VP9/OPUS versions of the streams (if available). If you wish to use the (most likely) stream original quality, you would instead use `yt-dlp [URL] -f 299+140`.

##4chan-x Edit: Better Page Info (Purge Position)
![](https://files.catbox.moe/3azond.png)
4chan-X.user.js: https://files.catbox.moe/yvgup8.js

Either install the above script or manually edit the lines by following the below changes.

```diff
@@ -21040,7 +21040,7 @@ ThreadStats = (function() {
         $.addClass(ThreadStats.pageCountEl, 'warning');
         return;
       }
-      ThreadStats.timeout = setTimeout(ThreadStats.fetchPage, 2 * $.MINUTE);
+      ThreadStats.timeout = setTimeout(ThreadStats.fetchPage, 2 * $.MINUTE / (23 * (ThreadStats.pageCountEl.classList.contains('warning')) + 1));
       return $.whenModified(g.SITE.urls.threadsListJSON(ThreadStats.thread), 'ThreadStats', ThreadStats.onThreadsLoad);
     },
     onThreadsLoad: function() {
@@ -21077,6 +21077,9 @@ ThreadStats = (function() {
               if (thread.no === ThreadStats.thread.ID) {
                 ThreadStats.pageCountEl.textContent = pageNum + 1;
                 ThreadStats.pageCountEl.classList.toggle('warning', i >= nThreads - this.response[0].threads.length);
+                if (ThreadStats.pageCountEl.classList.contains('warning')) {
+                  ThreadStats.pageCountEl.textContent += " (" + (nThreads - i - 1) + ")";
+                }
                 ThreadStats.lastPageUpdate = new Date(thread.last_modified * $.SECOND);
                 ThreadStats.retry();
                 return;
```

In non-coder terms:

Edit Line 21043 to be:
```javascript
ThreadStats.timeout = setTimeout(ThreadStats.fetchPage, 2 * $.MINUTE / (23 * (ThreadStats.pageCountEl.classList.contains('warning')) + 1));
```
Add after Line 21079:
```javascript
                if (ThreadStats.pageCountEl.classList.contains('warning')) {
                  ThreadStats.pageCountEl.textContent += " (" + (nThreads - i - 1) + ")";
                }
```

##Robust Archiver
Last Updated: 05/08/23 (mm/dd/yy)

This archiver is a Python script that:
* Automatically downloads cookies from specified browser. (Default Firefox)
* Logs chat (as much as possible, including pre- and post-stream).
* Watch multiple streamers. (Default Mumei only)
* Handle concurrent streams.
* Optionally exclude FREE CHAT streams. (Default includes)

```python
# Version 3

import datetime, time, os, re, chat_downloader, yt_dlp, schedule
from slugify import slugify
from multiprocessing import Process, Manager

# Requirements: yt_dlp, python-slugify, chat_downloader, schedule
# Keep up to date by running:
# pip install yt_dlp python-slugify chat_downloader schedule -U

# ===================
#       OPTIONS
# ===================

global Streamers, browser, cookie_timer, check_timer, free_chat_allowed, scanned_streams, p_active

Streamers = ['NanashiMumei',]
browser = ('firefox',) # https://github.com/yt-dlp/yt-dlp/blob/master/yt_dlp/YoutubeDL.py#L306
cookie_timer = 24 # hours
check_timer = 1 # minutes
free_chat_allowed = True
scanned_streams = '1-10' # first 10 streams in /streams page, scanning more makes checks longer, scanning less makes checks quicker

# ===================

p_active = {}

class WindowsInhibitor:
	'''Prevent OS sleep/hibernate in windows; code from:
	https://github.com/h3llrais3r/Deluge-PreventSuspendPlus/blob/master/preventsuspendplus/core.py
	API documentation:
	https://msdn.microsoft.com/en-us/library/windows/desktop/aa373208(v=vs.85).aspx'''
	ES_CONTINUOUS = 0x80000000
	ES_SYSTEM_REQUIRED = 0x00000001

	def __init__(self):
		pass

	def inhibit(self):
		import ctypes
		print("Preventing Windows from going to sleep")
		ctypes.windll.kernel32.SetThreadExecutionState(
			WindowsInhibitor.ES_CONTINUOUS | \
			WindowsInhibitor.ES_SYSTEM_REQUIRED)

	def uninhibit(self):
		import ctypes
		print("Allowing Windows to go to sleep")
		ctypes.windll.kernel32.SetThreadExecutionState(
			WindowsInhibitor.ES_CONTINUOUS)

def prog_hook(d,active,id):
	if d['status'] == 'downloading':
		active[id] = [True, True, d['fragment_index']]
	if d['status'] == 'finished' and active[id][1]:
		active[id] = [True, False, active[id][2]]
		print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + id + ": Stream ended with " + str(active[id][2]) + " frags.")

def grab_Metadata():
	ydl_opts = {
		'quiet': True,
		'cookiefile': 'cookies.txt',
		'playlist_items': scanned_streams,
		#'match_filter': is_live,
		'no_warnings': True,
		'ignore_no_formats_error': True,
		'ignoreerrors': True,
	}
	valid_streams = []
	for x in Streamers:
		print(end='\x1b[2K')
		print("Checking for streams... (" + x + ")", end='\r')
		URL = r'https://www.youtube.com/@' + x + r'/streams'
		with yt_dlp.YoutubeDL(ydl_opts) as ydl:
			info = ydl.extract_info(URL, download=False)
			if info:
				streams = info['entries']
				for stream in streams:
					if not stream:
						continue
					if re.search(r'free\s*chat', stream['fulltitle'], re.I) and not free_chat_allowed:
						continue
					if stream['live_status'] in ['is_live','is_upcoming']:
						valid_streams.append({
							'id': stream['id'],
							'title': stream['fulltitle'],
							# 'member': True if stream['availability'] == 'public' else False # 'public' 'subscriber_only' 'private'
							})
	return valid_streams
	
def save_Metadata(url, fn):
	ydl_opts = {
		'quiet': True,
		'cookiefile': 'cookies.txt',
		'writedescription': True,
		'writethumbnail': True,
		'skip_download': True,
		'outtmpl': fn + '/%(title)s [%(id)s].%(ext)s',
		'no_warnings': True,
		'ignore_no_formats_error': True,
		'ignoreerrors': True
	}
	with yt_dlp.YoutubeDL(ydl_opts) as ydl:
		ydl.download(url)

def chatProc(url, fn, id, active):
	dl = chat_downloader.ChatDownloader(cookies="cookies.txt")
	try:
		chat = dl.get_chat(url, output=fn+"\\chat.log", overwrite=False, message_groups=['all'], message_types=['all'])
	except:
		if id in list(active.keys()):
			if active[id][1]:
				dl.close()
				print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + id + ": Chat is NOT open, retrying in 1 minute.")
				time.sleep(60)
				return chatProc(url, fn, id, active)
		print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + id + ": No live chat.")
		return dl.close()
	print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + id + ": Chat is open.")
	try:
		for m in chat:
			pass
	except:
		print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + id + ": Chat error.")
	dl.close()
	if id in list(active.keys()):
		if active[id][1]:
			print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + id + ": Chat closed prematurely, attempting to reconnect...")
			return chatProc(url, fn, id, active)
	print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + id + ": Chat is closed.")

def vidProc(id, outtmpl, active):
	ydl_opts = {
		'quiet': True,
		'cookiefile': 'cookies.txt',
		'live_from_start': True,
		'no_warnings': True,
		'ignore_no_formats_error': True,
		'ignoreerrors': True,
		'wait_for_video': (60,120),
		'outtmpl': outtmpl,
		'overwrites': True,
		'socket_timeout': 300,
		'noprogress': True,
		'progress_hooks': [lambda d: prog_hook(d,active,id)],
	}
	URL = "https://www.youtube.com/watch?v=" + id
	with yt_dlp.YoutubeDL(ydl_opts) as ydl:
		ydl.download(URL)
	active[id] = [False, False, 0]
	print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + id + ": Archive complete.")

def del_p(id):
	global p_active
	proc = p_active.pop(id)
	proc['chat'].join(5)
	proc['vid'].join(5)

def update_cookies():
	print(end='\x1b[2K')
	print("Updating Cookies...")
	ydl_opts = {
		'cookiesfrombrowser': browser,
		'cookiefile': 'cookies.txt',
		'quiet': True,
		'skip_download': True,
	}
	with yt_dlp.YoutubeDL(ydl_opts) as ydl:
		ydl.download("https://www.youtube.com/watch?v=4NYsqm2E41k")
	print("Cleaning Cookies...")
	cleaned = ['# Netscape HTTP Cookie File','']
	with open("cookies.txt") as raw:
		raw_lines = raw.readlines()
		lines = [it.strip().lstrip('#HttpOnly_') for it in raw_lines]
		for x in lines:
			if x.startswith('.youtube'):
				if x.split()[5] in ['APISID','HSID','LOGIN_INFO','NID','PREF',
				'SAPISID','SID','SIDCC','SSID','VISITOR_INFO1_LIVE','YSC',
				'__Secure-1PAPISID','__Secure-1PSID','__Secure-1PSIDCC',
				'__Secure-3PAPISID','__Secure-3PSID','__Secure-3PSIDCC','wide']:
					cleaned.append(x)
	with open('cookies.txt','w') as out:
		for x in cleaned:
			out.write(x)
			out.write('\n')
	print("Cookies Updated!")

def archiver(active):
	streams = grab_Metadata()
	if streams:
		for stream in streams:
			id = stream['id']
			if id in list(active.keys()):
				continue
			title = stream['title']
			# member = stream['member']
			print('\n<' + time.strftime("%H:%M:%S", time.localtime()) + '> Found stream\nID: ' + id + '\nTitle: ' + title)
			URL = "https://www.youtube.com/watch?v=" + id
			fn = slugify(title, allow_unicode=True) + "-" + id
			outtmpl = fn + '/%(title)s [%(id)s].%(ext)s'
			if not os.path.exists(fn):
				os.makedirs(fn) # Creates a containing folder
				save_Metadata(URL, fn)
			vid = Process(target=vidProc, args=(id,outtmpl,active))
			vid.start()
			chat = Process(target=chatProc, args=(URL,fn,id,active))
			chat.start()
			active[id] = [True,True,0]
			global p_active
			p_active[id] = {'vid': vid, 'chat': chat}

if __name__ == '__main__':
	# in Windows, prevent the OS from sleeping while we run
	if os.name == 'nt':
		WindowsInhibitor().inhibit()
	with Manager() as mgr:
		print("========================\nMumei's stream archiver!\n========================\n")
		active = mgr.dict()
		waited = 0
		update_cookies()
		archiver(active)
		schedule.every(cookie_timer).hours.do(update_cookies)
		schedule.every(check_timer).minutes.do(archiver, active)
		while True: # Run indefinitely
			schedule.run_pending()
			for id in list(active.keys()):
				if not active[id][0]:
					del_p(id)
					del active[id]
			print(end='\x1b[2K')
			print('Active streams: ' + str(list(active.keys())) + ', Total time waited: ' + str(datetime.timedelta(seconds=waited)), end='\r')
			waited += 1
			time.sleep(1)
```
##Easy(?) Soundpost Creator
###VOD
Last Updated: 04/30/23 (mm/dd/yy)

This python script will call your installation of FFMPEG with simple pre-defined instructions in order to make the process of soundpost production easier and simpler without sacrificing quality too greatly.

```python
import subprocess, shlex, re, math, os, shutil, datetime
from pathlib import Path

if __name__ == '__main__':
	file = input("VOD:").replace('"','').strip()
	f = subprocess.Popen(shlex.split(r'ffprobe -v error -select_streams a:0 -show_entries stream=codec_name -of default=noprint_wrappers=1:nokey=1 -i "' + file + r'"'), stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	codecs = [x.decode('ascii').strip() for x in f.stdout]
	f = subprocess.Popen(shlex.split(r'ffprobe -v error -select_streams v:0 -show_entries stream=width,height,duration -of default=noprint_wrappers=1:nokey=1 -i "' + file + r'"'), stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	dims = [x.decode('ascii').strip() for x in f.stdout]
	ac = "aac" if codecs[0] == 'aac' else 'opus'
	print("\n<Timestamps>")
	print("Timestamps are expected in the format of HH:MM:SS.sss")
	print("Example: 1:23:45.678 for the 1 hour, 23 minutes, and 45.678 seconds mark.")
	print("Not all spots need to be filled, 23:45 will read as 23 minutes and 45 seconds.")
	print("VOD Length: " + str(datetime.timedelta(seconds=round(float(dims[2])))))
	valid_start = False
	while not valid_start:
		start = input("Start time: ").strip()
		if not start:
			print("You must specify a valid starting time.")
			continue
		try:
			tmp = start.split(':')
			time_s = 0
			for x in range(len(tmp)):
				time_s += round(float(tmp[x]) * math.pow(60,len(tmp)-x-1),3)
		except:
			print("You must specify a valid starting time.")
			continue
		if time_s < 0 or time_s > float(dims[2]):
			print("You must specify a starting time within 0 and " + str(datetime.timedelta(seconds=round(float(dims[2]))))+ ".")
		else:
			valid_start = True
	valid_end = False
	while not valid_end:
		end = input("End time: ").strip()
		if not end:
			print("You must specify a valid ending time.")
			continue
		try:
			tmp = end.split(':')
			time_e = 0
			for x in range(len(tmp)):
				time_e += round(float(tmp[x]) * math.pow(60,len(tmp)-x-1),3)
		except:
			print("You must specify a valid ending time.")
			continue
		if time_e < 0 or time_e > float(dims[2]) or time_e <= time_s:
			print("You must specify an ending time within 0 and " + str(datetime.timedelta(seconds=round(float(dims[2]))))+ " as well as after your starting time.")
		else:
			valid_end = True
	pre = 5 if time_s - 5 > 0 else time_s
	post = 5 if time_e + 5 < float(dims[2]) else float(dims[2]) - time_e
	print("\n<Quality of video>")
	print("CRF determines the overall quality of the video.")
	print("A lower number indicates higher quality,")
	print("but often visually identical quality can be found")
	print("between values of 10-25. Default value is 20.")
	crf = input("CRF: ").strip() or "20"
	print("\n<Bitrate>")
	print("Defaults to Constant Quality (0).")
	print("Specified bitrate will try to constrain the quality while controlling filesize.")
	print("Max filesize for /vt/ is 4MB, for your specified clip length of " + str(time_e-time_s) + " seconds")
	print("it is suggest that the highest you should go is " + str((1024*4*8)/(time_e-time_s)) + "k.")
	print("Example: " + str((1024*3*8)/(time_e-time_s)) + "k")
	cq = input("Bitrate: ").strip() or "0"
	crf += r' -b:v ' + cq
	print("\n<Scale (Optional)>")
	print("Straight forward, do this if you want to reduce filesize.")
	print("You simply define the dimensions you want the video to be.")
	print("Using '-1' indicates we want that to scale in-ratio with the other dimension.")
	print("Example: -1:720 is 720p, -1:480 is 480p")
	scale = input("Scale (Leave empty if no scale): ").strip()
	print("\n<Crop (Optional, but Recommended)>")
	print("The basics of cropping is choosing your desired width and height")
	print("and telling it from what pixel you would like that region to originate.")
	print("Example: https://video.stackexchange.com/questions/4563/how-can-i-crop-a-video-with-ffmpeg")
	print("For most streams, Mumei is on the lower right corner.")
	print("To select down to only her, you can define the specific pixel space she inhabits.")
	print("This is done by defining the size of the region you desire and the starting point.")
	print("The starting point of the region must be specified by the top-left pixel you want the region in.")
	print("Complex? Yes! But all that math can be done for you!")
	print("Mumei is generally in the right 31.25% and bottom 72.5% of the video.")
	print("Knowing that we can set the width to in_w*0.3125 and height to in_h*0.725")
	print("and in order to get the top-left pixel of that region, we simply take the opposite!")
	print("That being 1-0.3125 = 0.6875 and 1-0.725 = 0.275.")
	print("That crop can be written as: in_w*0.3125:in_h*0.725:in_w*0.6875:in_h*0.275")
	crop = input("Crop (Leave empty if no crop.): ").strip()
	vf = ""
	if scale:
		vf += r'scale=' + scale
	if crop and scale:
		vf += r','
	if crop:
		vf += r'crop=' + crop
	if vf:
		vf = r' -vf "' + vf + r'"'
	FF_Flags = '-c:v libvpx-vp9 -ss '+ str(pre) + r' -t ' + str(round(time_e - time_s,3)) + vf + r' -crf ' + crf + r' -row-mt 1 -threads 0 -deadline best -pix_fmt yuv420p10le'
	os.makedirs(r'tmp')
	tmp_clip = r'"' + str(Path("tmp/clip.mkv")) + r'"'
	tmp_encode = r'"' + str(Path("tmp/clip-encode.mkv")) + r'"'
	file = r'"' + str(Path(file)) + r'"'
	subprocess.run(r'ffmpeg -hide_banner -i ' + file + r' -c copy -ss '+ str(time_s - pre) + r' -to ' + str(time_e + post) + r' -y ' + tmp_clip)
	subprocess.run(r'ffmpeg -hide_banner -i ' + tmp_clip + r' -an ' + FF_Flags + r' -pass 1 -f null ' + str(os.devnull))
	subprocess.run(r'ffmpeg -hide_banner -i ' + tmp_clip + r' -c:a copy ' + FF_Flags + r' -pass 2 -y ' + tmp_encode)
	subprocess.run(r'ffmpeg -hide_banner -i ' + tmp_encode + r' -c:v copy -an -y "out[sound=files.catbox.moe%2F[REPLACE HERE].' + ac + '].webm" -c:a copy -vn -y out.' + ac)
	shutil.rmtree(r'tmp')
	os.remove(r'ffmpeg2pass-0.log')
```

###Twitter
Last Updated: 04/30/23 (mm/dd/yy)
```python
import subprocess, os
from pathlib import Path

if __name__ == '__main__':
	file = input("Twitter Video:").replace('"','').strip()
	print("\n<Quality of video>")
	print("CRF determines the overall quality of the video.")
	print("A lower number indicates higher quality,")
	print("but often visually identical quality can be found")
	print("between values of 10-25. Default value is 20.")
	crf = input("CRF: ").strip() or "20"
	print("\n<Bitrate>")
	print("Defaults to Constant Quality (0).")
	print("Specified bitrate will try to constrain the quality while controlling filesize.")
	cq = input("Bitrate: ").strip() or "0"
	crf += r' -b:v ' + cq
	FF_Flags = '-c:v libvpx-vp9 -crf ' + crf + r' -row-mt 1 -threads 0 -deadline best -pix_fmt yuv420p10le'
	tmp_encode = r'"' + str(Path("tmp-twitter-encode.mkv")) + r'"'
	file = r'"' + str(Path(file)) + r'"'
	subprocess.run(r'ffmpeg -hide_banner -i ' + file + r' -an ' + FF_Flags + r' -pass 1 -f null ' + str(os.devnull))
	subprocess.run(r'ffmpeg -hide_banner -i ' + file + r' -c:a copy ' + FF_Flags + r' -pass 2 -y ' + tmp_encode)
	subprocess.run(r'ffmpeg -hide_banner -i ' + tmp_encode + r' -c:v copy -an -y "out[sound=files.catbox.moe%2F[REPLACE HERE].aac].webm" -c:a copy -vn -y out.aac')
	os.remove(r'ffmpeg2pass-0.log')
	os.remove(tmp_encode)
```

##Soundpost FIlename Cleaner
Last Updated: 04/28/23 (mm/dd/yy)

Removes `http://` and `https://` and fixes `_2F` to `%2F` in the folder it is ran in.
Reason:
https://github.com/rcc11/4chan-sounds-player/blob/master/src/components/posts/index.js#L114 indicates it uses whatever protocol you're already using for 4chan.
WARNING: OVERWRITES FILES

```python
import os

if __name__ == '__main__':
	cwd = os.getcwd()
	for file in os.listdir(cwd):
		file_ext = file.split(r'.')
		file_ext = file_ext[len(file_ext)-1]
		if file_ext in ['webm','png','jpg','gif','jpeg','jfif']:
			if len(file.split(r'sound=')) > 1:
				if file.split(r'sound=')[1].startswith(r'http') or len(file.split(r'_2F')) > 1:
					clean_file = file.replace(r'_2F',r'%2F').replace(r'_3A',r'%3A').replace(r'http%3A%2F%2F',r'').replace(r'https%3A%2F%2F',r'')
					os.replace(file,clean_file)
					print(r'Cleaned: ' + str(file) + ' -> ' + str(clean_file))
```

##Soundpost Recombiner
These scripts are meant to combine the audio back into the video file for soundpost archiving.
###Archival Quality (Slow for GIF)
Last Updated: 04/26/23 (mm/dd/yy)

```python
import subprocess, shlex, re

if __name__ == '__main__':
	file = input("Filename:").replace('"','')
	info = re.search(r'(.+)\[sound=(\S+)\]\.(\S+)', file, flags=re.I)
	original_name = info.group(1).strip()
	url = info.group(2).replace("%2F","/").replace("%3A",":")
	if not re.match("http", url):
		url = r'https://' + url
	if info.group(3) == 'webm':
		video_codec = "copy"
		pic2vid = r'' 
		stills = r'' 
	else:
		video_codec = r'libx264 -preset veryslow -qp 0 -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2"'
		pic2vid = r'' if info.group(3) in ['jpg','jfif'] else r'-shortest' 
		stills = r'' if info.group(3) in ['jpg','jfif'] else r'-stream_loop -1'
	subprocess.run(shlex.split(r'ffmpeg.exe ' + stills + r' -i "' + file + r'" -i "' + url + r'" ' + pic2vid + r' -c:v ' + video_codec + r' -c:a copy -y "' + original_name + r'.mkv"'))
```

###Lazy Quality (Fast for GIF)
Last Updated: 04/26/23 (mm/dd/yy)

```python
import subprocess, shlex, re

if __name__ == '__main__':
	file = input("Filename:").replace('"','')
	info = re.search(r'(.+)\[sound=(\S+\.(\S+))\]\.(\S+)', file, flags=re.I)
	original_name = info.group(1).strip()
	url = info.group(2).replace("%2F","/").replace("%3A",":")
	if not re.match("http", url):
		url = "https://" + url
	sound_ext = info.group(3)
	video_ext = info.group(4)
	a_codec = "copy" if sound_ext in ['ogg', 'opus', 'webm'] else "libopus -b:a 128K"
	if video_ext == 'webm':
		v_codec = "copy"
		pic2vid = r'' 
		stills = r'' 
	else:
		v_codec = "libvpx-vp9 -pix_fmt yuva420p -lossless 1 -deadline best"
		pic2vid = r'' if video_ext in ['jpg','jfif'] else r'-shortest' 
		stills = r'' if video_ext in ['jpg','jfif'] else r'-stream_loop -1'
	subprocess.run(shlex.split(r'ffmpeg.exe ' + stills + r' -i "' + file + r'" -i "' + url + r'" ' + pic2vid + r' -c:v ' + v_codec + r' -c:a ' + a_codec + r' -y "' + original_name + r'.webm"'))
```