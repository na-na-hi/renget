## ->Tower of Fantasy .ini Edits<-
***
[TOC3]
***
### ->Break from Destiny Keybind Fix<-
While the game is closed, go to `C:\Users\%USERNAME%\AppData\Local\Hotta\Saved\Config\WindowsNoEditor` 
or if you're using Steam `C:\Users\%USERNAME%\AppData\Local\Hotta\Saved_Steam\Config\WindowsNoEditor`

Backup the `Input.ini` file to some other place and remove it from this folder. After relaunching the game, it will regenerate a non bugged `Input.ini` file and you'll be able to change the keybinds properly, but you will have to reconfigure all **custom** keybinds. Another solution is to open the `Input.ini` file in notepad and manually add in the missing keybinds. After doing so, you'll be able to modify the keybinds in the game's settings properly.

#### Missing Keybinds
!!!info
	ActionMappings=(ActionName="Artifact_1_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=E)
	ActionMappings=(ActionName="Artifact_2_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=R)
	ActionMappings=(ActionName="Supply1_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Four)
	ActionMappings=(ActionName="Supply2_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Five)

!!!info
	ActionMappings=(ActionName="Artifact_gousuo_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=G)

!!!info
	ActionMappings=(ActionName="ChangeWeapon0_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Two)
	ActionMappings=(ActionName="ChangeWeapon1_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=One)
	ActionMappings=(ActionName="ChangeWeapon2_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Three)
	ActionMappings=(ActionName="WeaponSkill_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Q)

!!!info
	ActionMappings=(ActionName="Jump_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=SpaceBar)
	ActionMappings=(ActionName="Crouch_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Z)
	ActionMappings=(ActionName="Evade_Key_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=LeftShift)
	ActionMappings=(ActionName="Interaction_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=F)
	ActionMappings=(ActionName="SwitchTarget_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Tab)

!!!info
	ActionMappings=(ActionName="UI_Bag_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=B)
	ActionMappings=(ActionName="Map_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=M)
	ActionMappings=(ActionName="sign_BreakFate",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Tilde)

***
### ->Graphics/Input Settings Tweaks/Optimization via UE4(engine/input) ini files (PC only)<-
->Source: https://old.reddit.com/r/TowerofFantasy/comments/wm5vxx/<-

**Disclaimer:**
I don't know if we're allowed to edit these files (I hope we're able to confirm it via this post), so edit them at your own discretion. Some of the options may not work, I haven't tested everything, it depends on which flags the game is using
 
File location: `C:\Users\%USERNAME%\AppData\Local\Hotta\Saved\Config\WindowsNoEditor`
 
#### ->Notable Engine.ini tweaks<-
 
!!! If Engine.ini is missing, first change some graphics settings in advanced settings in-game to let the game generate the file.
Add any/all of these options at the end of the file. [SystemSettings] only need to be written once if you choose multiple options
 
**Resolution Scaling** - Play in full screen at either a lower resolution or higher resolution. 100 default value. If you have a monitor with 1080p native res and want to play full-screen but at 720p, then set the value to 66. To understand it better, the formula is: (game selected resolution * screenpercentage) / 100 = what game will render at, (1080*66)/100 = 712p render resolution (and from my observation, the game's full-screen setting isn't exclusive full-screen so it uses your monitor's native res)
!!! info
	[SystemSettings]
	r.ScreenPercentage=100
 
**Shadow resolution** - may help to increase performance, I'm not sure what the default values are but 512 is typical value for low shadow settings in other games
!!! info
	[SystemSettings]
	r.Shadow.MaxCSMResolution=512
	r.Shadow.MaxResolution=512
 
**Depth of Field** - 0 off | 1 on
!!! info
	[SystemSettings]
	r.DepthOfFieldQuality=0
 
**Film Grain** - 0 off | 1 on
!!! info
	[SystemSettings]
	r.Tonemapper.GrainQuantization=0
 
**Motion Blur** - 0 off | 1 on
!!! info
	[SystemSettings]
	r.MotionBlurQuality=0
 
OR (credits to /u/maharahji)
!!! info
	[SystemSettings]
	r.DefaultFeature.MotionBlur=0
 
#### Notable Input.ini tweaks:
Add any/all of these options in the file. [/Script/Engine.InputSettings] only need to be written once if you choose multiple options

**Disable mouse smoothing** - seems to help with floaty feeling of panning camera (might also be placebo idk)
!!! info
	[/Script/Engine.InputSettings]
	bEnableMouseSmoothing=False
 
**Inverted Cameras but for controller only** - their option annoyed me to all hell, to invert on controller, mouse also gets inverted, this is to all my fellow inverted brained controller users. A deadzone setting is also available here
!!! info
	[/script/engine.inputsettings]
	AxisConfig=(AxisKeyName="Gamepad_LeftX",AxisProperties=(DeadZone=0.250000,Sensitivity=1.000000,Exponent=1.000000,bInvert=False))
	AxisConfig=(AxisKeyName="Gamepad_LeftY",AxisProperties=(DeadZone=0.250000,Sensitivity=1.000000,Exponent=1.000000,bInvert=False))
	AxisConfig=(AxisKeyName="Gamepad_RightX",AxisProperties=(DeadZone=0.250000,Sensitivity=1.000000,Exponent=1.000000,bInvert=True))
	AxisConfig=(AxisKeyName="Gamepad_RightY",AxisProperties=(DeadZone=0.250000,Sensitivity=1.000000,Exponent=1.000000,bInvert=True))
 
**Final notes:**
I reiterate, edit at your own discretion, if any of you know someone that can officially confirm this is allowed please do so and comment (discord mods are swamped and I can't get ahold of them)
These changes may also get reset when there's an update
A workaround is you set them to read-only but I personally won't do it, as it might just cause conflict and stuff when game is trying to update
 
Just make a backup of your config, when game updates, compare for any changes and merge.
You'll need to restart the game for settings to take effect, preferably even that you only tweak the settings when the game is closed. Actual in-game settings are stored in GameUserSettings.ini and there are some options there not available in-game :thonk:
Plenty more UE4 flags can be found here: https://www.pcgamingwiki.com/wiki/Engine:Unreal_Engine_4

***
### ->Further customize, save keybinds and avoid resets via Input.ini (PC only)<-
->Source: https://old.reddit.com/r/TowerofFantasy/comments/wona1v/<-
**Notes & Disclaimer:**
Input.ini is located at `C:\Users\%username%\AppData\Local\Hotta\Saved\Config\WindowsNoEditor`
Copy-paste path above to address bar of File Explorer, %username% will auto-convert to the user you're logging into to use your PC.
Or you could manually navigate to the path folder by folder.
`Input.ini` may not exist or be empty if all your keybinds are still default.
Always exit the game normally via Esc > Settings > Exit Game to save/preserve your keybinds.
The game reads & deletes the file as you are logging in, then rewrites it as game exits normally. Exit abnormally then game can't rewrite the file. You can set file attribute to read only but I personally just make a backup of the file to avoid any potential issues in case the game does need to write something to it.
I do not know if customizing bindings that are not available in-game is allowed, so edit those at your own discretion. An example is T binding
 
**Guide:**
Firstly, force the game to generate Input.ini and it's content by rebinding anything then properly exiting the game.
There are 2 sets of mappings/lines that the game auto-generates, AxisMapping and ActionMapping.
For AxisMapping, rebind any of the movement (WASD) to generate the lines (rebind W to 6 and be done with it).
For ActionMapping, rebind any of the non-movement keybind (dodge, weapon, skill etc) to generate the lines.
 
#### ->Movement Rebinds<-
Below are the lines that you want to edit. Their position in your file may be different, just look for them and take note of the negative scale value. Negative scale = opposite.
 
!!!info
 	AxisMappings=(AxisName="MoveForward",Scale=1.000000,Key=w)
 	AxisMappings=(AxisName="MoveForward",Scale=-1.000000,Key=s)
 	AxisMappings=(AxisName="MoveRight",Scale=-1.000000,Key=a)
 	AxisMappings=(AxisName="MoveRight",Scale=1.000000,Key=d)
 
There will a 3rd MoveForward and MoveRight, but that's for controller so just ignore it. And I also can confirm this way works for binding movement to ESDF. https://i.imgur.com/SOgM3aB.png
 
#### ->Action Rebinds<-
Using T binding as an example:
!!!info
	ActionMappings=(ActionName="Track",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=t)
 
Setting the flag from False to True to any of the modifier will add that modifier to the Key. So to be Ctrl+T, should be like this:
!!!info
	ActionMappings=(ActionName="Track",bShift=False,bCtrl=True,bAlt=False,bCmd=False,Key=t)
 
Or if you wanted it to be Ctrl+Q then it should be like this:
!!!info
	ActionMappings=(ActionName="Track",bShift=False,bCtrl=True,bAlt=False,bCmd=False,Key=Q)
 
And now T is free to be bound anywhere else.
 
Here are other keys that are not available in-game:
 
!!!info
	ActionMappings=(ActionName="Artifact_3",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Five)
	ActionMappings=(ActionName="Cancel",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Tilde)
	ActionMappings=(ActionName="Evade",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=RightMouseButton)
	ActionMappings=(ActionName="GmPanel",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=P)
	ActionMappings=(ActionName="Introduce",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=H)
	ActionMappings=(ActionName="Melee",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=LeftMouseButton)
	ActionMappings=(ActionName="Melee_Key",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=NumPadSeven)
	ActionMappings=(ActionName="Menu_1",bShift=False,bCtrl=False,bAlt=True,bCmd=False,Key=One)
	ActionMappings=(ActionName="Menu_2",bShift=False,bCtrl=False,bAlt=True,bCmd=False,Key=Two)
	ActionMappings=(ActionName="Menu_3",bShift=False,bCtrl=False,bAlt=True,bCmd=False,Key=Three)
	ActionMappings=(ActionName="Menu_4",bShift=False,bCtrl=False,bAlt=True,bCmd=False,Key=Four)
	ActionMappings=(ActionName="pckeyY",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Y)
	ActionMappings=(ActionName="ProfessionSkill",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=Four)
	ActionMappings=(ActionName="SwitchMouse",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=LeftAlt)
	ActionMappings=(ActionName="Vines",bShift=False,bCtrl=False,bAlt=False,bCmd=False,Key=LeftControl)
 
I find Melee_Key an interesting one when rebound, as it feels kinda nice as well to attack using keyboard presses vs constant mouse clicks. Other ones like Artifact_3 or ProfessionSkill I just don't know if it'll show up once I unlock them.
 
Lastly to view the list of supported Key values see: https://nerivec.github.io/old-ue4-wiki/pages/list-of-keygamepad-input-names.html
 
Good ones that are usable imo are MiddleMouseButton, ThumbMouseButton, ThumbMouseButton2. They're usable if set via Input.ini but not recognized if you try to set ingame.

***
### ->UE4 Engine Tweaks Guide to Improving Graphics and Performance<-
->Source: old.reddit.com/r/TowerofFantasy/comments/wpaozv/<-
**Warning:**
As always, any modding, even editing .ini files and staying within parameters of a game's graphic engine may not be supported by the game developers. Even though it's very unlikely to be an issue with developers, use at your own risk. I do so because I like to enjoy my graphics.
 
These graphic tweaks only work on PC!
I've also updated this guide with various fixes for stutter and optimizations. There's also presets for those who do not want to deal with reading through all the settings. You can copy and paste and go!
 
**Before/After with slider:**
https://imgsli.com/MTIzNzM5/0/1
https://imgsli.com/MTIzNzM5/2/3
https://imgsli.com/MTIzNzM5/4/5
https://imgsli.com/MTIzNzM5/6/7
https://imgsli.com/MTIzNzM5/8/9
https://imgsli.com/MTIzNzM5/10/11
https://imgsli.com/MTIzNzM5/12/13
https://imgsli.com/MTIzNzM5/14/15
https://imgsli.com/MTI1NTU0
https://imgsli.com/MTI1NTQ2
https://imgsli.com/MTI1NTQ3
https://imgsli.com/MTI1NTQ5
 
**Screenshots:**
I've made several screenshots as best as I can with graphic tweaks with the default max graphic settings and my own personal max settings.
 
**Before:**
Notice the lack of things in the land below.
https://preview.redd.it/l0o0aw7x5yi91.png?width=3840&format=png&auto=webp&s=e123957376247051790e845c060b3b3bc5a8f474
**After:**
Look at the stuff far away.
https://preview.redd.it/89tr14v06yi91.png?width=3840&format=png&auto=webp&s=290e22edd567cd5fb329fd0c48d50171ab964898
 
**Before:**
Notice the shadows in the meadows far away are meh.
https://preview.redd.it/avtt8tf36yi91.png?width=3840&format=png&auto=webp&s=e6908285059dfa7f057bc4d133a566880155e682
**After:**
Much better shadow and far distance rendering.
https://preview.redd.it/n835ib256yi91.png?width=3840&format=png&auto=webp&s=0057316f1cb3f5b7d3c78f6ff2caa88977eddd76
 
**More after screenshots:**
Much more details in the far distance and the shadows are better.
https://preview.redd.it/8rc0ugy76yi91.png?width=3840&format=png&auto=webp&s=bd1f1ea21e8aecab0c7d0a453566fdc2e628cb2d
Even the tower has more bushes on it!
https://preview.redd.it/mmq6tym96yi91.png?width=3840&format=png&auto=webp&s=72de73e1c9a7266144411f43dea861f925585b04
Amazing location at night.
https://preview.redd.it/kd35zsqa6yi91.png?width=3840&format=png&auto=webp&s=faecf48fc1161a78ab01171607bab66e97e24d60
 
!!!warning Important!
	Please back up the GameUserSettings.ini and Engine.ini before you do this! Always use them as a way to restore if the settings crash your game.
 
**Folder location:**
`C:\Users\%USERNAME%\AppData\Local\Hotta\Saved\Config\WindowsNoEditor`
 
#### ->Presets<-
I've created easy to use copy and paste presets for settings in the Engine.ini file. Simply copy the raw text from these pastebins and place them at the end of the file after the last line.
For high quality configs, make sure you set the graphics mode to "Original" and then exit the game first.
If you wish for more, please request below and I'll put them up as I work on different presets!
 
**Optimizations only and LoD Presets:**
Stutter Fix + Optimizations Only: https://pastebin.com/jTh3uatM - This is fixes for stuttering and optimizations only.
LoD + Stutter + Optimizations: https://pastebin.com/qeWLyWXM - Increased LoD with stuttering and optimizations. This keeps the original look of the game with better LoD.
Extreme LoD + Stutter + Optimizations: https://pastebin.com/KgXAP3HQ - This is LoD pushed out really far across the continent.
 
**Ultra High Quality Presets:**
Ultra High Quality: https://pastebin.com/Zdxrvf4y - Ultra high quality and can be heavy on performance.
Ultra High Quality + High Quality DLSS: https://pastebin.com/SDZq1zX7 - This is same as Ultra High Quality except high quality DLSS is enabled for better performance at a slight impact to image quality.
Ultra High Quality + TAA Upscale: https://pastebin.com/7u62tg7g - This is same as Ultra High Quality except an 80% resolution scale up with TAA is performed for better performance and slight impact to image quality.
 
**Performance High Quality Preset:**
Performance High Quality: https://pastebin.com/uZeQpiyH - Relatively high quality but with better performance.
 
**Integrated Graphics Performance Preset:**
Performance: https://pastebin.com/kGnHUFw3 - This is a test preset to reduce quality below the "Smooth" setting. Apply smooth setting first ingame and save and exit. Use these on top to lower it further.
 
**Steam Deck Windows Presets:**
High Quality: https://pastebin.com/1H9RC1yi
Battery Saver: WIP
 
If anyone has a lower end PC that has trouble playing the game at good FPS even with the lowest settings the game provides, let me know! I can make a preset that turns off more things that the game allows turning off.
 
Now to the configuration details.
 
#### ->GameUserSettings.ini tweaks<-
 
!!!warning
	Note: Game must be closed before any updates can be done. These files will be updated by the game upon loading and it'll reformat the file.
 
**Location:**
`C:\Users\%USERNAME%\AppData\Local\Hotta\Saved\Config\WindowsNoEditor\GameUserSettings.ini`
 
**Custom Resolutions**
These can adjust your resolution to sizes that are not supported by default even though the game can actually do it. I use this to deal with super ultrawide monitor issues (31:9).
Size is in pixels so set accordingly.
You may not have these settings yet if you have not set a resolution in game and exited.
 
!!!info
	ResolutionSizeX=3840
	ResolutionSizeY=1440
	LastUserConfirmedResolutionSizeX=3840
	LastUserConfirmedResolutionSizeY=1440
 
**Scalability Groups:**
These are used to scale quality according to UE4 standards. Basically, 0 is lowest quality and 4 is max quality. Scale these to what you feel like and if you feel like performance is hit too much, lower by 1.
Some of these settings do require some knowledge of graphic settings if you want to know exactly what each does. I can't exactly explain them all here but if you have questions, ask in this post!
sg.ResolutionQuality can be lowered between 0-100. 100 being the default resolution, and any lower should scale the resolution down.
 
!!!info
	[ScalabilityGroups]
	sg.ResolutionQuality=100.000000
	sg.ViewDistanceQuality=4
	sg.AntiAliasingQuality=4
	sg.ShadowQuality=4
	sg.PostProcessQuality=4
	sg.TextureQuality=4
	sg.EffectsQuality=4
	sg.FoliageQuality=4
	sg.ShadingQuality=4
	sg.GraphicQuality=4
 
**Frame Rate Limit**
Lets you set the frame rate beyond what is allowed ingame. I've went up to 144 fps just fine but I prefer to leave it at 120 since I didn't feel any difference and it made my graphics card work harder.
Adjust to your preferences
!!!info
	FrameRateLimit=120.000000
 
#### -> Engine.ini tweaks <-
`C:\Users\%USERNAME%\AppData\Local\Hotta\Saved\Config\WindowsNoEditor\Engine.ini`
 
All these tweaks go under a section called [SystemSettings]. You shouldn't have this section by default so you'll have to create it at the bottom of the file.
 
!!!info
	[SystemSettings]
	; post processing
	r.BlurGBuffer=-1
	r.AmbientOcclusionLevels=2
	r.AmbientOcclusionRadiusScale=1.0
	r.AmbientOcclusionMipLevelFactor=0.5
	r.DepthOfFieldQuality=3
	r.RenderTargetPoolMin=400
	r.LensFlareQuality=3
	r.SceneColorFringeQuality=1
	r.EyeAdaptationQuality=2
	r.BloomQuality=5
	r.FastBlurThreshold=7
	r.Upscale.Quality=3
	r.Tonemapper.GrainQuantization=1
	r.HighQualityLightMaps=1
	r.MotionBlurQuality=4
	r.Tonemapper.Quality=5
	r.ToneMapper.Sharpen=1
	r.ParticleLightQuality=2
 
!!!info
	; LOD
	r.ViewDistanceScale=40
	r.SkeletalMeshLODBias=-2
	r.MipMapLODBias=-2
	foliage.LODDistanceScale=4
	r.StaticMeshLODDistanceScale=0.25
	r.SkeletalMeshLODRadiusScale=0.25
	r.LandscapeLODBias=-2
	r.LandscapeLODDistributionScale=3
	r.LandscapeLOD0DistributionScale=3
	r.LODFadeTime=3
	r.UITextureLODBias=-2
 
!!!info
	; Foliage
	foliage.DensityScale=1.0
	grass.DensityScale=1.0
	foliage.DitheredLOD=5
 
!!!info
	; shadow
	r.ShadowQuality=5
	r.Shadow.CSM.MaxCascades=10
	r.Shadow.MaxResolution=8192
	r.Shadow.MaxCSMResolution=8192
	r.Shadow.RadiusThreshold=0.01
	r.AllowLandscapeShadows=1
	r.Shadow.DistanceScale=5
	r.ContactShadows=1
	; FilterMethod=0 is standard style. 1 = PCSS, for more diffused softer realistic shadows. Pick based on preference.
	r.Shadow.FilterMethod=0
	r.Shadow.TexelsPerPixel=3
	r.LightMaxDrawDistanceScale=10
 
!!!info
	; Adds cool bloom cross lighting
	r.Bloom.Cross=0.6

!!!info
	; Enable screen space global illumination. Very gpu intensive. Disable if low fps.
	r.SSGI.Enable=1
	r.SSGI.HalfRes=1
	r.SSGI.Quality=4
 
These settings will take a while to explain but you can always leave default the ones you don't need by deleting the line.
In general for LOD and pop in issues, you want to leave the # lod section. This makes the big difference
The shadow section is one of the more heavy sections. If you're okay with shadows as it is now, remove this section.
For r.Shadow.FilterMethod=1, you may use 0 if you want a more "anime" shadow look. With 1, it uses a more realistic shadow casting system but the shadows are less sharp and more dithered and faded based on distance.
Post processing section generally increases the AA quality and other post processing effects like blur, lens flare, some lighting. This can impact performance a lot so remove it if it's not running well.
r.PostProcessAAQuality=5 This can be lowered to 4 if you're not using DLSS and you feel like the FPS impact is too high. You can go even lower to 3. If you lower to 1 or 2, this will use FXAA instead of TAA.
 
#### ->Engine.ini (cont.) Tweaks for DLSS Settings<-
Some people may not like DLSS settings so you can turn this completely off under SystemSettings.
Add the line:
!!!info
	r.NGX.Enable=0
 
If you want to increase the DLSS quality instead :
!!!info
	r.NGX.DLSS.Quality=1
   
-2: Ultra Performance
-1: Performance (default)
0: Balanced
1: Quality
2: Ultra Quality
 
I recommend Quality over Ultra Quality since the performance loss is high and I don't think there's much visual difference. Quality is better than the default Performance already.
 
DLSS Sharpness can be set too, ranging between -1.0 to 1.0, from soften to sharpen image.
!!!info
	r.NGX.DLSS.Sharpness=0.3
 
With DLSS disabled, you can now use the extra settings:
!!!info
	r.ScreenPercentage=100
You can set this below 100 to scale the internal resolution below 100%. This helps if you're having trouble reaching your desired framerates.
If you set this above 100, it acts as supersampling. Basically 150 means 150% resolution you can display. It can help sharpen the image a lot if you have the spare GPU power.
 
To adjust your anti alias, do so in the game menu between 0x - 8x.
 
**Enabling enhanced TAA:**
!!!warning TAA requires DLSS to be disabled!
This enables Gen 5 TAA for the game and it should be better than the default for performance and quality:
!!!info
	; Temporal AA upgrades, only works with dlss off.
	r.PostProcessAAQuality=5
	r.TemporalAA.Algorithm=1
	r.TemporalAASharpness=1
	; Increase to reduce ghosting at cost of performance: (4, 8=default, 16, 32, 64).
	r.TemporalAASamples=16
	; Set 1 when using r.ScreenPercentage < 100 to use TAA for better upscaling.
	r.TemporalAA.Upsampling=1
	; Use to scale with TAA. Set < 100 when FPS goals not met. 80 is generally decent for higher resolution.
	r.ScreenPercentage=80
 
You can actually combine this with r.ScreenPercentage=80 for much better FPS and the screen quality will look 99% similar to native res. It's very nice to reach the desired FPS.
 
#### ->Engine.ini (cont.) Tweaks for Ultrawide monitors<-
This prevents the game from zooming too close and chopping stuff off on really wide monitors.
There are some bugs I noticed for it so it might not be preferred, like the full screen UI effects scale strangely for a few abilities
Try it out to see if you like it. It also makes 31:9 displays workable (with the defects I mentioned above)
 
!!!info
	[SystemSettings]
	r.MaterialQualityLevel=2
 
!!!info
	[/Script/Engine.LocalPlayer]
	; Maintain aspec ratio for ultrawide monitors. 
	; Enable if you have wide monitor and you feel like zoom is too close.
	AspectRatioAxisConstraint=AspectRatio_MaintainYFOV
 
#### ->Engine.ini (cont). Optimizations<-
These are general optimizations done to the shader systems and texture streaming. This can help on high end systems that experience more stutter than it should.
I would leave these on for high graphics mode and also for low graphics mode. It seems to smooth out the game stutter for me to a more bareable amount. There are a few items in the list below that should be deleted for low end systems, so make sure to remove them if they do not apply to your system.
 
!!!info
	[SystemSettings]
	; optimizations
	niagara.CreateShadersOnLoad=1
	r.CreateShadersOnLoad=1
	D3D12.PSO.DiskCache=1
	D3D12.PSO.DriverOptimizedDiskCache=1
	r.HZBOcclusion=0
	r.AllowOcclusionQueries=1
	r.Shaders.Optimize=1
	r.ShaderPipelineCache.StartupMode=3
	r.ShaderPipelineCache.Enabled=1
	r.ShaderPipelineCache.ReportPSO=1
	r.ShaderPipelineCache.GameFileMaskEnabled=0
	r.ShaderPipelineCache.LazyLoadShadersWhenPSOCacheIsPresent=1
	r.ShaderPipelineCache.BatchSize=50
	r.XGEShaderCompile=1
	r.XGEShaderCompile.Mode=1
	r.XGEShaderCompile.Xml.BatchGroupSize=256
	r.XGEShaderCompile.Xml.BatchSize=16
	r.XGEShaderCompile.Xml.JobTimeout=0.500000
	r.GPUParticle.Simulate=1
	r.GTSyncType=1
 
!!!info
	; might help with lag and stutter at cost of input lag
	r.OneFrameThreadLag=1
 
!!!info
	; Allow tearing when you have a VRR capable monitor
	r.D3D11.UseAllowTearing=1
	r.D3D12.UseAllowTearing=1
 
!!!info
	; Extra stutter optimizations for streaming and GC
	r.Shadow.WholeSceneShadowCacheMb=2000
	gc.TimeBetweenPurgingPendingKillObjects=900
	gc.NumRetriesBeforeForcingGC=5
	gc.MinDesiredObjectsPerSubTask=20
	s.ForceGCAfterLevelStreamedOut=0
	s.ContinuouslyIncrementalGCWhileLevelsPendingPurge=0
	r.ShaderPipelineCache.BatchTime=2
	r.ShaderPipelineCache.BackgroundBatchTime=0
	r.ShaderPipelineCache.PrecompileBatchTime=0
	s.AsyncLoadingTimeLimit=2
	s.PriorityAsyncLoadingExtraTime=1
	s.UnregisterComponentsTimeLimit=2
	s.LevelStreamingActorsUpdateTimeLimit=2
	s.PriorityLevelStreamingActorsUpdateExtraTime=1
	s.LevelStreamingComponentsUnregistrationGranularity=10
	s.LevelStreamingComponentsRegistrationGranularity=50
	r.Streaming.NumStaticComponentsProcessedPerFrame=500
 
!!!info
	; Enable this if you're still getting some stutter. Experimental.
	; r.LevelStreamingDistanceScale=999999
 
!!!info
	; Extra optimizations for streaming
	r.Streaming.Boost=1
	r.Streaming.FullyLoadUsedTextures=1
	r.Streaming.HLODStrategy=2
	r.bForceCPUAccessToGPUSkinVerts=True
	r.Streaming.FramesForFullUpdate=2
	r.Streaming.DropMips=0
	r.Streaming.LimitPoolSizeToVRAM=0
	r.Streaming.MipBias=0
	r.Streaming.UseAllMips=1
	r.Streaming.UseMaterialData=1
	r.Streaming.UseNewMetrics=1
	r.Streaming.UsePerTextureBias=1
	r.Shaders.Optimize=1
	r.Shaders.FastMath=1
	r.UseShaderCaching=1
	r.UseShaderPredraw=1
	r.UseAsyncShaderPrecompilation=1
	r.TargetPrecompileFrameTime=13
	r.PredrawBatchTime=13
	r.AccelPredrawBatchTime=0
	r.AccelTargetPrecompileFrameTime=0
	r.Streaming.DefragDynamicBounds=1
	r.Streaming.PoolSize=8000
	r.Streaming.MaxTempMemoryAllowed=1000
 
Some other possible optimizations for stutter. I suggest not trying this until you tested all the above optimizations. This I haven't fully tested but if someone tries it and it helps, let me know!
 
!!!info
	; network stuff that might help with network stutter
	net.ActorChannelPool=1
	net.AllowAsyncLoading=1
	net.AllowReliableMulticastToNonRelevantChannels=1
	net.DormancyEnable=1
	net.DormancyValidate=1
	net.IpConnectionUseSendTasks=1
	net.IpNetDriverReceiveThreadQueueMaxPackets=100000
	net.IpNetDriverUseReceiveThread=1
	net.MaxRepArrayMemory=65535
	net.MaxRepArraySize=65535
	net.OptimizedRemapping=1
	net.ShareShadowState=1
	net.UseAdaptiveNetUpdateFrequency=1
 
As I test more and find better options, I'll edit this post. Let me know in the comments if you tried them or need some ideas!
