HOW TO RUN COLAB ON CPU (when google decides you had enough free gpu for the day. or the week)

on example of
https://github.com/camenduru/stable-diffusion-webui
and
https://github.com/camenduru/stable-diffusion-webui-colab/tree/v2.0

1) find a model you want to use in the second repo, say aom3. click "open in colab" button. you should be redirected to
https://colab.research.google.com/github/camenduru/stable-diffusion-webui-colab/blob/v2.0/abyss_orange_mix_3_webui_colab.ipynb
click "copy to drive" button in second top toolbar to get your own editable copy

2) fork
https://github.com/camenduru/stable-diffusion-webui
make sure to fork all branches, "Copy the main branch only" is ticked by default

3) navigate to your fork, edit launch,py (you can do it right on github, pencil button on top right of code window)
comment (#) or remove line
torch_command = os.environ.get('TORCH_COMMAND', "pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 --extra-index-url https://download.pytorch.org/whl/cu117")

replace it with
torch_command = os.environ.get('TORCH_COMMAND', "pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu")

4) go to collab. remove second line (!pip install -q https://github.com/camenduru/stable-diffusion-webui-colab/releases/download/0.0.16/xformers-0.0.16+814314d.d20230118-cp38-cp38-linux_x86_64.whl) as xformers only work on gpu

5) on fifth line, replace https://github.com/camenduru/stable-diffusion-webui with your repo link

6) on the last line, remove --xformers and add --skip-torch-cuda-test, it should look like
!python launch.py --share --enable-insecure-extension-access --gradio-queue --skip-torch-cuda-test

And that's it. 20 steps 512x1024 euler runs for about 12 seconds.
