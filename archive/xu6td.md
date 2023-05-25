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

##Variant 2
Appears to be more advanced with hooking into frames on pages like Holodex.
https://greasyfork.org/en/scripts/459535-ytbetter

#Improved Twitter Image Sharing
The intent is to standardize the saving of twitter image filenames so that when shared, they can easily have their source located. This is done by using a userscript with custom settings and the addition of a saucelink for 4chan-x to make it a one-click solution.

##Userscript and Custom Settings
https://greasyfork.org/en/scripts/423001-twitter-media-downloader
Change the default filename to: `@{user-id}_{status-id}`
![](https://files.catbox.moe/vx4k7l.png)

###Nitter Variant (Courtesy of Anon)
!!!info For those who like using nitter instances for art, here's a tampermonkey script (still in developpement, will maybe implement support for multiple pics in one tweet later ) to save image with @username_statusnumber.Jpg format
	Clicking on a image on nitter instances will propose to download it as : @username_statusnumber.jpg
https://files.catbox.moe/b36b0d.js

##4chan-x Saucelink
Under the Sauce tab, add the following line below `# Known filename formats:` (Refresh required)
`https://twitter.com/%$1/status/%$2;regexp:/^@(\w+)_(\d{19})(-[0-3])?\.\w+$/`
![](https://files.catbox.moe/id675y.png)
![](https://files.catbox.moe/832o13.png)

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