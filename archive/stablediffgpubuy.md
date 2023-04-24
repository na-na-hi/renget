#GPU Buyer's Guide for Stable Diffusion
-> or <-
# Hentai for Cheapskates
!!!info If I talk about something and I don't link it specifically then it's almost certainly in one of these four:
	https://rentry.org/sdupdates
	https://rentry.org/sdupdates2
	https://rentry.org/sdupdates3
	https://rentry.org/sdgoldmine
!!!info I don't know everything
	If I'm talking shit unverifiably or new information comes to light, I'll update this when I can.
[TOC2]
##What to look for in a GPU:
###Support:
####ROCm is a waste of bits
!!!danger ROCm Documentation
	The documentation for ROCm is pretty dreadful so it's taken me a while to compile the official info about the latest versions.	
!!!info The following documentation exists but is about a billion years old and quite out of date:
	https://community.amd.com/t5/knowledge-base/amd-rocm-hardware-and-software-support-document/ta-p/489937
#####OS Support:
Up-to-date ROCm is only officially supported on the following linux distros and nothing else:
* CentOS/RHEL (nobody sane would run this as a desktop OS)
* Ubuntu 20.04.5 LTS and Ubuntu 22.04.1 LTS (Until they update the kernel for either and it breaks again)
* Versions 5.2.3 and prior support Ubuntu 18.04 LTS if you're a caveman

The BASED Arch community, taking advantage of ROCm's open-source nature, decided to go ahead and do AMD's work for them, so if you use an Arch-based distribution you are largely home-free!
##### GPU Support
UP-TO-DATE ROCM IS ONLY OFFICIALLY SUPPORTED ON THE FOLLOWING GPUs AND NOTHING ELSE:
* AMD DATACENTER CDNA CARDS (UNLESS YOU'RE JEFF FUCKING BEZOS YOU'RE NOT BUYING ONE FOR HENTAI)
* RADEON PRO RDNA2 CARDS (YOU'RE NOT GETTING ONE OF THESE USED AND THEY'RE UNBELIEVABLY EXPENSIVE)

RDNA2 Consumer cards will almost certainly all work with the official AMD ROCm distribution, though if you run into an issue AMD will laugh you out of the Github issues. RDNA3 cards appear to work now after 5.4.1 but is not officially supported.

Fortunately, the BASED Arch community pulled through again, and the AUR distribution of ROCm supports more cards than the official AMD version.

