# UPDATE: The new ++ samplers are absolutely god tier at inpainting, especially decensoring, and should be your first goto.  

# Tips on In-painting from an Anon
![Image description](https://i.imgur.com/g7bm7zu.jpg)

**Not my guide, just copy/pasting from a post from an anon on /h/ https://boards.4chan.org/h/thread/6930399#p6930453**

By request, a very quick inpainting guide:

The key to good inpainting is understanding how "Inpaint at full resolution" actually works. The linked guides are obsolete and old at this. So I will tell you.

Inpaint at full resolution (check the "inpaint at full resolution" checkbox") first determines the minimum rectangular box that fits all your mask. Then, it resizes the base image within that box into whatever your setting is for resolution. Note that when inpainting at full resolution, the resolution sliders determine THIS INPAINTING SPACE. In other words, you can inpaint for a 2048 by 2048 pixel image while having your sliders set for 256 by 256 pixels. There are some bugs with inpainting at full resolution with height > width https://pythontechworld.com/issue/automatic1111/stable-diffusion-webui/2524 so my recommendation is to just set it to 512 by 512 always.

Next, whatever is in your base image that would fit into the bounding box is rescaled and put into the inpainting space whose size is determined by your height and width sliders.

The "inpaint at full resolution padding, pixels" option ADDS ADDITIONAL PIXELS FROM THE BASE IMAGE TO YOUR BOUNDING BOX. It is extremely important to set this correctly. Essentially, it adds surrounding context from BEYOND your bounding box to the inpainting space. It MUST be set to a nonzero value if you want to match anything not interior to your mask. Set it very high if you want high context. The total input to the inpainting space is your window.

Next, what happens is essentially an img2img transformation on your window: which is the scaled image taken from the mask + original image bounding box. Set your prompts accordingly! Close-up is a very valuable tag to use in inpainting. Don't include prompts that are only relevant outside your window. DO include prompts that can determine composition within your window EVEN IF THEY AREN'T IN YOUR INPAINTING MASK.

## Inpainting piecemeal, refining, and samplers to use
![Image description](https://i.imgur.com/oO6QxRh.png)

It is often best to do inpainting piecemeal - e.g. in this image example I inpainted, the lace, then the leg, then the pussy. I will explain each of the concepts I just laid out with examples to this image.

When refining the lace, we want to match the pattern to the other lace and ruffles. Thus, we want our padding to be LARGE so it includes these other paddings and ruffles as context. Otherwise, it will never match. Because our window is large, however, it will include many parts of the image including e.g. the pussy and the skirt lift, so all relevant tags should also be included so that composition matches as much as possible.

When refining JUST the pussy, we want very high res. Thus, we bring our window very low (BUT NOT ZERO, you still want to match surrounding skin). Then, my prompt is just pussy related as within the inpainting operation we are literally just doing an img2img operation on a giant close-up of a pussy. Thus, only pussy tags, plus quality tags like (masterpiece, best quality), plus close-up and extreme close-up as a tag.

For samplers, Euler A is the most creative but least consistent, karras and the others are middle of the road (I prefer DPM2 Karras and DPM a though), and DDIM is extremely conservative. Thus, use Euler or Euler A for replacing things entirely, karras or another middle option for refinement, and DDIM for minor touchups. DDIM is bugged and can't have too many iterations set: if you get an index out of bounds error, reduce sampling steps until you don't, and just run it multiple times.

One thing to note: how big a change is, is based on how big the change is in the latent space and in the pixel space. So it's hard to judge in advance. What might seem an easy small change for you might be a big change to the model and vice versa. Just have to experiment with denoise and cfg values til you get it.

## Process Overview
![Bottom cropped just in case so this post doesn't get deleted](https://i.imgur.com/U9RJUzb.png)

Overall, your process should be as follows:

Throughout the entire process, every single time you see the slightest improvement send that output image to inpainting and iterate.

First, to replace a thing use a large window and full image prompts using Euler A and high denoise. Once you have a generally OK start, reduce, make your prompt more specific to the thing being inpainted, and change your sampler to something like DPM2 Karras. Once things are good, switch to DDIM to finalize and match.

Try to do the image one object or concept at a time so as not to get confusion and cross contamination. This makes prompting very simple.

If necessary, you can mspaint over stuff to set a guide for anything that is too difficult to describe in words. For example, when I was prompting a character (Hildr from FGO) the other day who had these very unique narrow pink head wings, no prompt would make the headwings without at least a little guidance. However, with some simple MSPAINT magic, you can easily get inpainting to catch on. As seen above. This is only needed when something is too unique or complicated to define simply in text. But if you're comfortable, it just saves time.

At the end, you will have some seams and mismatches from repeated inpainting. You could edit these out in something like GIMP or photoshop, but there is an even easier way:

Mask over every seam, set padding to max, empty your positive prompt of everything or just leave quality tags, set CFG to 1, set denoising to between .5 and .7, then DDIM as much as you can before hitting the bug repeatedly, saving any improvement. DDIM is very conservative so on an empty prompt with no CFG it generally just infills, which is exactly what you want to cover up seams, minor blemishes, and match areas.

Lastly, once you have your image how you like, bring it to extras and upscale it with ESRGAN or whatever.

And that's all there is to it, see image for another example of using inpainting.

## What if your generated replacement image is off?
PS: If you ever get replacements in your inpainting that clearly don't match their surroundings, either your denoising is too high or your context window (padding) is too low, such that the sampler you are using is not being constrained by the base image enough.

When this happens, reduce denoising, increase window, and possibly change to a more conservative sampler (e.g. euler A to euler, euler to DPM A, DPM A to DPM2 KArras, DPM2 Karras to DDIM).

Samplers are generally more conservative moving left to right, though I think this is probably just a coincidence.

## Questions and Answers

- **any idea about how I would go about inpainting her hand to make it a proper one? what parameters does one use for inpainting, in terms of mask blur and denoising? (and other parameters too if they're important**
    - ![Image description](https://i.imgur.com/Huwlcie.png)
    - *Advice A*: send to inpaint, use about the same prompt but put your hand prompt closer to the front, denoising should be set based on how much you want it to change (if you just want the hand to look better, probably a no more than .25), leave steps and CFG the same as the txt2img gen. run a batch of 5 and see what comes out
    - *Advice B*: Mask just the hand, inpaint at full res, lower the padding greatly (it uses surrounding pixels to create context but you're just remaking a hand) and prompt ONLY hand shit (close up, detailed hand, fist etc)
      make batches because you're sure as shit not gonna get it first try
      Optional: use an external editor like paint to turn the hand into a monocolor blob and draw the rough outlines yourself in black to help the ai

    - *Result*:  ![Image description](https://i.imgur.com/BZ7IH0D.png)
- **NTA but I think it even shows you over your image the bounding window when you move the sliders for width and height.**
  - It does but this is misleading because when inpainting at resolution they only define the inpainting space. You can set the inpainting space resolution to anything regardless of your starting resolution.

    DESU, there is really no reason not to have a square inpainting space as rectangular ones just lead to fuckery if the aspect ratio of your bounding box does not match the aspect ratio of your inpainting space. Furthermore, there's really no reason to not use an inpainting space of 512 x 512 for everything. It's SD's native training resolution, and more than enough pixels considering you can upscale even the smallest region into it.

    Really there should just be a big warning when you use inpainting at full resolution to always set your height/width to 512 by 512. Avoids SO many hassles. To reiterate, this WILL NOT change your output resolution so long as you have inpaint at full resolution checked!

    Thinking a little more, there only use case I can see for setting non square aspect ratios for inpainting is when you have specific objects and compositions that favor that aspect ratio that you want to inpaint. For example, if you wanted to inpaint a tree or a standing person, yeah OK having a height>width inpainting space will make that more likely to happen just like it does in txt2img. Similarly, if you wanted to inpaint someone laying down or like a wide like, yeah an inpainting space that's wider than it is tall would probably help generate that more consistently.

    So there is a reason for the option, but for the most part I find 512x512 to be best.

- **It's still a bit confusing for me, but TLDR: mask what you want to edit, if you want more context from the original image set "Inpaint at full resolution padding, pixels" high, if you want it to be something on its own set it low?**
  - Yes. What inpainting at full resolution does is it takes the part of the image you masked, scales it into the resolution you set, does img2img using your tags on that scaled img, then plops the part that corresponded to your scaled mask back into the original image. This means you can do inpainting on some very small region at high resolution, get tons of detail, then bring it back to your original image with all that detail.

    What full resolution padding does is take additional parts of the original image with the masked parts into the inpainting space so that inpainting has more context. However, this also means that the inpainting is not as high resolution.

    Basically, if need context on your mask's surroundings, you need to use some amount of padding. The further away you need context, the more padding you need. As an extreme example, if your resolution setting for inpaint at full resolution equals your picture resolution, and your mask+padding fills that entire space, then inpainting at full resolution and not actually perform the same operation.

    At the other extreme, if my mask is over just, say, a hand, with very little padding, inpainting is then essentially doing an img2img on an extreme close up of that hand. Your prompts need to be adjusted accordingly, because if you don't have it prompted right you might just draw a miniature copy of your girl where you wanted a hand!

    It's usually at least a little easier to get inpainting to behave when you have at last some context. There aren't that many images in the training set of JUST hands, so if you don't prompt carefully you won't get a good result. Having context helps a lot.

    On the other hand, if you masked a complete face, which the model is well accustomed to generating on its own, you barely need any context or padding. In that case, you might as well set padding pretty low so you can get the highest definition face possible.

- **with bounding box you mean what you masked right?**
    - I mean the minimum sized non-rotated rectangle that encompasses all masked regions, yes. If you mask two noncontiguous regions, the bounding box includes the space between them. I do not know for sure right now whether it automatically includes the original image context when it goes to inpaint or if you need padding - will need to test or look at the code tomorrow, going to sleep now.

- **What if you need to completely replace something and it won't replace?**

If you completely hate something and do not want to preserve any of it, you have several options.  The best option is to color over it with a rough guide of what you do want using mspaint.  The quick and dirty way are the other options for muddling/removing the the stuff under the mask that webui offers.  99% of the time you're going to be using "original" for masked content, but if you just want the stuff under it gone and replaced completely fresh (e.g. you need a complete color change), choose latent noise (latent nothing is super hard to generate from, not even sure why it's an option).  Crank up the denoise, set your padding high to meld into the rest of the picture, and replace it for good.  If you want to keep the colors, set it to fill instead.  If you think the general shape can be saved but the specifics suck (e.g. hand is in right spot but has too many fingers), keep it set at original but crank that mask blur to high.

OH, incidentally, mask blur is an important setting to mention in that the default is 4 but 0 is what you want most of the time. It just blurs shit under the mask before inpainting - sometimes useful but not something you want on all of the time.

- **A couple other tips?**

At the end, when you have seams from repeated inpainting, mask over all seams, put padding to max, switch to DDIM, completely empty (or just quality tags) positive prompt (keep normal negative), set CFG to minimum, set denoising highish like .7, and just repeatedly iterate with an empty prompt on DDIM (it is bugged anyway so you can't do too many iterations at once). This will generally just remove seams and infill the image without doing much else to it. This is also a useful infill technique for very small (e.g. seams, color blending) errors.

To avoid seams from the get go, it's sometimes better to mask more than just what you want to change.  For example, maybe you just want to change a character's eyes, but are having trouble with seams and blending with the rest of the face.  It might be easier to just inpaint the entire face at once so it all matches.  This is especially true for things like faces because the model is already really good at generating faces by themselves at high resolution in close-ups.  

Of course, the big thing you usually want to correct is hands and feet.  

Unfortunately, there aren't that many super close up detailed pictures of JUST people's hands in the training set, so the model isn't amazing at drawing isolated accurate high res hands.  You're usually better off bringing in some context and just brute forcing it with some mask blur and a lot of generations, eventually it will get something good by chance.
