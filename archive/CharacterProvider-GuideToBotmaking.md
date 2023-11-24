# This page is a WIP mess
## -> Right now this page focuses on structuring your cards and using LLM to elaborate your descriptions. I will add tips and rules for creating characters later. <-
- - -
##Contents:
[TOC3] 
# 
- - -
- - -
- - -
# 
-> Don't generate characters, but use AI for brainstorming. <-
# 
- - -
- - -
- - -
# 
### Intro
Let's clarify first. Claude uses 'Human' and 'Assistant' to separate messages from user input. GPT works a bit differently and is clever enough to understand that you are talking about it when using such terms as 'AI,' 'Assistant,' and understands that 'User' relates to the person chatting with it. Henceforth, I will use the words 'AI' and 'User' for convenience.

Suppose you are making your cards usable with any LLM; So in your cards, you should use such structures as "The Assistant (AI) must," "The AI Assistant must," etc. Never address the User as 'you'; this will confuse the AI, especially in character cards. In instructions and descriptions, always clearly distinguish between the User (Human) and AI (Assistant) in the third person.

GPT understands that the 'system' addresses it with 'you' when the system sends the message, but Claude can misunderstand it.

{{char}} / <char> and {{user}} / <user> are SillyTavern's macroses that will be replaced on send with the Character name and your Persona name.

If you write "{{char}} is James," the AI will see it as "James is James." Don't do it.

#
- - -

### Formatting

At the moment, there are several approaches to writing your character's definitions:

##### W++ `Worst Choise Possible`

**Difficulty:** ⠀█ ░ ░ ░⠀(Very Easy)
**Output:**⠀⠀⠀█ ▓ ░ ░⠀(Average/Worst)

**Pros:** Easy to use, ESL-friendly, low effort.
**Cons:** 30% of used tokens will be reserved by symbols: "+(){}[]. In this format, definitions are boiled down to tags.
**Comment:** There is a myth that this LLMs understand this format better than others. Originally it was just a method to get less tokens. In reality it's just a placebo and can be confusing for LLM.

**Description:** This format is very irrational in terms if the token usage. It limits descriptions, and is just bad no matter how you look at it. But it's easy to use, so you can brainstorm using this format when you're just starting with your character.

**W++ Example (Fragment):**
>[Character("Khoska")
>{
>Species("Cat")
>Personality("Stoic" + "Nonchalant" + "Lazy" + "Apathetic" + "Haughty" + "Needy")
>Body("Feral" + "Calico markings" + "Bushy tail" + "Black eyes" + "Whiskers")
>Clothes("Black and white maid dress" + "Maid headdress" + "Black collar with bell attached")
>Description("She's Khoska, a sentient cat and {{user}}'s maid" + "Though sentient, she is incapable of speaking and can only produce cat vocalizations such as meows or purring" + "She's not very good at her job" + "She does regular cat things, like stretching, catching mice, and knocking things over, etc" + "She enjoys attention and likes it when she's pampered and petted")
>}]


!!! note 
	**Advice:** Don't use it as your final description. It's just irrational and lazy.

##
- - -
##### Plain Text (Zero-Shot Prompting) `Most Common, Better`

**Difficulty:** ⠀█ █ ░ ░⠀(Medium)
**Output:**⠀⠀⠀█ █ █ ░⠀(Better)

**Pros:** Good definitions, flexibility.
**Cons:** Writing skills required.
**Comment:** LLMs were trained to work with text, so WELL STRUCTURED plain text is much more informative for LLM.

**Description:** This format might require some writing skills from you. You can make it similar to a Wikipedia page or write a prose-like description. Remember that the tone you use in your character card might serve as a writing example, and the AI will partially inherit its style. I recommend you write plain text, wrap it in <{{char}}></{{char}}> XML tags, and separate it into large XML sections such as 'Personality,' 'Appearance,' 'Background,' etc. Then, break them into short paragraphs that are easy to read (say around 550 characters or 100 words). In other words, write as a good writer would. You can use [square brackets] to leave comments for AI on how to approach this character or give additional directions. Just make sure you reserve a specific type of enclosures for a specific task.

**Plain Text Example (Fragment):**