CARDS THAT WILL PROBABLY WORK IF YOU USE THE COMMUNITY-PROVIDED ROCM FOR ARCH LINUX, UNVERIFIED:
* Polaris (RX 480, RX 590, ETC) (SLOW)
* Vega 64/56 and other Vega dGPUs including the workstation cards, iGPU unlikely at best
* Radeon VII (Actually maybe a good option if it didn't have a habit of cooking itself to a Code 43 death)
* RDNA1 GPUs, Potentially as low as Rx5300 (MAY UPDATE IF MORE INFO OBTAINED)
* RDNA2 GPUs, Potentially as low as iGPU, which seems untested (MAY UPDATE IF MORE INFO OBTAINED)
* RDNA3 GPUs

!!!note Helpful information for masochists who aren't going to take the easy route with Arch:
	PYTORCH AND ROCM ON UNSUPPORTED GPUs:
	https://github.com/RadeonOpenCompute/ROCm/issues/1743
	AMD GPU GFXxxx CODENAMES HERE, FOR HSA_OVERRIDE_GFX_VERSION TO A SUPPORTED GPU:
	https://llvm.org/docs/AMDGPUUsage.html#memory-model-gfx6-gfx9
	(GFX1030 = HSA_OVERRIDE_GFX_VERSION=10.3.0)
	ADDITIONAL GUIDE:
	https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-AMD-GPUs
!!!warning Architectural considerations
	On architectures older than Vega you will likely **NEED** ```--precision full --no-half```
	On architectures Vega or newer you shouldn't need it, if you do then something is probably broken
	APPLYING THOSE COMMANDLINE FLAGS **WILL** EAT INTO YOUR THEORETICAL PERFORMANCE VS IF YOU DIDN'T NEED THEM
!!!danger AMD
	DO NOT BUY AN AMD GPU FOR THIS UNLESS YOU ARE ABSOLUTELY CERTAIN YOU WILL BE ABLE TO MAKE IT WORK WITH YOUR EXACT SETUP. FOR RDNA2 AND NEWER IT WILL LIKELY HAVE ISSUES EVEN UNDER WINDOWS. FOR ANYTHING ELSE UNDER WINDOWS GOD HELP YOU. IF YOU BUY ONE SPECIFICALLY TO GET A GOOD DEAL ON A GPU FOR STABLE DIFFUSION YOU HAVE SIMPLY MADE THE WRONG CHOICE. 


####NVIDIA'S Compute support is a CAKEWALK
After fighting ROCm for 4 days I tried to use the old 960m integrated to a laptop I own, and you know what?
IT JUST WORKED, DESPITE:
* BEING FROM A WEIRDASS GENERATION (MAXWELL 1 VS 900 SERIES'S MORE PROPER "MAXWELL 2")
* BEING FUNCTIONALLY AN EIGHT YEAR OLD GPU FROM 2014, THE 750 Ti
* BEING A MOBILE GPU WITH SHIT COOLING
* BEING A 2GB CARD
* NOT SPECIFYING ```--precision full --no-half```
* BEING COMPLETELY UNREASONABLE FOR COMPUTE TASKS AS A RESULT OF ALL THE ABOVE

THE ONLY ACCOMODATION MY WEIRDASS MOBILE GPU NEEDED WAS ```--lowvram```!

!!!warning 16xx series
	GTX 16XX SERIES CARDS WILL REQUIRE RUNNING WITH ```--precision full --no-half``` BECAUSE NVIDIA SOLD GAMERS SOME BROKEN SHIT AND HOPED THEY WOULDN'T NOTICE
	UPDATE: THERE ARE WAYS TO AVOID THIS BUT THE 16XX SERIES WOULD STILL BE A TOTAL WASTE OF MONEY TO BUY
	old.reddit.com/r/StableDiffusion/comments/xz7qg9/nvidia_gtx_16xx_fix_no_more_precision_full_nohalf/	
!!!info ```--precision full --no-half```
	If you are running Stable Diffusion on an Nvidia card that isn't 16xx series and you need this to get image outputs, then something is broken. Either WebUI is broken, your drivers are broken, or something else is broken. You are losing performance and maximum possible generateable image size by having these turned on.
	Some cards may occasionally yield complete black images without ```--no-half-vae```, which is *not* the same and *will not* noticeably impact performance
!!!info Which cards work
	As far as I can test, any 2GB or larger Nvidia card of Maxwell 1 (745, 750, and 750ti, but none of the rest of the 7xx series) or newer can run Stable Diffusion. Performance will vary. There is one Kepler GPU, the Tesla K80, that should be able to run Stable Diffusion, but it's also a weird dual GPU card and you shouldn't bother with that. I wouldn't place any bets how long it will continue to be supported.
!!!note Kepler
	As noted in an info box above, there is one Kepler card that Stable Diffusion should run on. If you can make Stable Diffusion work correctly, fully utilizing both GPUs of a Tesla K80 (which is a dual GPU card), and somehow get me the screenshot with stable diffusion open and nvidia-smi for both GPUs, then I will post the screenshot and credit you here.

####Intel Arc SOMEHOW enters the ring
Somehow Arc works with Stable Diffusion now
It's only under Linux and it's about as fast asn an RTX 3060, which is admittedly pretty quick
https://github.com/rahulunair/stable_diffusion_arc
Arc actually is an interesting deal if you're not a gamer and don't fear abandonment
The 16GB A770 IS $349
The cheapest 3060 I see new right now is $369 and only has 12GB of VRAM
!!!info FP16, etc
	In regards to architecture, as best I can tell, Arc support FP16-in-memory and has doubled-rate FP16. In addition to both of those things, if Torch ever receives full XMX support then Arc is likely to have even more FP16 power to bring to bear. I believe the A770 should be capable of 66 TFLOPs FP16, but maybe my math is wrong or the Anandtech article I'm reading about the architecture is mistaken. Whether it ends up memory bottlenecked before it could use all its FLOPs, I don't know.

### VRAM Size
According to a survey taken of about 60 stable diffusion users:
6GB cards should largely be able to generate 1024x1024 images,
8GB cards should largely be able to generate  1280x1280 images,
Some 12GB cards might be able to generate 2048x2048 images, sample size too low to be sure, and
24GB cards should all be able to generate 2048x2048 images.
READ ON FOR MORE DETAIL

#### Raw size: size *DOES* matter
VRAM Size is relatively easy: more VRAM is better!
Most recommend 10GB+ to be able to do everything Stable Diffusion can offer.
If you just want to generate images, cards as low as 4GB can be competent, but DO NOT BUY A 4GB GPU FOR STABLE DIFFUSION.
I have taken surveys that imply cards 12GB and up should be able to generate 2048x2048 images, which realistically should be enough for anybody.
Keep in mind if the GPU you are using for Stable Diffusion is your main GPU, you will also have the programs on your computer using VRAM, in which case a 12GB card *WILL NOT* have 12GB of free VRAM.

!!!info ```--lowvram``` and ``--medvram``
	If you want to squeeze the most out of a small card, ```--lowvram``` AND ```--medvram``` are your friends. Pick whichever you need in order to fit Stable Diffusion in your memory size, and prefer ```medvram``` over ```lowvram```. Medvram will slow down your generation times vs normal, but it will do so less than Lowvram will. With Lowvram my 2GB 960m and 2GB GT1030 were both perfectly adequate at generating 512x512 images, and sometimes higher resolutions too.
!!!danger 8GB
	DO NOT GO OUT AND BUY A CARD WITH ANY LESS THAN 8GB OF VRAM FOR STABLE DIFFUSION UNLESS YOU ARE THE POOREST WEEB ALIVE.

#### The VRAM Deception: It matters how you use it
A previous version of this guide had a much more complex version of this section based on independent reseaerch, sinc eno other sources I could find could answer my questions.
The new version is much simpler:
1. DO NOT BUY 16xx CARDS OR ANY AMD CARD OLDER THAN RDNA2
2. ANY CARD THAT YOU WOULD EVER CONSIDER BUYING FOR STABLE DIFFUSION WILL SUPPORT FP16-IN-MEMORY, which will allow the card to store twice as much per gigabyte as will be possible when CPU rendering, or rendering on a card without FP16-in-memory 
	a. For NVIDIA GPUs this includes Maxwell 1, Maxwell 2, Pascal, Turing, Ampere, Lovelace, and presumably whatever comes after.
	b. For AMD, technically every card since Vega should support this, but RDNA2 and RDNA3 definitely do and will be the least difficult generations to make work.

If you become confused in the performance section following this, know that FP16-in-memory and doubled-rate FP16 are separate features.

!!!info Why twice as much per gigabyte?
	FP16 is half the size of FP32, so two FP16 values can fit in the same memory space as a single FP32 value.
	It's a theoretical possibility that FP16 would reduce quality, but side-by-side comparisons have shown no difference so far.
	

### Performance
Consider "FP16" and "Half" to be equivalent if I use one or the other. 
Consider "FP32" and "Single" to be equivalent if I use one or the other. 
Consult the following Botnet Sheets link for real benchmarks from people who own more GPUs than I do:
https://docs.google.com/spreadsheets/d/1Zlv4UFiciSgmJZncCujuXKHwc4BcxbjbSBg71-SdeNk/edit#gid=0
(OPEN IN INCOGNITO OR BE DOXXED)
In short, "Newer GPU faster", with some caveats...
For theoretical performance or for unbenchmarked GPUs keep reading.
####FP16
FLOPs are the actual compting power being used to generate your anime girl. They're named this way because computer scientists observed what the computer was drawing anime tiddies doing.
More FLOPs is more fast.
Some cards support doubled-rate FP16 and as such can do it at twice the speed of single-precision.
If they can, then their "Half" rate will be twice their "Single" rate.
If they can't, th en their "Half" rate will likely be the same as their "Single" compute rate, either because they just do fp16 at that speed, or because they're Pascal and convert to FP32 and back to use the faster Single compute instead of Pascal's much much slower FP16 compute rate.
!!!info Pascal
	Despite the weird floating point conversion shuffle, Pascal cards will still see a benefit from computing in FP16 because the smaller precision will save memory bandwidth, which can be a bottleneck for some cards.

!!!info You can find this yourself
	TechPowerUp lists half/single/double TFLOP compute rates with their GPU spec pages.
	https://www.techpowerup.com/gpu-specs/geforce-rtx-2060-12-gb.c3836 <- HALF IS 2x SINGLE PERFORMANCE
	https://www.techpowerup.com/gpu-specs/geforce-rtx-3060.c3682 <- HALF IS 1x SINGLE PERFORMANCE
	https://www.techpowerup.com/gpu-specs/geforce-gtx-1060-6-gb.c2862 <- HALF IS 1/64th SINGLE PERFORMANCE
	(SINGLE COMPUTE WILL BE USED AUTOMATICALLY)
	Wikipedia has TFLOP compute rate listed next to the GPUs in the lists of AMD/NVIDIA GPUs
	https://en.wikipedia.org/wiki/List_of_AMD_graphics_processing_units
	https://en.wikipedia.org/wiki/List_of_Nvidia_graphics_processing_units

!!!info Botnet Sheets
	THE PERFORMANCE TESTING SPREADSHEET ABOVE ALSO HAS HALF/SINGLE TFLOP COMPUTE RATE LISTED


**Architectures with known doubled-rate FP16 that's known working for Pytorch (and thus Stable Diffusion):**
* Turing (NOT AMPERE THOUGH)

**Architectures taht should maybe have working doubled-rate FP16 for Pytorch (and thus Stable Diffusion):**
* AMD cards Vega or later

!!!warning GP100
	GP100 appears to support double-rate FP16 but does not. See more about this in "Other Considerations" below.


####Memory Bandwidth
FP16-In-Memory apperas to somewhat improve performance, which I am inclined to say is a memory bandwidth thing. Memory bandwidth can either be the bottleneck or utterly irrelevant depending on the card.
I have benchmarks from a 3080 user who experienced substantial uplift from overclocking his video memory and underclocking his GPU core. If this is the case, it should apply to a lot of the 30xx series.

Don't worry about this too much when GPU shopping, odds are it won't have an insane impact unless the card has an insane imbalance between compute and bandwidth.

!!!info Insane imbalance between compute and bandwidth
	I suspect Lovelace may be memory bottlenecked quite significantly, the 4090 having the same memory bandwidth as the 3090Ti and it having such an enormously higher amount of compute. The enormous L2 cache increase probably helps a lot but there's only so much you can do about not having enough bandwidth to your VRAM.

####xformers
Most people who try xformers report a greater than 10% performance uplift, the least certain uplifts being from Pascal users.
RTX Series cards are likely to observe a greater uplift from xformers than Pascal/Maxwell cards. Personally I observed a greater than 50% performance uplift. It is also supposed to reduce VRAM usage by quite a bit, which I also observed.
Results may vary. Test it, and if you get good performance results, consider keeping it. 
"--xformers" is a supported default command line option for RTX 30xx and up, other cards will either need to build xformers or ~~let a random channer mine bitcoin on your PC~~ use a prebuilt xformers binary
See others' guides for more information about that.

!!!warning DETERMINISM
	IT HAS COME TO MY ATTENTION THAT XFORMERS HAS A HABIT OF MAKING GENERATED IMAGES SLIGHTLY DIFFERENT EACH TIME - THIS APPEARS TO JUST BE A SIDE EFFECT OF HOW XFORMERS WORKS AND NOT A BUG.
	https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2958#discussioncomment-4024359

### Other Considerations
DO NOT BE SCARED AWAY BY THE QUADRO GPUs. IF YOU WANT LOTS OF VRAM CHEAP THEY CAN BE AN EXCELLENT DEAL, AS LONG AS IT'S NOT KEPLER AND YOU'RE WILLING TO BE PATIENT.
!!!info Architectures
	There is a reason I've usually been referring to architectures rather than card numbers (vega, rdna1/2, kepler, maxwell 1, maxwell 2, pascal, ampere, turing, etc), and that reason is that one GPU of a given architecture is almost certain to support the exact same features as another.
	One minor thing that may seem to be an exception is the GP100-based Quadro and Tesla, which appears to support doubled-rate FP16. IT DOES NOT SUPPORT THIS IN PYTORCH, AND THUS DOES NOT SUPPORT THIS IN STABLE DIFFUSION.
	https://discuss.pytorch.org/t/cnn-fp16-slower-than-fp32-on-tesla-p100/12146
	Upon additional review, The Kepler-based Tesla K80 should work in stable diffusion *for now*, I would expect it to be dropped at any moment. No other Kepler cards will work for Stable Diffusion, but the GTX745/GTX750/GTX750ti are positioned oddly, being Maxwell cards numbered the same as Kepler cards (6xx-7xx), and thus able to run Stable Diffusion, because they're Maxwell.
!!!info Maxwell
	A previous version of this guide stated my uncertainty that FP16-in-memory works on Maxwell, it does indeed appear to work, so a Maxwell Quadro is a perfectly valid choice.

##What I'd suggest and why:
(assume all cards used)
###HENTAI FOR IMPATIENT/GAMER CHEAPSKATES
RTX 2060 12GB (Turing)
* extremely cheap used
* doubled rate fp16
* huge amount of vram for such cheap cards, more than a 3060 Ti or most AMD cards
* should observe substantial speedup after installing ~~malware~~ prebuilt xformers
* good drivers
* unusually good compute performance as a result of having the die from a 2060 super
* should be close to or beat rtx 3060 based on having doubled rate fp16 and the 3060 not having it
* would also perform quite well in non-rtx gaming, seems to be about 3060 level as a result of being basically a 2060 super
* probably worse at raytracing though, but who cares?
* overclock maybe?
* will work under windows if you really want to do that for some reason

###HENTAI FOR WALLPAPER CHEAPSKATES
Quadro P6000 24GB (Pascal) or M6000 24GB (Maxwell)
* based quadro card
* p6000 faster than a 1080ti, m6000 should match the Maxwell Titan X, p5000 is alright
* you can claim you own a quadro
* same ram size as a 3090/ti/4090 so you can flex and make huge images just like the rich kids
* will work under windows if you really want to do that for some reason
* M6000 is the cheapest 24GB VRAM card that could possibly be bought

If you go looking for a P6000 make sure you can't get a used 3090 (24GB) for a similar price. It will be about 5x faster.
M6000 will allow generating huge images but you're gonna need patience. It will be less than 1/10th the speed of a 3090 and about half the speed of a 2060. It's up to you where your values lie though.

###HENTAI FOR TECHNICAL LINUX-USING NON-GAMER CHEAPSKATES WITH NO FEAR OF ABANDONMENT
If you land in this sliver of a sliver of a Venn Diagram, boy do I have the card for you!
Arc A770 16GB
* $349 new
* 16GB of RAM
* Already about as fast as a 3060, may get faster
* Mostly trouble-free open-source drivers when run under Linux
* isn't it cool it's from Intel?
* might be a member of a dying breed
READ THIS GUIDE IN ITS ENTIRETY AND DECIDE WHETHER YOU ARE READY FOR THE CHALLENGE BEFORE CONSIDERING ARC
https://github.com/rahulunair/stable_diffusion_arc

Gaming on Arc under Linux probably isn't actually all that bad... right?

###HENTAI FOR DEAF CHEAPSKATES
It's possible to get an NVIDIA Tesla datacenter GPU and convert it to normal mortal use if you want to generate huge images as cheap as possible.
The cards are passively cooled, so you will buy a fan and attach it with a shroud bought from some guy on eBay. You'd pick your card and look for "(card model) fan kit", and you'd also want to get a Tesla power cable too. The blower fans required for the conversion are quite loud, so only do this if you can either shove this PC in a closet and forget about it or you will be so busy staring at Misato's boobs that you will be able to ignore it.
!!!danger Above 4G Decoding
	Tesla cards will not work on your system if your motherboard doesn't have Above 4G Decoding. If you don't know what that is, don't buy a Tesla card.

!!!info Generations
	Any maxwell or higher card should be okay. Don't be suckered in by the P100 appearing to have doubled rate fp16, pytorch doesn't seem to use it.
	https://discuss.pytorch.org/t/cnn-fp16-slower-than-fp32-on-tesla-p100/12146
	
!!!note Tesla card recommendation
	I won't recommend any particular cards for the Tesla route since I personally wouldn't recommend going this route. If you're trying to save money by buying a GPU that's impossible to game on, I think you should buy Arc. Jokes aside, The Wallpaper Cheapskates route is a substantially more reasonable option if speed doesn't matter to you quite so much, and the 12GB RTX 2060 route makes a lot of sense if you're a gamer... Definitely don't buy Kepler.
