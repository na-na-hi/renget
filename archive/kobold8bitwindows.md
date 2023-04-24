My awful guide to kobold 8-bit on windows.
**Follow this:**
https://rentry.org/koboldai-8bit-v1
Ignore the part about lowram and nobreakmodel as well as disabling lazyload, just don't touch the splitting slider from all on gpu and it will work.

**Use only the bitsandbytes portion of this and follow the install part for that:**
https://github.com/bmaltais/kohya_ss

**Help, 13B Erebus takes all of my ram:**
Split it with this script: (I went with 25 shards)
https://pastebin.com/2jLBMNmf
Make sure to copy any of the files from the first to the second that don't exist except for pytorch_model.bin.
