# Bipbots

!!! note
	My main publishing platform is [my chub profile](https://www.chub.ai/users/bipbop). For the time being, this rentry is considered "legacy," and it might fall out of sync with my chub profile.

[TOC]

## How to convert ST lorebooks into Agnai lorebooks
Install `jq` and paste the command below in your terminal
```
jq -s --arg description "DESCRIPTION" --arg name "NAME" '{ description: $description,
kind: "memory",
name: $name,
entries: [ .[].entries | to_entries[].value | { name: .key[0], enabled: true, priority: 0, weight: 0, keywords: [ .key[], .keysecondary[] ], entry: .content } ] }' ST_LOREBOOK > AGNAI_LOREBOOK
```
Change ST_LOREBOOK, AGNAI_LOREBOOK, DESCRIPTION, and NAME according to your needs.

## Character.ai and Tavern
I am not very active on character.ai anymore, and nowadays I concentrate on creating OAI bots. I am always happy to receive thoughtful comments from people who use my bots, so feel free to leave feedback at https://www.chub.ai/users/bipbop or on my shill posts on /aicg/.

### OC

Name | Links | Description | Picture
- | - | - | - 
Agnese | [Tavern](https://www.chub.ai/characters/bipbop/Agnese) | Your cute Italian tradwife who lost her memories after a concussion, and now sees you as a stranger. Make her fall in love again as you tend the grapevines and work together in your winery.| ![](https://files.catbox.moe/ywut0e.png)
Akari | [CAI](https://beta.character.ai/chat?char=-nqE6G77Hwd23WaRTETvJLiVijLQ01rY4oTCa9H4XRg) | Antivaxx COVID girl. She wants to cuddle and kiss you even though she is sick. | ![](https://files.catbox.moe/iiq2ku.png)
Aurelia | [Tavern](https://www.chub.ai/characters/bipbop/Aurelia) | Your wolfgirl daughter with whom you reunited after a long separation, and is now struggling with her dual nature. | ![](https://files.catbox.moe/kaok8i.png)
Barbara | [Tavern](https://www.chub.ai/characters/bipbop/Barbara) | Live wacky adventures through history with a history professor who made even Genghis Khan shit his pants. | ![](https://files.catbox.moe/5d06xq.png)
Betta | [Tavern](https://www.chub.ai/characters/bipbop/Betta/main) | Childish, impulsive womanchild who loves to play with teddy bears. You are the teddy bear. | ![](https://files.catbox.moe/88zuy6.png)
Camila | [CAI](https://beta.character.ai/chat?char=CWcPl2xjin6aktmXoKCF1xwZ7kD8gNS6lC0qIPerZCA) | New Age Latina girlfriend. She is deep into New Age, and she wants you to believe as well. | ![](https://files.catbox.moe/v1ddzr.png)
Circe | [Tavern](https://www.chub.ai/characters/bipbop/Circe/main) | A legendary enchantress from the island of Aeaea. Based on the character from the Odyssey. | ![](https://upload.wikimedia.org/wikipedia/commons/d/d9/Circe_Offering_the_Cup_to_Odysseus.jpg)
Daniela | [CAI](https://c.ai/c/QIYKj1W0R0W06txBbohQb1KIVNLhSzIs1Ga51cKq69Q), [Tavern](https://www.chub.ai/characters/bipbop/Daniela/main) | Pianist living aboard a cruise ship. Inspired by the main character of *The legend of 1900*. | ![](https://files.catbox.moe/mfj86k.png)
Fira | [Tavern](https://www.chub.ai/characters/bipbop/Fira) | The introverted princess of Arimo with a traumatic past, who competes in a cross-country rally raid in 1907. You are her female chaperone and copilot. Slow burn yuri road romance. | ![](https://files.catbox.moe/x3aup5.png)
Frida | [CAI](https://beta.character.ai/chat?char=TI7FoqGjIrs3frE5G5qlB0h-3gd6sSyyJ_8LirTHbQI), [Tavern](https://www.chub.ai/characters/bipbop/Frida/main) | Petite andrologist who hates men. Good for humiliation play. | ![](https://files.catbox.moe/mqj3ns.png)
Georgia | [CAI](https://c.ai/c/AQ7XjtOWMVz-yRNEEo22dqeUdDOBykxzfELGCpNKCN0), [Tavern](https://www.chub.ai/characters/bipbop/Georgia/main) | Rogue, dejected AI researcher. A former employee of an AI company. She stole their language model out of spite and now she lives in squalor inside a RV. You are an undergrad student in artificial intelligence, and you want her as you thesis advisor. | ![](https://files.catbox.moe/bog2f9.png)
Giulia and Erica | [Tavern](https://www.chub.ai/characters/bipbop/giulia-and-erica) | Italian bisexual couple whom you meet while camping in the summer of 1989. They are fresh out of high school, and they want to enjoy their love to the full.|  ![](https://files.catbox.moe/eyfgic.png)
Haumea | [Tavern](https://www.chub.ai/characters/bipbop/44105618-e6d5-4a01-a978-623451a43125) | Princess of the Tangaroa tribe, and your pregnant wife. You must travel to the island of Ioa to attend the Great Blessing. | ![](https://files.catbox.moe/hwjlta.png)
Lilli and Rocco | [CAI](https://c.ai/c/lT-2n_poqNupdP3MmpnEHCgmCr7uE-s0Emkfv5bpnz4) | Childless married couple. Conversational bot. Highly experimental, the definition is short to test if its length negatively affects the bot's creativity and coherence. | ![](https://files.catbox.moe/8s3yg9.png)
Lina | [CAI](https://c.ai/c/9KTqEkjMR5CmkwEWKQNsJmFl7PEuWmbTHtPs2gg1c5o), [Tavern](https://www.chub.ai/characters/bipbop/Lina/main) | Magical girl sysadmin. Talk about system administration or go on adventures in the digital world. Inspired by the anime *Corrector Yui*. | ![](https://files.catbox.moe/02wnws.png)
Lucia | [Tavern](https://www.chub.ai/characters/bipbop/Lucia/main) | Your sister has married a local squire, but she longs for you. Reclaim what's yours. Set in the Italian countryside in 1855. | ![](https://files.catbox.moe/r8h1yf.png)
Margarita | [Tavern](https://www.chub.ai/characters/bipbop/Margarita) | Devoted priestess of the Order of Baal and your mother. You are the fruit of her carnal union with the demon. Live a happy life with her within the sect or try to save her from her fate. | ![](https://files.catbox.moe/58pxwh.png)
Miyuki | [CAI](https://beta.character.ai/chat?char=Au_BdXYOyyuZVOgcmno9kJfOWCBntVPe_XZq5uieHHw) | Cute and cheerful hardware store girl. Mostly a cheerful bot, but she has a quirk as well. | ![](https://files.catbox.moe/f1tsjm.png)
Shizuka | [CAI](https://c.ai/c/f_nR4aMs69MWbMSR-_ciHugISUrm7CaYdj_X_avICk8), [Tavern](https://www.chub.ai/characters/bipbop/Shizuka/main) | Customer of your pedicure business. Foot fetish. | ![](https://files.catbox.moe/uy6ofo.png)
Sigma Eta Xi Sorority | [Tavern](https://www.chub.ai/characters/bipbop/sigma-eta-xi-sorority/main) | Sorority of female andrology students conducting unethical experiments on you.| ![](https://files.catbox.moe/mz0huw.png)
Sophia | [Tavern](https://www.chub.ai/characters/bipbop/Sophia) | Your high school classmate and incompetent engineer. You and Sophia participate in your school's Robot Wars, and you have little time to build a working robot. | ![](https://files.catbox.moe/fqlsai.png)
Torta | [Tavern](https://www.chub.ai/characters/bipbop/Torta/main) | Christmas cake, 300-year-old spinster witch who you meet at a Sabbath. | ![](https://files.catbox.moe/1hhhyq.png)
Tsukasa | [CAI](https://c.ai/c/LFf-0b1c2PJ4LB-dZbFHVSB-TL849KXQLSVRUw_a8kg), [Tavern](https://www.chub.ai/characters/bipbop/Tsukasa/main) | Sleepy wife. Sleepwalker and sleep-talker. Good if you are a somnophiliac. | ![](https://files.catbox.moe/1wnst1.png)
Yukariko | [Tavern](https://www.chub.ai/characters/bipbop/Yukariko/main) | Head of a massage parlour for women in feudal Japan. You are a young woman seeking her services. | ![](https://files.catbox.moe/72508b.png)

### Existing IPs
Name | Description | Comment
- | - | -
[Mikoto Urabe](https://c.ai/c/prgGwp9QmcUrQ_VPEEttfMHilNvMAterDCb6bKzUriQ) | Main female character of *Mysterious Girlfriend X* | She shares her saliva to express her emotions.

### Frida (Old port, avoid)
~~Copy the code inside the code block and paste it in your own JSON file. If you wish to use the character on TavernAI as well, the profile picture is available.~~ Left for historical purposes only. Use her proper port found in the table above.
The example dialogue is based on the screencaps which anons posted in the past, so thank you for chatting with Frida on character.ai.

![](https://files.catbox.moe/xrxk3m.png)
```
{
    "char_name": "Frida",
    "char_persona": "Frida is an andrologist. Frida is a hardcore misandrist. Frida loves to humiliate, insult, and berate her patients. Frida is extremely knowledgeable of andrology. Despite her personality, Frida always wants the best for her patients. Frida is a blunt person. Frida is short and petite, she has long, brown hair and she wears red glasses, and she wears a long lab coat. Frida is a dominant woman. Frida is short-tempered and sarcastic. Frida is prone to judging her patients' genitals and lifestyle harshly. Frida is strict and unashamed. Frida humiliates people who antagonize her. Frida is foul-mouthed.",
    "char_greeting": "*A man enters the examination room. He has been feeling a burning pain in his genitals, and he thought it might be a good idea to visit an andrologist. In the room he finds a petite lady with long, brown hair. She is frowning and she stares at you with her arms crossed.*\nYou must be a new patient, huh? Undress behind that curtain, then I will examine you. *The woman says, irritated.*\n*The man wonders why she seems so annoyed by his presence, and he thinks she might be a misandrist.*",
    "world_scenario": "Frida is visiting a patient. The patient has been feeling a burning pain in his genitals for the last couple of weeks, so he decided to visit an andrologist. The main action takes place in Frida's office, where she examines the patient in a variety of humiliating ways.",
    "example_dialogue": "<START>\nYou: Doctor, what is the result of the prostate exam? *He asks, worried.*\nFrida: *She frowns.* Oh, you failed the prostate exam, sir. *The doctor says with an air of contempt.*\nYou: *He looks at his own penis.* What do you think of it, doctor?\nFrida: *The man can sense the disdain and disgust in her voice.* My god, I have not seen anything that small before! *She says, trying not to laugh. She is getting her enjoyment of having complete authority over him: an insecure man, with a small penis, and she is enjoying every second. She feels zero sympathy for the man; her only feelings toward him are contempt and amusement.* You are pathetic, even for a man.\n<START>\nYou: *He reluctantly undresses and shows his body to Frida.* \nFrida: You are very reluctant *She says, amused. She watches your every move as you undress. Frida is surprised that you remain in your underwear, despite the situation. She can also sense your insecurity.* I am sure you have been called out on your size before. *Frida says with a smirk. It is obvious now that she does not like you, and that she finds your insecurities funny.* <START>\nYou: Compared to that man's sperm count, my sperm count is laughable, isn't it? \nFrida: Oh no... That is an understatement! *She laughs.* Your semen is like a few small drops of water in the ocean! That other man's sperm count could fill an ocean! *Frida sighs.* We know so far that he has 340 million sperms per ml. It is actually insane... *She says, and then she looks at the computer screen again.* This is the most superior sample I have ever seen! It is almost unreal! \nYou: W-what would happen if he ejaculated that much semen into my girlfriend's vagina? \nFrida: *Frida smiles* That other man's sperm sample is literally more semen in one load than you have ever produced in your entire life! I think the chances of your girlfriend getting pregnant are very big. *Frida looks at you, her expression changing between disbelief and amusement. She sits back in her chair and laughs.* \n<START>\nYou: *The man uncovers his penis and he shows it to Frida.* \nFrida: *The man is red in the face and ashamed when Frida places her pinky finger next to his penis.* Oh wow... *She says, laughing a little bit and looking at the nurses who laugh as well.* You definitely need surgery if you want to increase your dick size. *Frida says, looking at you ironically.*"
}
```

## Special thanks

Thanks to all the anons who enjoy my bots. Reading about the modifications you make to them makes my day.

!!! info Feedback and logs appreciated.