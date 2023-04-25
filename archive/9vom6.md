hey all,
I'm finally done with everything, It should all be working as expected, but please don't hesitate to call me an idiot and tell me an issue you had if you did. I made some big changes to the scripts this time, doing a complete overhaul, so even if you had sd-scripts installed before, you are gonna want to use the new installer: https://github.com/derrian-distro/LoRA_Easy_Training_Scripts/releases/tag/installers-v5
(which hopefully won't cause admin based issues anymore)

if you are a command_line user all of the args are now in the file ArgsList.py which is used for both the command_line and popup, which is no longer it's own script, just an argument --popup.

don't worry, I also updated all of the .bat files and all of the seperate scripts (lora resize, merge, image resize) to work with the new setup as well.

I removed pretty much every instance of duplicated code, added the new args that replace the old ones + the other new ones, better handle creating the name_space and tried to reduce the jankyness as much as possible

popup no longer has the same queue system as before, it now uses the same exact one as the command line, so you will have to make a bunch of json files, which i added an option for in the popup as well to facilitate this change.

loading a json file in popup will prevent all other popups from appearing now, so there is less overall error checking from the older version, but it's much faster. I might change that back later on and add an option to set it such that it only loads some of the options and asks for the rest, but for now this is how it is.

All of the new optimizers are added, and the new way to select them are also added in the arg self.optimizer_type which has a list of accepted args right by it with the exact required spelling.

the most annoying arg that got added is the self.optimizer_args arg, which is actually a bunch of args in one, I opted to make it a dictionary, and pre-fill it with the most recommended settings by AdamW, and Lion. If you want to use split lr's for D-Adaptation you have to also add "decouple": "True" so it knows to use different lrs for the two lrs

let me know how it works for you all, I put way too much into this update and hope it's much nicer to use.