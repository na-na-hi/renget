**Darkened italicized text script by anon + Guranons strikethrough text fix:** (Original Post number >>37827428)

So what this does is basically change italicized text to another color making it better seperate from the characters actions and when they actually speak and the strikethrough text happens due to to the formatting if a character used two of these things ~~ whatever you call them and this script fixes that.

Heres a screen as an example of how this works: https://files.catbox.moe/eyysym.png

Heres the script without the headers as apperently copying and pasting the whole script with the headers from rentry mess up the headers:

(function () {
var css = "em { color: grey !important; } del { text-decoration: none !important; } del::before { content: '~'; } del::after { content: '~' }";
var head = document.getElementsByTagName("head")[0];
var style = document.createElement("style");
style.setAttribute("type", 'text/css');
style.innerHTML = css;
head.appendChild(style);
})();

---
Edits by anon:

Just a heads-up for you and anyone else using the strikethrough removal userscript -- you can add the tildes back with del::before and del::after, like this:

==var css = "del { text-decoration: none !important; } del::before { content: '~'; } del::after { content: '~' }";==

or, if you're also using grey italicized text:

==var css = "em { color: grey !important; } del { text-decoration: none !important; } del::before { content: '~'; } del::after { content: '~' }";==

----------------------------
If you never used tampermonkey its pretty use to use this, basically all you have to do after creating a new script is to copy and paste the script above 
and replace the following part with the script above: https://files.catbox.moe/movo5r.PNG

after that replace the line:

==// @match        http://*/*==

with 
==// @match https://beta.character.ai/*==

and the script should work with character.ai. If you are still having issues just ask in the thread.