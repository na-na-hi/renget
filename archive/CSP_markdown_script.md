!!! danger
    #CSP Markdown Userscript
!!! danger
!!! info
	- Copy the code below and make a new script with tampermonkey
	- Click [ 📋 ] when on an asset store page
	- You now have csp asset store markdown in your clipboard formatted properly, thumbnail and all.
	- Deleted assets still need to be handled manually for now

```
// ==UserScript==
// @name         CSP Markdown conversion
// @version      1.2
// @description  Formats Clip Studio link with title, thumbnail, and price in markdown format
// @match        https://assets.clip-studio.com/*/detail?id=*
// @grant        GM_addStyle
// ==/UserScript==

(function() {
    'use strict';

    // Create a button element with the desired appearance
    var button = document.createElement('button');
    button.innerText = '📋';
    button.className = 'btn btn-default operationButton starButton';
    button.style.marginRight = '10px';

    // Find the target area to insert the button
    var targetArea = document.querySelector('.clearfix.favoriteInfo ul.favoriteButtons');
    var listElement = document.createElement('li');
    listElement.appendChild(button);
    targetArea.appendChild(listElement);

    // Add a click event listener to the button
    button.addEventListener('click', function() {
        // Get the necessary information from the page
        var titleElement = document.querySelector('.materialHeaderTitle span');
        if (titleElement) {
            var title = titleElement.textContent.trim();
            var url = window.location.href;
            var priceElements = document.querySelectorAll('.price__price');
            var unitElements = document.querySelectorAll('.price__unit');
            var thumbnail = document.querySelector('.materialHeaderThumbnail--pc img').getAttribute('src');

            // Extract the ID from the URL
            var id = url.match(/id=(\d+)/)[1];

            // Format the information in markdown
            var markdown = '**' + title + '** | [' + id + '](' + url + ') | ';

            for (var i = 0; i < priceElements.length; i++) {
                var price = priceElements[i].textContent.trim();
                var unit = unitElements[i].textContent.trim();

                // Format the price and unit based on the type
                var formattedPrice = price + ' ' + unit;
                if (unit === 'GOLD') {
                    formattedPrice = '==' + formattedPrice + '==';
                }

                markdown += '**' + formattedPrice + '**';
                if (i !== priceElements.length - 1) {
                    markdown += ', ';
                }
            }

            markdown += ' | ![](' + thumbnail + ')';

            // Copy the formatted markdown to the clipboard
            copyToClipboard(markdown);

            // Replace the button with a checkmark
            button.innerText = '✅';
            button.disabled = true;
        } else {
            console.error('Failed to find title element.');
        }
    });

    // Function to copy text to the clipboard
    function copyToClipboard(text) {
        var textarea = document.createElement('textarea');
        textarea.value = text;
        document.body.appendChild(textarea);
        textarea.select();
        document.execCommand('copy');
        document.body.removeChild(textarea);
    }
})();


```

-> [**[TOP]**]() ->
!!! danger
    !!! danger