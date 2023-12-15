# /SCG/ - A Star Citizen Beginner Introduction & Overview 
!!! note Updated as of patch 3.22
!!! warning Page still in WIP
***
!!! danger I want to set your expectations going forward here; this game is by no means anywhere near complete. CIG and their database vendor have been struggling since the introduction of the [Persistent Entity Streaming](https://starcitizen.tools/Persistent_Entity_Streaming) backend technology in patch 3.18, making server performance much worse along with many inventory issues. Take this into account while reading through the document.
!!! note You can play Star Citizen on Linux. Check out the [lug-helper](https://github.com/starcitizen-lug/lug-helper), made by the [LUG](https://robertsspaceindustries.com/orgs/LUG) community. CIG has also expressed multiple times their intent to support Linux, starting with the [Vulkan API](https://youtu.be/SV9_chUpDgc?t=825).
# About
->[Jump straight to the Table of Contents](https://rentry.org/guier/#comprehensive-table-of-contents)<-


The goals of this page are to serve as a point of reference for new people interested in delving into Star Citizen while also making sure it is constantly updated to represent the current state of the game. **Don't feel like you need to read everything here to get started**; just skim through what you think might be of interest. I won't be covering the planned features and mechanics that CIG has yet to release in any sort of depth, as they are not relevant.

If you prefer a Star Citizen guide in a video format, I can link you to the most recently updated one I could find [here](https://www.youtube.com/watch?v=-O7AzkcRr2I). 

The downside to these YouTube tutorials for an alpha project like Star Citizen is the fact that frequent updates can drastically change core aspects of the game without warning, leaving these tutorials outdated and muddying the search results. That's why I decided to make a Star Citizen guide on rentry—to avoid that issue.

->![meme](https://files.catbox.moe/qlkd54.gif)<-

***
***
#Comprehensive Table of Contents

[Introduction](https://rentry.org/guier/#introduction) | [Important to Know](https://rentry.org/guier/#important-to-know) | [Getting Started](https://rentry.org/guier/#getting-started)   | [Troubleshooting (WIP)](https://rentry.org/guier/#troubleshooting)
:----: | :----: | :----: | :----: 
**[What is Star Citizen/SQ42?](https://rentry.org/guier/#what-is-star-citizensq42)** | **[Star Citizens Gameplay Performance](https://rentry.org/guier/#star-citizens-gameplay-performance)** | **[Which Starter Pack Should I Choose?](https://rentry.org/guier/#which-starter-pack-should-i-choose)** 
**[What is there to do in-game?](https://rentry.org/guier/#what-is-there-to-do-in-game)** | **[Pledge Store Overview & FAQ(WIP)](https://rentry.org/guier/#pledge-store-overview-faqwip)** | **[The In-Game Tutorial](https://rentry.org/guier/#the-in-game-tutorial)** | 
**[Should I consider playing the game?](https://rentry.org/guier/#should-i-consider-playing-the-game)** | **[The Many Different Testing Environments](https://rentry.org/guier/#the-many-different-testing-environments)** | **[Best Way To Start Making Money?(WIP)](https://rentry.org/guier/#best-way-to-start-making-moneywip)** 
**[Freefly Events](https://rentry.org/guier/#freefly-events)**  | **[The Public Roadmap](https://rentry.org/guier/#the-public-roadmap)** | **[Upgrading Your Ship](https://rentry.org/guier/#upgrading-your-ship)** 
| **[The Issue Council](https://rentry.org/guier/#the-issue-council)** | **[Crime & Punishment](https://rentry.org/guier/edit#crime-punishment)**
| **[Arena Commander](https://rentry.org/guier/#arena-commander)** | **[PvA Content](https://rentry.org/guier/#pva-content)** 
| **[The Mobi-Glass(WIP)](https://rentry.org/guier/#the-mobi-glass)** | **[Useful 3rd Party Tools](https://rentry.org/guier/#useful-3rd-party-tools)** 

***
***
# Full Table of Contents
[TOC2]
***
***
## ->Introduction<-
!!! info If you don't care for an introduction, I recommend you jump straight to the [Important to Know](https://rentry.org/guier/#important-to-know) section

**->[What Is Star Citizen/SQ42?](https://rentry.org/guier/#what-is-star-citizensq42)<-
->[What is there to do in-game?](https://rentry.org/guier/#what-is-there-to-do-in-game)<-
->[Should I Consider Playing the Game?](https://rentry.org/guier/#should-i-consider-playing-the-game)<-
->[Freefly Events](https://rentry.org/guier/#freefly-events)<-**

**[Back to the Table of Contents](https://rentry.org/guier/#comprehensive-table-of-contents)**
***
***
####->What Is Star Citizen/SQ42?<-

Star Citizen is an ambitious kickstarter videogame project built on a fork of the CryEngine (now officially dubbed StarEngine) that consists of an MMO and singleplayer space opera, first announced on October 10th, 2012, at GDC by Chris Roberts, creator of the Wing Commander game series. Later that month, on October 18th, the [Star Citizen Kickstarter page](https://www.kickstarter.com/projects/cig/star-citizen) was officially launched, and quickly met its initial funding goal of $2 million. After the Kickstarter campaign reached its goal and beyond, CIG transferred the project to their own website, where it continues fundraising today primarily through ship sales—or "pledges," if you will.

The MMO portion of Star Citizen, the "**[Persistent Universe](https://starcitizen.tools/Persistent_Universe)**", is an immersive open world space sim  PvPvE sandbox, that is currently still in its alpha development phase. The PU consists of 100 player cap servers and one explorable star system called **Stanton** that is home to:
>3 Planets.
>1 Gas giant.
>4 Handcrafted explorable cities per planet, including a floating city in the gas giant.
>12 Moons, 3 in orbit per planet.
>4 Orbital stations, and 16 more within [Lagrange points](https://starcitizen.tools/Lagrangian_point).
Along with derelict outposts of various types, [caves](https://starcitizen.tools/Caves_and_caverns), small underground facilities, [a prison](https://starcitizen.tools/Prison), and an outlaw space station called [Grim Hex](https://starcitizen.tools/Grim_HEX). You can visit all these seamlessly without any loading screens, flying around in your ship, or walking in first person. There are over [100 flyable ships/variants](https://starcitizen.tools/Purchasing_ships), that can be bought for [in-game currency](https://starcitizen.tools/Alpha_UEC). The game currently offers a few different professions, with various levels of polish and depth that I've given a brief rundown further on here. 
As it stands, **there is no solid release date** for any "official" persistent universe launch, as we are still waiting on many more features, along with [core backend networking technology](https://youtu.be/cVvp1b7thzw?t=65) to allow multiple game servers to work simultaneously in a "server mesh" ([recently unveiled a working prototype here](https://youtu.be/xKWa4WoTkV4?t=5140)) that will enable for far more content such as more star systems and players within the same game shard, and far better server performance. [This recent video shows off what StarEngine can currently do](https://www.youtube.com/watch?v=nWm_OhIKms8), but it's far from finished.

**[Squadron 42](https://starcitizen.tools/Squadron_42)** is a cinematic single-player campaign that takes place in the [Vega](https://starcitizen.tools/Vega_system) and [Odin](https://starcitizen.tools/Odin_system) Star Systems, set before the events of the persistent universe. Chris Roberts said himself that SQ42 will be "this generation's wing commander", and has, for the most part, been the main development focus of CIG. SQ42 boasts an impressive A-list Hollywood cast with actors such as Gary Oldman, Mark Hamill, Gillian Anderson, Mark Strong, Andy Serkis, John Rhys-Davies, and more. 

As of Citizencon 2023, [CIG has announced SQ42 is now "feature complete"](https://www.youtube.com/watch?v=IDtjzLzs7V8) and has entered its polish phase, **but has yet to provide a release date**.
***
***
###->What is there to do in-game?<-
There is actually quite a bit to do right now, **assuming the servers cooperate**. I will list out the current professions here, with a brief summary for each, and let you decide on what sounds more appealing.

!!! note Missions can be accessed in your Mobi-Glass's "Contract" manager app. Try them all to see what you like, and don't burn yourself out on just doing one mindless grind for money. These can all be done solo.

- **[Mining](https://starcitizen.tools/Mining)**

Since first being introduced in patch 3.2.0, mining has so far been the most fleshed-out game loop. It includes solo mining with the [Prospector](https://starcitizen.tools/Prospector), multicrew mining in the [MOLE](https://starcitizen.tools/MOLE), ground vehicle mining with the [ROC](https://starcitizen.tools/ROC), and FPS mining with the [Multi-tool](https://starcitizen.tools/Pyro_RYT_Multi-Tool)'s [mining attachment](https://starcitizen.tools/OreBit_Mining_Attachment) in caves. 

You start by going to a planet, moon, or asteroid belt, scanning for mineable deposits, cracking and extracting the materials, refining them at a dedicated [refinery station](https://starcitizen.tools/Refinery_Deck), and finally hauling the refined material on a cargo ship to sell. You have an assortment of [mining gadgets](https://starcitizen.tools/Mining_gadget), [modules](https://starcitizen.tools/Mining_module), and [lasers](https://starcitizen.tools/Mining_laser) to help you break a valuable rock, depending on its size and mass.

- **[Salvage](https://starcitizen.tools/Salvage)**

Salvage in Star Citizen was recently introduced earlier this year in patch 3.18. You can solo salvage with the [Vulture](https://starcitizen.tools/Vulture) or multicrew in the [Reclaimer](https://starcitizen.tools/Reclaimer). There are salvage claims (legal or illegal) in the contracts manager that require you to pay a small fee for the rights and location of the derelict ship, or you can salvage any player abandoned ships you find loitering around.

The 3 current steps to this profession right now are stripping components, weapons, and cargo from a derelict ship, then scraping off its hull with your salvage ship and being rewarded with valuable "[Recyclable Material Composite](https://starcitizen.tools/Recycled_Material_Composite)," to be sold. Afterwards, you break down the ship into multiple pieces and start disintegrating the ship parts and that will reward you with Construction Material.

- **[Cargo Hauling](https://starcitizen.tools/Cargo)**

This profession is fairly straight forward and can be done on any ship with SCU space, like the starter ships. I recommend you take some odd jobs to build capital before you begin cargo hauling. There are a multitude of other cargo-centric ships to progress towards right now and these can range from smaller haulers like the [Freelancer](https://starcitizen.tools/Freelancer)/[Hull A](https://starcitizen.tools/Hull_A), medium ships like the [Freelancer MAX](https://starcitizen.tools/Freelancer_MAX)/[Constellation Taurus](https://starcitizen.tools/Constellation_Taurus), then eventually onto larger haulers like [Caterpillar](https://starcitizen.tools/Caterpillar)/[Hercules C2](https://starcitizen.tools/C2_Hercules_Starlifter), and the current king of cargo, the [Hull C](https://starcitizen.tools/Hull_C).

Each location you can buy and sell commodities has a limited storage capacity on a timer on how much stock they can hold or sell; not to mention, **all these locations share their inventory with every server in every region**, so you are competing with every dedicated cargo hauler for the valuable commodities, forcing you to wait longer at cargo terminals for the stock to refresh.

CIG is constantly balancing these different commodities in each patch, so keep an eye out for that with websites like https://uexcorp.space/ and [https://sc-trade.tools/home](https://sc-trade.tools/home).

- **Smuggling**

Smuggling is basically the illegal counterpart to cargo hauling. There are [drugs](https://starcitizen.tools/Drugs) you can buy or sell around the Stanton system that will take you to shady corners of the system to buy/sell your goods. 

These places are generally hotspots for PvP, (a popular one being [Brio's Breaker Yard](https://starcitizen.tools/Brio%27s_Breaker_Yard)), but the money might make the risk worth considering for those who have smaller cargo ships and want to build capital faster.

- **[Bounty Hunting Missions](https://starcitizen.tools/Bounty_hunting)**

Bounty hunting is very accessible, being one of the fastest way's of earning money, but also very barebones and repetitive. While it's called "bounty hunting", how it currently works would be more considered "assassination" missions. 

They start off by first requiring you to gain your certification (go to the marker and kill the ship) before you can begin doing more of the same to build up your reputation and receive contracts for multiple or larger ships with a bigger payout. **This also extends to PvP player bounties**, which will have you hunt others across the system that have a crimestat rating of 3+.

- **[FPS "Bunker" Missions](https://starcitizen.tools/Category:Bunker_missions)**
!!! danger These are broken as of 3.21.1
Being the majority of where the FPS content takes place, these missions are fairly straightforward and accessible to anyone right off the bat. You are taken to small underground facilities, or "bunkers," on certain planets and moons (or floating platforms on [Crusader](https://starcitizen.tools/Crusader)) to do FPS combat vs AI. 

Bunker missions come in different flavors of what essentially boils down to killing braindead AI, or killing braindead AI that comes in waves. This can get really repetitive, but the payoff is pretty good the more reputation you gain to build up the difficulty level. There's also lootboxes in the facilities.

- **[Piracy](https://starcitizen.tools/Piracy)**

There are illegal missions you can take in the "Personal" tab in the contracts manager on your mobi-glass, that are basically a mirror copy of some legal missions. 

There isn't much in the way of profit for piracy PvP currently, unless you work in a group to take down some boomers cargo ship and steal its contents (that he spent all day waiting at a terminal for) or camp outside popular smuggling hotspots, then sell the stolen goods for yourself at no question asked terminals. Don't forget to wear your [bear helmet](https://starcitizen.tools/Fieldsbury_Dark_Bear_Helmet) for extra salt mining in allchat.

->**Honorable mentions**<-

- **Exploration** 

Isn't really a profession currently, unless you count discovering new locations you've never seen before as "exploration gameplay".

- **[Racing](https://starcitizen.tools/Racing)** 

Mainly just something fun to do and not really a profit maker right now. There are some racing missions in the PU, but the harsher penalties of death after *accidentally* crashing don't make it appealing outside of Arena Commander. 

- **[Refueling](https://starcitizen.tools/Refueling)** 

There is only one ship in the game that can refuel at the moment, the [Starfarer](https://starcitizen.tools/Starfarer), but it has been largely useless as the Stanton system has a refuel pad on every planet, moon, and station.
***
***
###->Should I Consider Playing the Game?<-
!!! note **TL;DR** - Give Star Citizen a go during a freefly event if you are interested. As far as spending real money is concerned, you don't need more than the initial 45$ starter pack, and you can buy other ships you want with in-game currency. If you're still unsure, check back every 3–6 months.

If you have seen Star Citizen pop up recently and wanted to give it a try, I will always recommend you do so during a freefly event. Freefly events will allow you to play the game for free within a certain period of time (usually 1-2 weeks) and will lend you some ships to try out as well, along with discounts on starter packs.

But is it worth your money right now? As someone who "plays" Star Citizen regularly, solo and in groups, and has walked new people through the process a few times already, I'm going to have to say that **Star Citizen isn't worth spending any real cash on until they rework the mobi-glass at the very least**. If you do decide that you want to spend money, grab a $45 game pack; you don't need more than that. Don't listen to retards who say otherwise.

Star Citizen is more of a tech demo project than an actual game. It's not something you can really devote time and energy to every day and expect results, especially with the occasional database wipe. So that being said, if you are not a very patient person, don't bother playing and just occasionally check back on the project every few months or so until you think it's in a better spot to try out.
***
***
###->Freefly Events<-
!!! info These are not the only events that let you try the game for free, but those not mentioned are sporadic, and I can't predict when they will pop up.
Events: | Description:
------ | ----- 
[Invictus](https://starcitizen.tools/Invictus_Launch_Week)  -> -> Starts late May for 2 weeks. | This lore event celebrates the UEE Military, and will have every ship manufacturer show off and sell their **combat-focused ships only**, along with a tour inside the [Javelin Destroyer](https://starcitizen.tools/Javelin) and a [Bengal Carrier](https://starcitizen.tools/Bengal) flyby in-game. 
[Foundation Festival](https://starcitizen.tools/Foundation_Festival)  -> -> Starts in early June for around 2–3 weeks. | A new player focused event that will reward you and frequent players utilizing their [Guide System](https://starcitizen.tools/Guide_System) on the website.
[IAE](https://starcitizen.tools/Intergalactic_Aerospace_Expo)  -> ->Starts in mid-November and goes on for 2 weeks. | Biggest event of the year that will display/sell every ship they have ever sold, and distributes event unique skins for the winners of the [ship showdown contest](https://starcitizen.tools/Ship_Showdown) held every September. 


**You are able to rent and try out all ships in display during the Invictus/IAE event for free**. All ships on sale during the event come with 10-years insurance and warbond CCU deals for select ships from each manufacturer.
***
***
## ->Important to Know<- 

**->[Star Citizens Gameplay Performance](https://rentry.org/guier/#star-citizens-gameplay-performance)<-
->[Pledge Store Overview & FAQ(WIP)](https://rentry.org/guier/#pledge-store-overview-faqwip)<-
->[The Many Different Testing Environments](https://rentry.org/guier/#the-many-different-testing-environments)<-
->[The Public Roadmap](https://rentry.org/guier/#the-public-roadmap)<-
->[The Issue Council](https://rentry.org/guier/#the-issue-council)<-**

**[Back to the Table of Contents](https://rentry.org/guier/#comprehensive-table-of-contents)**
***
***
###->Star Citizens Gameplay Performance<-
!!! note CIG's new in-house-built ["Gen12 Renderer"](https://www.youtube.com/watch?v=SV9_chUpDgc) has fully replaced CryEngine's legacy rendering engine as of 3.18, and work continues to integrate the [Vulkan API](https://youtu.be/SV9_chUpDgc?t=825), and various other optimizations to help improve client performance overall.
>**[System Recommendations](https://rentry.org/guier/#system-recommendations)
>[Additional Performance Notes](https://rentry.org/guier/#additional-performance-notes)
>[How to Display Your FPS/Ping](https://rentry.org/guier/#how-to-display-your-fpsping)
>[The Telemetry](https://rentry.org/guier/#the-telemetry)**
It's a given that, as this project is still undergoing heavy development, there will be a lack of optimization, bugs, and occasional memory leaks here and there that will make some aspects of the game miserable. You should not be expecting smooth and consistent framerates right now.

Note that the servers themselves are always under constant strain 24/7, so lag, desync and stuttering are very much commonplace. There's also a common misconception that the servers performance affects your games FPS, [this is false](https://files.catbox.moe/eca1vl.png).
***
####System Recommendations
!!! danger INSTALLING STAR CITIZEN ON A SSD IS MANDATORY. NO EXCEPTIONS.
!!! warning Despite 16GB of RAM being the minimum required, **it's heavily recommended** to either upgrade to 32GB of RAM, or set up a pagefile to allocate a certain portion of your SSD to act as system memory for **a much better experience**. Read more about pagefiles [here](https://support.robertsspaceindustries.com/hc/en-us/articles/360000083387-Out-of-memory-errors-set-your-pagefile)
!!! note [Here](https://www.youtube.com/watch?v=H9zUwbXApbE) is a video on building a PC around Star Citizen.

Official Resources: | Links:
------ | ------
**Minimum System Requirements**   |  https://support.robertsspaceindustries.com/hc/en-us/articles/360042417374 -> -> https://support.robertsspaceindustries.com/hc/en-us/articles/4888457936919-Star-Citizen-Alpha-Minimum-System-Requirements
**RSI Guide to Graphic Issues** | https://support.robertsspaceindustries.com/hc/en-us/articles/360000081887-Guide-to-Graphic-Issues

![Reccomendations](https://files.catbox.moe/908lmz.png)

***
####Additional Performance Notes


1. Turn off or lower the Volumetric cloud settings to help with the main landing zones bad performance.

2. The game does not currently have graphical texture presets; it all looks the same on Low > Very High. 

3. If you are using an Intel CPU 12th or 13th gen, there is reported stuttering issues while having E-Cores enabled, so if you fit that description, try disabling them.

4. If you have a Nvidia GPU, this method may work for some to get a decent fps boost (no guarantees):

 > Right click anywhere on your desktop and open the "Nvidia Control Panel"
 >> Navigate to "Manage 3D Settings" 
 >>>In the "Global Settings" tab, Scroll down and set "Shader Cache" size to 10+GB 

5. It's recommended by CIG to delete the "shaders" folder in "%localappdata%\Star Citizen" and rebuild a fresh one when a new major patch goes live, or if you are having graphical issues. You will have to recompile the shaders for each new location you visit as you play.
***
***
####How to Display Your FPS/Ping
Open the game console with the **tilde key** (the key right above TAB), and type `r_displayinfo` followed by the number `1`, `2` or `3` (`0` turns it off). 

Example with `r_displayinfo 1`:
![r_displayinfo 1](https://files.catbox.moe/670q07.png)

`2` will display session info, and `3` will display additional GPU debugging information. That additional info is useful to have in screenshots when submitting bug reports on the [Issue Council](https://rentry.org/guier/#the-issue-council).
***
***
####The Telemetry
!!! info This website may take some time loading.
The live Telemetry tool will provide you with an insight into your PC setup's performance, based on average FPS metrics recorded by tracking tools, allowing you to monitor your in-game experience.

Official Resources: | Links:
------ | ------
Telemetry Link | https://robertsspaceindustries.com/telemetry
Telemetry Overview | https://support.robertsspaceindustries.com/hc/en-us/articles/360011767373-Star-Citizen-Telemetry-Dashboard 
![Example](https://files.catbox.moe/jrfiv4.png)

***
***
### ->Pledge Store/Grey Market Overview & FAQ(WIP)<-
!!! info FYI "Pledges" refer to everything bought on the website: ships, paints, FPS gear, merchandise, etc.
>**[What is a Warbond Pledge?](https://rentry.org/guier/#what-is-a-warbond-pledge)**
>**[Exchange and Buy Ships for Store Credit](https://rentry.org/guier/#exchanging-and-buy-ships-for-store-credit)**
>**[Buying Back Pledges(WIP)](https://rentry.org/guier/#buying-back-pledgeswip)**
>**[Can I Gift Pledges?(WIP)](https://rentry.org/guier/#can-i-gift-pledgeswip)**
>**[What are CCU's?(WIP)](https://rentry.org/guier/#what-are-ccuswip)**
>**[Ship Insurance and Pledge FPS Weapon/Armor](https://rentry.org/guier/#ship-insurance-and-pledge-fps-weaponarmor)**
>**[Grey Market FAQ(WIP)](https://rentry.org/guier/#grey-market-faqwip)**
***
####->What is a Warbond Pledge?<-

**->[Official Warbond Overview](https://support.robertsspaceindustries.com/hc/en-us/articles/360043504053-What-is-a-Warbond-Pledge)<-**

Warbond pledges are special promotions usually held during a new concept ship or vehicle sale. They offer a slightly cheaper option for the concept pledge along with LTI insurance. **Warbond pledges can only be bought with new money, no store credit.** You can gift pledges bought with store credit (with a few eceptions).

->![warbond example](https://files.catbox.moe/motchq.png)<-

####->Exchange and Buy Ships for Store Credit<-

->[**Official Ship Store Credit Overview**](https://support.robertsspaceindustries.com/hc/en-us/articles/115013173287-Spend-Store-Credit)<-

!!! danger You cannot gift pledges purchased with any store credit, nor use store credit on physical merchandise.
!!! warning Melting ships that have been upgraded through the CCU chain will only place the initial pledge into buybacks and not the upgrades.
!!! info You will not be charged tax when using store credit to buy pledges.
This system works similar to what Steam has. You can exchange pledges on the website for **store credit** based on their purchased value in USD, also known as "melting," which you can then freely use the credit on the store page on any other pledge (that is not warbond). Melted pledges will be placed into your "**buybacks**", located on the "**My Hangar**" tab on your account. 

->![Exchanging Pledge](https://files.catbox.moe/84uvdp.png)<-

Your store credit is displayed on your account overview on the top right of the RSI website. ![Store Credit](https://files.catbox.moe/tc21j5.png)

When you want to use your store credit to purchase a pledge, it's as simple as going through the same process of adding it to the shopping cart, and on the right under "Cart Summary," you have the option of adding store credit to the amount that the pledge is worth in USD. 

>You can also use new money alongside store credit to make up any differences.


->![Using store credit on a pledge](https://files.catbox.moe/bxp34v.png)<-
####->Buying Back Pledges(WIP)<-
->[**Official Pledge BuyBack Overview**](https://support.robertsspaceindustries.com/hc/en-us/articles/115013195207-Pledge-Buy-Back-tool)<-

####->Can I Gift Pledges?(WIP)<-
!!! danger WIP
->[**Official Gifting Overview**](https://support.robertsspaceindustries.com/hc/en-us/articles/115013325608-Gifting-FAQs)<-

####->What are CCU's?(WIP)<-
!!! danger WIP
->[**Official CCU Overview**](https://support.robertsspaceindustries.com/hc/en-us/articles/115010056848-Ship-Upgrades-CCUs-)<-


####->Ship Insurance and Pledge FPS Weapon/Armor<-

->[**Official Ship Insurance Overview**](https://support.robertsspaceindustries.com/hc/en-us/articles/360000093467-Ship-Insurance-FAQs)<-

You would have noticed that ships and ground vehicles on the pledge store all come with "insurance". Since we are only concerned with what that means for you in the game right now, to put it bluntly, **insurance does not matter, and wont until an actual "live" release of the game.**

If your ship is lost or destroyed during while playing, you can simply reclaim it back for free at any ASOP terminal. You can either wait out the timer or pay an aUEC expedite fee. **You wont lose any component or weapon upgrades applied to the ship if it gets destroyed**.

!!! danger Regarding unique FPS weapons/armors purchased from the website (or included in starter packs), there is no current method of getting them back if you die and your corpse is looted or gone. [CIG is currently working on an in-game method for unique item recovery](https://youtu.be/D51OYxWHZaI?t=631), but until then, don't bother.

->![fps gear](https://files.catbox.moe/w4411y.png)<-
####The Grey Market(WIP)
!!! danger WIP
***
***
###->The Many Different Testing Environments<-
Even though Star Citizen is still an alpha, it is also considered and treated as a live service platform. That means CIG wants to maintain its integrity and keep the LIVE environment as stable as possible (lmao). This is where these additional test channels come into play.

->![ptu channels](https://files.catbox.moe/utyluw.png)<-


!!! note Since each testing channel requires you to have multiple instances of the game installed on your PC, it can take up a lot of storage space. There are a few different tricks you can do to save space while swapping between these different environments.
- [This thread](https://www.reddit.com/r/starcitizen/comments/17lt803/howto_use_symbolic_links_to_install_multiple/)/[Video tutorial](https://www.youtube.com/watch?v=nVMiT7AAGP8) will guide you on how to create symbolic links in Windows to have all the test environments in 1 folder and freely swap between them.
- In the `"Starcitizen"` folder that's located in the `"C:\Program Files\RobertsSpaceIndustries"` path by default, make a new folder, and name it `"PTU`/`EPTU`/`TECH-PREVIEW"`, then copy the contents from the `"LIVE"` folder into that new folder you just made, and the launcher will only download the update.
- You can also just change the name of the 1 folder to either `"LIVE`/`PTU`/`EPTU`/`TECH-PREVIEW"`, depending on the environment in which you wish to play.
***
- **[EVOCATI](https://starcitizen.tools/Evocati_Test_Flight)**

The Evocati test flight, or as they are commonly referred to as "Avocados", is a handpicked group of players placed under an NDA by CIG, chosen based on how active they are on the PTU or on their contributions to the [Issue Council](https://rentry.org/guier/#the-issue-council) to test out game builds in their earliest and most broken state before rolling out to the wider audience on the PTU.
- **[TECH-PREVIEW](https://robertsspaceindustries.com/comm-link/transmission/19556-Introducing-Preview-Channel)**

This channel was created in response to the disastrous launch of the Persistent Entity Streaming tech in 3.18, which rendered the LIVE environment unplayable for months. 

The goal of Tech-Preview is to specifically test out significant core technology (such as the replication layer and later server meshing) in a much more controlled environment before rolling out to the PTU with other gameplay features. **Tech-Preview is not under an NDA**, and access is given to a certain portion of the playerbase, depending on testing needs.
- **[EPTU/PTU](https://starcitizen.tools/Public_Test_Universe)**

The PTU is the last test platform before it hits LIVE. The PTU introduces all gameplay features and other additions in the upcoming quarterly patch (shown on the [release view](https://rentry.org/guier/#release-view)), ready to be tested, along with dedicated feedback threads on the forums. 

**"EPTU"** is basically just another test channel that they may use when there's already another patch on the PTU, used for any other sort of testing purpose.

Relevant Articles: | Links:
----|----
**PTU FAQ:** | https://support.robertsspaceindustries.com/hc/en-us/articles/115013195927-Public-Test-Universe-PTU-FAQ
**Concierge Overview:** | https://support.robertsspaceindustries.com/hc/en-us/articles/360002542733-Concierge-Levels-and-Rewards

!!! note There are 5 waves that CIG introduced to the PTU cycle that will slowly grant access to the entire player base over time, with wave 5 being open to all.
Waves: | Candidates:
----|----
**Wave 1**: | >Legatus Navium Concierge Backers. -> -> >Subscribers. -> -> >Top active players rated by hours in the previous two major patch cycles.
**Wave 2**: | >Praetorian Concierge backers. -> -> >Second most active players rated by hours in the previous two major patch cycles.
**Wave 3**: | >Wing Commander, Space Marshal, and Grand Admiral Concierge backers. -> -> >Third most active players rated by hours in the previous two major patch cycles.
**Wave 4**: | >High Admiral Concierge backers. -> -> >Fourth most active players rated by hours in the previous two major patch cycles.
**Wave 5**: | >All backers with an active Game Package.

!!! warning When you have access to the EPTU/PTU/TECH-PRIEVIEW channels, you have to copy over your account to their testing servers through the website on your profile before you can play.
**On the website, you go into your profiles `account`>`settings`>`public test universe`>and click `"copy account to PTU"`.**

![example](https://files.catbox.moe/5nc9mo.png)

- **LIVE**
As mentioned before, the LIVE environment is still treated as a testing platform while also being live service game. Progress is carried over between patches (barring any unforeseen bugs or glitches), and CIG may also decide to wipe the database for numerous reasons as they continue development.

***
***
###->The Public Roadmap<-
Every Wednesday on a fortnight, CIG updates the Star Citizen public roadmap release view and progress tracker.
Official Resources: | Links:
------ | ------
Release View | https://robertsspaceindustries.com/roadmap/release-view
Progress Tracker | https://robertsspaceindustries.com/roadmap/progress-tracker/teams
Public Roadmap Companion | https://robertsspaceindustries.com/comm-link/transmission/18532-The-Public-Roadmap-Companion

***
#####Release View

The release view intends to reveal what deliverables are currently slated for the upcoming quarterly patch only, and displays them as feature cards. These feature cards are labelled either **tentative**, **committed**, or **released,** depending on where they are currently in development. 

Label: | Example: | Description:
------ | ------ | ------
Tentative | ![Tentative](https://files.catbox.moe/iq517i.png) | This label indicates that the deliverable is scheduled for the upcoming patch, but has not gone through final review, so keep that in mind.
Committed | ![Committed](https://files.catbox.moe/qfk449.png) | Committed cards have passed their final review and, in CIG's words, "There is a very low chance of this deliverable moving." Don't get your hopes up until you see it ingame.
Released | ![Released](https://files.catbox.moe/syjghi.png) | Self explanatory.

***
#####Progress Tracker
!!! warning When a deliverable on the progress tracker is approaching its end date, that doesn't strictly mean its ready for release. 

The Progress Tracker provides an overview into each team's quarterly development, showing their priorities and work completion dates. It displays up to 4 quarters out of work scheduled on deliverables.

->![Progress Tracker](https://files.catbox.moe/xo60l8.png)<-
***
***
###->The Issue Council<-
As is the nature of this buggy mess we call a "game", the Issue Council tool was created as a dedicated hub for reporting and contributing to bug reports and other issues in the persistent universe (aside from using it to find and abuse the current money dupe glitch).
Official Resources: | Links:
------ | ------ 
Issue Council | https://issue-council.robertsspaceindustries.com/projects/STAR-CITIZEN
Using the Issue Council | https://support.robertsspaceindustries.com/hc/en-us/articles/115009643527-Bug-Reports-Using-the-Issue-Council

When submitting bug reports, it's best to provide a detailed recount on how you encountered the issue, what steps are necessary to reproduce it, and any workarounds you find, so that others can also contribute to your report and bring more attention to it. Those who are active on the issue council have a chance to be picked by CIG to join their [Evocati](https://rentry.org/guier/#evocati) test group

In your report, it is also recommended to have video recordings (preferably) or screenshots of when the issue happens, and include system debugging information by typing "`r_displayinfo 2`" (or `3` for more info) in the games console (open with the **tilde** key) along with the session QR code "`r_displaysessioninfo 1`" to have in your videos/screenshots so that developers have a much easier time tracking down the problem.
***
***
###->Arena Commander<-
!!! danger WIP
***
***
###->The Mobi-Glass<-
!!! danger WIP
***
***
## ->Getting Started<-
**->[Which Starter Pack Should I Choose?](https://rentry.org/guier/#which-starter-pack-should-i-choose)<-
->[The In-Game Tutorial](https://rentry.org/guier/#the-in-game-tutorial)<-
->[Best Way To Start Making Money?(WIP)](https://rentry.org/guier/#best-way-to-start-making-moneywip)<-
->[PvA/Dynamic Event Missions](https://rentry.org/guier/#pvadynamic-event-missions)<-
->[Upgrading Your Ship(WIP)](https://rentry.org/guier/#upgrading-your-shipwip)<-
->[Useful 3rd Party Tools](https://rentry.org/guier/#useful-3rd-party-tools)<-**

**[Back to the Table of Contents](https://rentry.org/guier/#comprehensive-table-of-contents)**
###->Which Starter Pack Should I Choose?<-
***
!!!info There are more, expensive ships sold as game packages, but I don't recommend them as potential purchase options with real money.

->**https://robertsspaceindustries.com/store/pledge/browse/game-packages/**<-

When deciding on buying a game pack, you should take into consideration:
>How much you are willing to spend? 
>What you want to do in the game?
>Does the starter ship you might pick accommodate the gameplay loops you are interested in?
Or, just get what you think looks cool; that simple.

**Each starter pack will include:**

->![starter pack](https://files.catbox.moe/3wlklo.png)<-

- [X] **Self Land Hangar** - This was part of a module now removed from the game. Before the Persistent Universe, we only had an instanced hanger that allowed us to walk around and interact with the ships we bought, but that was neglected to the point of being unusable and CIG eventually retired the module in patch 3.13.1.

- [X] **Insurance** - Insurance does not matter and wont until the game is out of beta.

- [X] **Star Citizen Digital Download** - Game access to the Persistent Universe. SQ42 does not come with starter packs and is not available to be purchased separately at the moment.

- [X] **Starting Money** - Self explanatory. 

!!! note Freefly events come with a discount on starter packs

$45 Starter Packs: | Breakdown: 
----- | ----
![Aurora MR](https://files.catbox.moe/uloecp.png)  | The Aurora is really showing its age, but still remains comfy. ->->**In-game Price = 184,900 aUEC** ->->**Pros:** ->-> >It has room for 2 more weapons when you can afford them. ->-> >It's tiny, walkable interior, while not amazing, will allow you to do entry level box delivery missions. ->-> >Slightly faster max speed compared to the Mustang. ->-> >A bed that allows you to log out in the ship, and return later where you left off. ->->**Cons:**->-> >Weakest total DPS. ->-> >3SCU. ->-> >Doesn't handle well in atmosphere.->->**Thoughts:**->-> The Aurora will always have a soft spot in many backers hearts, but its in desperate need of a rework.
![Mustang Alpha](https://files.catbox.moe/hidvnq.png) | The other contender in the $45 bracket. ->->**In-game Price = 251,400 aUEC** ->->**Pros:**->-> >The view in the cockpit is fantastic. ->-> >Impressive DPS when you add the 2 extra weapons later on. ->-> >Handles better than the Aurora in atmosphere. ->-> >4SCU of Cargo, which is standard for starter ships. ->->**Cons:** ->-> >No bed. ->-> >Only just a cockpit with no walkable interior, however you can still do entry level box delivery missions utilizing its [deployable cargo trunk](https://files.catbox.moe/f0i53l.jpg). ->-> **Thoughts:**->->The Mustang is a great ship to start off dipping your toes into cargo hauling and space combat.

!!! info From this point on, you can settle with one of the two options above and earn the rest in-game.

$60+ Starter Packs: | Breakdown: 
----- | ----
![Pisces C8X](https://files.catbox.moe/91tpeq.png) | I don't really know how I feel about the Carrack's snub being sold as a starter ship. ->->**In-game Price = 406,000 aUEC** ->->**Pros:**->-> >More spacious interior compared to the previous 2 ships.->-> >2 extra seats for anyone who wants to tag along. ->->  >Comes stock with weapons on all its hardpoints, unlike the Mustang/Aurora. ->-> >Has the standard 4 SCU of cargo. ->-> >Massive hydrogen fuel tank and efficiency. ->->**Cons:** ->-> >No bed. ->-> >Weak shielding. ->-> >The worst total health pool on this list. ->-> >Maneuverability and DPS sits in-between the Aurora/Mustang, not terrible, not great. ->-> **Thoughts:** ->->I would not recommend you use the Pisces for any sort of combat, only cargo hauling or just general traversal.
![Cutter](https://files.catbox.moe/sbomw2.png) | The Cutter is a very solid starter ship, definitely one to heavily consider. ->->**In-game Price = 675,000 aUEC** ->->**Pros:**->-> >Comfy interior. ->-> >A bed, along with other smaller amenities. ->-> >Standard 4 SCU of cargo. ->-> >Can fit a small vehicle like the [STV](https://starcitizen.tools/STV)->-> >Room to upgrade DPS by replacing the stock loadout with weapon size increases. ->-> >Second largest quantum and hydrogen fuel capacity on this list. ->-> >Largest total health pool out of any ship listed here. ->-> **Cons:** ->-> >Shielding is the same as the Pisces, bad. ->-> >Terrible maneuverability. ->-> **Thoughts:** ->-> You cant go wrong with this as a starter ship.
![100i](https://files.catbox.moe/4ggkyo.png) | If the Cutter wasn't much of a looker, then maybe the 100i might interest you.  ->->**In-game Price = 654,000 aUEC** ->-> **Pros:** ->-> >Stylish ->-> >Fantastic cockpit view on par with the Mustang. ->->>Decent DPS if you upgrade up a size on its stock weapons. ->-> >Extremely efficient hydrogen fuel scoop. ->-> >Good maneuverability. ->-> >Has a bed. ->-> **Cons:** ->-> >Very small hydrogen fuel tank. ->-> >Only 2SCU, worst by far. ->-> >Slowest max speed on this list. ->-> >Weak shields. ->-> >Health pool on par with the Aurora. ->-> **Thoughts:** ->-> I don't have much to say for Origin ships, but this one is on my radar as a comfy daily driver.
![Avenger Titan](https://files.catbox.moe/thk0c2.png) | Another great starting ship to compete with the Cutter, but only if you decide the extra $$ is justified.->->**In-game Price = 785,600 aUEC**  ->-> **Pros:** ->-> >8 SCU of cargo. ->-> >Best DPS output of all the single seater ships listed here. ->-> >Decent interior with a bed. ->-> >Tanky ->->**Cons:** ->-> >Maneuverability is bad, almost on par with the Cutter->-> >Can only fit the ground buggy in its interior cargo bay ->-> **Thoughts:** ->-> If I had to choose a starter all over again, it would be the Avenger Titan. It's a great step up from the Mustang regarding cargo and ship combat capabilities.
![Gatac Syulen](https://files.catbox.moe/rbrl5c.png) | The first and honestly the best looking alien starter ship in the game. ->->**In-game Price = N/A yet**  ->-> **Pros:** ->-> >Very unique looking design. ->-> >Fantastic interior and exterior animations. ->-> >Comfortable living quarters, along with a suit locker and weapon rack. ->-> >6 SCU ->-> >The largest quantum and hydrogen fuel capacity in this list. ->-> >Solid firepower, with 3 s3 hardpoints ->-> >Sound design is great. ->-> **Cons:** ->-> >Quite large for a starter ship. ->-> **Neutral:** ->-> >Has to take-off and land like a rocket. Currently the only ship in game to be designed like this. ->-> **Thoughts:** ->-> This is the best looking ship on this list imo by far. It's massive fuel tanks make it great to explore the entire Stanton system right off the bat.
![Nomad](https://files.catbox.moe/2u217g.png) | The Nomad will be your introduction to space trucking in Star Citizen. ->->**In-game Price = 952,800 aUEC** ->-> **Pros**->-> >24 SCU of cargo ->-> >Great firepower to defend itself. ->-> >Fantastic interior. ->-> >Ship tractor beam on the rear for remote manual cargo loading. ->-> >Can hold a ROC ground mining vehicle. ->-> >Good shielding. ->-> **Cons:** ->-> >Bad maneuverability, as you would expect. ->-> >Exposed cargo bay. ->-> >Not so great total hull HP. ->-> **Thoughts:** ->-> If you are a pickup truck enthusiast, you might like the Nomad.


***
###->The In-Game Tutorial<-
[Back to the Table of Contents](https://rentry.org/guier/#comprehensive-table-of-contents)
!!! warning Make sure that "Show Hints", "Control Hints" and "Ship Entry Labels Enabled" are toggled to "Yes" in "ESC>Options>Game Settings" for the tutorial (is by default).

When you first boot up the game and make your character, it will bring up the option to take a beginner tutorial. **I recommend you do this if you are very new to Star Citizen**. It's a decent step-by-step guide that will take you through the very basics of playing inside the Persistent Universe. 

->![tutorial popup](https://files.catbox.moe/8zh74d.png)<-

You begin on Microtech, 1 of the 4 major city's in the Stanton system. You'll be guided through the city to get a feel for the gameplay inside the PU, and will end with you taking off from the city and landing at the orbital station above.

!!! note Its a quick tutorial so it *shouldn't* be that hard (barring any bugs), but here are some tips while you go through it.
- [x] Holding `Spacebar` or `W` will get you out of the bed.
- [x] Occasionally, the tutorial will update the **journal app** with context relevant to what its guiding you through. Open the Mobi-Glass with `F1` and you can't miss the flashing icon.
![journal](https://files.catbox.moe/phllbl.jpg)

- [x] When it takes you to the little corner store, pick yourself up a [Multi-Tool](https://starcitizen.tools/Pyro_RYT_Multi-Tool) with a [TruHold Tractor Beam](https://starcitizen.tools/TruHold_Tractor_Beam_Attachment)/[OreBit Mining](https://starcitizen.tools/OreBit_Mining_Attachment) attachments.
- [x] Also, if you can afford to, pick up a backpack along with a FPS gun. You don't need them right away, and you can always purchase them later.
- [x] Once inside the tutorial Pisces, you can use the flight ready bind `Right Alt` + `R` to start the ships engines and power at the same time.
- [x] You will need to contact the ATC to open the hangar doors after you powered on the ship. **There are 3 ways to do this**:
1. Easiest is using the default bind `Left Alt` + `N` to hail ATC for takeoff/landing.
2. Open the Mobi-Glass, on the top left, go into the `Friends` tab and on the spaceport ATC channel, **click the arrow**.
![crop2](https://files.catbox.moe/8o82u1.jpg)

3. Hold `F`, press the `Menu` tab on the MFD, select `Comms`, then click on the Wifi looking symbol to hail `NB Int. Spaceport`.
![crop](https://files.catbox.moe/4uzg9y.png)

- [x] To avoid having to hold down `W` all the time to fly forward, activate cruise control with `Left Alt` + `C`. **Any movement input during cruise control will cancel it**.
***
###->Best Way To Start Making Money?(WIP)<-
***
!!! danger WIP
***
***
###->Upgrading Your Ship<-
!!! warning Your ship needs to be at your current location, cannot be destroyed or be delivered to a landing bay. It will also have to be initially delivered to your location.
>**[Ship Components, Sizes and Types of Weapons](https://rentry.org/guier/#ship-componentes-sizes-and-types-of-weapons)
>[Specialty mounts](https://rentry.org/guier/#specialty-mounts)
>[Gimbal vs Fixed – What’s the difference?](https://rentry.org/guier/#gimbal-vs-fixed-whats-the-difference)
>[What to Upgrade First?](https://rentry.org/guier/#what-to-upgrade-first)
>[Acquiring Components and Weapons](https://rentry.org/guier/#specialty-mounts)**

All ships come pre-configured from their manufacturer with their standard components. Components make up your ship's characteristics and performance.
To change your ships components, open your Mobi-Glass (default `F1`) and head over the Vehicle Loadout Manager tab. ![Vehicle Loadout manger](https://files.catbox.moe/cj6amu.png).

->![Vehicle Loadout](https://files.catbox.moe/4i4kbk.png)<-

->(The vehicle loadout manager as of 3.21.1)<-


***
#####Ship Components, Sizes and Types of Weapons
!!! warning CIG hasn’t balanced any system components yet and has largely homogenized them. The only important system components that actually affect the player right now are the Quantum drive, weapons, and shields.

- [X]All components come in a variety of sizes and your ship can only use certain sizes of components. 
- [X]The sizes currently range from Size 0 (small ground vehicles) to Size 9 (anti-capital torpedoes). 
- [X]You can look up your ship's component sizes in the Vehicle Loadout Manager.

**Components are separated into 3 categories – System, Paint and Weapons**

- **Coolers** – All components generate heat. To dissipate the heat, you need coolers. If your ship overheats, it will malfunction and shutdown.

- **Power Plant** – All components draw power. If your power plant cannot supply enough energy, your ship will cease to function.

- **Quantum drive** – Your ship has a faster-than-light engine. Different drives consist of how quickly it will spool up, how fast you will travel over very long distances, and how much fuel it will consume.

- **Shield generator** – Your ship has shields. Shields block incoming energy damage as well as dampen ballistic projectile penetration. Better shields have higher health, faster recharge times and ballistic projectile resistance. **Shields come 3 different configurations depending on the size:**

1. **Size 1 shields** come in a bubble configuration.
2. **Size 2 shields** have a 2 sided front/back shield face configuration.
3. **Size 3+ shields** have a 4 sided front/back/left/right face configuration.

- **Exterior Paint** – Your ship's exterior paint. As the name suggests, it only applies to the outside of your ship.

- **Weapon (location)** – This will (roughly) tell you where the hardpoint for the weapon is located relative to the ship. Examples can be left, bottom, right wing, etc.

- **Missile rack** – The physical capabilities of the missile rack. A lot of ships can have variable sizes and amounts of missiles. In general, the bigger the missiles you want, the less you will have of them. Conversely, the smaller the missiles you want, the more you will have of them.

- **Missile Slot** – You can slot different types of missiles for a variety of uses. These include Cross-section (CS), Electromagnetic (EM), and Infrared (IR).


Let’s start with guns. There are two major distinctions between ship guns – ballistic and energy. 

- **Ballistic guns** have a set amount of ammunition that needs to be refilled at any landing zone. Ballistics can partially penetrate an enemies shield and deal direct hull damage.

- **Energy weapons** have a set amount of shots before they need to recharge – referred to as capacitors. The more energy weapons you equip, the lower the amount of shots before the need to recharge. Energy weapons do not “run out” of ammo like ballistic guns, but are completely stopped by enemy shields.

**The different types of ship weapons:**
!!! info As of right now, Cannons and Scatterguns are not recommended for PvP

- **Cannons:** Cannons have a slow projectile speeds, and hard-hitting initial damage. 

- **Repeaters:** The inverse of cannons – fast fire rate but low initial damage with fast projectile speeds. Repeaters are best used to counter fast targets, but prove to be less than ideal for bigger targets.

- **Gatling:** While there are ballistic repeaters, for those who wish to have an even higher firing rate, gatling guns are a great choice. Their design is best described as “accuracy by volume”. Gatlings are ballistic-only.

- **Distortion:** Distortion damage is unique as it is designed to disable a ship, rather than destroy it. Distortion cannons and repeaters deal heavy damage against shields – and once the enemies shields are down, overloads the enemy ships components (cooler/power supply) to disable it.

- **Scatterguns:** Live free in the NC! Scatterguns are up-close and personal heavy hitting weapons with a very short range. However, they haven’t been in a good spot for a very long time.
***
####Specialty Mounts

As well as components and weapons, certain ships have special mounts to fulfill a job or niche. These range from size 1-3.

- **Mining Head:** Used in mining ships such as the Prospector.

- **Salvage Head:** Used on salvage ships such as the Vulture.

- **Tractor Beam:** Used primarily on cargo or salvage ships such as the Cutlass/Vulture/Caterpillar.

- **Quantum Entanglement Device (QED):** Currently only available on the [RSI Mantis](https://starcitizen.tools/Mantis). Generates a 20km radius bubble that pulls ships out of quantum drive. Doing so is a crime within comm-array range.

- **EMP:** An EMP pulse generator. Only available on certain bounty-hunting ships. Disables enemy ships, but has to be very close. 
!!! info Some ships fitted with an EMP require you to manually power it on through the ships MFD, under the "Power" tab.

####Gimbal vs Fixed – What’s the difference?

As a pilot, you can decide whether you want to have fixed weapons or gimballed weapons. 

**Fixed** weapons fire at a converging point at a certain distance. They are are recommended for maneuverable and nimble ships – such as fighters. Slower and more cumbersome ships should equip **gimballed weapons**. 

Gimballed weapons are one size smaller than the weapon's hardpoint. To gimbal a weapon slot, you need an appropriate-sized Varipuck Gimbal mount to occupy the weapon hardpoint slot.

![gimbald slot](https://files.catbox.moe/5fh74k.png)

As an example – let’s say you have an Aegis Gladius. You can either have 3x Size 3 fixed guns on it or 3x Size 2 gimballed weapons on it. Gimballed weapons will automatically aim at a ship within an 8° cone in front of your ship. This can be toggled on and off with the default `G` key.

####What to Upgrade First?
!!! note The tool you and everyone else will be using to outfit your ship and determine what cooling/power requirements it needs is https://www.erkul.games/. Erkul will also list out all the components, aUEC price, and the store location(s) where to buy them.

The common answer to that question is “it depends” – primarily on your ship. As a general rule of thumb however, your quantum drive should be the first component you should upgrade. 

>Coolers and Powerplants are only upgraded if the additional components you add exceed their threshhold. 
>There is no stat differences between different types of laser weapons (badgers vs nbds for example) of the same size.
>Shields of the same grade (A, B, C) have the exact same stats. Recommended to just buy the cheapest A grade.

An example – a Size 3 stock quantum drive (Kama) vs. the upgraded quantum drive (TS-2). Note the difference in minutes in the bottom right – the upgraded quantum drive cuts out 12 minutes of travel time.

If you are doing shorter, more frequent quantum travel jumps around a moon's orbit, for example, it's worth looking into what quantum drive is more fuel-efficient and/or spools up faster.

->![kama](https://files.catbox.moe/4ab5x1.png)<-

->![T-S2](https://files.catbox.moe/g9xm8j.png)<-


####Acquiring Components and Weapons
!!! note You can sell ship components/weapons to the store.

Ships components and weapons can either be bought in shops such as Cousin Crows, Platinum Bay, CenterMass and other shops or salvaged off of wrecks. **All weapon sizes can be salvaged right now** – with the biggest ones being Size 5. However, **only Size 1 and 2 components can be salvaged**.

***
###->Crime & Punishment<-
***
###->PvA Content<-
[Back to the Table of Contents](https://rentry.org/guier/#comprehensive-table-of-contents)

Accessed under the **"Personal" tab**, there are a couple unique missions available to the entire server 24/7 that are fun open world PvA opportunities to make large amounts of credits. They act as bite sized versions of CIG's ["Dynamic Event Missions."](https://rentry.org/guier/#dynamic-event-missions)
***
- **Money From Nothing**

Money from nothing could be described as a sort of "king of the hill" that prints cash indefinitely the longer you can defend. It takes place inside a Reclaimer crashsite turned pirate outpost called "[Ghost Hollow](https://starcitizen.tools/Ghost_Hollow)", located on the planet [Microtech](https://starcitizen.tools/MicroTech_(planet)).

[This video](https://www.youtube.com/watch?v=Q9MwpLVGEaw) does a great job giving an overview on this mission and explaining all the steps required to start making free creds. The 2 money printing terminals inside the crashed ship can net you up to **600k aUEC/hr, 150k per terminal**. 

- **In the Wake of Disaster**

This mission is a salvager's dream come true. For a **150k aUEC fee**, the mission will take you very far off-grid into a ship graveyard, full of small and large ships. The real money comes from the valuable cargo/drugs that spawns inside the wrecks.

The caveat with this mission is that you **can't share it with your party members like with most other missions**; they either have to pay the 150k fee or just simply hop in a multicrew ship together while you plot the course. As this can technically be solo'd, you do have to travel very far out, and it is also a hotspot for PvP as others fight for control over these wrecks, so it's best that you get a group going with a ship large enough to take the journey and the goods back.
***
####->Dynamic Event Missions<-
Dynamic Event's missions encourage server wide participation, either to work together against a large enemy faction in PvA (PvP if you chose to join them) or a dedicated PvP zone (like Jumptown) for big payouts. These operate on a specific schedule that CIG will announce in a dedicated forum post. When they are active, the mission can be accessed under **"Priority"** in the contracts manager.

- **[XenoThreat - Assault on Stanton](https://robertsspaceindustries.com/comm-link/transmission/18510-XenoThreat-For-New-Players)**

[XenoThreat](https://starcitizen.tools/XenoThreat), the pirate faction from the neighboring star system [Pyro](https://starcitizen.tools/Pyro_system), has invaded Stanton with considerable firepower, and a server wide announcement will call on everyone to go and fight them back. **You cant join them *yet.* **

The goal of this event is to protect and restock a UEE Javelin Destroyer docked at the military station [INS Jerico](https://starcitizen.tools/INS_Jericho), until its ready to fight off XenoThreat. 

You and everyone who participates do this by taking 3 unique types of cargo from Starfarer wrecks in space nearby back to Jericho. Occasionally, a XenoThreat Idris will harass the docked javelin, and if you don't fend it back, the event can fail. When the requirements for delivering the cargo have been met, the final phase begins with a massive fight between the now restocked friendly Javelin vs. XenoThreat.

- **[Jumptown](https://robertsspaceindustries.com/comm-link/transmission/19156-Jumptown-21)**

This dynamic event was inspired by emergent gameplay that happened in 2019 when a drug spawning outpost on the moon Yela called "[Jumptown](https://starcitizen.tools/Jumptown)" had a bug that caused it to provide more drugs than intended, and what followed was a huge influx of players flocking to this small little outpost to get their hands on the valuable cargo and fight off anyone who wanted a cut. CIG has tried to recapture that lightning in a bottle with a little twist in this event. 

It's fairly straight forward: 1 outpost will start infinitely spawning small drug boxes on 4 different locations around the system that you and the rest of the server who decide to join in fight over. There is a lawful and unlawful side to this event.

Lawful requires you to have no crimestat and will task you to take the drug boxes to the nearest LEO station on the planet Jumptown spawns at for a bonus payout. The unlawful route first requires you to have a crimestat of any level, then you take the mission from Ruto for a small fee to bring the drugs to an unlawful trading outpost for a bonus.
- **[Siege of Orison](https://robertsspaceindustries.com/comm-link/transmission/18748-Siege-Of-Orison)**
!!! warning You cannot fly your own ship to the events location, it will force despawn it and leave you to fall to your death.

This event mission will call on the entire server to go to the city of Orison on the planet Crusader and retake multiple floating platforms near the city currently being occupied by the pirate faction  "[9 Tails](https://starcitizen.tools/Nine_Tails)". You cannot necessarily "join" 9 Tails, but if you attack any other players during the event, you will be branded as a "9 Tails sympathizer", and doing so will place a mark on you for anyone else on your platform.

SoO begins by sending everyone who accepted the mission to the roof of the Crusader show room to catch a shuttle that takes you to the first of 4 platforms to retake from the attacking faction. The progression between each platform is linear, and in order to advance, **you have to defeat 1 enemy lieutenant per platform**. 

Each lieutenant holds a data-pad containing a **4-digit code** that is needed to unlock that specific platform's many cargo containers spread around. These containers hold plenty of ammo and medical supplies inside them, but most importantly, there is an **IFFI** in one of these containers that you need to find and disable in order to turn off that platform's hostile AA defense.

When you defeat all 4 of the lieutenants on their respective platforms, the ringleader of the siege will entice you to fight him on a docked cargo barge. Killing him and disabling the final IFFI will complete the event.
***
***
###->Useful 3rd Party Tools<-
!!! note [This rentry link](https://rentry.org/rbrcz) has every other useful star citizen related resource I could find.
[Back to the Table of Contents](https://rentry.org/guier/#comprehensive-table-of-contents)

***
Here are some of the most popular 3rd party tools that you may find yourself using regularly while playing:
Description: | Link: 
---- | ----
**Star Citizen Wiki:** | [https://starcitizen.tools](https://starcitizen.tools)
**General Purpose Websites for Trading Logistics, ->->Refinery Calculator, Commodity Prices, etc:** |  [https://sc-trade.tools/home]( https://sc-trade.tools/home)->->https://uexcorp.space/->->https://www.gallog.co/
**Detailed Overview of the Stanton System,->-> Including Multiple Navigation Methods to Every POI**: | https://verseguide.com/
**Universal Item Finder:** | https://finder.cstone.space/
**Ship Loadout/DPS Calculator**: | https://www.erkul.games/

***
***

## ->Troubleshooting(WIP)<-
!!! danger WIP