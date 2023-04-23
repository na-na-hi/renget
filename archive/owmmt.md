```js
// ==UserScript==
// @name         Tags to clipboard for prompts
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Copy image tags for prompting
// @author       /h/ anon
// @match        https://danbooru.donmai.us/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=donmai.us
// @grant        none
// ==/UserScript==

(function () {
  "use strict";

  const allTagsEl = document.querySelector(".categorized-tag-list");
  const tagCategoryEls = allTagsEl.querySelectorAll("h3");

  [...tagCategoryEls].forEach((categoryEl) => {
    const tagsWrapperEl = categoryEl.nextElementSibling;
    const tagEls = tagsWrapperEl.querySelectorAll("[data-tag-name]");
    const tags = [...tagEls].map((el) =>
      el.dataset.tagName.replaceAll("_", " ")
    );

    categoryEl.insertAdjacentHTML(
      "afterend",
      `<button id="${categoryEl.className}">Copy Tags</button>`
    );

    document.getElementById(categoryEl.className).addEventListener('click', () => {
        navigator.clipboard.writeText(tags.join(", "));
    });
  });
})();
```
