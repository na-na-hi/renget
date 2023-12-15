#How to mixtral for retards

Have at least 40GB-ish VRAM / RAM total. The more VRAM the faster.

**Grab latest Kobold:**
>https://github.com/LostRuins/koboldcpp/releases/

**Grab mixtral-8x7b-instruct-v0.1.Q5_0.gguf:** 
>https://huggingface.co/TheBloke/Mixtral-8x7B-Instruct-v0.1-GGUF/tree/main
And I mean Q5_0 not Q5_K_M. Something is wrong with K quants and they are dumber.

In kobold set model to the model...
Under the tokens tab set Rope Base to 1000000 
Context size depends on how much ram you have but 32k is what it was trained up to.

Prompt processing is not optimized for moe yet so: >Turn BLAS batch size to "Dont Batch BLAS"

**Use Alpaca formatting.**
Its official formatting actually performs worse than alpaca.


"### Instruction: | ### Response:" Without the quotation marks.

It will work just like that but for more performance read the guide on CuBLAS / GPU layers and such: >https://github.com/LostRuins/koboldcpp/wiki 

**Mixtral common pratfalls:**
Using below 5bit or any K quant like Q6_K_M (at least atm, apparently quants work differently for moe models.)
Using bad quants with wrong rope settings.

Using mirostat, seen at least 3 times that it causes it to repeat / makes mixtral retarded.

Apparently SillyTavern has multiple formatting issues but the main one is that card's sample messages need to use the correct formatting otherwise you might get repetition errors. Begin and end them with:
"### Instruction: | ### Response:" Without the quotation marks. Instruction for the users part and response for the characters.

**Mixtral Examples:**
>https://imgur.com/a/WwQ41tW