## Setup

 ==DO NOT push random buttons / keys in Blender. Blender WILL fuck you if you give it the slightest excuse.== 

1. Download and install Blender
1. Download https://files.catbox.moe/o3kdbx.zip (original on https://toyxyz.gumroad.com/l/ciojz - can give $0 and a fake email)
1. Unzip somewhere and open Blender
1. Install the Rig Tools Add-on in Blender *(this step is not required, you only need this if you know what IK/FK switching is, and you want to be able to do that)*
  1. Edit > Preference > Add-ons
  1. Install...
  1. Select rig_tools_3.67.12.zip
  1. Once installed, click the box next to the add-on to activate it
1. Open the Openpose_bone_01.blend file in Blender
1. Add a camera: Add > Camera
1. Change right-hand viewport to show the rendered preview
    ![what you should see](https://i.imgur.com/RTyuVNU.png)
1. Update the camera and render preview to orthographic **(optional, don't fuck with this on first try)**
  1. Click the orthographic button or hit num5 while hovering over render preview
  1. In right-hand properties, change to select Camera 
      ![what you should see](https://i.imgur.com/WhtsoeY.png)
  1. In Camera properties, click small green "Object Data Properties" icon (little 📽 icon)
  1. Change Type from "Perspective" to "Orthographic"
  1. Change "Orthographic Scale" to zoom in and out (there is no depth in orthographic projection)
