// ==UserScript==
// @name        CAI Scripts
// @namespace   http://tampermonkey.net/
// @include     https://beta.character.ai/*
// @require     https://raw.githubusercontent.com/eligrey/FileSaver.js/master/dist/FileSaver.min.js
// @grant       none
// @version     0.1
// @author      -
// @description Current Features: 1. Download chat log
// ==/UserScript==



( function() {
    'use strict';

    let enableConvenienceHacks = 0

    const archiveChat = () =>
    {
      let chatTitle = document.querySelectorAll('.chattitle');
      const messageNodes = document.querySelectorAll('.msg-row');
      const messages = [].slice.call(messageNodes, 0).reverse()
      let chatMessages = ''
      let speakers = []

      messages.forEach(el => {
        let textElement = el.querySelector('.markdown-wrapper')
        let speakerElement = el.querySelector('span');
        let text = textElement.textContent || textElement.innerText;
        let speaker = speakerElement.textContent || speakerElement.innerText;
        speaker =  speaker.match(/^.+AI$/) ? speaker.slice(0, -2) : speaker // Remove AI, bugged if has AI in name ?? speaker.slice(-2) === "AI"
        if (!speakers.includes(speaker) && !speaker.includes("@")) { speakers.push(speaker) };
        chatMessages += `\n${speaker}:\n${text}\n`;
      });

      let title = chatTitle[0].innerText;
      let date = new Date().toISOString().slice(0, 10)
      let time = new Date().toTimeString().slice(0, 8).replaceAll(":", "-");
      let filename = `${date}_${title}_${time}`
      // alert(`File: ${chatMessages}`);
      // console.log(filename);
      // console.log(chatMessages);
      let header = `// Archived from ${window.location.href} on ${date} at ${time}\n// Conversation between: ${speakers.join(", ")}\n`
      const blob = new Blob([header, chatMessages], {type: "text/plain;charset=utf-8"});
      saveAs(blob, `[CAI]${filename.replaceAll(" ", "_")}.txt`);
    }

    const createChatElements = () =>
    {
      let button = document.createElement("Button");
      button.innerHTML = "⚙";
      button.classList.add("chat-inject","btn","border");
      button.style = "top:0;right:0;position:absolute;z-index: 9999"
      button.addEventListener("click", archiveChat);
      document.body.appendChild(button);
    }

    const setupChatTools = () =>
    {
      createChatElements()
    }

    const removeChatTools = () =>
    {
      const chatElements = document.querySelectorAll('.chat-inject');
      chatElements.forEach(el => {
        el.remove();
      });
    }

    const clickAutoButton = () =>
    {
      const autoButton = document.querySelectorAll('button.align-items-center');
      autoButton[0].click();
      // alert("Alert: Click!");
    }

    let previousUrl = '';
    let prevMessageCount = 0;
    const observer = new MutationObserver(function(mutations)
    {
    //   console.log("Mutated!");
      if (location.href !== previousUrl) {
        let currLocation = location.href
        if(currLocation.indexOf("/chat?char=") > -1 || currLocation.indexOf("/chat?hist=") > -1) {
        //   alert("Alert: Chat!");
          setupChatTools()
        }
        else {
          removeChatTools()
        }
        previousUrl = currLocation

        // Convenience hacks
        if (enableConvenienceHacks && currLocation.indexOf("/chat?hist=") > -1){
          setTimeout(() => {  clickAutoButton(); }, 2000);
        }
      }
    });

    const config = {subtree: true, childList: true};
    observer.observe(document, config);
})();
