Load models in 8bit/int8/fp8 to get half off on your vram! This manufacturer's coupon does not expire, and is valid at all participating retailers!

Follow these instructions though:
Apply this patch (patch < kobold-8bit-hack.diff) to `./aiserver.py` on https://github.com/KoboldAI/KoboldAI-Client
`./aiserver.py` or `./play.sh` needs to be launched with `--lowmem --nobreakmodel`
Install `bitsandbytes` from pip, or put it under the pip section in `environments/huggingface.yml` to use with conda.
Bitsandbytes needs to be in your environment, however you want to do it.
**Only works on linux!** (Or WSL but that's evil.)

Then load a 13b or 20b model of your choice inside the ui.
If the download doesn't work, follow the instructions on https://huggingface.co/KoboldAI/OPT-13B-Erebus/tree/main
Mainly: `git lfs install && git clone https://huggingface.co/KoboldAI/OPT-13B-Erebus`

13b requires an insane amount of ram (50gb or so of RAM to load and convert). Make a swap file if you don't have the ram required. https://wiki.archlinux.org/title/Swap#Swap_file
20b is a bit different, and doesn't need so much ram.

On a 3090, 20b has an extremely small context size (less than 512 tokens).
13b fits well into 24gb of vram, and can generate multiple responses at once. (Multi-response makes up for the slow speed!)

This hack will work with smaller gpus as well.
It's slow but it works.

``` udiff
--- ./aiserver-orig.py	2022-11-06 11:32:18.376952288 -0000
+++ ./aiserver.py	2022-11-15 10:29:05.366757893 -0000
@@ -391,7 +391,7 @@
     newlinemode = "ns"
     quiet       = False # If set will suppress any story text from being printed to the console (will only be seen on the client web page)
     debug       = False # If set to true, will send debug information to the client for display
-    lazy_load   = True  # Whether or not to use torch_lazy_loader.py for transformers models in order to reduce CPU memory usage
+    lazy_load   = False  # Whether or not to use torch_lazy_loader.py for transformers models in order to reduce CPU memory usage
     use_colab_tpu = os.environ.get("COLAB_TPU_ADDR", "") != "" or os.environ.get("TPU_NAME", "") != ""  # Whether or not we're in a Colab TPU instance or Kaggle TPU instance and are going to use the TPU rather than the CPU
     revision    = None
     standalone = False
@@ -2089,7 +2089,7 @@
     vars.sampler_order = [6, 0, 1, 2, 3, 4, 5]
     vars.newlinemode = "n"
     vars.revision    = None
-    vars.lazy_load = True
+    vars.lazy_load = False
     
 
 def load_model(use_gpu=True, gpu_layers=None, disk_layers=None, initial_load=False, online_model="", use_breakmodel_args=False, breakmodel_args_default_to_cpu=False):
@@ -2525,11 +2525,11 @@
                                 except Exception as e:
                                     tokenizer = GPT2Tokenizer.from_pretrained("gpt2", revision=vars.revision, cache_dir="cache")
                         try:
-                            model     = AutoModelForCausalLM.from_pretrained(vars.custmodpth, revision=vars.revision, cache_dir="cache", **lowmem)
+                            model     = AutoModelForCausalLM.from_pretrained(vars.custmodpth, revision=vars.revision, cache_dir="cache", **lowmem, load_in_8bit=True, device_map="auto")
                         except Exception as e:
                             if("out of memory" in traceback.format_exc().lower()):
                                 raise RuntimeError("One of your GPUs ran out of memory when KoboldAI tried to load your model.")
-                            model     = GPTNeoForCausalLM.from_pretrained(vars.custmodpth, revision=vars.revision, cache_dir="cache", **lowmem)
+                            model     = GPTNeoForCausalLM.from_pretrained(vars.custmodpth, revision=vars.revision, cache_dir="cache", **lowmem, load_in_8bit=True, device_map="auto")
                     elif(os.path.isdir("models/{}".format(vars.model.replace('/', '_')))):
                         try:
                             tokenizer = AutoTokenizer.from_pretrained("models/{}".format(vars.model.replace('/', '_')), revision=vars.revision, cache_dir="cache", use_fast=False)
@@ -2542,11 +2542,11 @@
                                 except Exception as e:
                                     tokenizer = GPT2Tokenizer.from_pretrained("gpt2", revision=vars.revision, cache_dir="cache")
                         try:
-                            model     = AutoModelForCausalLM.from_pretrained("models/{}".format(vars.model.replace('/', '_')), revision=vars.revision, cache_dir="cache", **lowmem)
+                            model     = AutoModelForCausalLM.from_pretrained("models/{}".format(vars.model.replace('/', '_')), revision=vars.revision, cache_dir="cache", **lowmem, load_in_8bit=True, device_map="auto")
                         except Exception as e:
                             if("out of memory" in traceback.format_exc().lower()):
                                 raise RuntimeError("One of your GPUs ran out of memory when KoboldAI tried to load your model.")
-                            model     = GPTNeoForCausalLM.from_pretrained("models/{}".format(vars.model.replace('/', '_')), revision=vars.revision, cache_dir="cache", **lowmem)
+                            model     = GPTNeoForCausalLM.from_pretrained("models/{}".format(vars.model.replace('/', '_')), revision=vars.revision, cache_dir="cache", **lowmem, load_in_8bit=True, device_map="auto")
                     else:
                         old_rebuild_tensor = torch._utils._rebuild_tensor
                         def new_rebuild_tensor(storage: Union[torch_lazy_loader.LazyTensor, torch.Storage], storage_offset, shape, stride):
@@ -2572,11 +2572,11 @@
                                 except Exception as e:
                                     tokenizer = GPT2Tokenizer.from_pretrained("gpt2", revision=vars.revision, cache_dir="cache")
                         try:
-                            model     = AutoModelForCausalLM.from_pretrained(vars.model, revision=vars.revision, cache_dir="cache", **lowmem)
+                            model     = AutoModelForCausalLM.from_pretrained(vars.model, revision=vars.revision, cache_dir="cache", **lowmem, load_in_8bit=True, device_map="auto")
                         except Exception as e:
                             if("out of memory" in traceback.format_exc().lower()):
                                 raise RuntimeError("One of your GPUs ran out of memory when KoboldAI tried to load your model.")
-                            model     = GPTNeoForCausalLM.from_pretrained(vars.model, revision=vars.revision, cache_dir="cache", **lowmem)
+                            model     = GPTNeoForCausalLM.from_pretrained(vars.model, revision=vars.revision, cache_dir="cache", **lowmem, load_in_8bit=True, device_map="auto")
 
                         torch._utils._rebuild_tensor = old_rebuild_tensor
 
```