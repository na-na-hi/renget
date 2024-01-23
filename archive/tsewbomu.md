#->Many, Many More Nights with Pico 4 Pro<-
#####->The Index is still better<-

![A newer picture of the abomination](https://cdn.discordapp.com/attachments/1149842833671458897/1193683478332575825/PXL_20240107_223120883.jpg)

!!! note Author's note:
	If you're unfamiliar with the Pico 4 Pro or want some more context to these extended thoughts I highly recommend reading my first impressions review [here](https://rentry.org/yw5mm).

###->The Problems With Pico<-
While most Pico users it seems will tell you they have no issues whatsoever, I just get the feeling they are either gaslighting others, gaslighting themselves, or simply not as critical as I am in my evaluation of the headset, because this has not been my experience at all. The Pico has had several issues in my experience. Many of these are mild and certainly not deal-breakers, but some are really, really annoying and certainly could be deal-breaking depending on your use or simply when considered altogether. The following are the issues I've identified in my use, ordered by what I consider the most deal-breaking to least:

- Degraded encoding performance (in some circumstances)
- Excessive battery drain
- Microphone audio latency
- Color banding
- Headset comfort and weight
- Audio performance
- Poor software support
- Mismatched lens clarity

###->The Solutions I Tried<-
The following is a list of solutions I tried, some to fix various issues. I'll outline my thought process, what I was trying to fix, and how it went.

#####Different streaming software
**Pico Streaming Assistant** is pretty bare-bones, but it does have some settings you can tweak. I didn't really notice much difference in terms of encoding performance between H.264 and HEVC (though it likely does affect encoding latency to some degree). Color banding was the same between both, which was the main thing I thought it would help, and neither fixed the microphone latency issue. I did find the image to be way over-sharpened by default, and was able to adjust that to get a nicer looking picture. My recommendation is around 30-50% over the 70% sharpening it uses by default.

**ALVR** was the worst I tried, but also the one I fiddled with the least. There are so, so many options in it, many of which will completely break things if you set them wrong. Perhaps somewhere in here is the magic bullet to fixing everything and making overall latency as low as possible but damned if I'm going to jump through all those hoops to find it. With seemingly reasonable settings it had horrible latency (like as in you could count the delay between moving your head and seeing the display move in the hundreds of milliseconds).

**Virtual Desktop** was, unsurprisingly, the best of the options I tried. HEVC 10-bit encoding at 200Mbps is remarkably clear and sharp, and did fix the color banding. It's important to note that since the Pico and Index only use 8-bit panels this simply made streaming comparable to the Index in color reproduction, not better. When it was working it worked pretty well, but it still didn't prevent horrible encoding degradation when link speed dropped (in admittedly very challenging situations, but still not something you ever deal with with a properly wired headset). Here's probably the worst example from when I was playing Pavlov over Virtual Desktop. This is using HEVC 10-Bit Encoding at 200Mbps, it's possible that H.264 at some crazy high bit-rate would solve this sort of issue but then of course everything would still look like ass just in a different way.
![If you look real close, you can almost tell there's supposed to be a nameplate over his head](https://cdn.discordapp.com/attachments/588239278841135105/1187532797624201347/Screenshot_VirtualDesktop.Android_2023.12.09-02.27.55.571_122.jpeg)

It's worth noting here that if you use anything but Pico Streaming Assistant you lose out on face tracking (ALVR supports basic eye tracking only, and Virtual Desktop supports neither). So you can have good color reproduction or you can have face tracking, you can't have both.

#####Different connection methods
**The ASUS RT-AX3000** is my default router. It's no slouch, but still didn't prevent video from occasionally going to shit. The image above from Pavlov was while I was streaming over this router. It's not dedicated, it's in another room, but only about 15-20 feet away tops. It also has every device in the apartment connected to it. I live in an apartment with like 20+ other networks in range, meaning interference is not ideal, but this is hardly an uncommon situation, so I really expected it would work better.

**The PrismXR Puppis S1** is what I tried to help eliminate the router problem. If you're unfamiliar, this is a little USB-3 dedicated router that plugs directly into your PC, and offers a connection at a maximum 2402Mbps via WiFi 6/802.11AX directly to your headset and only to your headset. It gave me somewhat better link speeds from the Pico to my PC (anywhere from ~720-1200Mbps at a distance of a whopping 3-6ft), but introduced its own problem of being shit at high-resolution video transmission times. Works ok at lower resolutions, but then you're not getting the sharp display the Pico is capable of which is half the fucking point of using the Pico, now isn't it?

**A motherfucking USB-C cable** is the most recent thing I tried, hoping to solve a whole raft of issues. I picked up a powered link cable, detached the battery pack from the Pico, and reattached the default back pad. This had the nice effect of making the Pico much more light, and thus more comfortable, but also unfortunately without taping a USB-C dock somewhere to the damned thing and home-gaming my own dual-cable tether to both power and data I can't have both the Logitech Chorus and the data link going into the headset at the same time, so if I want to use a wired link to give me the lowest latency, no possible interference problem, and infinite battery life, I have to put up with frankly disappointing audio. Also even a wired connection didn't make the microphone latency any better, which leads me to believe this may be some internal audio recording latency with the Pico itself, as I've completely ruled out the various streaming applications and connection methods as a cause. Just in case you were wondering, color banding is a side-effect of video compression, so wired connections don't solve it as you're still encoding and decoding video.

#####The BoboVR P4 Twin B2 Battery Upgrade Kit
This was a suggestion from a couple of the people who regularly use the Pico as a way to get more wireless battery life out of it, and boy howdy are you gonna need extra battery if you want to use this thing for any length of time. The Pico itself will eat its own battery in roughly 90-120 minutes while streaming. It chews through each of these add-on batteries in about 90 minutes as well. This gives you a total of about 4-5 hours of play on 3 fucking batteries, and the batteries take between 2-3 hours to charge. Now this is probably enough for many people, but I spend upwards of 8 hours in VR per night on the weekend, so it's frankly just not enough. If you're like me, you're gonna want to either be wired to a much, much larger battery (BoboVR B2 batteries are about 5200mAh each, so you're talking like 20,000mAh if you want to comfortably make it through the night), which I don't recommend keeping on the headset itself, or just do what I have done and get a 16ft USB-C cable and plug in.

Additionally, this kit makes the Pico significantly heavier, and also makes the space from the face gasket to the head strap pad a fair bit smaller, so if you have a melon of the larger persuasion, things get kinda tight.

#####A motherfucking USB-C cable (again)
Because you can't have battery-life issues if you're not using a battery. Assuming that, like me, you don't really care about the cable and just wanted a sharper, clearer headset with fun face-tracking features, just do this. 16ft USB-C cables are only like $20 and voila, you never have to worry about battery life, and you have a lighter headset without a big honkin' battery attached. Highly recommended.

#####The Logitech Chorus
Probably the jankiest upgrade on this list, as it has to be either taped or zip-tied to the Pico's arms, and covers up the volume buttons. Necessary if you want anything approaching Index audio and hate having things in or on your ears. Additionally, if you want to supply enough power to power the Pico you **will need** a USB-C audio/power splitter, as the Logitech Chorus does not pass through enough power to not suffer battery drain. You can replace this with your audio solution of choice (including just using the built-in audio) but as I said before I am spoiled by the Index so wanted something similar.

#####The VRCover Cloth interface cover
It's... fine. Nice if you want a washable interface cover and find the default interface comfortable enough. For me though the default interface is not particularly comfortable. It's not terrible, but it's very thin at the forehead, so presses into it too much. If you feel the same, skip this, and go for the next thing instead.

#####The AMVR Face Cover
This was probably the single most comfort-improving upgrade I tried. There is a little light bleed through the venting in the face gasket, but that never really made for much of a distraction, and as a slight bonus you get a wee bit closer to the lenses for more FOV. **However** this also does interfere with the auto-IPD feature of the Pico, it read my IPD as being much closer together than they actually are, so if you use one, just set this manually. Easy recommendation.

###->In Conclusion<-
With the amount of money I have spent trying to make the Pico workable, I could easily have bought a much better headset, up to and including the Bigscreen Beyond. Is it possible that I just have some exceptionally shit configuration that makes the Pico extra bad? Maybe, but I'd say if you need more than a 3700X, 3080 12GB, and 64GB of 3200Mhz RAM to get good wireless VR then wireless VR is still the problem. In the end, you have to make the decision whether or not to get one for yourself, but with all the people I've seen shilling the Pico 4 Pro I thought it prudent to outline my less-than-stellar experience with mine so that you have some idea what you *might* be in for should you buy one.

!!! info Update:
	Turns out the firmware update mentioned before came out much sooner than I anticipated as version 5.9.1. I have also now tried the beta version of Pico Connect. I can confirm that 5.9.1 did nothing to solve the microphone latency, and Pico Connect, while certainly nicer than Streaming Assistant, isn't some life-changing upgrade. Encoding quality is much improved. Colors are also much better, but not to the level of 10-bit HEVC on Virtual Desktop. Latency overall seems to be a fair bit better as well. I'd say with this you don't really need to spend money on Virtual Desktop, it's good enough. I have also since confirmed that I am not the only one with a Pico that experiences the microphone latency, and have additionally tested it in Pico's standalone VRChat and found that the latency between talking and the actual audio transmission does indeed seem to be internal to the Pico, as it is present there too. While it's certainly not the end of the world, this is pretty not-ideal, especially for social VR.

Given my experiences now with both wired and streaming VR I'm going to make some recommendations based on what you want out of a headset below (assuming you're swapping from an Index). Feel free to take them into consideration (or don't I'm not your dad).

