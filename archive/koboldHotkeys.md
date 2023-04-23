// ==UserScript==
// @name        KoboldHotkeys
// @namespace   god I fucking love fox lolis
// @version     0.1
// @downloadURL none
// @description Simple hotkeys for kobold
// @author      (You)
// @match       http://127.0.0.1:5000/*
// @require     
// @grant       none
// @icon        
// ==/UserScript==
/* 
# Simple hotkeys for Kobold

* ctrl+s: submit
* ctrl+e: edit
* ctrl+m: memory
* ctrl+i: world info (I can't overwrite the ctrl+w -> close window hotkey)
* ctrl+b: undo
* ctrl+r: retry

*/

/*
```js
*/
(function() {
  "use strict";
  
  const retry = document.getElementById("btn_actretry")
  const edit = document.getElementById("btn_actedit")
  const memory = document.getElementById("btn_actmem")
  const wi = document.getElementById("btn_actwi")
  const undo = document.getElementById("btn_actundo")
  const send = document.getElementById("btnsend")
  
  onkeydown = function(e){
    if(e.ctrlKey && e.keyCode == 'R'.charCodeAt(0)){
      e.preventDefault();
      console.log("retry")
      retry.click()
    }
    if(e.ctrlKey && e.keyCode == 'E'.charCodeAt(0)){
      e.preventDefault();
      console.log("edit")
      edit.click()
    }
    if(e.ctrlKey && e.keyCode == 'B'.charCodeAt(0)){
      e.preventDefault();
      console.log("back")
      undo.click()
    }
    if(e.ctrlKey && e.keyCode == 'I'.charCodeAt(0)){
      e.preventDefault();
      console.log("world info")
      wi.click()
    }
    if(e.ctrlKey && e.keyCode == 'M'.charCodeAt(0)){
      e.preventDefault();
      console.log("memory")
      memory.click()
    }
    if(e.ctrlKey && e.keyCode == 'S'.charCodeAt(0)){
      e.preventDefault();
      console.log("send")
      send.click()
    }
  }
  
})();

/*
```
*/
