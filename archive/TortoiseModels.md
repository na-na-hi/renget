## Tortoise finetuned models

!!! info new!
French language V2
https://huggingface.co/Snowad/French-Tortoise

Princess Merida from Brave
https://huggingface.co/datasets/Bluebomber182/Princess-Merida-From-Brave/tree/main

Judy Hopps
https://huggingface.co/Bluebomber182/Judy-Hopps/tree/main

!!! info not new!
Alex Jones (Infowars conspiracy nutjob)
https://huggingface.co/datasets/SyntheticVoices/AlexJones/tree/main

Louise Belcher (Bob's Burgers)
https://huggingface.co/Bluebomber182/Louise-Belcher/tree/main

Solid Snake  (Metal Gear Solid 3 so Naked Snake technically)
https://bunkr.la/a/hGDATF8Y
(it was trained on this 1:14 sample https://vocaroo.com/1bKjtrkZCWSO 
dataset used -> https://files.catbox.moe/csbnwp.rar )

Harry Mason (Silent Hill)
James Sunderland (Silent Hill 2)
Mary Sunderland (Silent Hill 2)
Melina (Elden Ring)
Mitsuru Kirijo (Persona 3)
https://huggingface.co/ecker/tortoise-tts-models/tree/main/finetunes

Japanese language
https://huggingface.co/ecker/tortoise-tts-models/tree/main/finetunes/japanese

Serana (Skyrim)
https://gofile.io/d/EgDK75
https://bunkr.la/a/tYJyqtdr
(You might have to rename the cond_latent to "cond_latents_f3c7b7fb.pth")

and a dataset for Sersha from /gif/ (the poster don't wanna share his model for some reason)
https://anonfiles.com/E0LdXec0z5/sersha_zip

A discussion with some shared models https://git.ecker.tech/mrq/ai-voice-cloning/issues/60

## How to use:
Use with Tortoise mrq fork https://git.ecker.tech/mrq/ai-voice-cloning/wiki/Installation

Place the finetuned model .pth file (1.6GB) in models/finetunes.
Select it in Gradio UI: Settings tab -> "Autoregressive Model".
If a cond_latents_[hash].pth file (<2MB) was provided, put it in your voices/[voice]/ folder, you don't need audio samples.
If not, use regular audio samples in your voices/[voice]/ folder.