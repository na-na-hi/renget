https://desuarchive.org/g/thread/92488977/#q92496247

>QRD?
A user named slaren wrote code to load the model in faster with mmap (this is in reference to the llama.cpp project) 
https://archive.ph/MTOYZ
>@slaren made 7 commits in his fork, which @jart then squashed down into one
https://archive.ph/GDQUP
>@jart rewrote @slaren's code, which slaren wrote first
https://archive.ph/Uva8c
>slaren confirms he wrote all that code 
https://archive.ph/69A39

Jart then closes the PR and makes a new one. Says it was "written in collaboration with @slaren"
https://archive.ph/1Wh0G
As part of the changes jart claims the model is a "sparse graph" and uses 10x less memory too. 
Jart starts taking all the credit, "my changes" "my work" "I just wrote" "I'm the author" 
>"slaren" made the first PR and talked about all his changes. jart closed it and made a new PR instead of marking it as non-draft once it was ready:
https://archive.ph/PyPFZ
>Jart has gone from "co-author" to "collarboated with slaren" to "my code," "my work," "I authored it."
https://archive.ph/qFrcY
https://archive.ph/k34V2
>note there is not a single mention of slaren in the 350+ replies

jart convinced ggerganov to dump the version system and put in a magic number with her initials in it 
https://archive.ph/FgHmG
which he admits was a mistake 
https://archive.ph/5WGMJ#selection-8639.16-8639.25

someone claiming to be slaren commented here confirming all this
>Slaren here. Pretty much all that has been said here is correct, what jart did was to take my code, remove backwards compatibility, add a new converter and then proceed to take all the credit. What is even worse is that was completely unnecessary, the converter in PR #545 already did all that was needed without breaking anything, and it is a much better implementation, faster and more clean. Maybe I should have contested it but I was and still am going through a pretty rough patch in my life and just didn't have the willpower to start any drama. Mostly I think it sucks because IMO the worse technical solution got merged because their PR had a more flashy title.

Interestingly, slaren mentioned jart was a co-author in the PR
>jart initially created an implementation of mmap a couple of week back that was an abomination that relied on doing things like replacing malloc. Completely unworkable in a real code base. Later on, after spending some time on the llama.cpp code for other reasons I realized that this would actually be trivial to implement properly. All it required was changing maybe 10-20 lines of code and it didn't break anything. This only worked with 7B models but later on I realized that with PR #545 this could be extended to work with any model without any other changes.
>So anyway, I joined jart's discord and talked to her about this a bit, she seemed to be interested in collaborating and that's why I added her as co-author, even thought she didn't write a line of code of the PR. Eventually out of nowhere she opened the PR that you all know and asked me to close mine. That's when I realized what was happening. So whatever, I did what she asked, left her discord and tried to forget about it.

https://desuarchive.org/g/thread/92488977/#q92496597

You'll need to include this in your rentry, around "jart approved as code contributor on March 15th"
On March 13th a user named l29ah added an issue saying mmap could be used
A few users began working on this, including jart, who wrote a proof of concept by rewriting malloc()
on March 27th a user named slaren added a proof of concept that didn't need to rewrite malloc, which would've been retarded:
https://archive.ph/Q9pTc#selection-24859.16-24859.25

Jart btw has 82 sponsers (paypigs) on github and 21k followers on twitter also has a patreon

#####Further investigation
https://archive.ph/0kllS
no mention of only co-authoring (if that) the change on wiki (from a first time account for said edit)
https://archive.ph/YqGws
occupywallstreet twitter drama (once it got too popular jart came in to steal the twitter back) 
https://archive.ph/ZaaBA
unhinged twitter behavior (ah yeah we should all be slaves to the techbros!) 
https://archive.ph/0Eult
gavin mcinnes gamergate interview lmfao 
>Justine is a computer programmer who describers herself as both a “trans woman” and a “nerd.” Despite being the founder of OccupyWallSt.org, Justine defies leftist stereotypes and fought hard against the PC thought police during #Gamergate 

#####It goes on
https://archive.is/7cLMv#selection-1301.0-1301.5
slaren responds to jart's explanation. note how jart gets slaren's name wrong and while saying he'd like to "mediate" the situation has yet to reply to slaren's side of what happened. 
>I was trying to distance myself from this situation, but this is just too painful to read. I am sincerely sorry that people have harassed you on my behalf, but I have no control over what some people say or do on an anonymous board based on publicly available information.
>That doesn't mean that I am happy with the way our collaboration was handled. Why did you create a new converter when you knew there was already an existing pull request that addressed the same issue? Why did you modify the model format and break backwards compatibility when the current format was proven to work with mmap? Why did you change the magic string of the file format to include your initials, when there was an explicit version number field for this purpose? Why did you create a new pull request when you could have added your changes to mine? Why did you rush to merge the PR instead of taking your time to verify that everything worked properly, while listening to feedback from the other contributors and users? Why did you did you ignore concerns raised by other contributors in my PR? Why are you claiming that I was unable to make the WIN32 code work when the final version in your PR is virtually identical to mine, making me look incompetent?
>Ultimately, it was my decision to move on, close my PR and allow yours to continue unchallenged, and I owned that decision every single time that I have commented about it, including in the PR linked in this post, where I recommended keeping your PR and working on fixing the issues being raised. I am sorry that some people have harassed you, but making me responsible about this is extremely unfair. There are plenty of reasons for people to feel disappointed about your behavior without me having to say anything about it.
>I don't expect that anyone will believe me about this, after all I am just an "anonymous person". The truth is, I am extremely weary about posting this because I know how much damage you can do to me if you insist on this route to your followers. What is your theory, that because I am nobody I have nothing to lose? How are you not aware of the huge power imbalance between a "celebrity programmer" with thousands of followers and a nobody like me?
>Anyway, all the information is publicly available on github for anyone who cares enough to verify it.
>- slaren

https://archive.ph/YnSNE#selection-1429.0-1429.27
>That's not the original PR. jart was working on a malloc() approach that didn't work and slaren wrote all the code actually doing mmap, which jart then rebased in a random new PR, changed to support an unnecessary version change, magic numbers, a conversion tool, and WIN32 support when that was already working in the draft PR. https://archive.ph/Uva8c
>This is the original PR: https://github.com/ggerganov/llama.cpp/pull/586.
>Jart's archived comments:
>"my changes"
>"Here's how folks in the community have been reacting to my work."
>"I just wrote a change that's going to let your LLaMA models load instantly..."
>https://archive.ph/PyPFZ
>"I'm the author"
>https://archive.ph/qFrcY
>"Author here..."
>"Tragedy of the commons...We're talking to a group of people who live inside scientific papers and jupyer notebooks."
>"My change helps inference go faster."
>"The point of my change..."
>"I stated my change offered a 2x improvement in memory usage."
>https://archive.ph/k34V2
>"I can only take credit for a 2x recrease in RAM usage."
>https://archive.ph/MBPN0
>"I just wrote a change that's going to let your LLaMA models load instantly, thanks to custom malloc() and the power of mmap()"
>https://archive.ph/yrMwh
>slaren replied to jart on HN asking her why she was doing and saying those things, and she didn't bother to reply to him, despite replying to others in that subthread within minutes. https://archive.ph/zCfiJ
