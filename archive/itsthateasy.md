# nocoder's guide to Kobold on other devices
1. Open **aiserver.py** in the KoboldAI main folder using a text editor like Notepad++ or Sublime Text.
2. Comment out line 1817 and uncomment line 1816.
	- Line 1816 is ``` socketio.run(app, host='0.0.0.0', port=5000) ```
	- Line 1817 is ``` run(app) ```
	- For nocodes, uncomment by removing the # at the beginning of the line and comment by adding one.
	- This will not affect your ability to connect from your computer.

-> ![aiserver.py finished](https://files.catbox.moe/2ani29.png) <-
-> Your aiserver.py should like this. <-
3. Get your computer's IP address.
	- Open command prompt or powershell.
	- Enter ```ipconfig``` into the prompt.
	- Take the IPv4 address. Don't share this for obvious reasons.

-> ![how2ip](https://files.catbox.moe/hroasy.png) <-
4. Run KoboldAI and set up a model. Works with Colab and local hosting.
5. Instead of connecting from your computer  using the loopback address (127.0.0.1), use your computer's IP and port 5000 (XXX.XXX.XXX.XXX:5000) to connect from another device on the same network.
	- Make sure your devices are on the same network, or else the address will be unreachable.

-> ![how2ip](https://files.catbox.moe/7nhipp.png) <-
-> It's that easy. <-


## Connecting from an external network
### Connecting using Cloudflared
Cloudflared can be used to open a tunnel to a different network using Cloudflare's servers, returning a link that can be used to connect. It's free and doesn't require registration.
1. Download the proper release of Cloudflared from [here](https://github.com/cloudflare/cloudflared/releases).
2. Extract the files if it downloaded as a .zip, and copy the directory of the Cloudflared executable. **Do not open the executable from explorer.**
2. Open powershell and enter ```cd [Filepath to your Cloudflared executable]``` followed by ```.\cloudflared.exe --version```
	- This should return the version you downloaded along with a compilation date. If this returns an error, try redownloading and making sure you're in the right directory.

-> ![cloudflared success](https://files.catbox.moe/yjsre1.png) <-
4. Setup KoboldAI up to step 5 above.
5. In powershell, enter ```.\cloudflared.exe tunnnel --url 127.0.0.1:5000```
	- This will generate several bounces between Cloudflare's servers, but each returns the same trycloudflare link.
	- You should still be in the same directory as step 2.

-> ![routed tunnel](https://files.catbox.moe/z53grk.png) <-
6. Open this link on the other device.

### Connecting using a VPN
This depends on your router and device. You'll need to read your router's manual and figure it out from there.
