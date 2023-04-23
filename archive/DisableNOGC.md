###How to disable nogc
***

####Fusee
***
#####Steps:
***
1. Insert your SD card into your computer and navigate to the `\atmosphere\config\` folder.

2. Open the `stratosphere.ini` file with a text editor. 
	* If you do not have a `stratosphere.ini` file in this directory then copy it over from `\atmosphere\config_templates\`.

3. You now need to add the following text to the bottom of your `stratosphere.ini` file : 
	* `nogc = 0`


4. Save the file and ensure it is saved as a `.ini` file and not in `.txt` format.

5. Re-insert your SD card into your switch and boot atmosphere, you should now be able to use your game carts whilst using atmosphere.

####Hekate (FSS0)
***


#####Steps:
***
**GUI method (Nyx):**
1. Boot into hekate.
2. Go to the `Options` tab.
3. Disable the `Auto NoGC` option.
4. Boot into atmosphere.

**PC method:**
1. Open the file named `hekate_ipl.ini` located in `/bootloader/` folder.
2. Remove the following entry:
    `kip1patch=nogc`.
3. Boot into atmosphere. 
***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)
