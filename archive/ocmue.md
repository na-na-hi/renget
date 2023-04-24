# You suck at prompting, here's how to fix it

**This is a general guide to go over prompt formats**

Are you struggling to maintain all your details? Are you new to making stuff with AI? Do you just throw random shit into the prompt window hoping for the best? You're at the right place.

Here's how you should build your prompts:

```Location -> subject -> details about subject -> clothing/accessories that will cover most of the base features -> skin texturing for what's exposed -> lighting/composition which applies to the whole image.```

This is a general guidance for how I build every prompt, some locations or details can be moved around, but generally you want a framework to follow and build off of for testing.

This allows me to use my prompt on any other models just adjusting my denoise/cfg and individual weights without a single issue or loss of detail. If your prompt cannot be used across all your models(with slight token weight like moving .08 to .1/gen settings adjustments) your prompt is not structured coherently.


First step, read this:
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#prompt-editing

Cause | Effect
------ | ------
Super high step counts | Broken bodies, extra parts, overall bad. Most samplers need 42 or less. There's only one model I've tested that required 80-100 steps Euler-a, however most are even fine at 25-28 steps.
Over 75 tokens  | You're wrong, be more concise, after 75 tokens it resets weights onto 76, you genuinly don't need that many tokens even for highly detailed things. This will cause random details being grabbed, and make a general image ignoring the rest of your tokens. Even super weird abstract cosmic horror porn you can get your eldritch hoes in less than 60 tokens(I have). The lower your token count the better, seriously your gens will be significantly better and more accurate to what you're trying to achieve. If you're missing details and struggling getting poses this is why.
Adding 4k/8k/hdr/rtx/etc   | 90% of these will not work or make any changes on most models. Use tokens that are tagged in the training set to get exactly what you want, Photorealism/realistic are significantly better tokens, lighting is important (natural/dark/moody lighting) are usually globally recognized in models. If you want to prove it works or doesn't work do a test same seed with and without 8k/4k in the prompt, there will be a slight variation due to token attention, but you're not going to see a 'WOW SO PRETTY' change if any change at all to the quality or lighting.
mixing random tokens in various order | Bad anatomy, ignoring tokens, no coherency 
Overweighted tokens | Bleeding into other tokens, fried image, loss of details on other tokens, should RARELY need to go above 1.4/1.5, anything over 2 doesn't really matter, and at that point the rest of the prompt's weights will be fucked. If you're having issues with even high weights not applying a feature either the rest of your prompt has too much attention weighting, or you need to adjust your settings in general.
Too many specific details about a thing | Creates a mix of all tokens and/or doesn't give you what you want, Either format the details better,or play with step count additions and removals, Additionally it'll break it up into individual tokens like so `(apple bottom jeans)` is read like apple, bottom, jeans and tries combining them into one, but the AI will can also create an apple. Some tokens can be combined like so `blue_eyes` or `a dog AND a dog wearing a hat` will give you signficantly better odds at a dog wearing a hat rather than a dog and a hat.
Describing facial and body features when the subject is facing away | horrible flesh monsters, think how the AI thinks, it's a order of operations. You want a chick facing away bent over? Adding details about the tiddies/stomach/even face will confuse the AI because it's trying to make 'unseen' tiddie


Example:
This image took only 49 tokens, I can get it down to 46 without losing quality or details(no img2img/photoshop/scaler I'm lazy as shit so this is just pure txt2img)
Pay attention to how I add the action to the prompt just after the subject detail
![](https://i.imgur.com/YpTDlrH.png)
`intricate bakery,(realistic:1.25) photo of a beautiful ([black|asian|black] woman with blue eyes:1.3) holding a tray of cupcakes,(short white hair:1.3),medium breasts,(horns:1.2),(muscular:0.8), (abs:1.1),(apron:1.2),(wide hips:0.7),(thick thighs:0.7),textured skin,(freckles:0.85),masterpiece,natural lighting
Negative prompt: lowres, bad anatomy, bad hands, text,anime, cell shading, cum,cum on body,spider,missing fingers,fused limbs,fused fingers,extra fingers, oversaturation, extra face, cropped, worst quality, low quality, normal quality, jpeg artifacts, ((signature)), ((watermark)), username, blurry, artist name, mutations, bad proportions, extra head, ugly, imperfections, disfigured,((multiple angles)), ((multiple shots)), (divided images:1.3),robot eyes, censored, mouth mask, mask,hairy armpits,cross eyed,tattoos,(piercings),2girls,
Steps: 36, Sampler: DPM++ SDE Karras, CFG scale: 14, Seed: 2825934031, Size: 1024x1024, Model hash: 3d1ec685, Batch size: 8, Batch pos: 3, Denoising strength: 0.68, Clip skip: 2, First pass size: 0x0`



Last step, read this again:
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#prompt-editing
