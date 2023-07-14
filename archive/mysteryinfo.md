Prompt logging stop working after a few prompts, but I was able to deduce there is someone spamming.
Here is the error if khanon reads this:
```
"log-queue","message":"Your input contains more than the maximum of 50000 characters in a single cell.","stack":"Error: Your input contains more than the maximum of 50000 characters in a single cell.\n    at Gaxios._request (/app/node_modules/gaxios/src/gaxios.ts:158:15)\n    at processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at JWT.requestAsync (/app/node_modules/google-auth-library/build/src/auth/oauth2client.js:382:18)\n    at Object.appendBatch (/app/src/prompt-logging/backends/sheets.ts:265:16)\n    at flush (/app/src/prompt-logging/log-queue.ts:37:7)","msg":"Failed twice to flush batch, discarding."}
```
BTC: bc1qt7ljlaxc39w5v9syuchj369pfm4vm60ae2ppu2
XMR: 49Y3zrgre3yLV5paArTaAp48avu5syRJucR5vZrBif6Pb67hYaH81WH9Sx4LoLKxg7TJpBjpCrdYDFQbviiAfVMDGzHmrFf
Old one should still work.
![.](https://files.catbox.moe/17qrwq.png)