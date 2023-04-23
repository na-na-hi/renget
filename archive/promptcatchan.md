```js
// ==UserScript==
// @name         Prompt Grabber
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       4chins
// @match        https://*.4channel.org/*/thread/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=4channel.org
// @grant        GM.xmlHttpRequest
// @grant        GM.setClipboard
// ==/UserScript==

(() => {
    var style = document.createElement("style");
    style.textContent = `
        .catbox { color: orange !important; cursor: pointer }
        .catbox-info { background: #135; color: #fff; display: flex; gap: 10px; padding: 5px }
        .catbox-copy { color: dodgerblue !important; cursor: pointer }`;
    document.head.appendChild(style);

    // Find all posts
    for (const post of document.querySelectorAll(".post")) {
        const links = [...post.textContent.matchAll(/https:\/\/(?:litter|files)\.?catbox\.moe\/\w+\.png/g)];
        if (links.length) {
            // Make all catbox/litterbox links clickable
            for (const link of links) {
                const url = link[0];
                post.innerHTML = post.innerHTML.replaceAll("<wbr>", "").replace(url, `<a class='catbox'>${url}</a>`);
            }

            const cats = post.querySelectorAll(".catbox");
            for (const cat of cats) {
                const url = cat.textContent;

                cat.addEventListener("click", (e) => {
                    e.preventDefault();

                    const el = document.createElement("div");
                    el.classList.add("catbox-info");
                    el.textContent = "Loading...";
                    cat.after(el);

                    // Start loading the image
                    GM.xmlHttpRequest({
                        method: "GET",
                        url,
                        responseType: "arraybuffer",
                        onload: function (response) {
                            el.textContent = "";

                            const array = new Uint8Array(response.response);
                            let p = 0;

                            // Add image to the post
                            const img = document.createElement("img");
                            img.src = url;
                            img.style.maxWidth = "150px";
                            img.style.maxHeight = "150px";
                            el.append(img);

                            let found = false;
                            // locate tEXt or iTXt metadata marker
                            while ((p = array.indexOf(116, p)) !== -1) {
                                let marker;
                                if(array[p - 1] === 88 && array[p - 2] === 84 && array[p - 3] === 105) {
                                    marker = "iTXt";
                                    p -= 3;
                                } else if (array[p + 1] === 69 && array[p + 2] === 88 && array[p + 3] === 116) {
                                    marker = "tEXt";
                                }

                                if (marker) {
                                    console.log(marker + " metadata start found at:", p);
                                    const size = new DataView(array.buffer).getUint16(p - 2);
                                    const params = new TextDecoder()
                                    .decode(array.subarray(p + 4, size + p + 4))
                                    .replace("\0", ":")
                                    .substring(11);
                                    const span = document.createElement("span");
                                    span.style.whiteSpace = "pre";
                                    span.textContent = params;
                                    el.append(span);

                                    found = true;

                                    // Extract prompt parts
                                    const pos = params.indexOf("Negative prompt:");
                                    let prompt = params;
                                    let neg = "";
                                    let all = params;

                                    if (pos !== -1) {
                                        prompt = params.substring(0, pos).trim();
                                        let step = params.indexOf("Steps:");
                                        if (step === -1) step = params.length;
                                        neg = params.substring(pos + 16, step).trim();
                                    }

                                    // Add copy buttons
                                    for (const [name, val] of [
                                        ["Prompt", prompt],
                                        ["Negative", neg],
                                        ["All", all],
                                    ]) {
                                        const d = document.createElement("div");
                                        const copy = document.createElement("a");
                                        copy.classList.add("catbox-copy");
                                        copy.textContent = "Copy " + name;
                                        copy.onclick = (e) => {
                                            e.preventDefault();
                                            GM.setClipboard(val);
                                        };
                                        d.append(copy);
                                        span.append(d);
                                    }

                                    break;
                                }
                                p++;
                            }

                            if (!found) {
                                el.textContent = "No metadata found 😖";
                            }
                        },
                        onerror: function (response) {
                            el.textContent = "Request failed 😒";
                            console.error(response);
                        },
                    });
                });
            }
        }
    }
})();
```
