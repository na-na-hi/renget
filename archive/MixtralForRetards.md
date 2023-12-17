#How to mixtral for retards

Have at least 20GB-ish VRAM / RAM total. The more VRAM the faster / better.

**Grab latest Kobold:**
>https://github.com/LostRuins/koboldcpp/releases/


**Grab the model**
Download one of the quants according to what you can fit in your VRAM / RAM. (NOTE: Apparently the K quants are not working properly and make the model schizo, use something like the Q5_0 instead. I've also seen some oddities that the K quant for 6bit is worse than 5bit. NOTENOTE: Apparently this might be a issue with just llama.cpp? I'd play it safe and still use the non K quants until we have a solid answer.) If you can fit the entire thing into VRAM then speeds will be much better but quality  really starts dropping under 4bit:

![](https://i.imgur.com/AA1xKHV.png)

>https://huggingface.co/TheBloke/Mixtral-8x7B-Instruct-v0.1-GGUF/tree/main

---

In kobold set model to the model...
Under the tokens tab set Rope Base to 1000000 (that is 1 Million for those that put 100k then complain)
Context size depends on how much ram you have but 32k is what it was trained up to.

Prompt processing is not optimized for moe yet so: >Turn BLAS batch size to "Dont Batch BLAS"

**Disable repetition penalty, frequency penalty and don't use mirostat on whatever frontend your using such as SillyTavern. 1.00 rep pen == off.**

---

**Use its official formatting.**
(On ST these are under the big A on top. Change the Context Template to Mixtral.)

(Under Instruct Mode Sequences for ST):

Mixtral:
Input Sequence: 
" </s> [INST]" 
Output Sequence: 
" [/INST]"
Without the quotation marks and make sure the spaces are respected.

---

Some suggested settings for Mixtral for creative use, more Temperature = more "creativity". For logic tests / coding you might want to use something like top k 1 to get rid of the "randomness" instead though you can probably find a balance between creative and correct. You can increase context up to 32K if you have the ram.
![](https://i.imgur.com/2Q3J9VQ.png)
(The Ban EOS Token part depends on what you want as it will trail off without it checked (up to the response length) but might also end its response early with it.)

It will work just like that but for more performance read the guide on CuBLAS / GPU layers and such: >https://github.com/LostRuins/koboldcpp/wiki 


---

**Mixtral common pratfalls:**
Using 2bit (at least atm, maybe that will eventually change.) 

Using mirostat, seen at least 3 times that it causes it to repeat / makes mixtral retarded.

Using rep penalty / frequency penalty, same as above.

---

**Silly Tavern being Silly Tavern**

Apparently SillyTavern has multiple formatting issues but the main one is that card's sample messages need to use the correct formatting otherwise you might get repetition errors. The Smilely Face "you" section seems to have the same issue. Begin them the same as the formatting section depending if is supposed to be you instructing (INPUT) or the model responding (OUTPUT).

Also if RPing with a character card make sure "Always add character's name to prompt" is checked under formatting, though this might confuse it if using a open ended story format instead of a exchange between characters, the same for any model.

---

Other than that its smart enough to understand pretty much anything you tell it for your use case. Want for it to write in story format but not write dialogue for you? Want it to respond with only 1 paragraph and / or only as a certain character?  Want to build a entire RPG / VN with a stats / inventory system for it to keep track of?  Just tell it to.

**Guide for running Mixtral on vast.ai from another anon:**
>https://rentry.org/mixtral_vastai_for_dummies

**Mixtral Examples:**
>https://imgur.com/a/YvekXt8