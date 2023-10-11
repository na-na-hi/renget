!!!note -> 🪶  **/who/ Starter Pack**  🪶 <-
	Collection of QOL improving tools and edits.
	[ytarchive and twitterspace recorder](https://rentry.org/rwyzq)
	[Python Scripts](https://rentry.org/3edab)
	[OP Template](https://rentry.org/7uy87)

[Go back to the Main Page](https://rentry.org/46mci)
[TOC]

#/who/ Starter Pack
- This page contains QOL improvements that are heavily recommended to better your and the /who/ experience.
- [ytarchive and twitterspace recorder](https://rentry.org/rwyzq) page contains an explanation and example usage for setting up ytarchive (the original means of automatic archiving youtube streams) and twitterspace recorder to save any of those rare spaces.
- [Python Scripts](https://rentry.org/3edab) page currently covers two major focuses: soundposts and stream archival. The stream archiver is an alternative to ytarchive and is designed to be more robust and versatile. The soundpost section contains scripts for creation, automated cleaning of filenames, and recombining soundfiles back into a singular file.
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

##Variant 2 (DEAD)
Appears to be more advanced with hooking into frames on pages like Holodex.
https://greasyfork.org/en/scripts/459535-ytbetter

#Improved Twitter Image Sharing
(Updated: 2023-06-04)
The intent is to standardize the saving of twitter image filenames so that when shared, they can easily have their source located. This is done by using a userscript with custom settings and the addition of a saucelink for 4chan-x to make it a one-click solution.

##Userscript and Custom Settings
https://greasyfork.org/en/scripts/423001-twitter-media-downloader
Change the default filename to: `@{user-id}-{status-id}`
![](https://files.catbox.moe/vx4k7l.png)

!!!warning It doesn't update on its own, so check it from time to time.

###Nitter Variant (Courtesy of Anon)
!!!note For those who like using nitter instances for art, here's a tampermonkey script to save image with @username_statusnumber.Jpg format
	Clicking on a image on nitter instances will propose to download it as : @username-statusnumber.jpg
	now with [multiple pics in one tweet](https://nitter.it/aQwQhujuXCzdFPE/status/1662076023989739522) support
	I should also mention the script only works when on a [searching page atm](https://nitter.it/search?f=tweets&q=(%23drawMEI+OR+%23drawingMei+OR+%23%E3%83%A0%E3%83%A1%E7%B5%B5)&e-nativeretweets=on&e-quote=on&since=&until=&near=)
https://files.catbox.moe/npv63s.js

##4chan-x Saucelink
Under the Sauce tab, add the following line below `# Known filename formats:` (Refresh required)
`javascript:void(open("https://twitter.com/"+%$1+(%$2?"/status/"+%$2:"")));regexp:/@(\w+)-?(\d{19})?(-[0-3])?.*\.\w+$/`
![](https://files.catbox.moe/id675y.png)
![](https://files.catbox.moe/drqzpb.png)

##For anons using old filename system
To quickly convert all the old `_` system to `-`, I put together some quick code:

!!!note Windows (CMD/Batch Script)
	Can be saved as a `.bat` script. It works recursively so put it in the top-most directory and it will fix all the files including ones in folders within the folder it is ran. (Hacky way to do this...)
```batch
powershell -Command "& {Get-ChildItem -Recurse | Where-Object{$_.Name -match '@\w+_\d{19}'} | Foreach-Object {$OldName = $_.FullName; $NewName = $_.Name -Replace '_(\d{19})', '-$1'; $Destination = Join-Path -Path $_.Directory.FullName -ChildPath $NewName; Move-Item -Path $OldName -Destination $Destination -Force; Write-Output $('{0} -> {1}' -f $OldName,$NewName)}}"
```
!!!note Linux
	Can be saved as a `.sh` script. Not recursive, if someone wants to make it better and output changes, hmu.
```bash
rename 's/_(\d{19})/-$1/' *
```
Untested recursive variant:
```bash
find . -type f -exec rename 's/_(\d{19})/-$1/' '{}' \;
```

#4chan-x Edit: Better Page Info (Purge Position)
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