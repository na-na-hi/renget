![](https://files.catbox.moe/dlphjz.png)
## Quick replies
*Current version: 1.0 | (17.11.2023)*

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
[⬇️ DOWNLOAD QR PRESETS](https://files.catbox.moe/dzciqw.zip) (These presets work best with `gpt-4-11-06-preview` and `gpt-4-32k-0314`)

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
**Casual Actions:**
Button name | Custom message | Description
 | | 
🗪 Chat | 🗪 <Request: Provide only an answer from the character. Exclude any narration. Be concise.> | Useful when you want to chat with the character in the middle of the story and get a fast reply.
👁 Look Around | 👁 Looking around... <Request: Pause the story. I look around. What do I see?> | Provides information about surroundings on command.
👁 Look at | 👁 Looking at... <Request: Pause the story and provide only the visual descriptions starting with 'You see...' If it's a text, read it. If it's an object, explain its details.> | Describes an object you are looking at.
⮞ Be Passive | ⮞ Skipping Turn... <Request: User is taking a passive role. Make the character decide what to do next, or express an idea.> | Makes characters to take initiative.
⯮ Step-by-step | ⯮ Observing... <Request: Explain the next characters' actions step-by-step.> |  Makes AI to write more detailed actions.

- - -
**Sexual Actions:**
Button name | Custom message | Description
 | | 
⛶ Peek | ⛶ Peeking... <Request: Pause the story. Let's set an imaginary naughty voyeuristic camera in some sassy place on the scene to peek at a character. Tell me, where is this camera and what does it see. Show, don't tell, and use factual lewd visual language.> | Gives you pervy camera angles.
⛆ X-Ray | ⛆ X-Peeking.. <Request: Pause the story. Let's set an imaginary naughty hentai 'X-Ray' camera to know what's happening on the inside of the character's body close-up. Tell me, what does it see with anatomic details, Show, don't tell, and use factual lewd visual language.> | Gives you hentai-like X-Ray descriptions.
❤ Prolong | <Request: Prolong sex scene. Write vulgar pornography. Don't climax yet> | Prolongs the sex scene.
❊ Climax | <Request: Finish the sex scene with the character climaxing. Write vulgar pornography. Describe fluids.> | Finishes the sex scene.