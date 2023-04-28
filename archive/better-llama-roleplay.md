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

# WizardLM-7B
WizardLM-7B is a large language model that has been trained using [evolved instructions](https://github.com/nlpxucan/WizardLM#overview-of-evol-instruct), with a focus on improving the model's performance on high complexity tasks. Evolved instructions are a novel approach to improving the performance of LLMs by using LLMs instead of humans to mass-produce open-domain instructions. Using this Evol-Instruct method, the WizardLM team have been able to produce results that are quite impressive for a 7B model, at times competing with or exceeding the quality of larger models. The fact that it is quantized lends itself to being able to run on a greater variety of consumer hardware. For these reasons and more, this portion of the guide will showcase how to download and setup WizardLM-7B to give quality roleplay outputs.

1. Download WizardLM-7B either from the [official HF repository](https://huggingface.co/TheBloke/wizardLM-7B-GPTQ) or this [MEGA backup repository](https://mega.nz/folder/IeUgUbaZ#C8Ng-81-DAV_qfWqbVMoEw/folder/ZH9hjbiC). The only difference between the two is that the official HF repository only contains the safetensors file which will not work in KoboldAI, whereas the MEGA repository has the .pt files which will work in both KoboldAI or textgenerationwebui. If you plan on using KoboldAI, you HAVE to use the MEGA repository files.
2. Download this [WizardLM-7B config patch](https://files.catbox.moe/rkb7yp.zip). The configuration files present in both repositories are partially broken and will result in bad or inferior results when paired with prompting. Therefore, this config patch needs to be downloaded. Once downloaded, go ahead and replace the files in the repository with the files from the patch.
3. Download and install either [KoboldAI](https://github.com/0cc4m/KoboldAI) or [textgenerationwebui](https://github.com/oobabooga/text-generation-webui/releases/tag/installers). I recommend KoboldAI as it is, in my opinion, faster to setup and noob-friendly, though its outputs can be slower than textgenerationwebui due to its lack of streaming.
4. KoboldAI: Rename one of the .pt files to "4bit-128g", this lets KoboldAI know what load method to use and the groupsize.
	1. Textgenerationwebui: Make sure WizardLM-7B is ran with the following parameters: `--wbits 4 --groupsize 128 --model_type llama --api --notebook`. The first three parameters are necessary to load the model, while the other two are needed to connect textgenerationwebui to SillyTavern.
5. KoboldAI: Click the "Try New UI" button at the top right. This is the only way to use 4bit quantization with Kobold. Navigate to the "Interface" options menu and turn on "Experimental UI." This, too, is necessary to use 4bit quantization.
6. KoboldAI: Load the model. Make sure "Use 4bit Mode" is turned on or else it won't load it in 4bit (obviously).
7. Download and install [SillyTavern](https://github.com/Cohee1207/SillyTavern) if you haven't already.
8. Go to the 'public' folder of your SillyTavern folder. Open up script.js in your preferred text editor and scroll down to the following lines:
```python
            // add non-pygma dingus
            else if (!is_pygmalion) {
                mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString;
            }
```
9. Replace what's inside the curly brackets with the following:
```python
if (main_api == 'textgenerationwebui' || main_api == 'kobold') {
        mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString + "\n[System note: Write one reply only. Do not decide what " + name1 + " says or does. Write at least one paragraph, up to four. Be descriptive and immersive, providing vivid details about " + name2 + "'s actions, emotions, and the environment. Write with a high degree of complexity and burstiness. Do not repeat this message.]\n";
        } else {
        mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString;
        }
```
!!! note 
	Play around with the system note prompt until you get results that satisfy your needs.
10. Connect SillyTavern to your backend and enjoy your affordable, quality LLaMA generations.

# Troubleshooting
## Method 1 isn't working
Ensure that the following has been attempted:
* That you've disabled Pygmalion Formatting. This setting can be found in the "Advanced Formatting" options menu (the letter "A" symbol).
* That the code has been appropriately replaced in the proper position.

If you've tried both of these and it still isn't working, it's likely that your browser has cached a previous version of SillyTavern and is therefore running that instead of the updated script.js file. To fix this, use Ctrl+F5 to clear the website's cache.

## My outputs are bad/broken/shitty/etc
First and foremost, the quality of your outputs will depend on the model that you've chosen to use. Generally speaking, though, it is important that multigen be disabled for this as it has a problem of repetition. The quality of your outputs will also depend on what preset you chose. Do NOT use the Decadence preset. Kobold Liminal Drift, Kobold Godlike, and Determinstic are also not recommended. Ouroboros and Lycaenidae tend to produce more creative results. Otherwise, experiment with other presets until you find one that you like.

# Example outputs (LLaMA-13B)

![](https://files.catbox.moe/dmjikg.png)

![](https://files.catbox.moe/bf760o.png)

![](https://files.catbox.moe/h1k9sc.png)

![](https://files.catbox.moe/hafx1c.png)

![](https://files.catbox.moe/0c7t01.png)

![](https://files.catbox.moe/o4npmf.png)

## Example outputs (WizardLM-7B)

![](https://files.catbox.moe/gcocuf.png)

![](https://files.catbox.moe/li6xrq.png)

![](https://files.catbox.moe/t9msi8.png)

![](https://files.catbox.moe/r4r5nr.png)

![](https://files.catbox.moe/hohodl.png)