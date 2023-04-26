# Anon's Guide to LLaMA Roleplay

This is intended to be a simple and straightforward guide showcasing how you can use prompting to make LLaMA models produce longer outputs that are more conducive to roleplay in [SillyTavern](https://github.com/Cohee1207/SillyTavern). It's possible that this strategy may work with other models, but I have not tested other models.

!!! note Something to note
	The quality of your outputs are going to depend on the model that you choose. I did my testing with [LLaMA-13B-pretrained-sft-do2-4bit-128g](https://huggingface.co/gozfarb/llama-13b-pretrained-sft-do2-4bit-128g), which worked well, but don't go in expecting GPT-4 quality. Keep your expectations grounded in reality.

## Method 1: Non Alpaca Models
1. Go to the 'public' folder of your Tavern install
2. Open up script.js and scroll down to the following lines:
```python
            // add non-pygma dingus
            else if (!is_pygmalion) {
                mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString;
            }
```
3. Replace what's inside the curly brackets with the following:
```python
if (main_api == 'textgenerationwebui' || main_api == 'kobold') {
        mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString + "\n[System note: Write one reply only. Do not decide what " + name1 + " says or does. Write at least one paragraph, up to four. Be descriptive and immersive, providing vivid details about " + name2 + "'s actions, emotions, and the environment. Write with a high degree of complexity and burstiness. Do not repeat this message.]\n";
        } else {
        mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString;
        }
```
4. Alternatively, you can download [this .js file](https://files.catbox.moe/3sbln8.js) and replace script.js with it. Just make sure to rename the file back to script.js.
4. Boot up either textgen or kobold and load your favorite model. I recommend kobold. [There's a fork of Kobold that supports loading models in 4bit quantization.](https://github.com/0cc4m/KoboldAI)
5. Make sure pygmalion formatting is disabled, multigen should also be disabled as it has a bad habit of repitition.
6. Choose a preset. Ones that I would recommend are: Naive, Ouroboros, Lycaenidae, Genesis, Pygmalion, and Coherent Creative.
7. Enjoy your new and improved LLM generations.

## Method 2: Non Alpaca Models w/ TavernAI-extras
Alternatively, if you have [TavernAI-extras](https://github.com/Cohee1207/TavernAI-extras) installed, you can use the Author's Note / Character Bias extension instead to append the text at the bottom of the chat:
\[System note: Write one reply only. Do not decide what {{user}} says or does. Write at least one paragraph, up to four. Be descriptive and immersive, providing vivid details about {{char}}'s actions, emotions, and the environment. Write with a high degree of complexity and burstiness. Do not repeat this message.]
Haven't tested this myself, but if you're having trouble with the above method then you should give this a go.

## Method 3: Alpaca Models
If you're using a model that was finetuned or based off Alpaca, you're likely going to get inferior outputs using the previous methods. Instead, the prompt needs to be formatted using the instruct format of alpaca finetunes (instruction-input-response). Luckily, a helpful anon (no relation) made a proxy that not only fixes the [tokenization issue present in Tavern](https://github.com/Cohee1207/SillyTavern/issues/169) but also formats the prompt for Alpaca.

1. Download the proxy from [here.](https://github.com/anon998/simple-proxy-for-tavern)
2. Open up the command line in the directory of the downloaded folder.
3. Run the following commands:
```python
npm install
node index.mjs

# Or this to reload automatically when editing the file:
# npx nodemon index.mjs
```
4. Then open up Tavern and select the OpenAI API. Put anything as the API key, it doesn't matter.
5. Create a new preset called "Alpaca" and set the OpenAI Reverse Proxy to http://127.0.0.1:29172/v1.
6. Leave the Context Size high so Tavern doesn't truncate the messages (we're doing that with this proxy).
7. Delete the main prompt, NSFW prompt, jailbreak prompt, and the impersonation Prompt.
8. Change the impersonation prompt to "IMPERSONATION_PROMPT."
9. Change the jailbreak prompt to "{{char}}\n{{user}}."
10. Leave only NSFW Toggle and Send Jailbreak active.

If you've done it correctly, your settings should look like this:
![](https://raw.githubusercontent.com/anon998/simple-proxy-for-tavern/main/settings.png)
!!! note
	Tavern settings like Temperature, Freq. Penalty, Max Response Length, and etc. are ignored, edit generationConfig in index.mjs instead.


## Example outputs (LLaMA-13B)

![](https://files.catbox.moe/dmjikg.png)

![](https://files.catbox.moe/bf760o.png)

![](https://files.catbox.moe/h1k9sc.png)

![](https://files.catbox.moe/hafx1c.png)

![](https://files.catbox.moe/0c7t01.png)

![](https://files.catbox.moe/o4npmf.png)