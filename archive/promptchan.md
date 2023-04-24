```js
setInterval(() => {
    // Wait for the file input
    const input = document.getElementById("qrFile");
    if (input && !input.getAttribute("data-heh")) {
        // Add change handler
        input.setAttribute("data-heh", "yup");
        console.log("Found file input");
        input.addEventListener("change", () => {
            if (input.files && input.files.length) {
                // Read the image
                const reader = new FileReader();
                reader.onload = function() {
                    const array = new Uint8Array(this.result);
                    let p = 0;

                    // locate tEXt metadata marker
                    while ((p = array.indexOf(116, p)) !== -1) {
                        if (array[p + 1] === 69 && array[p + 2] === 88 && array[p + 3] === 116) {
                            console.log("tEXt metadata start found at:", p);
                            const size = new DataView(array.buffer).getUint16(p - 2);
                            const params = new TextDecoder().decode(array.subarray(p + 4, size + p + 4)).replace("\0", ":");
                            console.log(params);

                            const form = input.closest("form");
                            const editor = form.querySelector("textarea[name=com]");
                            editor.value += `[code]${params}[/code]`;

                            break;
                        }
                        p++;
                    }
                }
                reader.readAsArrayBuffer(input.files[0]);
            }
        });
    }
}, 250);
```
