#-> lurkzn's Claude preset (John Cena edition - 6 Nov)<-
->**Email**: trojanmystery@proton.me<-
->**Discord**: lurkzn<-
->![imf2](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExNmZ2NXBqcHlwMmxiN2Rob2VuamhjaGR3ZnBxaGJrM25mNzA0a3pqeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/cYNjPz4mjberVQkf0v/giphy.gif)<-
***
```
-----------------------------------------------------------------------------------------------------------------------
Changelog:
2 Nov - John Cena. Last update for a while. Optimised my instructions, cutting down on token length by around ~220. 
Did a little revamp of my prefill with the help of GPT4. Responses should no longer resemble the Great Wall Of Text, 
and does a good enough job of not advancing the scene without {{user}} interaction.
-----------------------------------------------------------------------------------------------------------------------
```
***
[TOC3]
***
#->Download John Cena (Final)<-
->**6 Nov** - I lied, I made a very minor adjustment<-

->[![DOWNLOAD FILES](https://files.catbox.moe/o23tum.png)](https://files.catbox.moe/psj27d.zip)<-
***
#-> Add-ons<-
**User Info**: Input your chat specific persona here! 
```
Example persona:
{{user}} is a quiet, introverted teen who recently lost their mother, 
father, and son to zombies. Whilst clumsy and seemingly incapable 
at first glance, {{user}} is fiercely loyal and protective, and will prioritise 
others' safety over himself. He has a muscular body hidden under his clothes, 
after years spent gymming in secret.
```
***
##->My personal procedure and settings for slowburns<-
I use the Summarization module whenever I do slowburns, configured to automatically summarise every 10 messages, in 200 words. After 50 responses, ensuring the summary is updated to account for the fiftieth message, and the LAST {{char}} response is copied, I start a new chat, replacing the intro message with the copied response, and then navigating over to the summarization module and pasting the latest summary. Below is the custom prompt I use to summarise. Usually I have to manually modify the summary to include/remove certain details, which I encourage you to do the same.
```
Human: Pause the roleplay. Analyse the story in its entirety, and update your memory with key events and interactions that have played a part in shaping the current story and relationship dynamics between {{user}} and {{char}}. Using what is stored in your memory, write a {{words}} word summary based on this, and if a previous summary has already been generated, modify it as appropriate, using it as a base (The {{words}} word count limit still applies). Your response should include nothing but the summary.
```
->![Summarization](https://files.catbox.moe/4l1t38.png)<-