###->My Recommendations<-
#####If you just want higher resolution and a smaller, lighter headset:
Get the Bigscreen Beyond. No batteries, no streaming, no bullshit. Yes, you will have to figure out audio (for now, at least), but you cut out so much other crap to put up with it's more than worth the price of admission. As I've already outlined above you can easily spend more trying to make wireless VR as good as this will be out of the box.

#####If you want face and eye tracking:
Get the Quest Pro. One of the things I tested to make sure I wasn't going insane and these really were problems with the Pico was trying out streaming on my Quest 2. Steam Link is fucking fantastic and so simple out of the box, features better video encoding than Streaming Assistant, and I did not experience the same microphone delay that I do with the Pico. Additionally, the built-in speakers on the Quest are, while still nowhere near as nice as the Index, at least passable, assuming they're at least as good as the Quest 2. The main downside here is the Quest Pro's microphone fucking sucks, but it's serviceable, and strapping a mod mic or something else on it (while not ideal) is better than also having to strap better speakers and strap mods and faffing about with 3 different software solutions to try and make things work this well.

#####If you want to ditch the wire at any cost:
Get a Quest 3. Like the Quest Pro it has a garbage microphone (somehow even worse, frankly), but you're getting roughly equivalent resolution to the Pico and (from what I hear at least) much better lenses, which I'm inclined to believe as the Quest 2's lenses are also pretty stellar. Additionally, you get AV1 decoding support, faster Wi-Fi, probably better quality LCD panels, a decently small and light headset, and if you care about standalone at all, there is basically nothing on the Pico store that you would actually want that you cannot get on the Quest. As a nice bonus you also get actual decent after-sales *and* aftermarket accessory support.

In short, there's really no reason to go for a Pico 4 Pro at this point. If money is a problem, used Quest Pro headsets in good condition are either the same price or cheaper than buying a Pico 4 Pro if you really want face tracking, and if you don't, well... the Index is still the all-rounder king, there's honestly nothing worthwhile to upgrade to yet (at least in my opinion). At the very least, if your heart is set on a Pico 4 Pro, I hope everything I've covered here will help you pick out what you need to make it the best it can be, and avoid the things that won't.

->*See you in VR.*<-