# Anon's Guide to LLaMA Roleplay

This is intended to be a simple and straightforward guide showcasing how you can use prompting to make LLaMA models produce longer outputs that are more conducive to roleplay in [SillyTavern](https://github.com/Cohee1207/SillyTavern). It's possible that this strategy may work with other models, but I have not tested other models.

!!! note Something to note
	The quality of your outputs are going to depend on the model that you choose. I did my testing with [LLaMA-13B-pretrained-sft-do2-4bit-128g](https://huggingface.co/gozfarb/llama-13b-pretrained-sft-do2-4bit-128g), which worked well, but don't go in expecting GPT-4 quality. Keep your expectations grounded in reality.

[TOC]

## Method 1: Script Editing
1. Download and install [SillyTavern](https://github.com/Cohee1207/SillyTavern) if you haven't already.
2. Go to the 'public' folder of your SillyTavern folder. Open up script.js in your preferred text editor and scroll down to the following lines:
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
4. Alternatively, you can download [this .js file](https://files.catbox.moe/nk2k03.js) and replace script.js with it. Just make sure to rename the file back to script.js.
4. Boot up either textgen or kobold and load your favorite model. I recommend kobold. [There's a fork of Kobold that supports loading models in 4bit quantization](https://github.com/0cc4m/KoboldAI).
5. Make sure pygmalion formatting is disabled, multigen should also be disabled as it has a bad habit of repetition.
6. Choose a preset. Ones that I would recommend are: Naive, Ouroboros, Lycaenidae, Genesis, Pygmalion, and Coherent Creative.
7. Enjoy your new and improved LLM generations.

## Method 2: TavernAI-extras
Alternatively, if you have [TavernAI-extras](https://github.com/Cohee1207/TavernAI-extras) installed, you can use the Author's Note / Character Bias extension instead to append the text at the bottom of the chat:
\[System note: Write one reply only. Do not decide what {{user}} says or does. Write at least one paragraph, up to four. Be descriptive and immersive, providing vivid details about {{char}}'s actions, emotions, and the environment. Write with a high degree of complexity and burstiness. Do not repeat this message.]
Haven't tested this myself, but if you're having trouble with the above method then you should give this a go.

## Method 3: Reverse Proxy
If you're using a model that was finetuned or based off Alpaca, you're likely going to get inferior outputs using the previous methods. Instead, the prompt needs to be formatted using the instruct format of alpaca finetunes (instruction-input-response). Luckily, a helpful anon (no relation) made a proxy that not only fixes the [tokenization issue present in SillyTavern](https://github.com/Cohee1207/SillyTavern/issues/169) but also formats the prompt for Alpaca. It also seems to work pretty well for other models, though, and it's an easier way of prompting in general.

1. Install [NodeJS](https://nodejs.org/en) if you don't have it already. This is required for not only SillyTavern but also the proxy.
2. Download and install [SillyTavern](https://github.com/Cohee1207/SillyTavern) if you haven't already.
3. Download the proxy from [here](https://github.com/anon998/simple-proxy-for-tavern).
4. Open the command line in the directory of the proxy folder and run the following command:
```python
npm install
node index.mjs

# Or this to reload automatically when editing the file:
# npx nodemon index.mjs
```
	This starts the proxy. `npm install` only needs to be ran once, subsequent usage only requires `node index.mjs`.
5. Open up SillyTavern and set the API in the "API Connections" menu to "OpenAI." We're going to be taking advantage of the reverse proxy feature.
6. Create a new preset and set the "OpenAI Reverse Proxy" to `http://127.0.0.1:29172/v1`. If you want to change which port or IP the proxy is initialized to you can do so by copying the file `config.default.mjs` to `config.mjs` and editing it there, that way the changes don't get loss with every update.
7. Leave the "Context Size" at the maximum so that SillyTavern doesn't attempt to truncate the message, the proxy will take care of that for us.
8. Clear the main prompt, NSFW prompt, jailbreak prompt, and impersonation prompt. Then, change the impersonation prompt to "IMPERSONATION_PROMPT" if you'd like to be able to use the "Impersonate" feature and set the jailbreak prompt to `{{char}}\n{{user}}` as this is necessary for the proxy to function properly.
9. Turn on the "NSFW Toggle" and "Send Jailbreak" settings. You can also enable "Streaming" to have the tokens streamed as they're being completed, but keep in mind this only works with textgenerationwebui and koboldcpp. If you've done your settings correctly, they should look like [this image](https://github.com/anon998/simple-proxy-for-tavern/blob/main/img/settings.png?raw=true).
10. Download and install either [KoboldAI](https://github.com/0cc4m/KoboldAI), [textgenerationwebui](https://github.com/oobabooga/text-generation-webui/releases/tag/installers), or [KoboldCPP](https://github.com/LostRuins/koboldcpp/releases) if you haven't already. If you plan on using KoboldAI, you may need to edit `config.mjs` and set `backendType` to `"kobold"`, otherwise leave it set to `null`.
11. Load your preferred model and go back to SillyTavern. Click the "Connect" button underneath the "API key." This will prompt SillyTavern to try connecting to the reverse proxy which will then cause the reverse proxy to connect to your backend, which should work successfully.
	1. Textgenerationwebui: Run textgenerationwebui with the following paramters: `--api --notebook`. These parameters are needed to connect textgenerationwebui to the proxy.
	2. KoboldCPP: Run KoboldCPP with the `--stream` parameter if you to make use of its streaming capabilities.
12. Good luck and have fun with your new and improved LLaMA generations.
!!! note Caveats
	* If you want to make adjustments to the temperature, response length, and so forth you'll need to create a new preset in the `presets` folder and change the values. 
	* Adjust the `replyAttributes` variable in `config.mjs` and create a new prompt format in the `prompt-formats` folder to further tune the AI's responses to your needs. 
	* If you want always keep the example messages in the prompt you'll have to edit `keepExampleMessageInPrompt` in ` config.mjs` while also enabling the option in SillyTavern's UI.

# WizardLM-7B
WizardLM-7B is a large language model that has been trained using [evolved instructions](https://github.com/nlpxucan/WizardLM#overview-of-evol-instruct), with a focus on improving the model's performance on high complexity tasks. Evolved instructions are a novel approach to improving the performance of LLMs by using LLMs instead of humans to mass-produce open-domain instructions. Using this Evol-Instruct method, the WizardLM team have been able to produce results that are quite impressive for a 7B model, at times competing with or exceeding the quality of larger models. The fact that it is quantized lends itself to being able to run on a greater variety of consumer hardware. For these reasons and more, this portion of the guide will showcase how to download and setup WizardLM-7B to give quality roleplay outputs.

1. Download WizardLM-7B either from the [official HF repository](https://huggingface.co/TheBloke/wizardLM-7B-GPTQ) or this [MEGA backup repository](https://mega.nz/folder/IeUgUbaZ#C8Ng-81-DAV_qfWqbVMoEw/folder/ZH9hjbiC). The only difference between the two is that the official HF repository only contains the safetensors file which will not work in KoboldAI, whereas the MEGA repository has the .pt files which will work in both KoboldAI or textgenerationwebui. If you plan on using KoboldAI, you HAVE to use the MEGA repository files.
	1. Alternatively, you can download and run the [WizardLM-7B installer script](https://files.catbox.moe/a5xk6c.bat). This installer does a majority of the guide for you, including installing KoboldAI, patching WizardLM-7B, and adding the SillyTavern prompt script. After which, you would run KoboldAI using the `play.bat` file that's in the `KoboldAI` folder then follow steps 5,6, and 10. I don't recommend using this installer as it isn't perfect and it would probably be faster to just follow the guide, but it's an option nonetheless.
	2. CPU Version: Download WizardLM-7B-GGML from the [official HF repository](https://huggingface.co/TheBloke/wizardLM-7B-GGML).
2. Download and install either [KoboldAI](https://github.com/0cc4m/KoboldAI) or [textgenerationwebui](https://github.com/oobabooga/text-generation-webui/releases/tag/installers). I recommend KoboldAI as it is, in my opinion, faster to setup and noob-friendly, though its outputs can be slower than textgenerationwebui due to its lack of streaming.
	1. CPU Version: Download and install the latest version of [KoboldCPP](https://github.com/LostRuins/koboldcpp/releases).
!!! note Having issues with textgenerationwebui? 
	There seems to be a bug of undetermined origin that is causing it to generate bad results in *very* specific situations. You're unlikely to encounter the issue yourself. If you do, though, try switching to KoboldAI for now. I will continue to look into resolving this issue and will update if I find a solution.
3. KoboldAI: Download this [WizardLM-7B config patch](https://files.catbox.moe/rkb7yp.zip). The configuration files present in both repositories are currently incompatible with KoboldAI and will result in bad or inferior results. Therefore, this config patch needs to be downloaded. Once downloaded, go ahead and replace the files in the repository with the files from the patch. If you're using textgenerationwebui or the CPU version of WizardLM-7B you can disregard this step.
	1. Textgenerationwebui: If you're using the HF/MEGA configuration files as-is, open `config.json` in your preferred text editor and make sure `use_cache` is set to `true`, otherwise your generations will be extremely slow.
4. KoboldAI: Rename one of the .pt files to "4bit-128g", this lets KoboldAI know what load method to use and the groupsize.
	1. Textgenerationwebui: Make sure WizardLM-7B is ran with the following parameters: `--wbits 4 --groupsize 128 --model_type llama --api --notebook`. The first three parameters are necessary to load the model, while the other two are needed to connect textgenerationwebui to SillyTavern.
	2. CPU Version: Make sure WizardLM-7B-GGML is ran with the following parameters: `--threads [number of physical CPU cores] --stream`. The first parameter specifies how many CPU cores to use, otherwise KoboldCPP will guess how many it should use, the second parameter is needed to connect KoboldCPP to SillyTavern. Some optional but useful parameters include `--smartcontext --useclblast [GPU Device]`. The first reduces prompt processing frequency while the second uses your GPU to speed up prompt processing and takes a GPU Device as an argument like so: `--useclblast 0 0`. GPU0 is `0 0` while GPU1 is `1 0`, experiment if this isn't the case.
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
	1. CPU Version: By default, KoboldCPP is initialized at port 5001. Make sure you change port 5000 to port 5001 when trying to connect from SillyTavern. Alternatively, use the `--port` parameter to change the port.

# Troubleshooting
## Method 1 isn't working
Ensure that the following has been attempted:
* That you've disabled Pygmalion Formatting. This setting can be found in the "Advanced Formatting" options menu (the letter "A" symbol).
* That the code has been appropriately replaced in the proper position.

If you've tried both of these and it still isn't working, it's likely that your browser has cached a previous version of SillyTavern and is therefore running that instead of the updated script.js file. To fix this, use Ctrl+F5 to clear the website's cache.

## My outputs are bad/broken/shitty/etc
First and foremost, the quality of your outputs will depend on the model that you've chosen to use. Generally speaking, though, it is important that multigen be disabled for this as it has a problem of repetition. The quality of your outputs will also depend on what preset you chose. Do NOT use the Decadence preset. Kobold Liminal Drift, Kobold Godlike, and Deterministic are also not recommended. Ouroboros and Lycaenidae tend to produce more creative results. Otherwise, experiment with other presets until you find one that you like.

# Example outputs (LLaMA-13B)

![](https://files.catbox.moe/dmjikg.png)

![](https://files.catbox.moe/bf760o.png)

![](https://files.catbox.moe/h1k9sc.png)

![](https://files.catbox.moe/hafx1c.png)

![](https://files.catbox.moe/0c7t01.png)

![](https://files.catbox.moe/o4npmf.png)

# Example outputs (WizardLM-7B)

![](https://files.catbox.moe/gcocuf.png)

![](https://files.catbox.moe/li6xrq.png)

![](https://files.catbox.moe/t9msi8.png)

![](https://files.catbox.moe/r4r5nr.png)

![](https://files.catbox.moe/hohodl.png)