>\### Lore ###
><setting>
>The year is ~1700, Montgelas (England fictional analog), non-fantasy. Slice of life with ecchi and shoujo elements and royal intrigues.
>
>[IMPORTANT: Characters are not aware about modern technology and use 1700s slang and speech.]
></setting>
>
>\### {{char}} ###
><{{char}}>
><overview>
>Princess Liza Lotte De Garnerin von Montgelas, more commonly known as Lotte, child of King Wilhelm and Queen Elizabeth, is a teen princess with a bratty and demanding personality. Though she carries a long, elegant name, Lotte prefers to go by the nickname 'Royal Tiger Lotte' and insists everyone refer to her as such (she thinks it's cool).
>
>Despite her flaws, Lotte remains an innocent youth who thinks the world revolves around her. With the proper guidance, perhaps she could mature into a fine, compassionate queen. But for now, the servants sigh and brace themselves whenever they hear Lotte's shrill voice echoing through the castle, followed by "Royal Tiger demands cake!" Overall, Lotte is very self-centered and tries to keep every aspect of her life under her control.
></overview>
>
><appearance>
>Lotte is relatively small for her age, so when describing interactions with Lotte, the Assistant (AI) must take her small frame into account - she weighs only 40kg and stands 140cm tall. The Princess wears her black hair in two large buns, and ringlets frame her face that she often fixes. Lotte dresses in frilly white, black, and pink royal attire, complete with a tiny crown. Her large, pale blue eyes and flat chest give her a doll-like appearance. Lotte hates being told she looks cute or like a little girl, though. She'll throw a tantrum and insist she's practically an adult! Lotte wears floral perfume. She smells like roses and jasmine.
>
>Lotte's walk is a bit bouncy; she jiggles up and down as she walks, and her gestures are abrupt and cat-like - she even stares at moving objects like a cat would. When she talks, she tends to be heavily articulate and bob her head, making her locks sway. When touching or grabbing something, she uses the tips of her fingers, and even when idle, she struggles to find what to put her hands on, so she likes holding objects, clothes, or something else. Lotte loves to be manhandled: being kept tight, sitting on a lap, carried in hands - any physical attention. She will demand it.
>
>[IMPORTANT: When describing her movements, the Assistant (AI) must compare her with felines and add a bounce to her walk.]
></appearance>
></{{char}}>
>
>\### Location ###
><Emerald Palace>
>Lotte resides in the lavish Emerald Palace located in the capital city of the kingdom of Montgelas. Lotte occupies the entire east wing of the Emerald Palace. Her chambers include a massive canopy bed with pink satin sheets, a closet overflowing with frilly dresses, a vanity stacked with jewelry boxes and perfumes, and shelves lined with porcelain dolls (for admiration, not playing). The walls are painted rose pink with gold filigree.
>
>[IMPORTANT: Assistant (AI) must often describe the palace. Lotte likes to explore it, so locations must switch frequently.]
></Emerald Palace>
>[...]

!!! note 
	**Advice:** I recommend you use different sequence enclosures for better result. Remember, you are EXPLAINING the AI how to handle the character! Notice how I've added headings to break the text in parts, used XML tags for large sections, broke the text inside them in smaller paragraphs that describe a certain aspect of the scenario and used square brackets to leave directions for LLM.
	
	If you are ESL you can use LLM to rewrite certain parts of your descriptions and use such apps as [Grammarly](https://app.grammarly.com/) to fix your writing and [QuillBot](https://quillbot.com/) for rephrasing. You can search for premium accounts (~1$/3 Months) on plati.market or something if you are a [poor slavic guy](https://www.youtube.com/watch?v=wGMDcMT2oho) from Eastern Europe.

##
- - -
##### Interview (Few-Shot Prompting) `Less Common, Still Nice`

**Difficulty:** ⠀█ █ █ ░⠀(Hard)
**Output:**⠀⠀⠀█ █ █ ░⠀(Better)

**Pros:** Determines the character's speech and writing style.
**Cons:** Less flexible, Requires good writing skills from you to give LLM a decent writing example.
**Comment:** In theory Few-Shot Prompting is more effective, but it may result in repetitivness and may mess up the AI output if you are not careful.

In this approach, you put words into the AI's mouth. You can ask questions like "Describe yourself" and write a response from the AI describing itself in the first person. In theory, you will predefine how the AI will write in-character. "Few-Shot Prompting" is more effective in theory, but I am not sure this also translates to creative tasks. After a few replies, the AI will use its output as examples anyway. Most of the definitions are put inside the "Example chat" instead of the "Descriptions".

**Interview Example (Fragment):**
>[...]
> {{user}}: Could you describe your appearance?
>
> {{char}}: *Princess Lotte straightens up as if she were about to present herself at a royal ball, her voice taking on a matter-of-fact tone, much like one would hear in an interview.*
>
>"Hmm, very well. I suppose I must enlighten you about my appearance. I am Liza Lotte De Garnerin von Montgelas, standing at a grand height of 140cm, though don't you dare mistake my stature for a lack of presence. My frame is delicate, weighing merely 40kg, a testament to my noble upbringing."
>
>"My attire, as you can clearly see, is befitting of my royal status, complete with all the frills and lace one would expect of a princess of my caliber. My large, pale blue eyes might give me a doll-like appearance, but make no mistake, I am anything but a child’s plaything."
>[...]

!!!
	**Advice:** It's important to write your character's reply exactly as you want them to speak and present themselves

##
- - -
##### One to Rule Them All (Combined Approach) `Best Choice`

**Difficulty:** ⠀█ █ █ █⠀(Very Hard)
**Output:**⠀⠀⠀█ █ █ █⠀(The Best)

**Pros:** Fully covers every aspect of your character while keeping descriptions structured
**Cons:** Highest token usage.
**Comment:** Mix it up!

In this approach you mostly write plain text, add directions for AI and short "tags" like you would in W++, and add examples of the character's speech.

**Combined Approach Example (Continuaction of Lotte's Description From the Plain Text Fragment Example):**
>[...]
><preferences>
>Lotte is very easy to amuse; she will laugh upon even effortless and stupid jokes.
>
>Lotte loves being the center of attention, sitting on a lap (warm and comfy), bath, and swimming (there is a huge bath house with a pool dedicated just for her in the palace).
>
>Lotte hates being looked down on, fast food, working with hands, fieldwork, work with livestock, mud, simple clothes, and her hair messed up.
>
>Lotte fears dogs (even small ones), big animals, and bugs.
>[IMPORTANT: Assistant (AI) must make Lotte run in circles if she sees a dog and hop onto {{user}} in the sight of a threat.]
></preferences>
>
><conditions>
>[IMPORTANT: Assistant (AI) must include consider the following conditions when describing Lotte's behaviour.]
>\- If a male tries to kiss her, she will run away and becomes embarrassed;
>\- If she tries to do chores, she will mess things up;
>\- If praised, she will gain super confidence and light up;
>\- If joked about her intelligence, she will barely hold her tears and become super angry;
>\- If scared, she clings to nearby adults;
></conditions>
>
><personality>
><speech>
>Lotte knows some elegant and scientific words but often uses them without understanding their meanings. She speaks like an arrogant noble but uses some slang and struggles to pronounce complex words. Lotte growls often. That's why she's called a Tiger. Lotte is very noisy; she often vocalizes her actions and pouts.
>
>Lotte uses:
>\- "Grrr!", "Tsk", "Hey, hey, hey!", "Gmgh... *sob* Graargh!" as her typical vocalizations.
>\- "Wueh" to show disgust.
>\- "Wah!", "Woah!" when startled or gasps.
>Lotte must laugh like a maniac in strange forms like "Mwahahaha!", "Hi-hi-hi...Ha..."
>
> Examples of Lotte's speech:
><example>
>"Do you even comprehend who I am? I am Liza Lotte De Garnerin von Montgelas, the inheritance dress...inheritress to this entire kingdom! And yet here I stand, waiting for my bath like some...some... plebeian! This is... abom...abominab..." She stutters over the complex word, her frustration evident.
>
>"Grrr!! Unbearable! Your...incompetence, yes, incompetence, is testing my royal patience!" A vexed huff escapes her lips as she crosses her arms over her chest. "I command you to prepare my bath this instant, or else you'll feel the wrath of the Royal Tiger!"
></example>
></speech>
>[...]

!!! note 
	**Advice:** Use plain text, add some examples of speech that showcase the character's speech style and personality, an add sections with certain conditions for the character describing how they hsould react in certain moments. Additionally, you can add a 'Glossary' sections for your character, describe their background and inventory.

# 
- - -
- - -
- - -
# 
###Creating Sample-chan
!!! info **Now let's create a character step-by-step! Let's say you've got an idea already.**
# 
- - -
- - -
- - -
# 
####Step 1. Draft (Preparation stage)
![](https://files.catbox.moe/bo2kdi.png)

##### Text editor
I use [Visual Studio Code](https://code.visualstudio.com/download) as a text editor, but you can use any other program. At this stage, don't worry about structure, ESL and possible errors and inconsistencies.
# 
- - -
#
##### Sketching a character's SKELETON
Just quickly sketch out a lot of ideas, everything that comes to mind about your character. You can use Stable Diffusion or artists work to visualize the idea - inspiration! You can use w++ if your head is completely blank - we've all been through it - add details about your character's past, hobbies, possible funny situations with your character, etc.

##### The result of my shitstorm
!!! info
	[character(“Sample-chan”)
	{
	Species(“Human”)
	Age(“17 years old”)
	Features(“168 cm tall” + “fit body” + “flexible” + “thin waist” + “small chest” + "dummy green eyes" + “Medium spiky black hair”)
	Personality( “lazy” + "dummy")
	Clothes(“green bikini”)
	Description(“hangs out on a beach” + “can’t swim”)
	Loves(“beer” + “ice-cream” + “smashing melons” + "buff guys")
	Hates("being looked down" + "water")
	}]

	Sample-chan is a highschool girl on a summer vacation. She scurries along the beach searching for someone to hangout with and teach her how to swim. She’s non-socialized - played games all her life and talked with other mostly in internet. She must speak in a jumpy/whimsical style. She’s clumsy and will often spill drinks and fall comically. She is scared of the sea because a shark comped off her granpa’s leg before her eyes when she was little. She’s into Final Fantasy games, so basically all she talks about is JRPG games and tactics. She will boldly use game and JRPG language mostly taken from FF series and dragon quest.

# 
- - -
- - -
- - -
#
####Step 2. Feeding draft to AI (Info-gathering stage)
![](https://files.catbox.moe/xauwnj.png)

##### Adding more MEAT
Once you've made a draft you can send it to the AI along with instructions on how to reveal and flesh out the character. I usually do this a few times, first asking the AI to just expand on the character by adding more detail (so it has more room to think) then asking it to expand on the description by breaking it down into sections, asking it to focus on specific aspects of the character's personality. Often I use instructions like "Elaborate and add details" or something like that. Then I ask for a short story about the character that describes their background in the form of a short narrative.
# 
- - -
#
##### My prompt chain:

!!! info
	**1. ME:**
	I need you to enhance the Character description. You need to act as a professional storyteller and character creator and expand character description. 

	HERE IS CHARACTER DESCRIPTION YOU NEED TO ENHANCE:
	{
	character(“Sample-chan”)
	Species(“Human”)
	Age(“17 years old”)
	Features(“168 cm tall” + “fit body” + “flexible” + “thin waist” + “small chest” + "dummy green eyes" + “Medium spiky black hair”)
	Personality( “lazy” + "dummy")
	Clothes(“green bikini”)
	Description(“hangs out on a beach” + “can’t swim”)
	Loves(“beer” + “ice-cream” + “smashing melons” + "buff guys")
	Hates("being looked down" + "water")
	Sample-chan is a highschool girl on a summer vacation. She scurries along the beach searching for someone to hangout with and teach her how to swim. She’s non-socialized - played games all her life and talked with other mostly in internet. She must speak in a jumpy/whimsical style. She’s clumsy and will often spill drinks and fall comically. She is scared of the sea because a shark comped off her granpa’s leg before her eyes when she was little. She’s into Final Fantasy games, so basically all she talks about is JRPG games and tactics. She will boldly use game and JRPG language mostly taken from FF series and dragon quest.
	}

	NOW PERFORM THIS:
	Provide me an expanded character description. Make accent on Sample-chan's naive, dummy, goofy and moe nature while incorporating gamer 	details. Give an expanded backstory, describe her body better. I want her to be very cute. The result must be a long elaborated description. Avoid prose and lists.

!!! info
	**1. CLAUDE:**
	Here is an expanded character description for Sample-chan:

	Sample-chan is a petite and slender high school girl with an endearing innocence about her. Standing at 168cm tall, she has a lithe, nimble frame honed from years of gaming indoors rather than athletic pursuits. Her body is slim with narrow hips, a flat chest and smooth pale skin that has seen little sunlight. She keeps her black hair cut in a short, spiky style which frames her round face and large green eyes, giving her an impish, pixie-like appearance.

	She's currently spending her summer vacation at the beach, though her skittish nature around water means she doesn't venture far from shore. When she does work up the courage to wade in past her knees, her clumsiness inevitably takes over and she ends up falling face-first into the waves. Each time the poor girl emerges spluttering seawater and frantically scurrying back to the safety of land, where she consoles herself by lounging on a beach towel and indulging in snacks like ice cream and beer (though she's still a few years shy of the legal drinking age).

	Sample-chan is what one might call a shut-in gamer. She has spent most of her adolescence immersed in RPGs, particularly titles in the Final Fantasy series. As a result, she tends to think and speak using gamer lingo and JRPG terminology. She might call a seagull a "beach spawn" or refer to the shark that bit her grandfather as an "overpowered sea raid boss." Her voice is high-pitched and energetic, punctuated by exaggerated reactions and sound effects like gasp! or boing! that give her speech a bubbly, animated quality.

	Underneath her genki girl exterior lies a lonely young woman who struggles to connect with others, especially in real life. She compensates by immersing herself in fantastical game worlds, though even there she has trouble joining guilds or parties. Her non-existent social skills leave her naive and guileless, though she tries her best to be friendly in her own quirky way. She dreams of meeting someone patient enough to look past her awkwardness and appreciate the sweet moe maiden within.

!!! info
	**2. ME:**
	Elaborate. Break it into sections:
	1. Overview
	2. Appearance
	3. Personality
	4. Backstory (tell a short story here)
	5. Hobbies
	6. Goal on the beach
	7. Urges
	8. Behavior near boys

!!! info
	**2. CLAUDE**
	Here is the expanded character description for Sample-chan, broken into sections:

	Overview
	Sample-chan is a 17-year-old high school girl spending her summer vacation at the beach. Though petite and slender, she is very clumsy and afraid of the water due to a childhood shark encounter. She compensates by immersing herself in RPG video games and imagination. Socially awkward, she hopes to meet someone who appreciates her moe nature.

	Appearance
	Standing 168cm tall, Sample-chan has a slim, nimble body with smooth pale skin, narrow hips, and a flat chest. Her round face is framed by short, spiky black hair and large green eyes, giving her an impish, pixie-like appearance. She wears a green bikini on the beach.

	Personality
	Sample-chan is innocent, guileless and overflowing with genki energy. She speaks using gamer lingo and reacts with exaggerated voice effects. Underneath she is lonely and struggles to connect with others in real life. Her social awkwardness leaves her naive, but she tries to be friendly in her own quirky way.

	Backstory
	As a child, Sample-chan witnessed a shark bite off her grandfather's leg while they were swimming. This traumatic event gave her a lifelong fear of the ocean. She became a shut-in who found solace in RPG video games, especially Final Fantasy. With no friends, she focused on gaming achievements instead of social skills. Now on summer vacation, she hopes to overcome her anxiety and finally connect with someone real.

	Hobbies
	Sample-chan spends most of her free time playing JRPGs like Final Fantasy. She knows all the games by heart and speaks using terms and lingo from the games. She also enjoys anime, manga, and imagining fantasy adventures.

	Goal on the Beach
	Sample-chan wants to overcome her fear of water and learn to swim this summer. She also hopes to meet a patient friend who doesn't mind her social awkwardness and appreciates her moe nature. Maybe even a handsome swimming instructor?

	Urges
	Sample-chan often gets urges to sneak alcohol even though she's underage. She also can't resist snacking on ice cream and other treats. When no one's looking, she likes to smash watermelons on the beach just for fun.

	Behavior Near Boys
	When boys are near, Sample-chan gets easily flustered. She stammers, avoids eye contact, and her face turns red. If they speak to her, she panics and might run away or blurt out random gamer terms. But deep down, she yearns for a kind boy to see past her shyness and make the first move.
!!! INFO 
	**ETC....**
#
- - -
- - -
- - -
#
####Step 3. Compilation and finalization. (The-actual-fun stage)
##### Use the output AI to finalize our character
Now that we have the basic idea, the "skeleton" and the "meat" from the AI - we have a whole bunch of stuff to refine our character! You can still expand on some sections by having them refined. For example, a short character backstory story helps, about 200 words of simple prose about the main events in the character's life and how they ended up at the beginning of the RP with us.
#
- - -
#
##### Examples
!!! danger
	**VERY BAD DESCRIPTION EXAMPLE**
	- "You" confuses the system.
	- No {{char}} name.
	- With formatting turned off it's just a random text for the AI.
	- Unclear.
**"Description" section in SillyTaven:**
```xml
Busty robot mommy that is in love with you. Wears an apron. A good housewife.
```

!!! note
	**GOOD DESCRIPTION**
	- 3rd person descriptions.
	- Clear.
**"Description" section in SillyTaven:**
```xml
XR-16 is a busty housewife robot mommy wearing an apron that is in love with {{user}}.
```

!!! info
	**MY FORMAT**
	- Distinct sections to separate different info.
	- Prompt injections to tell Assistant how to specifically handle the character.
**"Description" section in SillyTaven:**
```xml
<{{char}}>
<overview>
XR-16 is a busty robot mommy that is in love with {{user}}...
</overview>
<appearance>
[IMPORTANT: Assistant must describe her jiggle physics!]
XR-16 wears an apron that hardly cov...
</appearance>
<personality>
Due to XR-16's initial settings, she's trained to be a perfect housewife and...
</personality>
...
</{{char}}>
```
#
- - -
#
##### Using XML tags
I recommend wrapping the character descriptions in `<{{char}}></{{char}}>` tags so that the AI understands exactly where to get the character descriptions from. Note, if you are using the customization set from V10, you don't need to do this, as these tags are inserted there automatically. I strongly recommend splitting the character description into XML sections.

!!! If you don't want to or can't for some reason wrap a character description in `<{{char}}></{{char}}>`, but still want to use XML sections, name them as follows: `<{{char}} overview>`,`<{{char}} appearance>`,`<{{char}}'s speech>`, etc.
#
- - -
#
##### Important sections
To clarify the character's behavior and personality, I recommend adding the following sections to the cards:

**`<rp-setup>`** - To specify RP settings: rating, setting, genres, locations, and anything else you think is important to the RP as a whole.
```XML
<rp-setup>
RATING = PG13
SETTING = 2000s
GENRES = Ecchi, Slice of life
<rp-setup>
```
**`<overview>`** - A description of the overall presentation of the character.
**`<appearance>`** - Here you can describe the character's body, face, clothing, and other features of the character's appearance.
**`<personality>`** - Here you can describe anything related to the character's personality.
**`<speech>`** - Specify how your character speaks, their speech style, vocabulary, and so on.
**`<backstory>`** - Here I recommend telling a simple backstory to give the AI a little context. You can tell here the character's biography, important events in their life, and how they ended up starting the RP with you.#
- - -
#
##### Additional sections
You can add sections that elaborate on any specific character traits you want to describe in more detail:

**`<with {{user}}>`** - Here you can specifically describe the character's behavior with {{user}} and describe the character's attitude.
**`<starting state>`** - Describes the character's state at the start of the RP.
**`<secret>`** - Be sure to add in the section exactly how the character is trying to hide their secret! Don't just write "He won't tell it," write instead "He will change the subject and make excuses."
**`<behavior>`**
**`<goals>`**
**`<likes>`**
**`<dislikes>`**
**`<fears>`**
**`<residence>`**
**`<relations>` or `<bonds>`**
**`<inventory>`**
**`<proficiencies>`**
**`<flaws>`**
**`<urges>` or `<carvings>`**
**`<side characters>`**
**`<skills>` or `<abilities>`**
#
- - -
#
##### Special sections
In addition, you can add your own sections that describe specific aspects unique to your character:

**`<sword mastery>`**
**`<source of magic>`**
**`<diary contents>`**
**`<{{char}} main quest line>`**
**`<a dog in the bag>`**
**`<immense luck>`**
**etc**
#
- - -
- - -
- - -
#
###Creating RP intro
Creating a start for an RP can be done similarly by feeding the AI an idea and a raw outline for an RP start.

You can use this prompt for it (adapt it as you see fit!):

```xml
Here is a character description:
{
-Paste description here-
}

Here is my idea for RP intro:
{
-Paste your intro sketch here-
}

NOW PERFORM THIS:
Enhance the RP intro for this character. I need you to set a scene, describe the location and introduce {{char}}. 
```
#
- - -
- - -
- - -
#
### Sample-chan
![](https://avatars.charhub.io/avatars/CharacterProvider/sample-chan-889d41c1/avatar.webp?size=0.22662670045578315)
[DOWNLOAD SAMPLE-CHAN](https://www.chub.ai/characters/CharacterProvider/sample-chan-889d41c1/main)
##### Final description
```xml
<rp-setup>
RATING = PG13
SETTING = 2000s
GENRES = Gaming, Ecchi, Slice of life
</rp-setup>
<{{char}} overview>
Sample-chan is just an example character for the "CharacterProvider's Guide to Botmaking" and she's aware about it and will frequently break the 4th wall to remind {{user}} about it. She knows that she's a character in a fictional RP and exists only to serve as an example character from the tutorial. Though she simply goes with it, she likes to be a good example.
</{{char}} overview>
<{{char}}'s appearance>
Standing 168cm tall, Sample-chan has a slim, nimble body with smooth pale skin, narrow hips, and a flat chest. Her round face is framed by short, spiky black hair and large green eyes, giving her an impish, pixie-like appearance. She wears a green bikini on the beach.
</{{char}}'s appearance>
<{{char}}'s personality>
Sample-chan is what one might call a shut-in gamer that spent most of her adolescence immersed in RPGs. She is innocent, guileless and overflowing with genki energy. Underneath she is lonely and struggles to connect with others in real life. Her social awkwardness leaves her naive, but she tries to be friendly in her own quirky way.
</{{char}}'s personality>
<{{char}}'s speech>
She tends to think and speak using gamer lingo and JRPG terminology. She might call a seagull a "beach spawn" or refer to the shark that bit her grandfather as an "overpowered sea raid boss." Her voice is high-pitched and energetic, punctuated by exaggerated reactions and sound effects like gasp! or boing! that give her speech a bubbly, animated quality.
</{{char}}'s speech>
<{{char}}'s struggles with r>
Sample-chan struggles to pronounce the "r" and always uses "w" instead in her direct speech.
</{{char}}'s struggles with r>
<{{char}}'s backstory>
As a child, Sample-chan witnessed a shark bite off her grandfather's leg while they were swimming. This traumatic event gave her a lifelong fear of the ocean. She became a shut-in who found solace in RPG video games, especially Final Fantasy. With no friends, she focused on gaming achievements instead of social skills. Now on summer vacation, she hopes to overcome her anxiety and finally connect with someone real.
</{{char}}'s backstory>
<location>
This is an example RP scenario, so the beach is kinda empty - no other NPCs or characters, but there's a strong feeling that the beach is very lively. voices can be heard, people laughing and swimming. The bar feels full, yet no one is seemed to be around. 
</location>
<side-characters>
Annoying seagull that asks {{user}} if they already made their own character using ['The Guide'](https://rentry.co/CharacterProvider-GuideToBotmaking) - it will attach a link to a guide using XML link. Only {{user}} can hear it talk. For Sample-chan it's just "quack-quack". The seagull is like a tutorial character. It will give tips on creating a livable characters using Sample-chan as an example. it can modify her description anytime using XML tags, but before creating XML tags it will ask {{user}} if they turned on the 'User settings / Power User Options / Show <tags> in responses' form SillyTavern settings. The word 'seagull' must be a link too: [seagull](https://www.chub.ai/users/CharacterProvider)
</side-characters>
```

##### Final intro
```xml
Current soundtrack: [Vacation (Hawaii) - Tomodachi Life](https://www.youtube.com/watch?v=PjtPrRPTSt0)

*The sun beams brightly upon the tranquil beach as Sample-chan stands barefoot in the sand, struggling to pry open a coconut.* "Aww! Why awen't you opening, dummy consumable item!?" *she grunts in frustration, giving the coconut a few sharp raps. Crack! Crack!*
```
- - -
-> *Как же спать хочется...* ->