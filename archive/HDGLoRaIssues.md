# Common Issues with LoRA
**ValueError: fp16 mixed precision requires a GPU**
(May need to be in the venv if you dont know how to do that see the next section of this part)

Open Powershell Type: accelerate config
- This machine
- No distributed training
- NO
- NO
- NO
- 0
- fp16

all seems to not pick a GPU on some systems if you have more than one then your best bet is to open your sd-script venv and figure out which is which via powershell/torch:

*arrays start at zero so 1 is 0, 2 is 1*

Heres the output from my terminal
```
PS C:\Users\PERSON> cd E:\sd-scripts\
PS E:\sd-scripts> .\venv\Scripts\activate
(venv) PS E:\sd-scripts> python
Python 3.10.6 (tags/v3.10.6:9c7b4bd, Aug  1 2022, 21:53:49) [MSC v.1932 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> import torch
>>> torch.cuda.device_count()
1
>>> torch.cuda.get_device_name(0)
'NVIDIA GeForce RTX 4090'
>>>
```

**Python Setup**
Open Clean Powershell

Type: Python

should see
```
Python 3.10.6 (tags/v3.10.6:9c7b4bd, Aug  1 2022, 21:53:49) [MSC v.1932 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

If you see any other python version uninstall, restart and install
https://www.python.org/downloads/release/python-3106/

**Next**

Type: pip freeze

GOOD:
![Good](https://files.catbox.moe/u3ai18.png)

BAD:
![BAD](https://files.catbox.moe/h8c0v8.jpg)

If you see the bad ending then run 

*pip freeze > requirements.txt
pip uninstall -y -r requirements.txt*

then go back to https://github.com/kohya-ss/sd-scripts and re-run the commands as this will install what you need into the venv

**Issues With CUDA**

https://developer.nvidia.com/cuda-11-6-0-download-archive?target_os=Windows&target_arch=x86_64&target_version=11

![BAD](https://files.catbox.moe/15szx8.png)

Grab the .exe local as the network one is going to download shit anyway

**CUDA OUT OF MEMORY**
Download

https://developer.download.nvidia.com/compute/redist/cudnn/v8.7.0/local_installers/11.8/cudnn-windows-x86_64-8.7.0.84_cuda11-archive.zip

UnZip IT

then move the files from the bin folder to the lib folder of the venv torch folder example folder paths

C:\Users\PERSON\Downloads\cudnn-windows-x86_64-8.7.0.84_cuda11-archive\bin

should contain the following
cudnn64_8.dll
cudnn_adv_infer64_8.dll
cudnn_adv_train64_8.dll
cudnn_cnn_infer64_8.dll
cudnn_cnn_train64_8.dll
cudnn_ops_infer64_8.dll
cudnn_ops_train64_8.dll

copy and paste the files into 

LOCATION\sd-scripts\venv\Lib\site-packages\torch\lib

![BAD](https://files.catbox.moe/h9sgyh.png)

##My LoRA's
https://mega.nz/folder/lMQyDTTB#0XM9piheaxg-a9TI7vuDJQ
Slyvie - Teaching Feeling
Five-Seven - Arknights (needs retrain as theres no trigger word)
Anus-Peek
