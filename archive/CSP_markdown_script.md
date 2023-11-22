!!! danger
    #CSP Markdown Userscript
!!! danger
!!! info
	- Copy the code below and make a new script with tampermonkey
	- Click [ 📋 ] when on an asset store page
	- You now have csp asset store markdown in your clipboard formatted properly, thumbnail and all.
	- Deleted assets still need to be handled manually for now

```js
// ==UserScript==
// @name         CSP Markdown conversion
// @version      1.3
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

    // Create a text box for link input
    var textBox = document.createElement('input');
    textBox.type = 'text';
    textBox.placeholder = 'dl link...';
    textBox.style.marginRight = '10px';
    textBox.style.width= '100px';

    // Find the target area to insert the button and text box
    var targetArea = document.querySelector('.clearfix.favoriteInfo ul.favoriteButtons');
    var listElement = document.createElement('li');
    listElement.appendChild(button);
    listElement.appendChild(textBox);
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
            var link = textBox.value.trim();

            // Extract the ID from the URL
            var id = url.match(/id=(\d+)/)[1];

            // Format the information in markdown
            var markdown = '**' + title + '** | [' + id + '](' + url + ') | ';

            if (link) {
                markdown += '[DL](' + link + ') | ';
            } else {
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
                markdown += ' | ';
            }

            markdown += '![](' + thumbnail + ')';

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

## Wishlist checker
- CSP Wishlist fulfillment checker. Just go to wishlist and if a link is in yellow its already added.
```js
// ==UserScript==
// @name         CSP Wishlist crosschecker
// @version      1
// @description  Highlight CSP links from CSP_368476 on Brush Wishlist
// @match        https://rentry.org/Brush_Wishlist
// @match        https://rentry.org/Brush_Wishlist/edit
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    // Fetch CSP_368476 page content
    fetch('https://rentry.org/csp_368476')
        .then(response => response.text())
        .then(cspPageContent => {
            // Extract CSP links from CSP_368476 page content
            const cspLinks = getCspLinks(cspPageContent);

            // Highlight matching links on Brush Wishlist page
            highlightMatchingLinks(cspLinks);
        });

    // Function to extract CSP links from page content
    function getCspLinks(pageContent) {
        const parser = new DOMParser();
        const doc = parser.parseFromString(pageContent, 'text/html');
        const links = doc.querySelectorAll('a[href*="https://assets.clip-studio.com"]');

        return Array.from(links).map(link => link.href);
    }

    // Function to highlight matching links on Wishlist page
    function highlightMatchingLinks(cspLinks) {
        const wishlistLinks = document.querySelectorAll('a[href*="https://assets.clip-studio.com"]');

        wishlistLinks.forEach(link => {
            if (cspLinks.includes(link.href)) {
                // Customize the highlight style as needed
                link.style.backgroundColor = 'yellow';
                link.style.color = 'red';
            }
        });
    }

})();
```


-> [**[TOP]**]() ->
!!! danger
    !!! danger