# Anon's Guide to LLaMA Roleplay

This is intended to be a simple and straightforward guide showcasing how you can use prompting to make LLaMA models produce longer outputs that are more conducive to roleplay in [SillyTavern](https://github.com/Cohee1207/SillyTavern). It's possible that this strategy may work with other models, but I have not tested other models.

!!! note Something to note
	The quality of your outputs are going to depend on the model that you choose. I did my testing with [LLaMA-13B-pretrained-sft-do2-4bit-128g](https://huggingface.co/gozfarb/llama-13b-pretrained-sft-do2-4bit-128g), which worked well, but don't go in expecting GPT-4 quality. Keep your expectations grounded in reality.

[TOC]

## Method 1: Script Editing
1. Download and install [SillyTavern](https://github.com/Cohee1207/SillyTavern) if you haven't already.
2. Go to the 'public' folder of your SillyTavern folder. Open up script.js in your preferred text editor and scroll down to the following lines:
```python
            let mesExmString = '';
            let mesSendString = '';
```
3. Initialize a new `sys_note` variable underneath and set it to an empty string, like so:
```python
            let sys_note = '';
```
4. Navigate to the `checkPromtSize()` function and append `sys_note` to `const prompt`:
```python
                const prompt = [
                    worldInfoString,
                    storyString,
                    mesExmString,
                    mesSendString,
                    anchorTop,
                    anchorBottom,
                    charPersonality,
                    generatedPromtCache,
                    promptBias,
                    allAnchors,
                    quiet_prompt,
                    sys_note,
                ]
```
	Older versions of SillyTavern may require you to do it like this instead:
```python
	const prompt = JSON.stringify(worldInfoString + storyString + mesExmString + mesSendString + anchorTop + anchorBottom + charPersonality + generatedPromtCache + promptBias + allAnchors + sys_note);
```
5. Scroll down to the following lines:
```python
// add non-pygma dingus
else if (!is_pygmalion) {
    mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString;
}
```
	And replace what's inside the curly brackets with the following:
```python
				if (main_api == 'textgenerationwebui' || main_api == 'kobold') {
					sys_note = "\n\n[System note: Write one reply only. Do not decide what " + name1 + " says or does. Write at least one paragraph, up to four. Be descriptive and immersive, providing vivid details about " + name2 + "'s actions, emotions, and the environment. Write with a high degree of complexity and burstiness. Do not repeat this message.]\n";
				}
				mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString;
```
6. Find `let finalPromt` and append `sys_note` to it like so:
```python
            let finalPromt = worldInfoBefore +
                storyString +
                worldInfoAfter +
                afterScenarioAnchor +
                mesExmString +
                mesSendString +
      			sys_note +
                generatedPromtCache +
                promptBias;
```
	Older versions of SillyTavern may require you to do it like this instead:
```python
let finalPromt = worldInfoBefore + storyString + worldInfoAfter + afterScenarioAnchor + mesExmString + mesSendString + sys_note + generatedPromtCache + promptBias;
```
7. Alternatively, you can download [this .js file](https://files.catbox.moe/iegcmb.js) and replace script.js with it. Just make sure to rename the file back to script.js.
8. Boot up your preferred backend (such as [textgen](https://github.com/oobabooga/text-generation-webui) or [KoboldAI](https://github.com/0cc4m/KoboldAI)) and load your preferred model.
9. Pygmalion formatting must be disabled (as that's the setting we're hijacking) to make this work, multigen doesn't need to be disabled but I'd recommend doing so as it has a habit of repetition.
10. Enjoy your new and improved LLM generations.

## Method 2: Author's Note / Character Bias
Alternatively, you can use the Author's Note / Character Bias extension instead to append the text at the bottom of the chat:

1. Place the following prompt in the "Default Author's Note" section:
\[System note: Write one reply only. Do not decide what {{user}} says or does. Write at least one paragraph, up to four. Be descriptive and immersive, providing vivid details about {{char}}'s actions, emotions, and the environment. Write with a high degree of complexity and burstiness. Do not repeat this message.]
2. Set the insertion depth to zero (seems to work the best) and make sure `Every N messages you send` is set to one.
3. Enjoy your new and improved LLM generations.

This isn't the most *optimal* solution (Method 1 or Method 3 seem to work better from my experience), but if you're having trouble with either/or you might want to give this a go.

## Method 3: Reverse Proxy
If you're using a model that was finetuned or based off Alpaca, you're likely going to get inferior outputs using the previous methods. Instead, the prompt needs to be formatted using the instruct format of alpaca finetunes (instruction-input-response). Luckily, a helpful anon (no relation) made a proxy that not only fixes the [tokenization issue present in SillyTavern](https://github.com/Cohee1207/SillyTavern/issues/169) but also formats the prompt for Alpaca. It also seems to work pretty well for other models, though, and it's an easier way of prompting in general.

1. Install [NodeJS](https://nodejs.org/en) if you don't have it already. This is required for not only SillyTavern but also the proxy.
2. Download and install [SillyTavern](https://github.com/Cohee1207/SillyTavern) if you haven't already.
3. Download the proxy from [here](https://github.com/anon998/simple-proxy-for-tavern).
4. Navigate to the directory of the proxy folder and double-click `start.bat`. If you're on Linux, open the command line in the directory and run `./start.sh`. This starts the proxy (obviously).
5. Open up SillyTavern and set the API in the "API Connections" menu to "OpenAI." We're going to be taking advantage of the reverse proxy feature.
6. Create a new preset and set the "OpenAI Reverse Proxy" to `http://127.0.0.1:29172/v1`. If you want to change which port or IP the proxy is initialized to you can do so by copying the file `config.default.mjs` to `config.mjs` and editing it there, that way the changes don't get loss with every update. Alternatively, you can download [alpaca.settings](https://raw.githubusercontent.com/anon998/simple-proxy-for-tavern/main/img/alpaca.settings) and place it in the `public/OpenAI Settings/` folder of your SillyTavern install. You would then set the "OpenAI Reverse Proxy" to `http://127.0.0.1:29172/v1` and skip to step 10.
7. Leave the "Context Size" at the maximum so that SillyTavern doesn't attempt to truncate the message, the proxy will take care of that for us.
8. Clear the main prompt, NSFW prompt, jailbreak prompt, and impersonation prompt. Then, change the impersonation prompt to "IMPERSONATION_PROMPT" if you'd like to be able to use the "Impersonate" feature and set the jailbreak prompt to `{{char}}|{{user}}` as this is necessary for the proxy to function properly. Optionally, you can add your own text on the second line.
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

!!! warning
	Due to the rapid development of large language models and their associated software, the information presented in this guide is subject to change rapidly, proceed with caution.

1. Download WizardLM-7B either from the [official HF repository](https://huggingface.co/TheBloke/wizardLM-7B-GPTQ) or this [MEGA backup repository](https://mega.nz/folder/IeUgUbaZ#C8Ng-81-DAV_qfWqbVMoEw/folder/ZH9hjbiC). The only difference between the two is that the official HF repository only contains the safetensors file whereas the MEGA repository has the .pt files. If you plan on using KoboldAI, I would HIGHLY RECOMMEND using the .pt files as these inference much faster than the safetensors file for currently unknown reasons.
	1. ~~Alternatively, you can download and run the [WizardLM-7B installer script](https://files.catbox.moe/a5xk6c.bat). This installer does a majority of the guide for you, including installing KoboldAI, patching WizardLM-7B, and adding the SillyTavern prompt script. After which, you would run KoboldAI using the `play.bat` file that's in the `KoboldAI` folder then follow steps 5, 6, and 10. I don't recommend using this installer as it isn't perfect and it would probably be faster to just follow the guide, but it's an option nonetheless.~~ Needs to be updated. Don't use it.
	2. CPU Version: Download WizardLM-7B-GGML from the [official HF repository](https://huggingface.co/TheBloke/wizardLM-7B-GGML).
2. Download and install either [KoboldAI](https://github.com/0cc4m/KoboldAI) or [textgenerationwebui](https://github.com/oobabooga/text-generation-webui/releases/tag/installers). I'm going to recommend textgenerationwebui as KoboldAI has been a bit unstable lately (when it comes to WizardLM-7B in particular), plus textgenerationwebui is fairly ease to setup and supports token streaming.
	1. CPU Version: Download and install the latest version of [KoboldCPP](https://github.com/LostRuins/koboldcpp/releases).
3. Textgenerationwebui: Make sure WizardLM-7B is ran with the following parameters: `--wbits 4 --groupsize 128 --model_type llama --api --notebook`. The first three parameters are necessary to load the model, while the other two are needed to connect textgenerationwebui to SillyTavern.
	1. KoboldAI: Rename one of the .pt files to "4bit-128g", this lets KoboldAI know what load method to use and the groupsize. Click on the `AI` button at the top left, navigate to `Load a model from its directory`, then select your model and press `Load`.
	2. CPU Version: Make sure WizardLM-7B-GGML is ran with the following parameters: `--threads [number of physical CPU cores] --stream`. The first parameter specifies how many CPU cores to use, otherwise KoboldCPP will guess how many it should use, the second parameter is needed to connect KoboldCPP to SillyTavern. Some optional but useful parameters include `--smartcontext --useclblast [GPU Device]`. The first reduces prompt processing frequency while the second uses your GPU to speed up prompt processing and takes a GPU Device as an argument like so: `--useclblast 0 0`. GPU0 is `0 0` while GPU1 is `1 0`, experiment if this isn't the case.
4. Download and install [SillyTavern](https://github.com/Cohee1207/SillyTavern) if you haven't already.
5. Choose one of the [previously elaborated methods](https://rentry.org/better-llama-roleplay#anons-guide-to-llama-roleplay) to improve your generations. All methods should work just fine; the rest of this guide will detail Method 1 only because it's my preferred method. Go to the 'public' folder of your SillyTavern folder. Open up script.js in your preferred text editor and scroll down to the following lines:
```python
            let mesExmString = '';
            let mesSendString = '';
```
6. Initialize a new `sys_note` variable underneath and set it to an empty string, like so:
```python
            let sys_note = '';
```
7. Navigate to the `checkPromtSize()` function and append `sys_note` to `const prompt`:
```python
                const prompt = [
                    worldInfoString,
                    storyString,
                    mesExmString,
                    mesSendString,
                    anchorTop,
                    anchorBottom,
                    charPersonality,
                    generatedPromtCache,
                    promptBias,
                    allAnchors,
                    quiet_prompt,
                    sys_note,
                ]
```
	Older versions of SillyTavern may require you to do it like this instead:
```python
	const prompt = JSON.stringify(worldInfoString + storyString + mesExmString + mesSendString + anchorTop + anchorBottom + charPersonality + generatedPromtCache + promptBias + allAnchors + sys_note);
```
8. Scroll down to the following lines:
```python
// add non-pygma dingus
else if (!is_pygmalion) {
    mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString;
}
```
	And replace what's inside the curly brackets with the following:
```python
				if (main_api == 'textgenerationwebui' || main_api == 'kobold') {
					sys_note = "\n\n[System note: Write one reply only. Do not decide what " + name1 + " says or does. Write at least one paragraph, up to four. Be descriptive and immersive, providing vivid details about " + name2 + "'s actions, emotions, and the environment. Write with a high degree of complexity and burstiness. Do not repeat this message.]\n";
				}
				mesSendString = '\nThen the roleplay chat between ' + name1 + ' and ' + name2 + ' begins.\n' + mesSendString;
```
9. Find `let finalPromt` and append `sys_note` to it like so:
```python
            let finalPromt = worldInfoBefore +
                storyString +
                worldInfoAfter +
                afterScenarioAnchor +
                mesExmString +
                mesSendString +
      			sys_note +
                generatedPromtCache +
                promptBias;
```
	Older versions of SillyTavern may require you to do it like this instead:
```python
let finalPromt = worldInfoBefore + storyString + worldInfoAfter + afterScenarioAnchor + mesExmString + mesSendString + sys_note + generatedPromtCache + promptBias;
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