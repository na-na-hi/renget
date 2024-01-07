# Qobuz Credentials Logger
***
-> Go to https://play.qobuz.com or https://www.qobuz.com and open the browser console (e.g. with ==CTRL + Shift + I==).
Enter `user` into the console input field to view user data.<-

-> User data is automatically logged once to the console on page load (or on user login). To prevent that, set `logCredentials` in the script to `false`. <-
***
## Changelog
- 0.0.1
	- Initial release
***
!!! info Usage
    To use this script, install [TamperMonkey](https://www.tampermonkey.net), [ViolentMonkey](https://violentmonkey.github.io) or [GreaseMonkey](https://www.greasespot.net) for your favorite browser and follow their respective guides.
***
``` js
// ==UserScript==
// @name         Qobuz Credentials Logger
// @namespace    http://tampermonkey.net/
// @version      0.0.1
// @description  log Qobuz user credentials to console
// @author       You
// @match        https://play.qobuz.com/*
// @match        https://www.qobuz.com/*
// @icon         https://www.qobuz.com/favicon.ico
// @grant        none
// ==/UserScript==

(function () {
    'use strict';

    const outputStyle = `
      font-size: x-large;
      font-weight: bold;
    `;

    const logCredentials = true;

    if (window.location.origin.startsWith('https://play.')) {
        restoreConsole();

        const user = getUserCredentials();

        if (window.self !== window.top) {
            window.parent.postMessage({ user }, '*');

            return;
        }

        if (user) {
            window.user = user;

            logUserCredentials();
        }

        observePage();

        return;
    }

    window.addEventListener('message', (e) => {
        window.user = e.data.user;

        logUserCredentials();
    });

    embedPlaySite();

    function getUserCredentials() {
        const localStorageUserData = window.localStorage.getItem('localuser');

        if (!localStorageUserData) return;

        const user = JSON.parse(localStorageUserData);

        return { country: user.country_code, id: user.id, token: user.token };
    }

    function observePage() {
        let oldPath = window.location.pathname;

        const observer = new MutationObserver(mutations => {
            mutations.forEach(() => {
                if (oldPath === window.location.pathname) { return; }

                const user = getUserCredentials();

                window.user = user;

                if (oldPath.includes('/login')) {
                    logUserCredentials();
                }

                oldPath = window.location.pathname;
            });
        });

        observer.observe(document.body, { childList: true, subtree: true });
    }

    function logUserCredentials() {
        if (!(logCredentials && window.user)) { return; }

        console.log('%cCredentials:', outputStyle);
        console.table(window.user);
    }

    function restoreConsole() {
        const i = document.createElement('iframe');
        i.style.display = 'none';
        document.body.appendChild(i);
        window.console = i.contentWindow.console;
    }

    function embedPlaySite() {
        const fr = document.createElement('iframe');
        fr.src = 'https://play.qobuz.com';
        fr.style.display = 'none';
        document.body.appendChild(fr);
    }
})();
```