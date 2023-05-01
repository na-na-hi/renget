# The Complete /aids/ Tard's Guide to Kobold Runpod

Welcome! This guide will walk you through running Llama models on runpod. This guide will assume you're already familiar with Llama and what it is. It'll also assume you already have a huggingface link to a model of choice, know your way around a Colab / Jupyter notebook, that you're familiar enough with Kobold and its UI to use it. If you aren't familiar with those things already, fuck off and come back later.

## What is Runpod?

![](https://i.imgur.com/FWS2k4z.png)

Runpod is, essentially, a rental GPU service. People can use Runpod to get temporary access to a GPU like a 3090, A6000, A100, etc. The service is priced by the hour, but unlike other GPU rental services, there's a bidding system that allows you to pay for GPUs at vastly cheaper prices than what they would normally cost, which takes the already decent prices (around 0.79 / hour for an A6000, which can fit 65B) and makes them absurdly cheap (around 0.175 / hour for the same GPU). Obviously there's a catch, but we'll talk about that later.

So why do we care about GPUs in the context of Llama when we have things like LlamaCPP and KoboldCPP to run models on CPU?

LlamaCPP is decent for running smaller Llama models (around 7B and 13B) but around 30B it really starts to struggle, and in all cases, the CPU version is significantly slower than the equivalent GPU version. If you can run LlamaCPP with your model of choice and it generates at tolerable speeds, great. But for the rest of us, GPUs offer a much quicker alternative. And in particular, if you get into the domain of 65B, it's basically impossible to get generations at any reasonable speed sticking to just CPU.

## Getting Started on Runpod

### Step 0: Create an account and add funds

If you're brand new to Runpod, go ahead and create a runpod account and add money to it using the "billing" tab on the left.

![](https://i.imgur.com/vBHKXSQ.png)

This will let you add money to your account. The amount you'll want to add will vary depending on GPU and bid (but shouldn't need to be that much).

### Step 1: Pick a GPU

![](https://i.imgur.com/dbcUtID.png)

Next, you'll go to the "Secure Cloud" on the tab to the left and pick a GPU. First, you should decide which model you want to use. In general, the rule for 4bit Llama models is, assuming no group size and 2048 token context:

Model Size | Minimum VRAM
--- | --------
7B  | 6 GB
13B | 12 GB
30B | 24 GB
65B | 48 GB

If you have a 128 or 32 group size model, you can make these minimum VRAM requirements work, but you may need to lower your context. If you have a group size 128 model, aim for 1900 context. If you have a group size 32 model, aim for 1800. If you don't do this, you may run out of VRAM in the middle of a generation and cause Kobold to crash.

So you've selected your model. Now take a look at the table below. This includes the minimum bid and regular prices for each of the GPUs available.

GPU | VRAM | Minimum Bid (per hour) | Regular Price (per hour)
------------------ | ------ | ------ | -----
A4000                 | 16 GB | 0.163 | 0.34
A4500                 | 20 GB | 0.169 | 0.36
A5000                 | 24 GB | 0.176 | 0.44
RTX 3090            | 24 GB | 0.25   | 0.44
A6000                 | 48 GB | 0.175 | 0.79
A40                     | 48 GB | 0.176 | 0.79
A100 SXM 80GB | 80 GB | 1.776 | 2.09
A100 80 GB        | 80 GB | 1.158 | 2.04
RTX 4090            | 24 GB | 0.375 | 0.69
RTX 6000 Ada    | 48 GB | 0.176 | 1.39

When picking a GPU, in addition to VRAM, you'll also want to look at availability. Runpod's bid system makes it so that you can bid a significantly lower price on a GPU, but the catch is that if they run out of GPUs of a particular type, the person with the lowest bid gets kicked out. It's usually only viable to go minimum bid for pods which have high or potentially medium availability. Otherwise, you might be kicked off in the middle of your session. And you really want the minimum bid (or at least close to it) due to the massive price differences.

At the time of writing, A6000s are likely your best choice.  They're frequently high availability, meaning 20 cents an hour and they can run a Llama model of any size, including 65B, very speedily.

### Step 2: Purchase and start your pod

Once you select a GPU, you'll be greeted by the following screen.

![](https://i.imgur.com/3YvsFrC.png)

Go ahead and select PyTorch 2 template in the dropdown menu to the right, and give yourself plenty of disk and container space. Check the boxes, then move onto the next step.

![](https://i.imgur.com/MScAV88.png)

Here, you can select the "Advanced" switch up above to make your bid.

### Step 3: Connect to your pod

Now that you've done that, go to "My Pods", and wait for your pod to finish being set up.

![](https://i.imgur.com/nhm7AWp.png)

After it's done, enlarge it then click connect at the very bottom of the screen.

![](https://i.imgur.com/1wTjtqh.png)

Next, click the "Connect to Jupyter Lab" button at the top left to open up the notebook interface.

### Step 4: Load and run the notebook

In the JupyterLab interface:

![](https://i.imgur.com/KdLecsg.png)

Hit the notebook button to open up a new notebook. For our next step, we have a notebook here:

https://pastebin.com/yjGweF5k

Which we want to import into Jupyterlab.  To do this, we'll copy and paste the cells in the notebook.  You can save this as an ipynb file and import it in Colab to copy the cells, but I'll just go ahead and expand the cells here for your pasting pleasure.

Cell 1:

```python
import os

# Package / Python updates.

!apt-get -y update
!apt-get -y install git-lfs
!python -m pip install --upgrade pip

!git-lfs install
!git clone https://github.com/0cc4m/KoboldAI -b latestgptq --recurse-submodules

# Install KoboldAI.

!cd KoboldAI && ./install_requirements.sh cuda > /dev/null
```

Cell 2:

```python
num_params = "13b" #@param ["7b", "13b", "30b", "65b"]

group_size = "128" #@param ["None", "32", "128"]

huggingface_url = '' #@param {type:"string"}

version = '' #@param {type:"string"}

group_and_model = huggingface_url[len('https://huggingface.co/'):].split('/')[:2]
group = group_and_model[0]
model = group_and_model[1]

if not version:
    !cd KoboldAI/models && git clone https://huggingface.co/{group}/{model}/
else:
    !cd KoboldAI/models && git clone https://huggingface.co/{group}/{model}/ && cd {model} && git checkout {version}

if group_size == 'None':
    !cd KoboldAI/models/{model} ; mv *.pt 4bit.pt ; mv *.safetensors 4bit.safetensors
else:
    !cd KoboldAI/models/{model} ; mv *.pt 4bit-{group_size}g.pt ; mv *.safetensors 4bit-{group_size}g.safetensors
```

Cell 3:

```python
!cd KoboldAI && ./play.sh --remote --quiet
```

After you've pasted it in, make sure your notebook looks something like this:

![](https://i.imgur.com/bJ8bneY.png)

Next, in cell 2, you'll have to fill in information about the model's number of parameters and model size (you can see the valid choices on the right). For that `huggingface_url = '' #@param {type:"string"}` line you'll have to specify a 4bit Llama Huggingface repo to download your model from. You can choose any model as is appropriate for your GPU of choice.  Your link should look something like `huggingface_url = 'https://huggingface.co/groupname/modelname/' #@param {type:"string"}`.

Make sure the number of parameters and group size (which should be specified somewhere in the repo you use, just copy those) matches your model, that the repo contains exactly one `.safetensors` or `.pt` file (i.e., not `.ggml`, and not multiple `.safetensors` or `.pt` files), and that the model you're using was quantized with the CUDA branch, rather than the Triton branch.  Kobold only works with CUDA quantized models.  If it wasn't CUDA quantized, you'll run into an error when loading the model in.

Afterward, run all three cells.  Be patient, the first and second cells in particular can take a while to finish (could be up to ten to fifteen minutes for a 4bit 65B model), so don't cut out early.  You may encounter warnings after executing, but if it's something about `mv: Cannot stat file` or `Encountered one file that may not be copied correctly on windows`, for instance, just ignore those for now.  Once everything is finished running, you should have two links at the bottom.

### Step 5: Load the model in Kobold

Now that it's done, click the link in the output that says UI2.  This will open up the main Kobold UI.

![](https://i.imgur.com/03PyQ1j.png)

We'll load our model using the Load Model button to the top left.  From there just select your model under "Load a model from its directory", make sure the use 4bit mode switch is set, and you should be good to go.  Have fun!

![](https://i.imgur.com/jRuxPsU.png)

### Step 6 (Optional): Host your model on Horde

Next, we'll talk about hosting your model on Horde.  By doing this, other anons can get a chance to play with your model as well using the Horde interface at https://lite.koboldai.net/ , and considering how cheap these GPUs are to rent, it doesn't hurt to do this every once in a while.  It also gets you Kudos for each generation you provide, which allows you to skip ahead in the queue when using models on Horde yourself.

First, you'll go to https://stablehorde.net/register and follow the instructions to log in and get an API key.  After you're done, you'll paste that API key here in the interface:

![](https://i.imgur.com/8EUcedG.png)

Then back in the Home tab, you'll just set the Share with Horde switch under the model, and that's it.

![](https://i.imgur.com/Pp82jGe.png)

### Step 7: Shutdown your pod

Once you're done, you can go back to the My Pods menu in runpod.

![](https://i.imgur.com/Vb1fr5o.png)

Hit the stop button to stop your pod, then the trash can button afterward to delete your pod.  You'll want to remember to do this, since otherwise runpod will charge you for storage per hour even while you're not using your pod.