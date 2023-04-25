>For 24GB 30b anons struggling with context on webui, I figured out a nasty hack that helps.

``` python
--- a/modules/text_generation.py
+++ b/modules/text_generation.py
@@ -258,7 +258,7 @@ def generate_reply(question, state, eos_token=None, stopping_strings=[]):
                 yield formatted_outputs(original_question, shared.model_name)

             with generate_with_streaming(**generate_params) as generator:
-                for output in generator:
+                for idx, output in enumerate(generator):
                     if shared.soft_prompt:
                         output = torch.cat((input_ids[0], output[filler_input_ids.shape[1]:]))

@@ -269,6 +269,9 @@ def generate_reply(question, state, eos_token=None, stopping_strings=[]):

                     if output[-1] in eos_token_ids:
                         break
+
+                    if (idx + 1) % 8 == 0:
+                        clear_torch_cache()

                     yield formatted_outputs(reply, shared.model_name)
```

>Basically just forcing a GC every 8 tokens in streaming mode. The reason this works is that HF transformers have almost the worst memory allocation pattern possible and vram gets horribly fragmented. ooba tries to fix this by putting calls to clear_cache everywhere, but the problem is so bad it happens even during a single generation. It seems like the easiest/fastest way to defragment is to just churn memory back to the US, otherwise Pytorch will try to and it's horribly slow and often fails completely.

>I looked over the attention code that causes this and I have no idea where anyone could begin to fix it without a rewrite that avoids transformers, this ugly hack might be the best we can get for a while.

https://desuarchive.org/g/thread/92896521/#92901607