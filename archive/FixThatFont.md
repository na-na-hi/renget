##==->FTFF (Fix That Fucking Font)<-==
->([Go to **main page** to see some other stuff](https://rentry.org/HochiMamaPlace))<-
***
A Tampermonkey userscript to revert the font back to original after a very unfortunate change on 26.01.2023

```
// ==UserScript==
// @name        FTFF
// @namespace   A crappy CSS userscript
// @match       https://beta.character.ai/*
// @grant       none
// @version     3.0
// @author      Hochi
// @description Sigh
// ==/UserScript==
(function () {
  let css = `
    body {
        font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Oxygen,Ubuntu,Cantarell,Fira Sans,Droid Sans,Helvetica Neue,sans-serif !important;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
   `;

  var head = document.getElementsByTagName("head")[0];
  var style = document.createElement("style");
  style.setAttribute("type", 'text/css');
  style.innerHTML = css;
  head.appendChild(style);
})();
```
