## ->PROXY GPT SETUP<-
->The GPT Reverse Proxy is a simple reverse proxy server where people can host their API keys for others to use. We're using a proxy because API keys have poor security, and someone with a working API key can impose usage limits and even revoke keys, making them useless. Unfortunately, some anti-coomers and trannys have been revoking keys out of spite. To prevent this, someone came up with the idea of using a proxy.<-

Step | Instruction | Image
 :-: | :-: | :-:
1. | Go to your SillyTavern Installation folder and locate the "**server.js**" file. Open it with a text editor of your choice. | [![Server.js](https://i.imgur.com/XkelYDK.jpg)](https://i.imgur.com/XkelYDK.jpg)
2. | Now that you've got server.js open, use the search function *CTRL +F* to find: `let api_openai = "https://api.openai.com/v1";`, then you'll replace it with the proxy: `let api_openai = "https://khanon-oai-proxy.hf.space/proxy/openai/v1";` and save the file. | [![ProxyServer](https://i.imgur.com/2tJoAry.gif)](https://i.imgur.com/2tJoAry.gif) GIF - CLICK TO OPEN (Same window)
3. | Then you go to your SillyTavern folder, run *start.bat*. And once SillyTavern is open, go to API ![APIButton](https://i.imgur.com/fsajkQ3.png) and click **Connect**. If you've used the correct proxy link, you should connect and are using the key the PROXY has.
!!! danger
    ->**WHAT KEY YOU FEED SILLYTAVERN IN THE API MENU IS IRRELEVANT, YOU CAN PUT IN FAGGOT AS KEY AND IT WILL STILL CONNECT! THIS IS A REVERSE PROXY, SO IT HANDLES THE KEY**<-
!!! note
    If you want to use your own keys again, you must reverse the changes and remove the proxy from server.js. If you want to make life easier to switch between, I recommend you add *both* and just comment the API link you don't want to use. 
``` javascript
//let api_openai = "https://api.openai.com/v1";
let api_openai = "https://khanon-oai-proxy.hf.space/proxy/openai/v1";
```

### Termux Proxy
For the sake of completeness of Termux, here's how you install a proxy on SillyTavern using Termux built-in text editor, nano.

|->Instruction<- | ->image<- 
| - | :-: |
First, navigate to the silly directory by entering `cd silly` in Termux. Then, open SillyTavern's server.js file with the text editor nano by entering `nano server.js`. Once you have opened the file, scroll down until you find the line `let api_openai = "https://api.openai.com/v1";`. Copy and paste this line underneath it so you have two identical lines. | [![Editing Server.js](https://i.imgur.com/L3tifNw.gif)](https://streamable.com/c4oeck) Click for HQ video form.
To switch between the two lines, comment out one of them by adding `//` at the beginning of the line. Next, replace the non-commented out link with the proxy link by replacing it with `let api_openai = "https://khanon-oai-proxy.hf.space/proxy/openai/v1";`. 
To save the changes made to the file, press **CTRL + O**, then **Enter**. To exit the text editor, press **CTRL + X**. Now, you can launch SillyTavern and enjoy the proxy. If you're unsure about the process, please refer to the video on the right as a visual aid. 

### Proxy link sharing!
Usually when Anon's share a proxy link, they only provide the server link and not the direct link to the API, this gaptekeeps many. So next time someone post a proxy link like `https://huggingface.co/spaces/whocars123/oai-proxy`, keep in mind that this is **not** the actual link. Instead you should navigate to the link, scroll down the bottom of the page, and find the `"openai": "https://whocars123-oai-proxy.hf.space/proxy/openai"`, under service info. This is the correct proxy link, but it is missing an important part, namely `/v1`. So you must add the `/v1` at the end of the link: `https://whocars123-oai-proxy.hf.space/proxy/openai/v1`. This is the *true* proxy link.

Hopefully know, with this knowledge, you'll get to enjoy good cooms when the next dose of GPT-4 comes.
