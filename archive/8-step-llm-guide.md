# 8 Steps to Miku

https://www.youtube.com/watch?v=CXhqDfar8sQ

1. Make a directory on your hard drive.
2. Download this (https://github.com/LostRuins/koboldcpp/releases/download/v1.51.1/koboldcpp.exe) to that folder/directory.
3. Download this (https://huggingface.co/TheBloke/Utopia-13B-GGUF/resolve/main/utopia-13b.Q5_K_M.gguf?download=true) and put it in the same folder.
4. Download this, (https://github.com/SillyTavern/SillyTavern/archive/refs/heads/release.zip) unzip it, and drag that folder into the one you've made.
5. Double click on Start.bat in the SillyTavern-release folder.

```shell
./koboldcpp.exe --model utopia-13b.Q5_K_M.gguf \
--threads 6 --blasthreads 12 \
--port 5001 --host 127.0.0.1 \
--usecublas lowvram --gpulayers 3 \
--contextsize 8192 \
--blasbatchsize -1 --smartcontext --launch
```

6. Make a new text file in the same folder koboldcpp.exe is in, copy the above into that text file, and then rename it to kobold-start.bat.  You might need to lower the threads and blasthreads settings a bit for your individual machine, if you don't have as many cores as I do, and possibly also raise/lower your gpulayers.

7. Double click kobold-start.bat in Explorer.
8. Go to Chub.AI, get whatever characters you want, and import them into SillyTavern.