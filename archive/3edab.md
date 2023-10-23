!!!note -> 🪶  **Python Scripts**  🪶 <-
	These were developed for individual inquiries by hoomans/hooties and partially because I wanted a better ytarchive.
	[/who/ Starter Pack](https://rentry.org/xu6td)
	[ytarchive and twitterspace recorder](https://rentry.org/rwyzq)
	[OP Template](https://rentry.org/7uy87)

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
Last Updated: 10/22/23 (mm/dd/yy)

This archiver is a Python script that:
* Automatically downloads cookies from specified browser. (Default Edge)
* Logs chat (as much as possible, including pre- and post-stream).
* Watch multiple streamers. (Default Mumei only)
* Handle concurrent streams.
* Optionally exclude certain streams. (Default includes all)

```python
# Version 4

import configparser
import ctypes
import datetime
import os
import re
import sys
import time
from importlib import reload
from multiprocessing import Process, Value
from subprocess import call


def pretty_print(output, end='\n'):
    print(end='\x1b[2K')
    print(output, end=end)


# Automatically check for missing needed packages
try:
    import chat_downloader
except ImportError as e:
    pretty_print("Installing Missing Python Packages... (chat_downloader)", end='\r')
    call("pip install --quiet chat_downloader")
    import chat_downloader
try:
    import yt_dlp
except ImportError as e:
    pretty_print("Installing Missing Python Packages... (yt_dlp)", end='\r')
    call("pip install --quiet yt_dlp")
    import yt_dlp
try:
    import schedule
except ImportError as e:
    pretty_print("Installing Missing Python Packages... (schedule)", end='\r')
    call("pip install --quiet schedule")
    import schedule
try:
    import slugify
except ImportError as e:
    pretty_print("Installing Missing Python Packages... (python-slugify)", end='\r')
    call("pip install --quiet python-slugify")
    import slugify


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
        pretty_print("Preventing Windows from going to sleep")
        ctypes.windll.kernel32.SetThreadExecutionState(
            WindowsInhibitor.ES_CONTINUOUS | \
            WindowsInhibitor.ES_SYSTEM_REQUIRED)

    def uninhibit(self):
        pretty_print("Allowing Windows to go to sleep")
        ctypes.windll.kernel32.SetThreadExecutionState(
            WindowsInhibitor.ES_CONTINUOUS)


class Stream:
    def __init__(self, id, title):
        self.id = id
        self.folder = slugify.slugify(title, allow_unicode=True) + "-" + id
        self.outtmpl = self.folder + '/%(title)s [%(id)s].%(ext)s'
        self.status = Value(ctypes.c_bool, True)
        pretty_print(
            '<' + time.strftime("%H:%M:%S", time.localtime()) + '> Found stream\nID: ' + id + '\nTitle: ' + title)
        ydl_opts = {
            'quiet': True,
            'cookiefile': 'cookies.txt',
            'writedescription': True,
            'writethumbnail': True,
            'skip_download': True,
            'outtmpl': self.outtmpl,
            'no_warnings': True,
            'ignore_no_formats_error': True,
            'ignoreerrors': True
        }
        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            ydl.download(self.id)
        self.video = Video(self.id, self.outtmpl, self.status)
        self.chat = Chat(self.id, self.folder)
        self.video.process = Process(target=self.video.start)
        self.chat.process = Process(target=self.chat.start)
        self.video.process.start()
        self.chat.process.start()

    def stop(self):
        self.video.process.join(5)
        self.chat.process.join(5)

    def state(self):
        return bool(self.status.value)


class Video:
    def __init__(self, id, outtmpl, status):
        self.process = None
        self.id = id
        self.outtmpl = outtmpl
        self.status = status
        self.frags = Value('i', 0)
        self.started = Value(ctypes.c_bool, False)

    def start(self):
        ydl_opts = {
            'quiet': True,
            'cookiefile': 'cookies.txt',
            'live_from_start': True,
            'no_warnings': True,
            'ignore_no_formats_error': True,
            'ignoreerrors': True,
            'wait_for_video': (60, 120),
            'outtmpl': self.outtmpl,
            'overwrites': True,
            'socket_timeout': 300,
            'noprogress': True,
            'progress_hooks': [lambda d: self.progress(d)],
            'file_access_retries': 1000,
            'retries': 5,
        }
        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            ydl.download(self.id)
        pretty_print('<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + self.id + ": Archive complete.")
        self.status.value = False

    def progress(self, d):
        if d['status'] == 'downloading':
            self.frags.value = d['fragment_index']
            if self.frags.value > 0 and not self.started.value:
                pretty_print(
                    '<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + self.id + ": Stream has started.")
                self.started.value = True
        if d['status'] == 'finished':
            pretty_print(
                '\n<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + self.id + ": Stream ended with " + str(
                    self.frags.value) + " frags.")


class Chat:
    def __init__(self, id, folder):
        self.process = None
        self.id = id
        self.outtmpl = folder + "\\chat.log"
        self.URL = "https://www.youtube.com/watch?v=" + self.id

    def start(self):
        dl = chat_downloader.ChatDownloader(cookies="cookies.txt")
        while True:
            try:
                chat = dl.get_chat(self.URL, output=self.outtmpl, overwrite=False, message_groups=['all'],
                                   message_types=['all'])
            except:
                dl.close()
                time.sleep(15)
                continue
            pretty_print('<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + self.id + ": Chat is open.")
            try:
                for m in chat:
                    pass
            except:
                pretty_print(
                    '<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + self.id + ": Chat error, retrying...")
                time.sleep(15)
                dl.close()
                continue
            break
        pretty_print('<' + time.strftime("%H:%M:%S", time.localtime()) + "> " + self.id + ": Chat is closed.")


class Athena:
    def __init__(self, cfgs):
        self.list = dict()
        self.streamers = cfgs.streamers.split(',')
        self.streamtype = cfgs.streamtype
        self.ydl_opts = {
            'quiet': True,
            'simulate': True,
            'cookiefile': 'cookies.txt',
            'no_warnings': True,
            'ignore_no_formats_error': True,
            'ignoreerrors': True,
            'extract_flat': True,
        }

    def scanner(self):
        active = self.ids()
        for streamer in self.streamers:
            pretty_print("Checking for streams... (" + streamer + ")", end='\r')
            URL = r'https://www.youtube.com/@' + streamer + r'/streams'
            with yt_dlp.YoutubeDL(self.ydl_opts) as ydl:
                info = ydl.extract_info(URL)
                if info:
                    streams = info['entries']
                    for stream in streams:
                        if not stream:
                            continue
                        if stream['live_status'] in ['is_live', 'is_upcoming']:
                            match self.streamtype:
                                case 'all':
                                    pass
                                case 'partial':
                                    if re.search(r'(free\s*chat|schedule)', stream['title'], re.I):
                                        continue
                                case 'karaoke':
                                    if not re.search(r'karaoke', stream['title'], re.I):
                                        continue
                                case 'unarchived':
                                    if not re.search(r'unarchived', stream['title'], re.I):
                                        continue
                            if stream['id'] not in active:
                                self.add(stream['id'], stream['title'])
        if 'playlist_items' not in self.ydl_opts.keys():
            self.ydl_opts['playlist_items'] = '1-5'

    def cleaner(self):
        kill_queue = []
        for id in self.ids():
            if not self.list[id].state():
                kill_queue += [id]
        for id in kill_queue:
            self.remove(id)

    def add(self, id, title):
        self.list[id] = Stream(id, title)

    def remove(self, id):
        self.list[id].stop()
        del self.list[id]

    def ids(self):
        return list(self.list.keys())


class ConfigItem:
    def __init__(self, section, key, value, description, repair=None, old=None):
        if old is None:
            old = []
        self.section = section
        self.key = key
        self.value = value
        self.description = description
        self.repair = repair
        self.old = old

    def update(self, value):
        if self.repair:
            self.value = self.repair(value)
        else:
            self.value = value

    def assign(self):
        for line in self.description:
            pretty_print(line)
        return input("Response: ") or self.value


class ArchiveConfig:
    configFileLocation = 'archiver-config.ini'
    items = [
        ConfigItem("MISC", "autoupdatemodules", 2, [
            "This script relies on keeping the yt_dlp and chat_downloader modules up to date for YouTube changes.",
            "Options: (Default is 2)",
            "\t0: Don't update any modules for me.",
            "\t1: Only update yt_dlp and chat_downloader modules for me.",
            "\t2: Update all modules for me. (yt_dlp, chat_downloader, python-slugify, and schedule)"]),
        ConfigItem("SCANNER", "streamers", "NanashiMumei,NerissaRavencroft",
                   ["List the @Name for YouTube streamers you want to archive.",
                    "Exclude the @ prefix in your response.",
                    "Examples: (Default is NanashiMumei,NerissaRavencroft)",
                    "\tNanashiMumei\n\tNanashiMumei,NerissaRavencroft\n\tKosekiBijou,ui_shig,penguinz0"],
                   lambda x: "".join(x.split())),
        ConfigItem("SCANNER", "streamtimer", "1", ["How many minutes would you like between each scan for new streams?",
                                                 "Examples: (Default is 1)",
                                                 "\t1\n\t60\n\t60*3"], lambda x: eval(str(x))),
        ConfigItem("SCANNER", "streamtype", "all", ["What types of streams would you like to capture for archival?",
                                                    "*WARNING* This will only capture based on the title at the moment the stream was found!",
                                                    "*WARNING* That means that if the title changes later, it isn't guaranteed to find it!",
                                                    "Options: (Default is all)",
                                                    "\tall: All streams permitted.",
                                                    "\tpartial: No Free Chat or Schedule streams.",
                                                    "\tkaraoke: Only Karaoke streams.",
                                                    "\tunarchived: Only Unarchived streams."], str.lower),
        ConfigItem("COOKIES", "browser", "('edge',)",
                   ["Select a browser you would like to import your YouTube cookies from.",
                    "*WARNING* Suggestion is to pick/download a browser you will never use regularly!",
                    "*WARNING* YouTube has broken cookies on browsers which actively use YouTube!",
                    "*Note* If you choose chrome or edge or other chromium browsers, you may need to restart the browser with:",
                    "\t--disable-features=LockProfileCookieDatabase",
                    "*Note* to get it to actually be able to grab the cookies properly.",
                    '*WARNING* Quotes ("" or ' + "''" + ') actually matter here, please use them in the response!',
                    "Examples: (Default is ('edge',) )",
                    "\t('chrome',)\n\t('firefox',)\n\t('firefox', 'default', None, 'Meta')\n\t('edge',)",
                    "More explanation: https://github.com/yt-dlp/yt-dlp/blob/1c51c520f7b511ebd9e4eb7322285a8c31eedbbd/yt_dlp/YoutubeDL.py#L314-L317"],
                   eval),
        ConfigItem("COOKIES", "cookietimer", 12,
                   ["How often (in hours) would you like to check that your cookies are still valid?",
                    "Examples: (Default is 12)",
                    "\t12\n\t24\n\t24*3"], lambda x: eval(str(x))),
        ConfigItem("COOKIES", "testid", "Ea8XBooQ5_w", ["What member stream would you like to test cookies on?",
                                                        "*NOTE* If you are not membered to any of the streamers,",
                                                        '*NOTE* put "no" without the quotes or give a non-member stream ID.',
                                                        "Only input the ID of the stream, for example: (Default)",
                                                        "https://www.youtube.com/watch?v=Ea8XBooQ5_w is Ea8XBooQ5_w"]),
    ]

    def __init__(self):
        for item in self.items:
            setattr(self, item.key, item.value)

    def first_run(self, config):
        pretty_print("==========================\nFirst run config generator\n==========================")
        for item in self.items:
            item.update(item.assign())
            pretty_print("================")
            if item.section not in config.sections():
                config.add_section(item.section)
            config.set(item.section, item.key, str(item.value))
        self.write(config)

    def update_id(self, id, config):
        self.testid = id
        config.set("Cookies", "testid", id)
        self.write(config)

    def read(self, config):
        updated_values = False
        for item in ArchiveConfig.items:
            value_type = type(item.value)
            value = None
            method = config.get
            if value_type == int:
                method = config.getint
            elif value_type == bool:
                method = config.getboolean
            if item.old:
                for old in item.old:
                    try:
                        value = method(old[0], old[1])
                        del config[old[0]][old[1]]
                        if not len(config.options(old[0])):
                            del config[old[0]]
                        updated_values = True
                    except:
                        pass
            if not value:
                try:
                    value = method(item.section, item.key)
                except Exception as err:
                    pretty_print(err)
                    pretty_print("Config couldn't find value for " + item.key + "!")
                    value = item.assign()
                    if item.section not in config.sections():
                        config.add_section(item.section)
                        config[item.section] = dict()
                    config[item.section][item.key] = item.value
                    updated_values = True
            item.update(value)
            setattr(self, item.key, item.value)
        if updated_values:
            self.write(config)

    def write(self, config):
        with open(self.configFileLocation, 'w') as file:
            config.write(file)


class CookieManager:
    def __init__(self, cfgs):
        self.testid = cfgs.testid
        self.browser = cfgs.browser
        self.streamer = cfgs.streamers.split(',')[0]
        self.cfgs = cfgs

    def check(self):
        while self.test():
            self.update()

    def test(self):
        if self.testid == "no":
            if self.testid != self.cfgs.testid:
                self.cfgs.update_id(self.testid)
            return False
        try:
            ydl_opts = {
                'quiet': True,
                'simulate': True,
                'cookiefile': 'cookies.txt',
            }
            with yt_dlp.YoutubeDL(ydl_opts) as ydl:
                info = ydl.extract_info(self.testid)
            if self.testid != self.cfgs.testid:
                self.cfgs.update_id(self.testid)
            return False
        except yt_dlp.utils.DownloadError as err:
            if re.search("members-only", str(err)):
                pretty_print("Your cookies cannot access your test stream.")
                pretty_print("Please open your selected irregular browser and refresh a YouTube membership page.")
                pretty_print("Optionally, you can also change the ID used for the check. (Press Enter to skip.)")
                self.testid = input("ID: ") or self.testid
                return True
            if re.search("not a valid URL", str(err)):
                pretty_print("Invalid ID, try a new one? (Press Enter to skip.)")
                self.testid = input("ID: ") or self.testid
                return True
            pretty_print("Cookie update error: " + str(err))
            return False

    def update(self):
        pretty_print("Updating Cookies...", end='\r')
        os.replace('cookies.txt', 'cookies.bak.txt')
        ydl_opts = {
            'cookiesfrombrowser': self.browser,
            'cookiefile': 'cookies.txt',
            'quiet': True,
            'simulate': True,
            'playlist_items': '1',
            'no_warnings': True,
            'ignore_no_formats_error': True,
            'ignoreerrors': True,
            'extract_flat': True,
        }
        try:
            with yt_dlp.YoutubeDL(ydl_opts) as ydl:
                ydl.download(r'https://www.youtube.com/@' + self.streamer + r'/streams')
        except PermissionError:
            pretty_print("Please open Task Manager and force close the browser and try again.")
            return
        pretty_print("Cleaning Cookies...", end='\r')
        cleaned = ['# Netscape HTTP Cookie File', '']
        with open("cookies.txt") as raw:
            raw_lines = raw.readlines()
            lines = [it.strip().lstrip('#HttpOnly_') for it in raw_lines]
            for x in lines:
                if x.startswith('.youtube'):
                    cleaned.append(x)
        with open('cookies.txt', 'w') as out:
            for x in cleaned:
                out.write(x)
                out.write('\n')


def modUpdater(x):
    if x == 0:
        return
    pkgs = ['yt_dlp', 'chat_downloader']
    if x == 2:
        pkgs += ['python-slugify', 'schedule']
    for pkg in pkgs:
        pretty_print("Updating Python Packages... (" + pkg + ")", end='\r')
        call("pip install --upgrade --quiet " + pkg)
        if pkg != 'python-slugify':
            reload(sys.modules[pkg])
        else:
            reload(sys.modules['slugify'])


def worker(cfgs):
    if os.name == 'nt':
        WindowsInhibitor().inhibit()
    start_time = time.time()
    cookies = CookieManager(cfgs)
    cookies.check()
    _schedule = schedule.Scheduler()
    _schedule.every(cfgs.cookietimer).hours.do(cookies.check).tag("cookies")
    modTimer = schedule.Scheduler()
    modTimer.every(24).hours.do(modUpdater, cfgs.autoupdatemodules)
    modTimer.run_all()
    Owl = Athena(cfgs)
    _schedule.every(cfgs.streamtimer).minutes.do(Owl.scanner).tag("scanner")
    _schedule.every(cfgs.streamtimer).minutes.do(Owl.cleaner).tag("cleaner")
    Owl.scanner()
    while True:
        if not len(Owl.ids()):
            modTimer.run_pending()
        _schedule.run_pending()
        pretty_print('Active streams: ' + str(Owl.ids()) + ', Total time waited: ' + str(
            datetime.timedelta(seconds=round(time.time() - start_time))), end='\r')
        time.sleep(1)


if __name__ == '__main__':  # First-Time Config, add more info and make it better
    config = configparser.ConfigParser()
    cfgs = ArchiveConfig()
    if not os.path.exists(cfgs.configFileLocation):
        cfgs.first_run(config)
    else:
        config.read(cfgs.configFileLocation)
        cfgs.read(config)
    worker(cfgs)
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
Last Updated: 09/20/23 (mm/dd/yy)

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
				cleanedURL = []
				for segment in fs[1:]:
					if segment.startswith(r'http') or len(segment.split(r'_')) > 1:
						cleanedURL.append(re.sub(r'https?%3A%2F%2F',r'',segment.replace(r'_',r'%').replace(r'%2E',r'.')))
				if cleanedURL:
					clean_file = fs[0] + r'sound=' + 'sound='.join(cleanedURL)
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