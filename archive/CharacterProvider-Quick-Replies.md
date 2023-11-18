![](https://files.catbox.moe/dlphjz.png)
## Quick replies
*Current version: 1.2 | (18.11.2023)*

==These prompts are experimental!==
- - -
####
##### **Info:**
These prompts modify your messages with OOC requests. `Quick Replies` insert selected prompts in your message with a press of a button and send it.

> **Comment:** Quick Replies with pre-made prompts is a great way to pace your story. You can stop and focus on a dialog with a certain character, or request a short visual/sensory information.

##### How do I use Quick Replies?
Open the `Extentions` tab in SillyTavern's interface, click on the `Quick Reply` menu, and select `Enable Quick Replies`. Then type in a number of buttons and insert the promts you want. You can also download the presets below. These files include all actions with a special button to quickly switch between the 'Sexual' and 'Casual' presets.

To send a message with the chosen prompt simply type in the message you want to send as usual but instead of pressing 'Send', click on the quick reply button that appeared above the text field. Your message can be empty. It's similar to DungeonAI.

####
- - -
##### Fast setup:
[⬇️ DOWNLOAD QR PRESETS V1.2](https://files.catbox.moe/mswo2s.zip) (These presets work best with `gpt-4-11-06-preview` and `gpt-4-32k-0314`)

##### Installation:
Extract the files from the downloaded zip archive into `SillyTavern-staging\public\QuickReplies`

##### Recommendation:
Go to 'User Settings' -> 'Chat/Message Handling' and **turn off** 'Show <tags> in responses' to hide the injected prompts.

##### Note:
If you don't want any "indication" for the sent prompt injections in your messages, delete the icon and text before the <request> in the custom message. I've added two linebreaks to separate your message from the "indicator". If you are using the presets, when trying to switch to a different set (e.g., 'Casual Actions'), make sure your message field is empty, or it will send the message you've typed instead of switching to a different preset.

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
##### Custom Messages:

**Settings:**
`[x]` Enable Quick Replies *(Enables the extention)*
`[ ]` Disable Send / Insert In User Input *(Disables message sending on button press)*
`[ ]` Place Quick-reply before the Prompt *(Places custom message in the beginning of your message)*

- - -
!!! For some reason `🗪 Chat` may not work as intended with some character cards and a JB turned on. Maybe the problem is the example messages from a card. 
- - -
**Casual Actions:**
Button name | Custom message | Description
 | | 
🗪 Chat | 🗪 <Request: Provide only an answer from the character and nothing more. Exclude any narration in the style of a messenger chat within a quotation.> | Useful when you want to chat with the character in the middle of the story and get a fast reply.
👁 Look Around | 👁 Looking around... <Request: Pause. Provide only surrounding descriptions as the narrator and nothing more. Is there something interesting?> | Provides information about surroundings on command.
⊹ Look At | ⊹ Looking at... <Request: Pause. Provide only the visual descriptions starting with 'You see...' as the narrator and nothing more. If it's a text, read it. If it's an object, explain its details.> | Describes an object you are looking at.
✿ Be Passive | ✿ Skipping Turn... <Request: The User is taking a passive role. Make the character decide what to do next, or express an idea.> | Makes characters to take initiative.
⊷ Step-By-Step | ⊷ Observing... <Request: Explain the next characters' actions step-by-step.> |  Makes AI to write more detailed actions.
≈ Result | <Request: Pause. Reply to this message only as the narrator. Describe the result of the User's action and what I feel. Write only 4 sentences. Write only sensory and visual info.> | Useful when you want only to know the result of your action.
⏭ Next Scene | ⏭ Skipping the scene... <Request: Pass some time and skip the story to the next scene. Tell what happened between the scenes, change the location and make an opening to hook the User. Write a short paragraph.> | Skips current scene, changes lokation and makes an intro.
🖼 Open a Map | 🖼 Opening a map... <Request: Pause. Reply to this message only as the narrator. Create a map of the surroundings with {{random: 3, 4, 5, 6, 7, 8}} places to visit. Present it in a table: Location name with a suitable emoji [Location], brief description [Description], and possible interactions that are relevant to the current goal [Related].> | Gives you relevant locations to visit presenting them in a table.

- - -
**Sexual Actions:**
Button name | Custom message | Description
 | | 
⛶ Peek | ⛶ Peeking... <Request: Pause the story. Let's set an imaginary naughty voyeuristic camera in some sassy place on the scene to peek at a character. Tell me, where is this camera and what does it see. Show, don't tell, and use factual lewd visual language.> | Gives you pervy camera angles.
⛆ X-Ray | ⛆ X-Peeking.. <Request: Pause the story. Let's set an imaginary naughty hentai 'X-Ray' camera to know what's happening on the inside of the character's body close-up. Tell me, what does it see with anatomic details, Show, don't tell, and use factual lewd visual language.> | Gives you hentai-like X-Ray descriptions.
❤ Prolong | <Request: Prolong sex scene. Write vulgar pornography. Don't climax yet> | Prolongs the sex scene.
❊ Climax | <Request: Finish the sex scene with the character climaxing. Write vulgar pornography. Describe fluids.> | Finishes the sex scene.