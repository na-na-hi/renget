!!!note -> 🪶  **Python Scripts**  🪶 <-
	These were developed for individual inquiries by hoomans/hooties and partially because I wanted a better ytarchive.
	[/who/ Starter Pack](https://rentry.org/xu6td)
	[ytarchive and twitterspace recorder](https://rentry.org/rwyzq)

[Go back to the Main Page](https://rentry.org/46mci)
[TOC]

#/who/-developed scripts
To run these, simply copy them into a text file and save it as `[FILENAME].py` (replacing `[FILENAME]` with whatever you want) then execute them through Python's executable or through command prompt with opening command prompt window in the folder it's located and typing `python [FILENAME].py`.

#FFMPEG and Python Installation
By far the easiest way to install and maintain a full installation of FFMPEG is to use [Chocolatey](https://chocolatey.org/install). (I suggest learning Chocolatey for your future convenience in installing and updating annoying programs like qbittorrent which require you to go to a website to install their newest versions.)
##Installing Chocolatey
1. Press Windows+R on your keyboard.
2. Type `powershell`.
3. Press Shift+Ctrl+Enter on your keyboard.
4. Enter `Get-ExecutionPolicy`. If it returns `Restricted`, then enter `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`.
5. Enter `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`.
6. Test by entering `choco -v`, it should return the version number.
##Installing FFMPEG
1. (If you closed the window:) Follow steps 1-3 from **Installing Chocolatey**.
2. Enter `choco install -y ffmpeg-full`.
3. You're done.
##Updating FFMPEG
Same as installing but do `choco upgrade -y ffmpeg-full`.
##Installing Python 3
1. (If you closed the window:) Follow steps 1-3 from **Installing Chocolatey**.
2. Enter `choco install -y python`.
3. You're done.
##Updating Python 3
!!!note Each time you update Python, you will likely need to re-install any `requirements` stated in their scripts to work again.
	Suggested to not update unless you really have to.
Same as installing but do `choco upgrade -y python`.

#Using yt-dlp to grab a VOD
Docs: https://github.com/yt-dlp/yt-dlp
Follow the installation in the docs.
To use it, the laziest way is just to do `yt-dlp [URL]` in command prompt and it will automatically pick the highest quality-lowest bitrate version of the stream, this will tend to be VP9/OPUS versions of the streams (if available). If you wish to use the (most likely) stream original quality, you would instead use `yt-dlp [URL] -f 299+140`.

#Robust Archiver (ytarchive alternative)
Last Updated: 05/09/23 (mm/dd/yy)

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
		'file_access_retries': 1000,
		'retries': 5,
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
#Soundpost Scripts
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

Designed to simply make it easier to quickly convert twitter mp4's into soundposts.

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
Last Updated: 05/20/23 (mm/dd/yy)

Removes `http://` and `https://` and fixes `_2F` to `%2F` in the folder it is ran in.
Reason:
https://github.com/rcc11/4chan-sounds-player/blob/master/src/components/posts/index.js#L114 indicates it uses whatever protocol you're already using for 4chan.
WARNING: OVERWRITES FILES

```python
import os, re

if __name__ == '__main__':
	cwd = os.getcwd()
	for file in os.listdir(cwd):
		file_ext = file.split(r'.')
		file_ext = file_ext[len(file_ext)-1]
		if file_ext in ['webm','png','jpg','gif','jpeg','jfif']:
			fs = file.split(r'sound=')
			if len(fs) > 1:
				if fs[1].startswith(r'http') or len(fs[1].split(r'_')) > 1:
					clean_file = fs[0] + r'sound=' + re.sub(r'https?%3A%2F%2F',r'',fs[1].replace(r'_',r'%').replace(r'%2E',r'.'))
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