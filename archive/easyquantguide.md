# Low IQ Guide to LLaMA quantization

## What is model quantization?

Model quantization is a method of reducing the size of a trained model while maintaining accuracy. It works by reducing the precision of the weights and activations used by a model without affecting (significantly) the overall accuracy. 

For example, a model that was trained in 16 bit precision could be quantized to 8, 4, or even 3 bits, all with generally acceptable quality loss. This is pretty cool because the precision size is directly proportional to the VRAM requirement for a model. This allows you to do things like run a 30B model on a 3090 (24gb VRAM), instead of 4x 3090s.

## What are the hardware requirements?

Generally, you need either a huge amount of RAM (or swap memory). For me, I needed 64gb RAM to quantize a 13b llama model, and 100gb to quantize a 30b model. You also need a GPU. I was able to quantize a 30b with a single 3090. 

If you don't have this sort of hardware, you can always rent it. vast.ai is pretty gud

## What are the software requirements?

You need
- NVIDIA drivers
- python3 with pip
- An unquantized model. It should have a bunch of files in it named "pytorch_model-0000(some number)-of-00007.bin" along with some other config files.
- Linux or WSL

## How to:

These commands worked for me. I'm using oobabooga's fork of GPTQ, but you could use this one as well https://github.com/qwopqwop200/GPTQ-for-LLaMa, but for me it was broken (generated garbage) on the text-generation-webui

```
git clone https://github.com/oobabooga/GPTQ-for-LLaMa
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu117
cd GPTQ-for-LLaMa
pip install -r requirements.txt
python llama.py [directory containing unquantized model files] c4 --wbits 4 --true-sequential --groupsize 128 --save_safetensors [name of output quantized model].safetensors
```
This generates a model in safetensors format with int4, groupsize 128, and true sequential.
