-> ![Serious Editor](https://i.imgur.com/4Cwdc3B.jpg) <-
# Serious Editor 1 Basic Mapping Tutorial
-> *Everything you need to know to create a functional Serious Sam TSE map* <-

Hello, if you're reading this then that means you're ~~crazy~~ serious enough to take on creating maps for *Serious Sam The Second Encounter.* That also means you don't want to waste any time, so let's get serious.

Table of Contents:
[TOC2]
***
## Setting Up the editor
A few files need to be extracted first before we can get down to business. Go to your Serious Sam TSE install directory (if using Steam then rightclick > Manage > Browse local files) and look for these three `.gro` files: `SE1_00.gro`, `SE1_00_Levels.gro`, and `SE1_00_Music.gro`. `.gro` files are basically zip files and these three have content that you need for mapping. Extract the contents of all three directly into the main directory. You shouldn't skip this step else problems could arise in the future.
**NOTICE FOR GOG USERS:** apparently the GOG version doesn't include 64bit versions of the editor, so if you're using the GOG version then please patch your game with this (it's a really good patch to have anyways outside of editing): https://dreamycecil.itch.io/sam-exe-patch

#### Accessing the Editor
You can access the editor by going to the `Bin` folder inside the game's main install directory and running `SeriousEditor.exe`, or if you're using Steam then hit play on the game from inside your library and select "Serious Editor." You can still open the editor directly from the exe on the Steam version. Launch the editor and you'll be greeted by a random Tip of the Day.
![Tip of the Day](https://i.imgur.com/jsAe1y1.png)
!!! info
    Going forward, all steps will have their associated image BELOW the step's text in this tutorial.

You may have noticed that your toolbar at the top does not look clean like mine and instead looks like this horrible abomination:
![](https://i.imgur.com/lzqZWB0.png)

Don't worry, you can rearrange these by clicking and dragging the white "grippy" bar on the left side of each column. Rearrange it however you like, but if you want to make following steps easier then try and recreate how I have it set up.

#### Closing the Editor
I'm placing this here because not everyone will run through this whole tutorial in one sitting. Serious Editor sometimes doesn't close properly when exited, so always double check your taskmanager for an instance called "WORLDEDITOR MFC Application" and close it manually. If you're running the Steam version then sometimes it is listed under Steam like pictured below.
![](https://i.imgur.com/IbvwjCW.png)

#### Creating a Map
Now let's create a new map. Close the tip window if you haven't already and click New under File in the top left corner (or click the New button). You'll then be greeted with four viewports, one of them home to a blindingly red background.
![AAAAH MY EYES!](https://i.imgur.com/cuTD4HF.png)

That's the background color of the 3D game world. We're going to be looking at it a lot so let's change it to something more bearable. Click the "World Settings" button at the top of the toolbar.
![The little globe button](https://i.imgur.com/s1OfgJI.png)

In the window that pops up, click on the big red portion of the Background color field and change it to something more suitable for human eyes. I picked a nice sky blue in this instance.
![](https://i.imgur.com/ZPPZxnN.png)

![Much better](https://i.imgur.com/Htb1i84.png)

Close out of that menu once you're done. We'll cover the editor's controls next.
***
## Camera Controls and Editor Modes
There are two different types of viewports that you'll be working in, but the controls between each are pretty similar. There are three 2D viewports and one 3D viewport. You must be holding space for all of these shortcuts.
- 2D Viewports:
	- Space + Left click = move the camera
	- Space + Right click = zoom the camera in and out
	- Space + Double left click = snap to your cursor's position
- 3D Viewport:
	- Space + Left click = move the camera
	- Space + Right click = zoom the camera in and out
	- Space + Left click + Right click = rotate the camera
	- Space + Double left click = snap to your cursor's position

Right clicking in any viewport will bring up a contextual menu, but in this tutorial we won't be using it that much. There is one more shortcut that lets you snap the camera to your cursor AND zoom at the same time. Hold CTRL+Shift then press left click to snap and zoom in, or right click to snap and zoom out.
#### 3D Viewport "FPS" Controls
You can also fly around in the 3D viewport by hovering your mouse over the 3D viewport then pressing ESC. Your cursor will disappear and you'll be controlling the camera with your mouse. Move around with WASD and scroll the scrollwheel up or down to change your speed. Press ESC again to return the cursor.
#### Editor Modes
At the bottom right of your editor there should be a little colored box (blue by default). This color determines which of the five editor modes you're currently working in, and each mode can be switched to with the corresponding shortcut.
- Blue: entity mode (E)
- Yellow: polygon mode (P)
- Green: sector mode (S)
- Black: vertex mode ( . ) (period key)
- Red: CSG mode 

The mode you're currently working in determines what you can edit. In entity mode you can move around and edit entities like enemies, weapons and ammo, etc. Polygon mode allows you to select and edit brushes' polygons and textures. Sector mode is where you mess with the sectors or "space/zones" created by brushes. Vertex mode allows you to move and edit the vertices of brushes. Finally, there's CSG mode, which isn't really a mode that you deliberately switch to. It is only active when you're editing a CSG primitive for a brush before placing it into the world. We'll get more into that later.
Always be mindful of what mode is currently active to avoid any unnecessary mistakes. 
#### Help Manual
A simple help manual is included with the editor that you can access by going to the Help folder inside your TSE install, then opening `ToolsHelp.chm`. Here you can find everything I've currently talked about plus a bit extra, like a handy dandy Keyboard Shortcut page listing most of the available shortcuts. There are also plenty of tips and How To pages for easy access. Might be handy to leave this open while starting out as a quick reference.
![Soul...](https://i.imgur.com/cwjvUGS.png)
***
## Creating Your First Room
Now it's time to get into the nitty gritty of things. As you can see, all that's currently included in our world is empty space and a lowpoly globe model. That's the main WorldBase entity which will soon be given form by you. It is a "brush entity" without any brushes/polygons to its name. When a brush entity has no brushes is it represented by this globe model indicating it is "empty." Serious Editor creates CSG brushes with primitives that can be modified to your heart's content. Let's create a room for our WorldBase entity by clicking the "Create Conus Primitive" button (or Numpad Enter) at the top of the toolbar.
![](https://i.imgur.com/ztG4iH0.png)

You should then be greeted by a Tools info window in the bottom left corner like so. Also, because we're editing a primitive the mode has switched to CSG mode (red) in the bottom right. **If the Tools info window isn't showing up or you closed it by accident you can always reopen it with "Q".**
![](https://i.imgur.com/sUyvH4O.png)

To cancel creating a primitive and leave CSG mode, either click the Cancel CSG button or press Numpad Del.
![](https://i.imgur.com/ip5fcLF.png)

!!! info
    If at any point you somehow mess up the viewports, press Numpad 0 to reset them.

The values inside your Tools info window will probably be different from what's shown above, but that's okay. We'll be changing them in a second. The Tools info window currently has three tabs: Global, Position, and Primitives. Global has a few stats on the primitive you're going to make, as well as shows which texture all its polygons will have. Not much to change here. The Position tab lets you change the position and rotation of the primitive. Finally, there's the Primitives tab which lets you change all the aspects of the primitive that's being made into a brush, like it's size, how many base vertices it has, and a few other things.
![Global tab](https://i.imgur.com/lYmPJC6.png)
![Position tab](https://i.imgur.com/6Chzhht.png)
![Primitives tab](https://i.imgur.com/7a0L52d.png)

!!! danger IMPORTANT INFO ABOUT CHANGING VALUES
    Do NOT use the number pad to input values into the Tools info window or anywhere else. And NEVER use the number pad's Enter key when confirming input fields. Only use the regular number keys and your regular Enter key to change values. The number pad's keys are associated with specific functions separate from your regular number keys. If you press them they will most likely perform their action instead of inputting a number, potentially causing many headaches. Also, moving your mouse outside of the container/window that the input field is in also moves focus away from that field. So don't move it before typing.

Let's change some values. If you want to change the wall textures to represent what's pictured in my steps then go to the Global tab. On the left hand side of the editor is the "virtual tree" which is a customizable directory listing all the game assets. I'll go into more detail on it in a bit but for now click on the text to expand all the directories, then go under textures and find one you like. Click and drag a texture into the big square in the global tab to change it. After that go to the Position tab and make sure everything is set to 0. This will ensure the primitive is at absolute zero in the world. Then go to the Primitives tab and set Width (W), Length (L), and Height (H) all to 20. Finally, make sure the Room checkbox is ticked. This will ensure the brush is "carved out" of the infinite solid material that makes up this world. Everything should look like this in the Primitives tab before we continue:
![](https://i.imgur.com/090L2HL.png)

To actually carve our brush into the world, either click the Add button at the top of the editor or press the Numpad + key.
![](https://i.imgur.com/Xeb2CYS.png)

If you've done everything right then you'll be greeted with a black box that looks nothing like the primitive we were editing. Also, the editor's mode should have switched back to entity mode indicated by the blue box in the bottom right.
![What's in the box?](https://i.imgur.com/ZE3nKFo.png)

The room is currently black because shadows are on in our world preview, and the room we just created has no lighting. For now let's turn off shadows so we can see better. Click the Toggle shadows on/off (H) button at the top and everything will turn full bright.
![](https://i.imgur.com/kqHRrH1.png)
![](https://i.imgur.com/ghCJXIh.png)

Good, now we have a room to run around in. But the only problem with doing that is the player has nowhere to spawn. Let's change that by adding a "PlayerMarker" entity to the world. On the left side of the editor is the "virtual tree." It holds all your wonderful assets like entities, textures, prefabs, and more. To access the list of entities first click inside the virtual tree to expand it, then doubleclick Basic Entities.
![](https://i.imgur.com/xYkKARH.png)

Now you'll see a list of colorful icons relating to every* entity the engine has to offer. If the icons are too small for you then you can change their size by clicking on the letters above the list. For this tutorial I'm leaving it at "Medium (M)" size. To add a PlayerMarker entity to the world, locate the PlayerMarker inside the virtual tree's browser (it's the GO icon above a checkerboard) then click and drag it to either the top-down viewport or on the floor in the 3D viewport. Its position doesn't have to be exactly precise.
![](https://i.imgur.com/1h4ltPx.png)
![](https://i.imgur.com/ASE8gdd.png)

Congratulations! You've placed your very first entity into the game world! **You can move an entity around in any of the viewports by clicking on it to select it, then holding CTRL and dragging.** CTRL+Doubleclick will teleport your selected entity to the cursor's position. You can also select multiple entities at a time by holding shift and clicking each entity. Click on a selected entity to deselect it, or press backtick (\`) to deselect everything.

Now with a PlayerMarker entity added to our room we can finally test it. But how does one test their level? It's EXTREMELY simple, just press "T". That's it! Press "T" and your 3D viewport will turn into the actual game with your level already loaded. You can run around and view the pretty room you just made while shooting the walls with Sam's trusty revolver. To stop testing your map in game press Escape.
![Groovy](https://i.imgur.com/fNqGTuK.png)
!!! info
    A quicksave gets created every time you test your level. So if you have been playing the game normally make sure you created a proper save in it before running the editor. Else you risk overwriting one of your quicksaves, and nobody likes lost progress.

That wraps it up for this part. To save your level either press CTRL+S or click the Save button in the top left. Saving your `.wld` file in the game's main directory is perfectly fine.
***
## Lighting Your First Room
We have a room, but the only way to see inside it right now is to disable shadows. Let's change that by adding some proper lighting. Make sure you're in entity mode (blue bar) and look under Basic Entities in the virtual tree. Look for the red studio light icon circled below:
![](https://i.imgur.com/onsjvLN.png)

Drag and drop the light into the center of your room. This will place it on the ground if you dropped it inside the top down view (top left viewport) or 3D view.
![](https://i.imgur.com/eHQ7xfS.png)

With the light still selected, CTRL+Click to drag it up to the center of the room. Then turn shadows back on.
![](https://i.imgur.com/6eYJ695.png)

After turning shadows back on you may have noticed that everything is still pitch black like so:
![](https://i.imgur.com/Cxsedut.png)

That's okay. The reason why is because the light's default falloff is too small to reach the edges of the room. Let's fix that. With the light still selected, look at the left side of the editor right above the virtual tree. This is where you'll find all the properties of the currently selected entity (or entities, if they're the same type). Open the dropdown and select the "Fall-off" property.
![](https://i.imgur.com/C5Gzckx.png)

You'll now see a green circle covering the light's radius in all of the 2D viewports. Let's change the Fall-off property to 20 so its light will cover the walls.
![](https://i.imgur.com/spzQvbs.png)
![](https://i.imgur.com/SbF5Ake.png)

If you test the game now you'll see the room properly lit. Nice!
![Let there be light!](https://i.imgur.com/DMV73W5.png)

Feel free to fiddle around with the rest of the light's properties. To keep things simple at the moment, there are two types of lights you should know about: point lights (default) and ambient lights. Point lights are like proper lights, they'll light up everything around them to full effect. You should place these where there should be light, like near torch props and other light sources other than the sun. Ambient lights are less potent but useful for, well, ambience. Use them to light up the environment and cover spots that should be somewhat lit but not by a strong point light. A good rule of thumb when lighting a room is to first place point lights where light sources in your map are, use bigger point lights to brighten the playable area, then light up everything else with ambient lights.
If you want, you can change the light's type to ambient. I'll do that for this room but it isn't mandatory for the tutorial. An ambient light has a green icon in the world like so:
![](https://i.imgur.com/AN2jSMt.png)

!!! danger IMPORTANT INFO ABOUT UNDO
    Undo works weird in Serious Editor. It doesn't really apply to changes made to entities, only changes made to brushes. So if you CTRL+Z now you might end up reverting your map to before you created the room. Always keep this in mind. If you mess up an entity's properties way too much then it will probably be better to delete it and create a new one.
***
## How to Create a Door
We have a room, but we have nowhere to go. So let's learn how to create a door connecting two different rooms. First we'll need another room to visit. Click Create Conus Primitive (or Numpad Enter) to go back into CSG mode and start crafting a new square room. Serious editor will remember the last CSG operation you've done, so it should already have the same values you used to create the initial room. This time change the width, length, and height all to 40 but leave everything else the same. Then move the primitive with CTRL+Click in the top down view away from the existing room like so. You don't want the new room directly touching the other one.
![](https://i.imgur.com/rtlotWu.png)

Click the Add button (or Numpad plus) to create the brush and it should look something like this. The position doesn't have to be exact, just make sure that the floor is level between both rooms.
![](https://i.imgur.com/VlTiqGN.png)

Give the second room an ambient light of its own centered in the room so we can see.
![](https://i.imgur.com/Hxxb218.png)

Now we need to create a little hallway that connects the two rooms. Start making a new primitive and make sure its walls are touching both of the rooms (also make sure it's high enough for the player). In my case it will be an 8x8x8 square like so:
![](https://i.imgur.com/dLm81Vn.png)

**Here are some cool shortcuts you can use to reshape primitives without having to constantly change the width, length, and height values:**
- Click and drag any vertex to move it
- CTRL+Leftclick: move the entire primitive
- Shift+Leftclick: create a new vertex at the nearest edge
- Shift+Rightclick: delete the nearest vertex
- CTRL+Shift+Leftclick: move an edge to adjust the primitive's shape
- CTRL+Leftclick+Rightclick: rotate primitive

If you want to get fast at creating primitives then get used to dragging edges around with Ctrl+Shift+Click. Try using this shortcut to reshape the hallway so it fits between your two rooms. Create the brush and your two rooms should now be connected.
![](https://i.imgur.com/EudTOZT.png)

Now, our door will be created out of MovingBrush entities, but before we get into that these movingBrush entities need little indents to rest inside of when they open up. In the upcoming example I am going to be creating a door made out of TWO movingBrush entities that move to each side horizontally. So I need to create two indents that are 4x4x8 for the brushes to move into. I recommend you follow along with the same proportions.
![Primitive of the first indent](https://i.imgur.com/ykEp5we.png)
![Created brush from our first indent](https://i.imgur.com/fig0lkU.png)
![Both indents created on each side](https://i.imgur.com/NQddOFm.png)

With your door indents created, it's now time to create the doors themselves. MovingBrushes are brush entities just like the WorldBase we've been creating our world out of. There are two ways to create a brush for a brush entity. Either add the brush entity to the world then add a brush to its "brush layer," or merge an existing brush layer into the brush entity's own layer. I probably said brush too much just now while also introducing the concept of "brush layers." I'll go into more details later, but right now just know that each brush entity has its own "brush layer" you can modify. These layers can then be merged together if needed. 
Our door will be created out of two MovingBrush entities, so first I'll cover how to add a brush to a brush entity (you'll probably be doing this method 90% of the time for any brush based entity like a MovingBrush). Look for the MovingBrush entity (white platform with an arrow pointing right) and drag it into our world where you want to create the left half of the door.
![](https://i.imgur.com/hOWRmm7.png)

You'll now see a new globe model in the 2D viewports representing our empty MovingBrush. It's okay if you don't see it in the 3D viewport, Serious Editor is weird like that sometimes. 
![](https://i.imgur.com/pt3xvRu.png)

Now we need to give our door half form. Create a new primitive to fit inside the indent using the same values for the indents but this time untick the Room checkbox. This will make a solid brush when we add it instead of carving out of the world.
![Door primitive](https://i.imgur.com/sqnoIfd.png)
![Door brush created](https://i.imgur.com/1WFFADU.png)

If you noticed, the little dropdown box at the top of the toolbar no longer says WorldBase and instead says MovingBrush. This is the current brush layer, and adding a new brush based entity like the MovingBrush to our world created a new brush layer. Serious Editor will automatically switch to this new layer after creating a brush entity. The door brush is now its own entity you can select and isn't part of the existing WorldBase.
![](https://i.imgur.com/hH0nDAd.png)

What you have selected as the current brush layer is very important, because it determines what layer new brush operations are performed on. And this list of layers will get extremely cluttered. That's just the nature of SED. To help make things easier on our lives lets rename the MovingBrush entity we created. Doing so will also rename its brush layer. With the door selected, open its list of properties and click on Name.
![](https://i.imgur.com/2RHtIdg.png)

Change its name to something simple like LeftDoor1. When you press enter you'll see not only the entity's name update above the properties dropdown, but also see the MovingBrush layer name update to LeftDoor1.
![](https://i.imgur.com/hlcbYTj.png)

That's the left side of the door made. Now we'll create a second MovingBrush entity to act as the right side of our door. For these steps, I'm going to show you how to merge a brush and its layer into an existing brush layer. You do not have to create doors like this everytime, I am only doing this for demonstration purposes. Most of the time you'll be creating doors (and other brush based entities) like we did with the left half. Before you start the CSG operation, make sure you switch the current brush back to WorldBase. After that, create a new primitive with the same parameters as the left side and place it on the right. INSTEAD OF CLICKING ADD (or pressing Numpad +), this time we will create the brush on a new layer by clicking Join Layers (or press "L"). *I really don't know why it's called Join Layers when it actually creates a new one, that's just how SED is.*
![](https://i.imgur.com/NdsL94E.png)

Before the next step, I recommend renaming this new brush we made. Click on the right door brush and change its name under the properties dropdown. It will be a temporary name but will clear things up in the list of layers. After that, place a new MovingBrush entity right at the base of the right door brush. Where you place the MovingBrush entity before giving it a brush determines that MovingBrush's "origin" point. So these two door brushes' origins are right smack dab in the center. The origin determines where the MovingBrush will stop at when moving to markers (which we'll get into in a bit).
![](https://i.imgur.com/yjOVzWj.png)

After placing the MovingBrush entity, there should now be two new layers. One for the right door brush we created when we pressed "Join Layers," and one for the new MovingBrush entity we placed. Select the new MovingBrush layer in the current layer dropdown, then select the right door brush itself, then click Add (or press Numpad +). This will "add" the right door brush to the new MovingBrush layer (which removes the old layer the brush previously had). While a seemingly roundabout way to add a brush to any brush based entity, you can use this function to add (or merge in this instance) layers into other existing layers. Again, you don't have to do this every time for brush based entities like a MovingBrush. Placing a MovingBrush entity first then adding a brush directly to its layer is faster and easier (like when we made the left side of the door).
![](https://i.imgur.com/HMN6zLE.png)
![](https://i.imgur.com/LaWmm7k.png)

Then make sure you rename the right door MovingBrush (which will also update its layer name):
![](https://i.imgur.com/bCXmXIy.png)

Now we need to place markers so our MovingBrush doors know where to move to and where to stop. When placing the markers for something like a door, you need to place them in an order in relation to where they are MOVING TO. So the first marker we need to place for our door must be INSIDE the indent, not directly on top of the door. Move the left door into its indent, then press "D" to place a marker. The door will be automatically set to target this first marker.
![](https://i.imgur.com/NBoVZhi.png)

Move the door back to it's original position outside of the indent and press "D" a second time.
![](https://i.imgur.com/AfOkaA8.png)
*You might have noticed that the world in these images looks slightly different. I made a mistake when taking screenshots for these steps the first time and had to recreate them.*

!!! info
    All MovingBrush entities need AT LEAST two markers to function properly. Even if the MovingBrush only moves once, you still need to place a second marker (usually at the starting point for the MovingBrush).

Our doors only need two markers each, so do the same for the right door (make sure you place the first marker inside the indent).
![](https://i.imgur.com/eNjXyeK.png)

Things are getting a little hard to make out here with everything sharing the same texture. Let's take a short detour and change the front and back of our doors. First enter Polygon mode by pressing "P", then navigate to the texture folder 1_4 Teotihuacan (we'll be using a texture from it soon).
![](https://i.imgur.com/KE4vMeN.png)

Now for some preliminary action we must take (**which you should always do with MovingBrush entities**). We need to change all the polygons on each door to be Fullbright, to not cast shadows, and to not receive shadows. SED is weird with moving brushes, they have to not interact with shadows for things to work properly. While in polygon mode, doubleclick on a polygon for the right door to select ALL of its polygons. You can also use Shift+Click to select multiple polygons at the same time, but the doubleclick function is faster. With all of the right door polygons selected, open the Tools info window with "Q" and under the Shadow tab make sure "Don't cast", "Don't Receive", and "Full bright" are all checked.
Note: The pictures below doesn't show "Don't Receive" as checked when it should be. Sorry about that!
![](https://i.imgur.com/kJQTfCQ.png)

Do the same for the left door's polygons. Make sure you deselect the right door polygons first! (Either click on a left door polygon or press backtick \` ).
![](https://i.imgur.com/PUoTJWw.png)

Look for the TeoOvalDoor01 texture in the virtual tree browser, then select the front right door polygon (again, remember to not have any other polygons selected) and either drag it on the texture box under the texture tab or directly onto the door's polygon .
![](https://i.imgur.com/an00Zru.png)

The texture isn't scaled properly, so let's make it look better. Change the offset and stretch values to what I have circled.
![](https://i.imgur.com/FE8YyCE.png)

Do the same for the left door, but this time for the stretch value in the left box, input "-2" so it gets flipped properly (it will change back to "2", but the rotation value will change to "-180"). 
![](https://i.imgur.com/BeXZCmO.png)

Repeat this process again for the other side of the doors. After that it's time to get back into setting up the entities and making this door open. Return to entity mode by pressing "E" then place a DoorController entity (purple box icon) in front of the doors on the side the player spawns.
![](https://i.imgur.com/sTQifID.png)

The DoorController entity has a defined zone that when the player walks into it will trigger the doors to open. But the default size is too small for our needs, so change the DoorController's Height and Width properties under the dropdown to fit the door. If you have been using the same measurements  as I have for the hallway and doors then both of these values should be set to 8. Move it so the DoorController's zone is slightly inside the doors.
![](https://i.imgur.com/pTFVwcF.png)

Now the DoorController needs to target the doors to trigger them to move. With the DoorController selected, modify the Target1 and Target2 properties to target the left and right door MovingBrushes respectively. If you named them properly then they will be clearly listed under the available targets dropdown.
![](https://i.imgur.com/bOSQB4X.png)

If you try testing the game now, weird things are going to happen with the doors because of the default values for the markers. We need to change them so the door opens and closes properly. Select one of the markers at the door's closed position, then tick the Stop Moving property and set the Wait Time property to 0. Do this for BOTH markers positioned where the doors will be closed.
![](https://i.imgur.com/HE37y6l.png)

Now select the marker inside the indent and only change its Wait Time property to 2. Do this for both of the markers inside the wall indents.
![](https://i.imgur.com/9JjmoQt.png)

Try testing the game now and it should open properly. Both doors will slide into their indents, wait 2 seconds, then slide back.
![](https://i.imgur.com/Rf71eFZ.png)

Let's add some sound to our door. Place a SoundHolder entity (yellow bell icon) near the door, then untick its Looping property and set the Sound property to DoorStoneSmall.wav (located under Sounds\Doors). Also make sure to rename the SoundHolder.
![](https://i.imgur.com/etTkQMu.png)

Then click on one of the doors and set its Sound start entity propert to this new Soundholder we made. You don't have to set the Sound start entity property on both doors, only set it in one of them. Test the game again and sound should play whenever the door opens!
***
## Placing Weapons and Enemies by Hand
Let's place some things to shoot in our first person shooter! First we'll need a better gun and some ammo. You can probably tell which entities these are inside the virtual tree. There's one weapon entity for all weapons and one ammo entity for ammo pickups. Drag both of them into the world.
![](https://i.imgur.com/9JIAUOI.png)

Then change the weapon's type property to Single Shotgun. We don't need to change the ammo because it defaults to shotgun shells.
![](https://i.imgur.com/VLP766V.png)

Now let's add an enemy. Go to the enemies category under the virtual tree and add a beheaded. The icon may be a kamekazi but it defaults to a beheaded firecracker. Add one into the second room.
![](https://i.imgur.com/K8G6dQ7.png)

If you want, you can then change his type to rocketman (which is the internal name for the basic purple rocketeer, a lot of enemies work like this and have different interal names).
![](https://i.imgur.com/vdtnW0y.png)

Rotate him so he faces the door. **You can rotate him (and any other entities) in three different ways:**
- CTRL + Left Click + Right Click = free hand rotate
- Arrow keys = rotate in small increments (hold shift for even smaller increments)
- Tab = rotate 90 degrees counter-clockwise (Shift+Tab to rotate clockwise, but if you're on Steam and have the overall enabled then don't do this, trust me.)
!!! info
    There's another weird Serious Engine quirk where enemies can see the player through "gaps" on spawn. The gap in this instance would be between our door brushes. If the enemy instantly spots you upon testing then slightly move him to the side.

If you had lit the second room with an ambient light then you may notice just how dark our enemy looks like. Add a few more basic spot lights like so to light up the second room.
![](https://i.imgur.com/HV66vEI.png)
***
## Spawning Entities and Enemies in Game
Time to get a little more serious. A big part of any Serious Sam level is spawning in relentless hordes of enemies (and spawning enemies directly on top of the player as a trap). Let's learn how enemy spawners work. Place a HealthItem entity (the heart icon) right behind our beheaded and change its type to Pill. Picking up this pill will trigger our soon to be EnemySpawner entity.
![](https://i.imgur.com/kpBd1FB.png)

Enemy spawners require an enemy "template" so that they know what to spawn. Let's create the enemy template first by placing another beheaded OUTSIDE of our WorldBrush like so. You can leave it as a firefracker, but make sure its Template property is checked and that it has a distinct name (like FirecrackerTemp).
![](https://i.imgur.com/B9Rw74L.png)

Any properties you apply to the template enemy will apply to enemies spawned by an EnemySpawner entity (this includes some neat stuff like other entities parented to the template, but that's for another tutorial). Also, the reason why we place the template outside of the level is because the template is still fully visible in game. So if you left it in the room you would see an enemy you couldn't interact with. Croteam made spare rooms disconnected from the map that stored all their templates and other "global" entities, but it's not required that you do that.

Now let's add an EnemySpawner entity right behind the pill we just made. It's the bird hatching from an egg icon. Make sure to change the EnemySpawner's TemplateTarget property to our firecracker template.
![](https://i.imgur.com/e9lVPAr.png)

Pickupable items like HealthItem have a target property that triggers when the item is walked over. Not necessarily when "picked up" because then you might have scenarios where the player couldn't trigger a fight because their health/ammo was full. We want our EnemySpawner to activate when the player touches the pill, so change its Target property to the EnemySpawner entity. While you may have been using the dropdown to select the target, I'm going to fill you in on a super useful shortcut for selecting targets. **With the pill selected and the Target property selected in the dropdown, CTRL+ALT+Left Click on the EnemySpawner to set it as the target.** Memorize this shortcut and it'll make things way easier for you in the future.
![](https://i.imgur.com/HgAdASj.png)

Setting up the EnemySpawner's properties is next. You may have noticed it has a lot of properties to change.
![](https://i.imgur.com/u8MEkti.png)

Let me describe each property because it's important to know what these do (order slightly changed for better context between them):
- Circle inner/Circle outer: By changing these values you can create a sphere area where enemies will randomly spawn inside.
- Count total: The total amount of enemies that will be spawned by this EnemySpawner.
- Count group: Enemies can spawn in groups, this value determines how many enemies are in a group. Count total still has priority over this value. So if Count total is 5 and Count group is 4, the first group will spawn 4 enemies then the second group will only spawn 1.
- Delay initial: How long it takes the EnemySpawner when triggered to START spawning enemies.
- Delay single: The delay between each enemy spawn WITHIN a group.
- Delay group: The delay between each GROUP.
- Double in serious mode: If ticked, all of this EnemySpawner's count values are doubled when playing on serious difficulty. 
- Name: You know what this is for.
- Parent: All entities have this property. It lets you "parent" another entity to this entity. Basically this lets you "attach" the entity to whatever you put as its parent. One use case for EnemySpawners would be to attach the spawner to a moving platform.
- Spawn flags: All entities also have this property. It lets you determine what modes (singleplayer, co-op, DM) and difficulties the entity actually appears in. You can make different enemies appear in different difficulties by utilizing this property. 
- Patrol target: The first EnemyMarker entity each enemy should path to upon spawning. I'll get into patrols later.
- Spawn effect: Tick on (default) for the teleport effect to play when an enemy spawns. Tick off for a silent spawner.
- Tactics autostart/Tactics holder: Relates to the tactics holder entity which I am not covering in this tutorial.
- Telefrag: Flag that determines if a spawned enemy should telefrag any player unfortunate enough to be standing on the spawner.
- Template target: The enemy template that this spawner will create enemies of. A template is any enemy with the Template property checked.
- Template for serious: Set a different template target for serious mode.
- Type: What type the spawner should be. Main two you should know are "simple" (default, spawns the total amount set in relation to the count values with just one trigger) and "triggered" (spawns a group each time you trigger it, will not spawn another group until triggered again). I'll cover the other types later.

In our example, we're going to edit the EnemySpawner to spawn 5 enemies with a 3 second delay between each. Set the EnemySpawner's Count total property to 5 and the Delay group property to 3. With these settings, we will be spawning 5 different groups consisting of 1 enemy each with a 3 second delay between each of them. We could have set the Count group to 5 then change the Delay single to 3 seconds, but that would still require changing the Count total to 5 as well. Which would have meant changing one more property for the same effect. Think smarter not harder.
![](https://i.imgur.com/uN2QPu8.png)

Now when you test the game and pick up the pill, the EnemySpawner will start spawning firecrackers at you in three second intervals. But spawning enemies isn't the only thing we can create out of thin air in game. It's common for levels to spawn in items, guns, and ammo. To spawn entities like this we have to use the copier entity (technically you can spawn enemies with the copier but doing so breaks the enemy count, so don't do it). First we need an item to spawn. Place an AmmoPack entity right underneath the ground past the EnemySpawner and give it a name. We don't want this ammo pack to be visible in the world because we'll be using it as a target for the copier next.
![](https://i.imgur.com/BSs8Q4v.png)

Next, place a copier entity inside our room (it's the icon with two pieces of paper). Set its target property to the AmmoPack we just placed (don't forget the CTRL+Alt+Click shortcut for targeting entities). The direction the copier is facing doesn't really matter in this instance because AmmoPacks constantly rotate in game.
![](https://i.imgur.com/WE82zqx.png)

Finally, we need a way to trigger the copier. We could have it trigger directly from an enemy's death like our firecracker spawner, but that would create a new ammo pack every time we killed one. In this example, we're going to set it up so that after killing all five firecrackers an ammo pack will spawn. To do this we need to go over the Trigger entity. Place a Trigger entity in the world next to our copier (the brown plunger icon).
![The Almighty Trigger](https://i.imgur.com/VI2bpan.png)

Triggers are very powerful and have a TON of properties to edit, allowing you to do all kinds of cool logic stuff with targeting entities. I won't go over every single property this time since a lot are essentially the same (you can target up to 10 different entities with just one trigger entity) and many are self explanatory.
![](https://i.imgur.com/GmXpyFE.png)
- Count: How many times the Trigger itself needs to be triggered before firing off events if count use is ticked.
- Count use: Tick this property to enable counting with the trigger. The count increments every time the Trigger is triggered.
- Count reuse: Pair with Count use. If Count reuse is ticked, then the Trigger "resets" after reaching the count amount and can start counting again.
- Max trigs: How many times this Trigger can active. -1 (default) means an infinite amount of times.
- Message: On screen message that displays when the Trigger activates.
- Message sound: Set the message to play an info notification sound or not when it appears.
- Score: How much score to award the player when this Trigger activates.
- Event type target ##: Set the type of event to fire off for the corresponding target. Most entities use trigger event but there are a few that use other event types, more on that later.
- Target ##: You can target up to 10 different entities with a Trigger under these properties. Yes, you can also "daisy-chain" Triggers this way to trigger even more entities.
- Wait: Delay in seconds to wait before the Trigger activates.
!!! info
    A Trigger with any score value will be counted as a secret!

Let's set up the trigger so that it must be triggered 5 times before sending an event to the copier. Set Count to 5, tick Count use, set Max trigs to 1, and set Target 01 to our copier entity. Try to make a habit of changing Max trigs from -1 (unless you need a trigger that can be activated an infinite amount of times) every time you create a trigger so that you don't accidentally fire it off too many times.
![](https://i.imgur.com/KPd3vqI.png)

Now we need to set up our firecracker template so that on enemy death it targets the Trigger. Set the firecracker template's Death target property to the trigger. You might want to rename the trigger so it's easier to find, or just use CTRL+Alt+Click again.
![](https://i.imgur.com/6GQ8sl3.png)

Test the game and when you kill all 5 firecrackers the copier should spawn an ammo pack for you.
***
## How to Create a TouchField
TouchFields are another important entity you should know about. They're invisible zones that the player and enemies can enter to trigger other entities. They're also another brush based entity, and the brush you give it determines its zone. Add a TouchField (icon of God's finger from Michelangelo's *The Creation of Adam* painting) to the world past the copier like so. It will be another globe model because it is empty at the moment.
![](https://i.imgur.com/GMpZYrk.png)

Because it's a brush based entity, placing it into the world will create a new brush layer for it. Make sure you're switched to the Touch Field under the current brush dropdown, then create a brush that stretches across the entire room and place it on top of our TouchField. Remember, you can use CTRL+Shift+Click to drag an edge of the primitive and resize it manually. Also make sure Room is not ticked. Once created, the TouchField will turn into a green transparent brush. This is the zone the player and enemies have to enter to trigger this TouchField.
![](https://i.imgur.com/4VIQnvk.png)
![](https://i.imgur.com/OKLB0F2.png)

Let's experiment a bit with this touch field and set it up to spawn some enemies behind us once entered. First add a gnaar enemy to the world and place it beside our firecracker template. Tick the gnaar's template property, give it a name, and also tick its Blind property. What this property does is make it so the enemy can't be "woken up" by seeing you. It will stay idle until you touch it or make a sound with your guns. Enemies have a similar Deaf property which acts the same way but with sounds instead. 
![](https://i.imgur.com/bHJseOR.png)

Now place a new Trigger entity beside the TouchField plus three EnemySpawners in the back like so. We'll use these three EnemySpawners to spawn in our blind gnaars behind us when we enter the TouchField.
![](https://i.imgur.com/ZbbD9mV.png)

Follow these quick steps to set everything up.
1. Set the TouchField's Enter target property to the new Trigger.
2. Set the Trigger's Target 01-03 properties to one of each of the three EnemySpawners (also set its Max Trigs to 1).
3. Set each EnemySpawner's template property to the gnaar template.

![](https://i.imgur.com/N7Phepb.png)

Test the game and once you walk into the TouchField three blind gnaar should spawn behind you. With all these entities placed around willy-nilly it might be hard to keep track of what's targeting what. There is a little "Show targets" button you can click (or press "G") to toggle arrows that will show all the connections between entities.
![](https://i.imgur.com/lj7olTY.png)
***
## Buttons/Switches and Destructible Walls
Sometimes the player isn't ONLY killing enemies in a level. You may want them to press a switch to start a fight or trigger some sort of action. This section will cover two things at once: how to create a button/switch, and how to create a destructible wall. We'll set up a button that when pressed will destroy a wall and let the player continue on. First create a hallway at the end of our big room like so. Double check that you're on the main World Brush layer before doing so!
![](https://i.imgur.com/Bn7JZ8C.png)

Next create a little indent to the side of our hallway for the button to reside in. The button will be another MovingBrush so it needs some place to recede back into when activated.
![](https://i.imgur.com/SWWTGwU.png)
![](https://i.imgur.com/6mEXBW3.png)

Now we need to create the wall segment that we'll blow up. Place a MovingBrush entity in the hallway like so and give it a brush that will block the player. MovingBrush entities can be destroyed via player damage and/or triggers (they should have probably been called DynamicBrush since you can use them for more than only moving). 
![](https://i.imgur.com/tatBSyg.png)

Give the wall a different texture so it stands out and is easier to spot (or don't, I'm not your parents). You can do this by dragging a texture directly onto the MovingBrush's polygon without having to enter Polygon mode. 
![](https://i.imgur.com/kOxvoqX.png)

Now create another MovingBrush for the button itself. Make sure to place it so that it's slightly sticking out of the indent we made and give it a name like Button.
![](https://i.imgur.com/9ULHnVd.png)

Let's also give the button a different "button-like" texture, this time do switch over to Polygon mode with "P". As for all MovingBrush entities that move, make sure you tick all of its polygon's "Don't cast", "Don't Receive", and "Full bright" properties (double click on the button, press "Q", then tick the properties under the Shadow tab). After that, give the front facing polygon the PAL_DoorWood01 texture located under the 1_2Palenque folder in the virtual tree.
![](https://i.imgur.com/RekE2Gx.png)

The texture isn't scaled properly, so let's change that with a nifty shortcut. With the front polygon selected right click on it in the 3D view, then go to Mapping, then finally click Fit both axis. You can also press Alt+Shift+CTRL+A to perform this action as well. This will automatically rescale the texture to fit the polygon (kind of).
![](https://i.imgur.com/jFJFzCA.png)

The texture isn't properly centered, however. One more shortcut you can use is holding CTRL+Click to move a selected polygon's texture. Do this and move it around some until it fits the button's face (almost) perfectly.
![](https://i.imgur.com/69YXH59.png)

With our texturing out of the way, go back into Entity mode with "E". Now we need to set up the rest of the entities needed to turn this MovingBrush into a proper button (technically it will be a switch, but it can only be activated once). Place a switch (light switch icon), trigger, and damager entity (bloody axe icon) in a row near the button. Don't do anything with them just yet, I'll explain everything in a second.
![](https://i.imgur.com/fiBvbvL.png)

Our button also needs markers set up so that it knows how to move into the indent we made. Move the MovingBrush inside the indent and press "D" to place the first marker, then drag it back out and press "D" again to place the second marker. Even though the button will only move inside the indent and never move again, it still needs two markers to function properly.
![](https://i.imgur.com/0w7O6x8.png)
![](https://i.imgur.com/1hbXz0S.png)

After the markers are placed, select both of them with Shift+Click then tick their Stop moving property.
![](https://i.imgur.com/nRPJtaw.png)

Now we have all the entities needed and ready to be set up. Due to all the entity names we need to assign and properties we need to change, we'll be working backwards to save time and not have to constantly switch between entities. Select the wall that we want to be destroyed and change these properties:
- Blowup by damager: ticked (tells the MovingBrush to only take damage from damager entities and not by the player)
- Debris count: 6 (default is 12 which creates way too many pieces of debris when the wall is destroyed)
- Health: 100 (default is -1 and if we don't change it then the wall cannot be destroyed)
- Name: Wallblowup (or whatever you'd like)

![](https://i.imgur.com/9LauwSe.png)

Next select the damager entity and set its name to something like WallDamager, its Entity to damage property to target our wall, and its Type property to Damager. The other types are mainly used for players and controls what the console output says when the player dies. Damager type is specifically for damaging other entities (like our wall MovingBrush). 
![](https://i.imgur.com/LhVJPiC.png)

After the damager is set up, select the trigger and change these properties. 
- Max trigs: 1
- Name: ButtonTrigger
- Target 01: WallDamager
- Target 02: Button (the MovingBrush, we need to target it here inside the Trigger so that it moves when used)

![](https://i.imgur.com/ZLxqLFK.png)

After the trigger, select the switch entity. Give it a name like ButtonSwitch then change these properties:
- Invisible: ticked (switches themselves can be used as a physical switch in game with an animated model, but we're not using it like that in this scenario)
- ON Event type: Trigger event (defaults to Start event which we don't want to use here because the switch is targeting a Trigger entity)
- ON-OFF Target: ButtonTrigger
- Type: once (makes it so the switch can only be used once)

![](https://i.imgur.com/oIDqDDc.png)

Finally, select the button MovingBrush and set its Switch property to our switch entity.
![](https://i.imgur.com/EdAsDdJ.png)

Everything should be set up now. The button targets the switch, which targets the trigger, which targets BOTH the damager and button itself, then finally the damager targets the wall to go kaboom. Whenever you walk up to the button it will display "Use", and pressing the use key (right click) will cause the button to recede back and blow up the wall. Because we set the button's switch property to our switch entity, this is what enables the "Use" prompt to appear in game and make the button interactable. 
Everything should be working fine, but there's still something missing. When the wall blows up no sound is played! We have to do this manually with a SoundHolder entity. Place one near our wall, give it a name, untick looping, then set the sound to Explosion02.wav (located under SoundsMP\Weapons).
![](https://i.imgur.com/GtxiX9T.png)

Select our trigger and set Target 03 to our SoundHolder, then change Event type Target 03 to Start event. SoundHolders aren't "triggered" so Trigger event won't work on them. Instead they need to be "started" which is what the Start event type does. The majority of entities work with Trigger event, so if you ever encounter an entity that won't activate normally try changing the Event type to Start event.
![](https://i.imgur.com/aeLYTbf.png)

Test the game again and the wall should make a beautiful explosion sound upon being destroyed.
***
## How to Create an Elevator with a MovingBrush
Time to make something with a MovingBrush that the player will physically interact with (unless you managed to crush yourself with the doors earlier, Build engine eat your heart out). We're going to create an elevator that moves up to a new room. This new room will also tie in to some future steps. Give the little hallway we made some lights, then create an indent in the floor for where our elevator MovingBrush will reside. I cannot stress this enough, make sure you're back on the World Base layer under the current brush dropdown before performing any new CSG operations.
![](https://i.imgur.com/yqUWXNB.png)
![](https://i.imgur.com/DOOavJJ.png)

Now create the elevator shaft that will be a perfect fit for our elevator. Make sure it goes past the ceiling of our second room so that the third room we make won't interfere with it. Give it some pretty lighting too.
![](https://i.imgur.com/LY8KKjV.png)
![](https://i.imgur.com/2QQVsF2.png)

Make the third room huge and place it so that the elevator shaft creates a hole in the third room's floor. We want this room to be pretty big because we'll be giving it a skybox and working with something large there later. A size like 100x100x50 should work. Don't place any lights inside it because the future skybox will give it natural lighting.
![](https://i.imgur.com/tIeTyDb.png)

With our elevator shaft leading to the third room, let's create the actual elevator. Place a MovingBrush entity in the center of our indent and give it a brush that fits snugly inside. On the Tools info window when creating a primitive, there is a history dropdown button that shows all the past CSG operations. To save time, you could select the operation you did for the indent then untick room and have a brush that will perfectly fit.
![](https://i.imgur.com/0dGpOXA.png)
![](https://i.imgur.com/2cpCVmI.png)

Let's give the elevator a different texture to set it apart. Remember you can resize it to fit the polygon automatically with Alt+Shift+CTRL+A, or right click and select Fit both axis under Mapping. After that, make sure to tick Don't cast, Don't receive, and Full bright for all of the elevator's polygons. Do all of this in polygon mode (P).
![](https://i.imgur.com/kus7J9T.png)
![](https://i.imgur.com/WEjNBry.png)
![](https://i.imgur.com/wqYwdtx.png)
*If you see extra stuff in the last photo that's because I accidentally did things out of order. Always remember to tick Don't cast, Don't receive, and Full bright after creating a MovingBrush.*

Now like all MovingBrush entities, our elevator needs some markers. Go back to Entity mode (E) and move the elevator brush all the way to the top of the shaft then press "D" to place the first marker. Then drag it back down inside the indent and press "D" again to place the second marker. With both markers placed, you can click the Test connections button (or press Alt+D) at the top of the toolbar to automatically move the elevator between each marker. **If you use Alt+D to do this, make sure you don't accidentally press "D" by itself and create a third marker!**
![](https://i.imgur.com/5MBg98s.png)
![](https://i.imgur.com/nbjKZEp.png)

Time to set up the entity properties! For the elevator MovingBrush itself, modify these properties:
- Move on touch: ticked (will move when the player touches the brush)
- Name: Elevator
- Wait time: 2 (how long the MovingBrush waits to move in seconds after being triggered)
- Speed: 8 (How LONG it takes in seconds for the MovingBrush to move to the next marker. This property is slightly misleading and doesn't actually mean how fast the MovingBrush moves itself. If you set it to 1 then it will almost instantly move to the next marker because it's trying to move there in one second.)

For EACH of the two markers, make sure their Stop moving properties are ticked. If you want the elevator to automatically move back to the bottom after reaching the top then you don't have to do anything else. If you want the elevator to never move again once it reaches the top then set the TOP marker's Move on touch property to False. 
![](https://i.imgur.com/3EzBd3X.png)

With all the entities properly set up, the elevator should move to the top of the shaft into the third room's dark void. But just like with the destructible wall we made, there's no sound for the elevator by default. Let's fix that by adding another SoundHolder entity beside the elevator. Give it a name and set the sound to Elevator.wav located under SoundsMP\Misc. This time we want to leave the looping property ticked so that it constantly plays while the elevator moves.
![](https://i.imgur.com/JopTqpy.png)

Then back inside the elevator's properties, set "Sound follow entity" to the new SoundHolder we made. Whenever the elevator moves it should now play a lovely grinding sound.
***
## Creating a Skybox
All great 3D engines have skyboxes! Let's turn our third giant room into a skybox using one of the prefab "backgrounds" included in the editor. Go into Polygon mode (P) and select the walls and ceiling of our third room, but don't select the floor! You can do this by either doubleclicking a polygon in the third room then clicking on the selected floor to deselect it, or use Shift+Click to select all the walls and ceiling. With these polygons selected, in the Tools info window tick "Portal," "Passable," and "Link" under the Polygon tab. These are crucial to getting the skybox working.
![](https://i.imgur.com/JzeiHmF.png)

With the polygons set up, go to the Backgrounds category inside the virtual tree. Drag one of these lovely skybox prefabs into our world. I recommend you select the one I have circled so following along is easier, but it's okay if you pick something else. Make sure you place it away from our rooms and not inside any of them. Performing this action will put you into CSG mode because the prefab is considered a primitive.
![](https://i.imgur.com/QOsn5vA.png)

Now that the skybox prefab is placed into the world, we need to click Join layers (L) to finalize it because we're still in CSG mode.
![](https://i.imgur.com/xNRlWrh.png)

The skybox has now been completely added to our world. However, there are a few more tweaks we need to make before it's ready. First go inside the skybox itself and locate the directional light acting at the sun. Click on it in Entity mode and UNTICK Lens flare only. Also, if you used a different skybox then the directional light may not actually be facing the right way. Be sure to rotate it so it points inward if need be.
![](https://i.imgur.com/XKvZxVs.png)

One more step to a bit more detail. Go into Polygon mode and select the floor of the third room. Under the shadow tab tick "Directional" and "Dir. ambient." This will make sure our ground gets properly lit by the sun in the skybox.
![](https://i.imgur.com/IL0kYaL.png)

Then go to the Texture tab and select the Texture 3 layer. Under the 1_1Palenque texture folder give this third layer the Grass10.tex texture. Now we got a nice detailed texture for our ground.
![](https://i.imgur.com/eUwGjnb.png)

So we could test the game normally to check that our skybox is working, but there is a quicker method. Press Numpad 6 and the editor will switch to the  3D viewport taking up the entire screen. It will now render everything as if we were in game, including our skybox! Of course you should also test the game just to make sure nothing has gone wrong. Press Numpad 0 to return back to the default 4 viewports.
![In editor](https://i.imgur.com/E5yEpXT.png)
![So bright!](https://i.imgur.com/xgkLiXv.png)

The next section also covers more of the skybox, so don't skip it!
***
## The Importance of Layers
With the skybox created, let's create a little hut to cover the entrance of our elevator shaft. This time however, we'll be creating a new brush layer for it. There is an important reason for this and it mainly has to do with performance. Don't create anything now, but let's say we had a room, and we wanted to put some pillars inside it for decoration. If it was added to the main World Base then the floor and ceiling of the room would get broken up into this nasty mess of polygons.
![](https://i.imgur.com/7Raaawh.png)

Not only that, but the column would be locked into place as part of the World Base, making editing the column not fun.
![](https://i.imgur.com/8YoOJWK.png)

However, if instead of adding the column to the main World Base and give it its own Layer (by pressing Join Layers (L) when creating the primitive), we get an entirely separate brush that we can easily move and modify without affecting the main World Base. On top of that, because it's not connected to the main World Base unnecessary polygons aren't created and we save on performance.
![](https://i.imgur.com/InljFaN.png)
![](https://i.imgur.com/wlS2gtb.png)

**For large, low detailed walls and environment** you should add it to the main World base (or some other layer dedicated to large brushes). **But for things like complex buildings and interior decorations** you should instead place them in their own layers. This will not only help with performance but also make editing these brushes way easier without risk of messing up the main World Base. Also remember to rename these brushes so their layers gets renamed as well.
![](https://i.imgur.com/XtMnvQZ.png)

!!! danger EDIT: NEW INFO YOU NEED TO KNOW ABOUT LAYERS!
    Most (if not all) brushes created via Join Layers (L) should have the "Detail" property enabled (under the Polygon tab inside Tools info window) on their polygons. While "Detail" causes the polygon to be rendered at all times it also optimizes the brush in the process and overall improves the map's performance.

Knowing this, let's create our little hut on a new layer. Make a simple wall segment like so and instead of clicking Add click Join Layers (or press "L") so it creates a new layer to mess with. Rename this brush so its layer under the current brush dropdown is easily identifiable. 
![](https://i.imgur.com/qJAcr3G.png)
![](https://i.imgur.com/DOSqIVY.png)

Making this new layer should automatically switch you to it (if not select it under the current brush dropdown). Add the rest of the walls needed to construct a little hut like so.
![](https://i.imgur.com/wYFr7Fr.png)

Now go into polygon mode and select ALL of the polygons for our hut. Just like with the floor, go to the shadow tab in the Tools info window and tick "Directional" and "Dir. ambient." EDIT: Also tick "Detail" under the polygon tab as well, see the edit above for why we're doing this. Since our hut is exposed to the sun it needs to be told that it should be affected by directional lighting and ambience.
![](https://i.imgur.com/IfkfbLO.png)

If you go into the full screen game mode with Numpad 6, you might not notice anything different. That's probably because shadows need to be recalculated. Press this button of a square with a light beside it (or press CTRL+R, pressing R performs a "weaker" operation and shouldn't be used) to recalculate shadows.
![](https://i.imgur.com/8jAPvyf.png)

After doing that, if you used the same skybox prefab detailed in the previous section then you might notice just how high contrast the walls and shadows are. You might still notice this with a different skybox. In either case, we need to change some settings with the directional light acting as our sun inside the skybox. Select it in Entity mode then change the Color and Directional Ambient properties to these values below.
![](https://i.imgur.com/sVnkphB.png)

The end result should look something like this. You may have to click recalculate shadows again for it to update.
![](https://i.imgur.com/q2PkKxf.png)

One more tip, if the top of the elevator shaft is a bit dark then don't be afraid to add another regular point light to help light it up. Remember to periodically recalculate shadows when messing with skyboxes and directional lights.
***
## Patrolling Enemies and EnemyMarkers
Plenty of Serious Sam levels don't have enemies running directly at you. They'll sometimes follow different paths or even patrol around places until you attack them. It's very easy to set up patrolling enemies and paths like this with the EnemyMarker entity. Let's place a beheaded kamikaze in our third room like so. You'll have to place a regular beheaded then change its type to Kamikaze. Also, tick its Deaf and Blind properties so it can't see or hear us.
![](https://i.imgur.com/BBkfzcg.png)

With our kamikaze placed, you can start placing EnemyMarkers with it similar to MovingBrush markers by selecting the enemy then pressing "D". A red cross representing the EnemyMarker will automatically be placed under the kamikaze. Select this marker and set its Run to marker property to true. It's rare to see but all enemies have a walking and running state. We want to make sure our little guy runs to the next marker.
![](https://i.imgur.com/lZTOkjQ.png)

Drag the kamikaze around and place three more EnemyMarkers so you have a square patrol route. Select the rest of these markers and set their Run to marker properties to true as well. By pressing "D" to place these markers it should automatically connect them all into one singular loop. Also, the enemy used in this process will automatically set its Marker property to the last marker placed. 
![](https://i.imgur.com/wmxU6U0.png)

Test the game and once you get up to the room with the skybox our little kamikaze friend should be running around in circles screaming his nonexistant head off. If something is not working right then doublecheck all the Markers connections (their Target property determines the next marker to run to) and check the kamikaze's properties as well. The way markers work is that all of its conditions (whether to run or not, turn on/off the enemy's blind/deaf property, etc.) get applied *when the enemy is moving to the marker.*
![He loves it!](https://i.imgur.com/VZa4sQo.png)

!!! info
    EnemySpawners can also target EnemyMarkers so that spawned enemies follow a specific path. Just set the EnemySpawner's Patrol target property to the first marker you want the enemy to follow.
***
## How to Create a Boss Enemy
What's a Serious Sam game without some bosses? Setting up boss enemies is pretty simple. But first, let's spawn in something more powerful for the player to use again our boss like a rocket launcher. Place a WeaponItem entity under the map and change its type to Rocket launcher, then give it a name. After that, place two copiers right above it where you want the weapon and ammo to spawn. Set the first copier target our hidden rocket launcher, and set the second to target our existing AmmoPack from before. Add a trigger and make it target both copiers, plus change its Max Trigs to 1. Finally, set our Kamikaze's Death target to the trigger. Test the game and killing the kamikaze should spawn a rocket launcher and ammo pack.
![](https://i.imgur.com/jmDNssp.png)

Now for the boss. Place a reptiloid underneath our world and change these properties:
- Boss: ticked (designates the enemy as a boss)
- Character: big (changes it into a highlander)
- Name: BossEnemy (or whatever you'd like)
- Radius of attack: 0 (this will make it so that the boss doesn't attempt to move forward to reach the player when attacking, not required for a boss enemy)
- Template: ticked (we'll be spawning it with an EnemySpawner)

With the boss template created, add an EnemySpawner on the opposite end of the room and make sure it's facing the elevator hut. Set its Template target to our Boss template and change its Delay Initial property to 5. Then go back to the trigger we made and make sure it targets the EnemySpawner.
![](https://i.imgur.com/iFNgUcU.png)

If you test the game now and spawn the boss, you may notice that no boss health bar appears. That's because our world is missing a MusicHolder! Why a MusicHolder entity? I really don't know exactly. A lot of functions won't work without a MusicHolder entity present in the map. Croteam probably decided to add these functions to the MusicHolder entity because every map *should* have one. The MusicHolder determines what music to play for calm, light, and heavy combat instances. Place one somewhere into our map, it's the singular guitar icon. I placed mine inside the skybox just so I'll know where it is, but its location doesn't matter.
![](https://i.imgur.com/hP24iRC.png)

Test the game again and when the boss spawns a health bar should appear at the top of your screen.
***
## Ending a Level
For this to be a proper level it needs a way to end. In this tutorial we'll make it so that upon killing the boss the level will fully end. It will not link into a different level. These steps have been recreated from a tutorial done by Rakanishu here: https://rakanishu-sed.itch.io/world-link-tutorial (you can also follow this tutorial to learn how to connect levels together).
They have made a ton of great tutorials for SE1 which I have incorporated into this guide. Without their help, this would have taken a lot longer to make.
To end our level, we need to set up an array of PlayerActionMarker entities that will fire off different actions telling the game the level is over. (PlayerActionMarkers are also used for controlling the player during cutscenes and various other things). But, if you want your level to be both singleplayer and co-op compatible, then you will have to create two sets of PlayerActionMarkers detailed below. One set will have only the singleplayer flag ticked, and the other set to co-op. Weird things can happen if you don't separate the PlayerActionMarkers like this.
Place a trigger down, give it a name, and set its Wait to a five seconds. Then, place down six PlayerActionMarkers (icon of Sam walking towards a tiny pyramid) in a 2x3 pattern. Now we have two sets of three PlayerActionMarkers. Select one set, and under the Spawn Flags property untick the C value. This will prevent these three from being present during a co-op game. Now select the other set and untick the S value in Spawn Flags. These three will only be present in a co-op game. After that is done, set up each PlayerActionMarker's Action property as shown below. Finally, daisy chain them together with the Target property and have the trigger target the start of each chain. Set the boss reptiloid's Death target property to target the trigger. 
![](https://i.imgur.com/Wqx4QmV.png)

Test the level and when you kill the boss after five seconds you should be greeted with the stats screen. Congratulations! You have hopefully made a working Serious Sam map from start to finish! Give yourself a pat on the back for getting this far. The next section will handle how to package our map into a distributable `.gro` file, and at the end I will compile a bunch of smaller tips and tricks plus links to other useful tutorials.
***
## How to Finalize and Package Your Map
So you're finished building your world and ready to package it into a `.gro` file. There are a few steps we need to take before it's ready to be packaged. With your level open in the editor, click the globe icon at the top to open the World Settings. Make sure you change the level name to what you want the map to be called, then tick E, N, H, and X plus S and C. The first four letters correspond to Easy (E), Normal (N), Hard (H), and Serious (X for extreme) difficulties. S stands for Singleplayer and C stands for co-op. If you were making a Deathmatch map then you would tick D instead for DM. The other values here are actually custom values that can be used by custom scripts and mods, but for vanilla purposes they don't do anything and don't need to be ticked.
![](https://i.imgur.com/wEqWI5M.png)

With those changes saved, we need to make a thumbnail for our level. There is a function provided with the editor to do this automatically (File > Save Thumbnail) but it doesn't give you much control over what it looks like. Instead we'll create one from scratch. Follow these steps:
1. Create a 512x512 image for the thumbnail in your image editor of choice.
2. Save this thumbnail as a `.tga` file. Name it the same as your map's `.wld` file with "Tbn" added on to the name (so if your `.wld` file was called `tutorialWorld.wld` then your thumbnail would be called `tutorialWorldTbn.tga`).
3. Copy your thumbnail file into the main Serious Sam TSE directory.
4. Open up SED (if it wasn't already) and click the Create Texture button. ![](https://i.imgur.com/UFjVxL1.png)
5. Click Normal texture, then select the thumbnail file we copied into the main Serious Sam TSE directory.
6. Leave the settings as default and click Create.

This will create a `.tex` file of our thumbnail located in the main directory. You can delete the `.tga` file we copied into the main directory after the `.tex` version has been made.
We will need to create one more file, but first let's organize the files we currently have. Take your level's `.wld` file plus the `.tex` thumbnail we created and place them into a dedicated folder that's inside `Levels`. You can name this folder whatever you'd like, but it would be best to name it the same as your level's name. The folder setup should look like: `Levels\YourLevelNameHere`. Inside your level's folder, create a new `.vis` file that's named EXACTLY the same as your `.wld` file (you can easily do this by creating a new txt document then changing its filename). Again, if your level was called `tutorialWorld.wld` then you would create a `.vis` file named `tutorialWorld.vis`. Nothing has to be in this file, it just has to be present so the game knows the level is there.
The three files we should now have inside our level's folder are:
- `.wld` file (example: `tutorialWorld.wld`)
- `.tex` file (for our thumbnail, example: `tutorialWorldTbn.tex`)
- `.vis` file (example: `tutorialWorld.vis`)

With this, we are now ready to package our map into a `.gro` file. In the past, it either had to be done manually or by using a program called AutoGRO. But now there is a nifty program called DreamyGro that streamlines the process even more. Dreamy Cecil is another big Serious Sam classics mapper who created this program, and without their help a lot of this tutorial would have been harder to make. You can download the program here: https://dreamycecil.itch.io/dreamy-gro
Save the exe wherever you'd like then go back to our level's folder. Doubleclick on the `.wld` file and associate it with the DreamyGro exe. A command prompt should open, asking if you would like to show world dependencies instead of packing. If you type "y" then it will list all the files dependencies for the associated `.wld` file and NOT package your map. Instead, just press Enter to start the packing process. It should then ask you what to name the package. Name it whatever you'd like. After this, it will ask for a few more options that don't really pertain to us at the moment. You can just press Enter through all these as well. Once it's complete the command prompt will close and a lovely `.gro` file will be generated inside your main directory. Open it like a zip file to doublecheck everything is in order and that our three files are present. If so, then you can delete the level folder we created inside `Levels` (make sure to not delete the `Levels` folder itself). Launch Serious Sam The Second Encounter and if you did everything right then under Custom Levels will be your own level. You have officially create a level now that you can share with others! Another round of applause for those who made it this far, you've earned it.
There is still plenty to learn about mapping for Serious Sam, but this guide should have hopefully taught you the basics needed to create a functional map. If you have any questions or encounter any problems, don't be afraid to ask away on the Doom /vr/ thread. There's also a Serious Sam Classics discord server dedicated to mapping and modding if you're interested. 
***
## Resources
I'll be adding a few helpful resources here for those looking for more editor related content.
- [Rakanishu's itchio page](https://rakanishu-sed.itch.io/) A very experienced mapper with some nice tutorials, including coverage on a few obscure SED functions.
- [Dreamy Cecil's itchio page](https://dreamycecil.itch.io/) Experienced modder for classic Serious Sam that has made some very helpful resources and tools. Check out their Classics Patch for a better Serious Sam experience that's still vanilla compatible if you haven't already.
- [Serious Zone file archive](https://files.seriouszone.com/) Tons of resources and old maps saved here from the defunct Serious Zone forums. Lots of content to look through for various Serious Sam games, just keep in mind that the site can be a bit slow at times.
- [ModDB tutorials](https://www.moddb.com/games/serious-sam-the-first-encounter/tutorials) Some old tutorials for The First Encounter (still applicable for TSE). A lot of these cover similar topics to this tutorial, but there a few still worth looking into. Make sure to give them a look.
- [Tutorial ZIP Archive Direct Download](https://files.catbox.moe/nkpwm2.zip) Even more old tutorials archived from various places that are worth keeping. Some of these are the same as the ModDB tutorials. If this link breaks let me know. 
***
## Tips and Tricks
I'll be adding a bunch of quick and useful tutorials here later.

### How to...
##### Pull up a list of all entities in the level
Press "N"
##### Create a floor that won't cause fall damage
Enter polygon mode and select the floor you don't want players to break their knees on. Open the Tools info window (Q) and go to the Polygon tab. Set the Surface property to "Standard - No Impact" and you're golden.
##### Set up checkpoints/autosaves
Video tutorial here: https://rakanishu-sed.itch.io/checkpoints-tutorial
First, make sure your map has a MusicHolder entity AND a WorldSettingsController entity present. Then go to your BackgroundViewer (the skybox entity) and set its World Settings Controller property to target the WorldSettingsController entity.
Place a new PlayerMarker entity where you want the checkpoint (if in co-op)/autosave (if singleplayer). Give its Group property a unique name like Checkpoint 1. Create a TouchField and a Trigger. Set up the TouchField to target the Trigger, then set the Trigger to target our new PlayerMarker checkpoint. You do not need to use a TouchField here, just anything to activate the Trigger which targets the checkpoint.
##### Give the player specific weapons on spawn
Select a PlayerMarker entity and look for the Give Weapons property. Each weapon has a specific value that you must add together in order to give the player multiple weapons on spawn. Here are the values:
- Knife : 1
- Colt : 2
- Double Colt: 4
- Single Shotgun: 8
- Double Shotgun: 16
- Tommygun: 32
- Minigun: 64
- Rocket Launcher: 128
- Grenade Launcher: 256
- Chainsaw: 512
- Flame Thrower: 1024
- Laser Rifle: 2048
- Sniper Rifle: 4096
- Cannon: 8192
- All TSE weapons: 16383

For example, if you wanted to give the player the Knife, Colt, Double Colt, Single Shotgun, Double Shotgun and Sniper Rifle, you must add all of their values together: 1+2+4+8+16+4096 = 4127. You would then put 4127 into the Give Weapons property.
##### Create a teleporter
Place down a Teleport entity, then set it to target an EnemyMarker where you want the player to teleport to.
##### Teleport ALL players at once
Create a PlayerActionMarker then set its Action property to Teleport. Trigger this PlayerActionMarker whenever you want everyone to be teleported.
##### Damage the player
Create a Damager then change its Type to whatever is appropriate. When this Damager is then triggered the player who triggers it takes damage. For example, let's say you have death pit that should kill the player when they fall into it. Create a TouchField that covers the bottom of the pit, set it to target a Damager, then set the Damager's Type to Abyss.
##### Add a model to the map
Place a ModelHolder2 in your map. Change its Model property to whatever `.mdl` file you want inside the Models or ModelsMP folder. Then if it didn't automatically apply the right texture, change its Texture property to the respective `.tex` file (should be in the same spot you found the `.mdl`). Make sure you also tick its Collision property if needed.
##### Create a destructible model
Set up a ModelHolder2 like above and make sure its Collision is ticked, then create a ModelDestruction entity. Set the ModelHolder2's Destruction property to target the ModelDestruction entity. There are a few quirks about ModelDestruction entites:
- Every time you change the Health property for a ModelDestruction entity you MUST retarget any ModelHolder2's Destruction property to it. So if you change something and it seems like nothing is working, doublecheck that you retargeted the ModelDestruction entity.
- ModelDestruction has a Requires Explosion property. Despite this, if its Body Type property is set to Rock then it will always require explosions, regardless of the Requires Explosion property. If you want props that you can destroy with normal bullets then change the Body Type property to something other than Rock.
##### Add NETRICSA messages
Follow this tutorial: https://rakanishu-sed.itch.io/netricsa-messages-tutorial
##### Change Test Difficulty
Test your map, open the console with tilde, then type "/gam_iQuickStartDifficulty=3" (no quotes) to change the difficulty to Serious (0=Easy, 1=Normal, 2=Hard). Restart the test and you should be playing in Serious difficulty. To doublecheck, open Netricsa and look at the Statistics menu.
##### Test in Coop
Similar to above but instead type "/gam_bQuickStartMP=1" (no quotes) then restart the test.
##### Add Detail Textures
Select a polygon and under the Tools info window switch to the Texture tab. Click the "Texture 3" option and apply any of the detail textures. These textures will have "Detail" in their filepath (hover over a texture to see its full filepath name). REMEMBER TO SWITCH BACK TO "Texture 1" WHEN YOU ARE DONE. The reason you want to add detail textures to the third layer (Texture 3) is because certain video settings in game will disable the third layer to help with performance. Also it's so that you can still have detail textures and a second overlay texture (like wall decorations).
##### Add Custom Text Tags
There are a lot of tags you can use in text anywhere in game. From player and map names to even netricsa messages, you can use these tags to change the properties of text. Just add the tag then any text afterwards will change.
- ^cXXXXXX - sets color in HEX (RRGGBB)
- ^fX - makes text flash (from 0 to 9)
- ^aXX - sets text transparency in HEX (from 00 to FF)
- ^b, ^i - makes text bold and italic respectively
- ^C, ^B, ^I, ^F, ^A - resets color, boldness, italics, flashing and transparency respectively
- ^r - resets all decorations at once
- ^^ - inserts ^ 
***
### Working with Vertex Mode
Press "." (your period key) to enter vertex mode. Here you can move vertices of brushes around. Clicking on a vertex will select it, and holding shift will allow you to select multiple. Hold CTRL to move selected vertices around. Note: clicking on a vertex in any of the 2D views will select ALL vertices on that point. Use the 3D view to select a vertex more precisely. To create more vertices, slice polygons and sectors as detailed below.
Be careful when messing with vertices, things can get a little wonky with polygons and sectors.

### Slicing Polygons and Sectors
Polygons and sectors can be sliced using the "Cut mode." Select a polygon or sector you would like to slice, then click this scissors button at the top of the toolbar:
![](https://i.imgur.com/1IDahmg.png)
Your mouse cursor should change to a pair of scissors, indicating that Cut mode is on. Now go to the 2D viewport you would like to make the cut in then click and hold to designate the slice you want to make. This won't instantly create the cut. Whenever you're ready press Enter (NOT NUMPAD ENTER) to finalize the slice.
![Creating a horizontal slice on the wall using the side 2D viewport](https://i.imgur.com/pAyasqF.png)
![The finalized slice after pressing Enter, splitting the polygon in half horizontally](https://i.imgur.com/3uZn2dQ.png)
You can merge selected polygons on the same surface together using the Join Polygons and Join All Possible Polygons buttons here:
![](https://i.imgur.com/oUgcYhX.png)
You can merge selected sectors together using the Join Sectors button here:
![](https://i.imgur.com/0x1Wh6t.png)

!!! info
	When modifying brushes via vertex mode and slicing, you should reoptimize the brush once finished with it. To do this make sure you have the current brush layer set to whichever one you're working on, select the brush in entity mode, then right click in a viewport and select "Reoptimize brush(es)." This should help with performance and hopefully eliminate any rendering errors.
