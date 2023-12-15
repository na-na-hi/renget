#How to mixtral for retards

Have at least 20GB-ish VRAM / RAM total. The more VRAM the faster / better.

**Grab latest Kobold:**
>https://github.com/LostRuins/koboldcpp/releases/

**Grab the model**
Download one of the quants according to what you can fit in your VRAM / RAM. If you can fit the entire thing into VRAM then speeds will be much better but quality loss really starts dropping off under 4bit.:

![Image description](https://i.imgur.com/AA1xKHV.png)

>https://huggingface.co/TheBloke/Mixtral-8x7B-Instruct-v0.1-GGUF/tree/main

In kobold set model to the model...
Under the tokens tab set Rope Base to 1000000 (that is 1 Million for those that put 100k then complain)
Context size depends on how much ram you have but 32k is what it was trained up to.

Prompt processing is not optimized for moe yet so: >Turn BLAS batch size to "Dont Batch BLAS"

**Disable repetition penalty, frequency penalty and don't use mirostat on whatever frontend your using such as SillyTavern.**

**Use Alpaca formatting.**
Its official formatting actually performs worse than alpaca.


"### Instruction: | ### Response:" Without the quotation marks and separator. Instruction for input, Response for output.

It will work just like that but for more performance read the guide on CuBLAS / GPU layers and such: >https://github.com/LostRuins/koboldcpp/wiki 

**Mixtral common pratfalls:**
Using 2bit (at least atm, maybe that will eventually change.) 

Using mirostat, seen at least 3 times that it causes it to repeat / makes mixtral retarded.

Using rep penalty / frequency penalty, same as above.

Apparently SillyTavern has multiple formatting issues but the main one is that card's sample messages need to use the correct formatting otherwise you might get repetition errors. Begin them with:
"### Instruction: | ### Response:" Without the quotation marks and separator. Instruction before the users part and response before the characters.

**Mixtral Examples:**
>https://imgur.com/a/YvekXt8