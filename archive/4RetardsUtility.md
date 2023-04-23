# 'Cleaner' Proxy checker - Tavern4Retards Anon.
->Updated script, now it highlights GPT4 values, % and Promptlogging, It also auto-refreshes, every 10 minutes..<-
***
->![Image](https://i.imgur.com/yDjfuLn.png) <-
***
!!! info
    CSS
``` 
/* ==UserStyle==
@name           AlwaysFindTheWay - Clean
@namespace      github.com/openstyles/stylus
@version        2.0.0
@description    Better AlwayFindTheWay
@author         Tavern4Retard
==/UserStyle== */
@-moz-document url-prefix("https://alwaysfindtheway.github.io/") {
  iframe {
    height: 800px !important;
  }
}
@-moz-document domain("whocars123-oai-proxy.hf.space"),
  domain("whocars123-oai-proxy2.hf.space"),
  domain("maceter636-8874416364.hf.space"),
  domain("anonjegger340-coom-tunnel.hf.space"),
  domain("gookproxy-coomlemon.hf.space"),
  domain("whocars123-public-test.hf.space"),
  domain("anonjegger340-logged-cooms.hf.space") {
  
  #oaireverseproxy,
  #servergreeting,
  #promptloggingisenabled,
  h3,
  h1,
  p,
  body p {
    display: none;
  }
  
  body {
    background-color: #252525 !important;
    color: #fff !important;
    text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
  }
}
```

!!! info
    Tempermonkey Script

```
// ==UserScript==
// @name         Proxy GPT4 - Checker!
// @author       Tavern4Retards
// @version      2.0
// @description  Highlight specific text and refresh the page every 10 seconds to check for changes
// @match        https://anonjegger340-coom-tunnel.hf.space/
// @match        https://anonjegger340-logged-cooms.hf.space/
// @match        https://whocars123-public-test.hf.space/
// @match        https://gookproxy-coomlemon.hf.space/*
// @match        https://maceter636-8874416364.hf.space/*
// @match        https://whocars123-oai-proxy2.hf.space/*
// @match        https://whocars123-oai-proxy.hf.space/*
// @run-at       document-end
// ==/UserScript==

(function() {
    'use strict';

    // This array contains configurations for highlighting text
    const highlightConfigs = [
        {
            regex: /"gpt4": (\d+)/g,
            style: {
                fontWeight: 'bold',
                fontSize: '18px',
                textShadow: '2px 2px 4px #000000'
            },
            getColor: (value) => value > 0 ? 'green' : 'red'
        },
        {
            regex: /"gpt4": "(\d+)%"/g,
            style: {
                fontWeight: 'bold',
                fontSize: '18px',
                textShadow: '2px 2px 4px #000000'
            },
            getColor: (value) => value > 0 ? 'green' : 'red'
        },
        {
            regex: /"logPrompts": "(false|true)"/g,
            style: {
                fontSize: '18px',
                textShadow: '2px 2px 4px #000000'
            },
            getColor: (value) => value === 'false' ? 'red' : (value === 'true' ? 'yellow' : 'black')
        },
        {
            regex: /"promptLogging": "(false|true)"/g,
            style: {
                fontSize: '18px',
                textShadow: '2px 2px 4px #000000'
            },
            getColor: (value) => value === 'false' ? 'red' : (value === 'true' ? 'yellow' : 'black')
        },
        {
            regex: /"gpt4": "(\d+)%"/g,
            style: {
                fontWeight: 'bold',
                fontSize: '18px',
                textShadow: '2px 2px 4px #000000'
            },
            getColor: (value) => value > 0 ? 'green' : 'red'
        }
    ];

    // This function highlights text based on the configurations in highlightConfigs
    function highlightText() {
        for (const config of highlightConfigs) {
            const matches = document.body.innerHTML.matchAll(config.regex);
            for (const match of matches) {
                const value = match[1];
                const color = config.getColor(value);
                const style = Object.entries(config.style).map(([key, value]) => `${key}: ${value};`).join(' ');
                const highlightedText = `<span style="${style}">${match[0]}</span>`;
                document.body.innerHTML = document.body.innerHTML.replace(match[0], highlightedText);
            }
        }

        const logPromptsRegex = /"logPrompts": "(false|true)"/g;
        const logPromptsMatches = document.body.innerHTML.matchAll(logPromptsRegex);
        for (const match of logPromptsMatches) {
            const value = match[1];
            const color = value === 'false' ? 'red' : (value === 'true' ? 'yellow' : 'black');
            const style = `color: ${color}; font-weight: bold; font-size: 18px; text-shadow: 2px 2px 4px #000000;`;
            const highlightedText = `<span style="color: orange; font-weight: bold; font-size: 12px; text-shadow: 2px 2px 4px #000000;">${'"logPrompts": '}</span><span style="${style}">${`"${value}"`}</span>`;
            document.body.innerHTML = document.body.innerHTML.replace(match[0], highlightedText);
        }

        const promptLoggingRegex = /"promptLogging": "(false|true)"/g;
        const promptLoggingMatches = document.body.innerHTML.matchAll(promptLoggingRegex);
        for (const match of promptLoggingMatches) {
            const value = match[1];
            const color = value === 'false' ? 'red' : (value === 'true' ? 'yellow' : 'black');
            const style = `color: ${color}; font-weight: bold; font-size: 18px; text-shadow: 2px 2px 4px #000000;`;
            const highlightedText = `<span style="color: orange; font-weight: bold; font-size: 12px; text-shadow: 2px 2px 4px #000000;">${'"promptLogging": '}</span><span style="${style}">${`"${value}"`}</span>`;
            document.body.innerHTML = document.body.innerHTML.replace(match[0], highlightedText);
        }

        const gpt4Regex = /"gpt4": (\d+)/g;
        const gpt4Matches = document.body.innerHTML.matchAll(gpt4Regex);
        for (const match of gpt4Matches) {
            const gpt4Value = parseInt(match[1]);
            const gpt4Color = gpt4Value > 0 ? 'green' : 'red';
            const gpt4Style = `color: ${gpt4Color}; font-weight: bold; font-size: 18px; text-shadow: 2px 2px 4px #000000;`;
            document.body.innerHTML = document.body.innerHTML.replace(match[0], `<span style="${gpt4Style}">${match[0]}</span>`);
        }

        const gpt4PercentRegex = /"gpt4": "(\d+)%"/g;
        const gpt4PercentMatches = document.body.innerHTML.matchAll(gpt4PercentRegex);
        for (const match of gpt4PercentMatches) {
            const gpt4PercentValue = parseInt(match[1]);
            const gpt4PercentColor = gpt4PercentValue > 0 ? 'green' : 'red';
            const gpt4PercentStyle = `color: ${gpt4PercentColor}; font-weight: bold; font-size: 18px; text-shadow: 2px 2px 4px #000000;`;
            document.body.innerHTML = document.body.innerHTML.replace(match[0], `<span style="${gpt4PercentStyle}">${match[0]}</span>`);
        }
    }

    // Set the countdown interval in seconds
    const countdownInterval = 600;

    // Reload the current page with a hard refresh
    function hardRefresh() {
        unsafeWindow.location.reload(true);
    }

    // Define the countdown function
    function countdown() {
        const countdownElement = document.createElement('div');
        countdownElement.style.position = "fixed";
        countdownElement.style.left = "50%";
        countdownElement.style.transform = "translateX(-50%)";
        countdownElement.style.bottom = "10px";
        countdownElement.style.textAlign = "center";
        countdownElement.style.backgroundColor = "transparent";
        countdownElement.style.color = "#fff";
        countdownElement.style.padding = "10px";
        countdownElement.style.fontSize = "20px";
        countdownElement.setAttribute('id', 'countdown');
        countdownElement.style.display = "inline-block";
        countdownElement.style.minWidth = "200px";
        countdownElement.style.boxShadow = "0px 0px 15px rgba(0,0,0,0.8)";
        countdownElement.style.borderRadius = "15px";
        countdownElement.style.backgroundImage = "linear-gradient(90deg, rgba(255,255,255,0.2) 0%, rgba(255,255,255,0.05) 100%)";
        countdownElement.style.zIndex = "9999";
        document.body.appendChild(countdownElement);

        let count = countdownInterval;
        const countdownId = setInterval(() => {
            countdownElement.innerText = `Auto-Refresh in ${count--}s`;
            if (count === -1) {
                clearInterval(countdownId);
                hardRefresh();
            }
        }, 1000);
    }

    // Add event listener to run highlightText once on page load
    window.addEventListener('load', () => {
        highlightText()
        countdown();
    }, { once: true });

    // Set the interval to refresh the page every minute
    setInterval(() => {
        hardRefresh();
    }, countdownInterval * 1000);
})();
```
