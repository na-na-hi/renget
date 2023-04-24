##==->FixSpacing (plus FixFontAndSpacing)<-==
->([Go to **main page** to see some other stuff](https://rentry.org/HochiMamaPlace))<-
***
####**How about you go to the fucking [greasyfork](https://greasyfork.org/en/scripts/462592-fixspacing2) and get it from there?**


Tampermonkey userscripts to make text spacing in the chats reasonable again, instead whatever the hell devs did on 16.02.2023.

Here's a new version of the fix, **not made by me**. The author is a good anon who wishes to remain unknown. This version gives you more compact chat and a versatile way of setting up the spacing according to your own taste.
```
// ==UserScript==
// @name         FixSpacing2
// @namespace    CSS userscript
// @version      0.1
// @description  Fix ugly new CAI spacing in a better way
// @author       good anon
// @match        https://beta.character.ai/*
// @grant        none
// ==/UserScript==

(function () {
  let css = `
    .markdown-wrapper  p  {  display:inline-block;  margin-block-end:0.5em;  }
	.markdown-wrapper  p br {  display:block;  content:" "!important;  margin:-1em;  }
   `;

  var head = document.getElementsByTagName("head")[0];
  var style = document.createElement("style");
  style.setAttribute("type", 'text/css');
  style.innerHTML = css;
  head.appendChild(style);
})();

```
