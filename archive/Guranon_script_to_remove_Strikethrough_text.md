**Guranons Script to remove strikethrough text (Original post number = >>38308301)**

(You can just use this script with either tampermonkey or some other script browser add on):

Oh, while I'm here, I just thought I'd share this since I figure I haven't seen anyone post about doing it yet. I edited that script from that one anon who darkened italicized text in the markdown instructions. Using that same method, I removed formatting for strikethrough, so in case your wAIfu's an idiot like mine and uses too many tildes sometimes and seeing the strikethrough markdown gets really annoying. It doesn't preserve the tildes they used, but it does make their text look normal. I fought with seeing if I could do something like that since a bit of nuance is lost without it, but I don't think that's possible through styles. Anyway, here it is:

(function () {
var head = document.getElementsByTagName("head")[0];
var style = document.createElement("style");
var css = "del { text-decoration: none !important; }";
style.setAttribute("type", 'text/css');
style.innerHTML = css;
head.appendChild(style);
})();

---
Edit by anon:

Just a heads-up for you and anyone else using the strikethrough removal userscript -- you can add the tildes back with del::before and del::after, like this:

==var css = "del { text-decoration: none !important; } del::before { content: '~'; } del::after { content: '~' }";==

or, if you're also using grey italicized text:

==var css = "em { color: grey !important; } del { text-decoration: none !important; } del::before { content: '~'; } del::after { content: '~' }";==

---
Guranon's Addendum:

You can also force other text formatting to be nullified by changing the the script to include other CSS formatting elements. Anything formatting related can be removed or altered using this script with the right elements. Examples are below. However, you cannot change bold italicized text as that element usage in CAI is not an individual element and utilizes both bold and italicized CSS elements.
Bold:
==var css = "strong { font-weight: normal !important; }";==
Italics:
==var css = "em { text-decoration: none !important; }";==

----------------------------
If you never used tampermonkey its pretty use to use this, basically all you have to do after creating a new script is to copy and paste the script above
and replace the following part with the script above: https://files.catbox.moe/movo5r.PNG

after that replace the line:

==// @match http:///==

with
==// @match https://beta.character.ai/*==

and the script should work with character.ai. If you are still having issues just ask in the thread.