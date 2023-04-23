#Training hypernetworks on RunPod for Dummies
->*This is how I set up my RunPod within 4-5 minutes, so I don't waste valuable (and paid) time.*<-

What you need before you start:

1. Dataset/Images, already pre-processed
2. A RunPod account with credits


##Click on "My Pods"
![](https://i.imgur.com/m7QZUnH.jpg)

##Select "Go to community cloud"
![](https://i.imgur.com/HIed4vM.jpg)

##Select a GPU and template
I usually use the 3090 to train up to 768x768
![](https://i.imgur.com/r9ye1Tf.jpg)

Make sure you select the stable diffusion template as well.
I never needed more space than 20GB. Keep in mind that "Volume Disk" is meant for everything that lands in your "output" folder.
![](https://i.imgur.com/aftLvd5.png)

##Select "Deploy On-Demand"
If you like living dangerous and don't mind loosing your data, select "Deploy Sport". It is cheaper, but if you wanna quickly check out things it is okay.
I DO NOT RECOMMEND THIS FOR ACTUAL TRAINING. READ UP ON WHAT IT IS AND WHY IT CAN CANCEL/DELETE YOUR WORK!
![](https://i.imgur.com/dBdNwAp.png)

##Wait
It will now take a few seconds until your Pod is ready to go. Don't worry if you can't connect right away.
![](https://i.imgur.com/aoD3NTi.png)

##Connect to Jupyter Lab
![](https://i.imgur.com/Sl51eKv.png)

![](https://i.imgur.com/PNfeiZn.png)

##Prepare the Webui
Download this file:
https://files.catbox.moe/d9245h.ipynb

Drag and drop it into the Jupyter file browser and double click it. A tab on the right will open.
Don't mind the name difference, catbox renames the file.
![](https://i.imgur.com/1IblI3N.png)

The prepared file does 3 things:
- checking which GPU you have
- updating the Webui to the current version
- torrenting the novel ai leak model

Click in each cell and click "Run the selected cell" at the top.
![](https://i.imgur.com/VmjgM01.png)

![](https://i.imgur.com/OlYMXhD.png)
*I never had the issue of not getting the GPU I selected, but I read about reviews claiming they would scam people by not providing what is paid for.*

##Prepare your files
While you wait for the torrent to finish, you can upload your dataset into the train folder (it got made automatically).
Attention: Jupyter doesn't support drag & drop of a whole folder. Only of multiple files.
![](https://i.imgur.com/wheqIst.png)

##Restart your Pod
Once your dataset is uploaded and the torrent is done, go back to the dashboard and restart your pod.
![](https://i.imgur.com/nPcm5w9.png)

![](https://i.imgur.com/OIwLmh8.png)

##Training
Once the Pod has restarted, simply connect via HTTP to your Webui.
Make sure to check if you are on the correct model, and if you have checked "Unload VAE and CLIP from VRAM when training".
![](https://i.imgur.com/IfcBBkm.png)

![](https://i.imgur.com/uvpzHE4.png)

![](https://i.imgur.com/3ZomKP6.png) 


There are other guides on how to train, so if you have questions about that you better read those.
