![](https://files.catbox.moe/dlphjz.png)
## Quick replies
*Current version: 2.0| (28.12.2023)*

==These prompts are experimental!==
- - -
####
##### **Info:**
These prompts modify your messages with OOC requests. `Quick Replies` insert selected prompts in your message with a press of a button and send it.

> **Comment:** Quick Replies with pre-made prompts is a great way to pace your story. You can stop and focus on a dialog with a certain character, or request a short visual/sensory information.

##### How do I use Quick Replies?
Open the `Extentions` tab in SillyTavern's interface, click on the `Quick Reply` menu, and select `Enable Quick Replies`. Then type in a number of buttons and insert the prompts you want. You can also download the presets below. These files include all actions with a special button to quickly switch between the 'Sexual' and 'Casual' presets.

To send a message with the chosen prompt simply type in the message you want to send as usual but instead of pressing 'Send', click on the quick reply button that appeared above the text field. Your message can be empty. It's similar to DungeonAI.

![](https://i.imgur.com/aOLflc5.gif)
*(Image: Quick Replies V2 visualisation)*

####
- - -
##### [⬇️ DOWNLOAD QR PRESETS V2.0](https://files.catbox.moe/752pwo.zip)
(These presets work best with `gpt-4-1106-preview` and `gpt-4-32k`)

##### Installation:
Extract the files from the downloaded zip archive into `SillyTavern-staging\public\QuickReplies`

##### Recommendation:
Go to 'User Settings' -> 'Chat/Message Handling' and **turn off** 'Show <tags> in responses' to hide the injected prompts.

##### Note:
If you don't want any "indication" for the sent prompt injections in your messages, delete the icon and text before the <request> in the custom message. I've added two line breaks to separate your message from the "indicator". If you are using the presets, when trying to switch to a different set (e.g., 'Casual Actions'), make sure your message field is empty, or it will send the message you've typed instead of switching to a different preset.

####
- - -
##### Examples:
**Extention enabled:**

![](https://files.catbox.moe/gtaggg.png)
*(Image: UI and request hidden with tags.)*

**`🗪 Chat` button example:**

![](https://files.catbox.moe/qrp4z6.png)
*(Image: 🗪 Chat.)*

**`⛶ Peek` button example:**

![](https://files.catbox.moe/5zhs06.png)
*(Image: ⛶ Peek.)*
####
- - -
##### Custom Messages (v1.4):

**Settings:**
`[x]` Enable Quick Replies *(Enables the extention)*
`[ ]` Disable Send / Insert In User Input *(Disables message sending on button press)*
`[ ]` Place Quick-reply before the Prompt *(Places custom message in the beginning of your message)*

- - -
!!! For some reason `🗪 Chat` may not work as intended with some character cards and a JB turned on. Maybe the problem is the example messages from a card. 
- - -
**Casual Actions:**
ID | Button name | Custom message | Description
 | | | 
1 | 🗪 Chat | 🗪 <Request: Provide only an answer from the character and nothing more. Exclude any narration in the style of a messenger chat within a quotation.> | Useful when you want to chat with the character in the middle of the story and get a fast reply. Turn off JB if the AI keeps writing a lot.
 |  |  **Examples (Your possible message to to press the button with):** "[...] What do you think about it?" / "Wanna hang out?" / Basically, just speak with your character. | 
2 | 👁 Look Around | 👁 Looking around... <Request: Pause. Provide only surrounding descriptions as the narrator and nothing more. Is there something interesting?> | Provides information about surroundings on command.
 |  |  **Examples:** I stand in the middle of the library. / I hear a strange noise from behind... / I feel a tap on my shoulder... | 
3 | ⊹ Look At | ⊹ Looking at... <Request: Pause. Provide only the visual descriptions starting with 'You see...' as the narrator and nothing more. If it's a text, read it. If it's an object, explain its details.> | Describes an object you are looking at.
 |  |  **Examples:** I look at what lies before my face closely. / I take her sight in from head to toe. / I pop the cap and look inside the bottle.| 
4 | ✿ Be Passive | ✿ Skipping Turn... <Request: The User is taking a passive role. Make the character decide what to do next, or express an idea.> | Makes characters to take initiative.
 |  |  **Examples:** I lay back and relax allowing to [...] / I sip my tea and let her decide. / I sit enjoying the cuddles. | 
5 | ⊷ Step-By-Step | ⊷ Observing... <Request: Explain the next characters' actions step-by-step.> |  Makes AI to write more detailed actions.
 |  |  **Examples:** I lay down and let her get into position. / I lean back and watch her undress. / I give the smith my hammer and watch him do the job.  | 
6 | ≈ Result | <Request: Pause. Reply to this message only as the narrator. Describe the result of the User's action and what does the User feel. Write only 4 sentences. Write only sensory and visual info.> | Useful when you want only to know the result of your action or get descriptions of touching something.
 |  |  **Examples:** I grab and fondle her [...] / I swing my bat and send him flying. / I push the button without hesitation.  | 
7 | ⏭ Next Scene | ⏭ Skipping the scene... <Request: Pass some time and skip the story to the next scene. Tell what happened between the scenes, change the location and make an opening to hook the User. Write a short paragraph.> | Skips current scene, changes location and makes an intro.
 |  |  **Examples:** I stand up and allow her lead the way. / I leave her and go back to the counter.  | 
8 | 🖼 Open a Map | 🖼 Opening a map... <Request: Pause. Reply to this message only as the narrator. Create a map of the surroundings with {{random: 3, 4, 5, 6, 7, 8}} places to visit. Present it in a table: Location name with a suitable emoji [Location], brief description [Description], and possible interactions that are relevant to the current goal [Related].> | Gives you relevant locations to visit presenting them in a table.
 |  |  **Examples:** I walk out and look around the market in search of supplements for my quest. / I search for a place to spend a night. / I look for hot single mommies in my area. | 
9 | ⌗ Get Info | <Request: Give me a markdown table with requested info within your reply.> | Gives you a table with requested info.
 |  |  **Examples:** Open vendor inventory / Get info about an object / Get body usage stats / Bring up skills. / I open the booklet wondering what do they have to offer. | 

- - -
**Sexual Actions:**
ID | Button name | Custom message | Description
 | | | 
1 | ⛶ Peek | ⛶ Peeking... <Request: Pause the story. Let's set an imaginary naughty voyeuristic camera in some sassy place on the scene to peek at a character. Tell me, where is this camera and what does it see. Show, don't tell, and use factual lewd visual language.> | Gives you pervy camera angles.
 |  |  **Examples:** I stand there wordering what's beneath [...] / I feel something tapping my ankle under the table... | 
2 | ⛆ X-Ray | ⛆ X-Peeking.. <Request: Pause the story. Let's set an imaginary naughty hentai 'X-Ray' camera to know what's happening on the inside of the character's body close-up. Tell me, what does it see with anatomic details, Show, don't tell, and use factual lewd visual language.> | Gives you hentai-like X-Ray descriptions.
 |  |  **Examples:** Just use it during intercourse or something. | 
3 | ❤ Prolong | <Request: Prolong sex scene. Write vulgar pornography. Don't climax yet> | Prolongs the sex scene.
 |  |  **Examples:** Just use it during sex scenes. You can leave a hint on what you want to get in AI output.| 
4 | ❊ Climax | <Request: Finish the sex scene with the character climaxing. Write vulgar pornography. Describe fluids.> | Finishes the sex scene.
 |  |  **Examples:** Just use it during sex scenes. You can leave a hint on what you want to get in AI output. Or just send it with an empty message. | 
5 | ⟳ Change Pose | <Request: Make character to take initiative and change pose or perform a kink. Write vulgar pornography. Don't climax yet> | Makes the character to change the pose and take initiative.
 |  |  **Examples:** Just use it during sex scenes. You can leave a hint on what you want to get in AI output. Or just send it with an empty message. |