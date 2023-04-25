!!! danger This guide is incomplete and does not appear to be working for 8GB cards. (Confirmed working for 10GB+ cards though.) For support go to  https://github.com/oobabooga/text-generation-webui/issues/147
!!! warning for an updated guide see https://rentry.org/llama-tard-v2

!!! info Get the updated HF Converted model weights here: ```magnet:?xt=urn:btih:dfd88399d0ea53e2d38654ea9d5c15267ce1922d&dn=LLaMA-HF&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce```

# Run LLaMA on a potato card (8GB VRAM Edition)

So you don't have a beefy card but you want to run the latest and greatest LLaMA? Well look no further.

## Install text-generaton-webui
All you need to do is install https://github.com/oobabooga/text-generation-webui.
This repo defaults to the most efficient settings, to load the most model into the smallest card.
(It also gives you a nice webUI with a chat interface too.)

## Acquiring the CORRECT "HF" Model Weights
But wait, there's one more thing. You need the MODEL WEIGHTS. But you don't need just any LLaMA model weights.

The original leaked weights won't work. You need the "HF" (HuggingFace) converted model weights. 
You can get them by torrenting this magnet link: ```magnet:?xt=urn:btih:dfd88399d0ea53e2d38654ea9d5c15267ce1922d&dn=LLaMA-HF&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce```

Specifically you will need **the 7B model.** You don't need 13B, 30B or 65B-- but just go ahead and grab them (and seed!) to share the love.

## How to tell if you have the HF Converted Weights
If you already have some weights and are not sure if they're the right ones, here's how you can tell.

The **WRONG** original leaked weights have filenames that look like:
 ```consolidated.00.pth```
```consolidated.01.pth```

The **CORRECT** "HF Converted" weights have filenames that look like:
```pytorch_model-00001-of-00033.bin```
```pytorch_model-00002-of-00033.bin```
```pytorch_model-00003-of-00033.bin```
```pytorch_model-00004-of-00033.bin```

## So you got the right weights, now what?

Put them in ```text-generation-webui/models/LLaMA-7B```

Now, from a command prompt in the text-generation-webui directory, run:
```conda activate textgen```
```python server.py --model LLaMA-7B --load-in-8bit```
and GO!
You now have the latest and greatest running on your dinky gaming card!

# Troubleshooting

## Help I got an OOM error (or something)
If you run into trouble, ask for help at https://github.com/oobabooga/text-generation-webui/issues/147

# BONUS: KoboldAI Support

KoboldAI also requires the HF converted model weights in the torrent above.
Simply place the weights in ```KoboldAI/models/LLaMA-HF```

Until KoboldAI merges the patch to support these weights you'll have to patch it yourself. 
(KobaldAI will probably be patched soon, so you could also just wait if you're not feeling brave.)

## How to patch KoboldAI for LLaMA support

Coming Soon **Watch this space for updates**