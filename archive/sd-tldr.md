# TL:DR: 

Stable Diffusion is a deep learning, AI text-to-image art model. NovelAI is a company known for AI text-to-text generation, similar to AIDungeon which you may have heard of already. All these things are based upon research and development from the AI company OpenAI. 

NAI recently released their first foray into AI art generation, an anime AI art model based on SD. This AI art generator is (imo) much much better in quality and style than the more popular WaifuDiffusion, which is also an anime AI art model created by the open source community. NAI achieved this through various tweaks they made. NAI's model however is closed-source and only available against a fee on their website, whereas WD is open-source and freely available to all.

NAI's model was recently leaked as part of a breach of security. 

Automatic1111 is a prominent developer of a popular open source tool for AI art generation based upon SD known as "WebUI". Usually one can just plop a .ckpt file (which is basically the model) into WebUI and run it. NAI's model however used such tweaks as to not normally work without doing some tweaking to WebUI. 

Auto was however quick to make his UI compatible with the leaked model. SD is cooperating a lot with NAI, and as such asked Auto to take these changes down. However, in the same message they also accused Auto of writing these changes with the help of stolen code from the leak, and also removed one of his roles in their Discord without first hearing his side of the story.

Auto refuses to comply, and explains that the code he wrote is based upon research and development that was done quite some time ago already and is open-source. The function in question was published on December 21, 2021 here:

https://github.com/CompVis/latent-diffusion/commit/e66308c7f2e64cb581c6d27ab6fbeb846828253b. 

But that is in fact still not the original source. The original source code was published on On August 3, 2021 here: 

https://github.com/lucidrains/perceiver-pytorch. 

The original code's license allows commercial use, so nobody is wrong for using it. The license can be read here:

https://github.com/lucidrains/perceiver-pytorch/blob/main/LICENSE. 

SD next response was to then immediately ban him from their Discord, instead of addressing his claims. Auto then made a post on 4Chan accusing NAI of almost 1 to 1 stealing code from him for their model. You can see see the exchange here: 

https://imgur.com/a/Z2QsOEw.

SD has since then only doubled-down on their accusations, and the most recent development is that they took over the /r/StableDiffusion subreddit from their former moderators, causing an already big uproar in the community about this to spiral completely out of control, prompting an exodus to a new subreddit called /r/sdforall. All the top posts on /r/stablediffusion are currently about the exodus or drama in general. The original post about the takeover can be read here: 

https://www.reddit.com/r/StableDiffusion/comments/y19kdh/mod_here_my_side_of_the_story/