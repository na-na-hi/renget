# Google Play Checkout (GLB Only)
This is just a quick guide for how to set up Google Play Checkouts on the PC version of Honkai. *Created and maintained by TencentDimepiece (SinsOfSeven#3164)* ​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
[Return to Honkai Rentry Index](https://rentry.org/honkai3)

### How Even?
This is just a quick guide for how to set up Google Play Checkouts on the PC version of Honkai. This is possible thanks to the google play PC release found here. [Honaki Impact 3rd - Google Play  for PC](https://play.google.com/store/apps/details?id=com.miHoYo.bh3global&hl=en_CA&gl=US). There is no need to reinstall the game to use this however. So long as you're a GLB player, you can use the following method to rebind your payment method with just a little configuration magic.

!!!Danger This trick most likely violates the ToS (Unauthorized Modificaitons to Game Files)
	Before proceeding, consider this. If you want to use google pay, you should use the official google launcher only. You can uninstall the version you're using now and switch without violating the ToS. Proceeding means you acknowledge this fact and accept responsibility for your actions if it has any negative impact on you forthwith. I don't want to downplay the seriousness of a ToS violation. Your account access may be terminated indefinitely (perma ban).

### How To
First we want to locate the config.ini for Honaki, the one we want is the one at the highest level of the install location.
`.\Honkai Impact 3rd\config.ini` NOT `.\Honkai Impact 3rd\Games\config.ini` even though they look nearly identical when opened.
Then you just want to make sure these fields are these values. If they aren't there, add them. I recommend making a backup of the original. You can make a copy and rename it `config.ini.old` and just leave it in the same place. This will be a good way to reset it. This method should work for normal and Epic Games installs. I have no idea if it would work for the steam version. To restore the previous payment option, restore the ini.old.

```ini
[launcher]
cps=googlepc
channel=1
sub_channel=6
```

Start up the game, If successful, the game should prompt you to log into your google account, make sure to log in with the one you intend to pay with. It can be the same as your existing Honkai account, or not. If the sign in fails, just try again, but this time copy the link from the browser bar and paste it into an incognito or other browser you're not signed into on. Make sure you know your google password.

After it's successfully linked, when you go to make an in-game purchase, it should  now open a browser window to prompt you for payment. It will have your google pay balance and everything, just like checking out on mobile.

!!!Warning Unintentional Usage
	While this process works, it's not the intended way to get access to this feature. Hoyo might give you a hard time while providing support if issues arise. For example, unbinding  the payment account. To get access to this payment option the intended way, you can use the [Install on Windows](https://play.google.com/store/apps/details?id=com.miHoYo.bh3global&hl=en_CA&gl=US) option from the google play store page. I use this method so I can use the [Collapse Launcher](https://github.com/neon-nyan/Collapse) and GPay at the same time. This will NOT work for EpicStore payment, in order to get access to that option you MUST launch it from the epic laucher. This can however overwrite the EpicStore checkout option if you still want to use that method to launch the game. Basically, I didn't want to lose my GPay rewards just because I didn't want to update honaki on my phone anymore.

## You're still here?

So, if this is a ToS violation, why did I create this guide? The long and short of it is, I spent too much money on this game to not be able to enjoy it exactly the way I want. I'm willing to risk losing all that time and money over the comforts these small modifications afford me.

Things like, custom resolutions, and windowed boarderless mode aren't options in the game. I have to modify the registry files and use startup args in order to achieve the look I desire. I use a 3rd party client because it allows me to customize the launcher with images I prefer, and manage multiple games, in addition to managing the resolution and startup args.

However, every time I boot up the game, no matter how unlikely, my account might be suspended or terminated. There is a grey area between modifying configuration values and hacking the game to cheat. The ToS doesn't draw the line for us of what is acceptable and what isn't. And it's up to the discretion of HoYoverse to decide what that line is for any given situation. There is even the possibility of legal retaliation, so practicing these things isn't for the faint of heart.

I believe that positive changes come from users like myself. Hoyo sees people in the community making these Quality of life changes, and then can integrate them into their software so people like me don't HAVE to push the bounds of the ToS.

To the <50 people who will probably read this, I hope it leaves you with something to think about. - TencentDimepiece

->![Honkai Icon](https://webstatic-sea.hoyolab.com/communityweb/business/bh3_hoyoverse.png?x-oss-process=image%2Fresize%2Cs_300%2Fquality%2Cq_80%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cjpg)<-
