-> **Full version of our post about dumping CAI logs** <-

Matrixfag here. When I made my first post about the release of Pygmalion-350M, I mentioned that we would need more conversational data in order to make bigger and better models, and that we would talk more about that in another post. Well, here's that post. We've set up a way for people to help build the data required to fine-tune larger models: a website where chatlogs from CAI can be submitted for the purposes of compiling a dataset. As said before, good conversational data required to make a chatbot is hard to come by. With CAI logs, we can obtain a valuable resource to get Pygmalion-1.3B and beyond up and running.

The process required for sending data consists of two steps:
1. Scrape your CAI chatlogs and definitions of any bot you have made and download it into a .json file. This is done through our CAI dumper userscript, which can be found here along with a guide on how to use it: https://github.com/0x000011b/characterai-dumper

2. Go to https://dump.nopanda.io/ and upload your JSON files of either chatlogs or bot definitions. Your data will be stored on a secure server and will not be touched until it is time to use them for fine-tuning.

This userscript will process your chatlogs and bot definitions and turn it into JSON files that you can download and then submit to the dumper site. It also will attempt to anonymize any sensitive details within said chatlogs, such as your username and display name. However, the link for the dumper got out of the Matrix before it could be fully tested, meaning that there is a bug in pre-1.2 versions of the userscript where your CAI display name may be unredacted in the logs. If you downloaded the logs on a pre-1.2 version of the userscript, we urge you to update the userscript and re-download your logs before dumping them. In addition, you should check your logs yourself *regardless of the userscript version* for any personal information which might not have been caught by the userscript and redact it manually. Replacing any personal details with "[REDACTED]" should do.

We've been debating for a while on whether to make the conversational data public for the sake of transparency and openness or private for the sake of privacy. In the end, we came to a compromise: **IF YOU WISH**, you can select an option that says you consent to having your conversations show up in a subset of the data which will be released for public use. This dataset can be used for anyone who wants to make open chatbots. Should we fail to deliver, other people will have a boost in creating their own AIs, as well as help advance research in the field in general. All data that is selected by the submitters to be in the public dataset will undergo further automated anonymization. We do not want personal information to be in our data, period, and especially in any data to be released to the public.

I realize that a post coming in and asking you to dump your data to a website may not be warmly received - understandably so. Feel free to reply with any questions or concerns and I'll do my best to reply to everyone. As always, the Matrix server can also be joined at https://matrix.to/#/#waifu-ai-collaboration-hub:halogen.city?via=halogen.city - feel free to ask us anything there. A process like this requires constant communication and transparency, and we want to make sure we maintain that as we start scaling up our models.

Thank you all for the support you showed for Pygmalion-350M's release! It blew our expectations out of the water and gave us a huge whitepill. A better future is coming, everyone. Just hold tight, and keep your smile.

DUMPER WEBSITE: https://dump.nopanda.io/
USERSCRIPT & GUIDE: https://github.com/0x000011b/characterai-dumper
PYGMALION RENTRY: https://rentry.org/pygmalion-ai

___
-> ![Pygmalion](https://i.ibb.co/5rtcQfR/pygmalion2.png) <-