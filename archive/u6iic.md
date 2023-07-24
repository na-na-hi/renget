# NTK Scaling

This is a roughly linear way to add additional context to existing models at a minor perplexity cost. 

Here's a detailed [explaination](https://old.reddit.com/r/LocalLLaMA/comments/14lz7j5/ntkaware_scaled_rope_allows_llama_models_to_have/) of the method.

Setup is simple using exllama on Ooba:

![Ooba Setup](https://files.catbox.moe/6rujfl.png)

- Set your max_seq_len to >2k (play around with this value as there is a perpelexity cliff).
- Set alpha_value to 2/4/8 (the higher the value, the more context you can squeeze, but it gets dumber). 
- Make sure to also set "Truncate the prompt up to this length" on the *Parameters* page to match your max_seq_len. 


The following graph gives you some idea of where the cliffs are, though this changes per model.
![Graph](https://files.catbox.moe/s93r6v.png)

Finally, Llama 2 is natively 4k context, and thus you can easily get this to ~8k with just an alpha value of 2. 

Notes from NTK + Llama 2 testing:
```
llama 2 PPL thresholds for static NTK:
Alpha 1: 
	4096 (base)
Alpha 4: 
	11,820
	11,776, 32g
Alpha 8:
	19,200, 128g
```
`Credit to @kingbri and @.alicat for the testing data on static NTK`
You can essentially get close to 20k context with Llama 2, but the model gets increasingly dumber. It does not lose coherency though.

See also [Github Discussion](https://github.com/turboderp/exllama/issues/158)