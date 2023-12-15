#How to mixtral for retards

Have at least 40GB-ish VRAM / RAM total. The more VRAM the faster.

**Grab latest Kobold:**
>https://github.com/LostRuins/koboldcpp/releases/

**Grab mixtral-8x7b-instruct-v0.1.Q5_0.gguf:** 
>https://huggingface.co/TheBloke/Mixtral-8x7B-Instruct-v0.1-GGUF/tree/main
And I mean Q5_0 not Q5_K_M. Something is wrong with K quants and they are dumber.

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
Using below 5bit (at least atm, apparently quants work differently for moe models.) 
(*This may be fixed now and lower quants might be worth using. If so Q3_K should be possible with about 20 GBs: https://github.com/ggerganov/llama.cpp/pull/4406#issuecomment-1855151885*)

Using mirostat, seen at least 3 times that it causes it to repeat / makes mixtral retarded.

Using rep penalty / frequency penalty, same as above.

Apparently SillyTavern has multiple formatting issues but the main one is that card's sample messages need to use the correct formatting otherwise you might get repetition errors. Begin them with:
"### Instruction: | ### Response:" Without the quotation marks and separator. Instruction before the users part and response before the characters.

**Mixtral Examples:**
>https://imgur.com/a/YvekXt8