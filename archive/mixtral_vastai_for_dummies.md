# Fast Mixtral on vast.ai easily

Using this method, initial prompt processing will take a while (around 30~60 seconds), but once a conversation gets started it should be near-instant. For generation itself I get ~25 tokens/second on a new chat (7 seconds for a 150-token response).

Please let me know in the thread if you have corrections.

[TOC2]

## Getting your Kobold URL

- Go to https://cloud.vast.ai/templates/ and select Cuda:12.0.1-Devel-Ubuntu20.04

![](https://files.catbox.moe/49vcat.png)

- You should land on https://cloud.vast.ai/create - set your filters as outlined below:

![](https://files.catbox.moe/o35xnm.png)

- Click on "RENT" for any of the offers. Visit https://cloud.vast.ai/instances/. When the light blue "CREATING..." button turns into ">_ CONNECT", click there to get the ssh command. Vast.ai will give you instructions to provide it with a public SSH key if you haven't already, just follow those. Then open a terminal on your desktop and run the SSH command. If you're stuck on this step somehow then consult ["Method without SSH (not recommended)"](https://rentry.org/mixtral_vastai#method-without-ssh-not-recommended)

![](https://files.catbox.moe/gfjxtt.png)

![](https://files.catbox.moe/93lwaa.png)

- Once you are in your server's command line, copypaste this entire sequence of commands into the prompt, or for short `curl https://files.catbox.moe/8914or.sh | bash`
	- This installs Kobold and downloads Mixtral, which can take between 15 and 30 minutes depending on your instance's network speed.)

```sh
git clone https://github.com/LostRuins/koboldcpp
cd koboldcpp
wget -c -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared-linux-amd64
make LLAMA_CUBLAS=1
wget https://huggingface.co/TheBloke/Mixtral-8x7B-Instruct-v0.1-GGUF/resolve/main/mixtral-8x7b-instruct-v0.1.Q5_0.gguf
(sleep 60 && ./cloudflared-linux-amd64 tunnel --url http://localhost:5001) &
./koboldcpp.py ./mixtral-8x7b-instruct-v0.1.Q5_0.gguf 5001 --ropeconfig 1.0 1000000 --contextsize 32768 --usecublas --gpulayers 33 --blasbatchsize -1
```

- When you see this in your terminal, you're ready. Append `/api` to your Cloudflare URL and that's your Kobold API URL.

![](https://files.catbox.moe/i78nxx.png)

- When you're done using Mixtral for the day I recommend destroying your instance with the trashcan icon to save money.

## SillyTavern settings

- API Connections

![](https://files.catbox.moe/kf2tor.png)

- Advanced Formatting (simply select the "Alpaca" preset)

![](https://files.catbox.moe/npopr8.png)

- AI Response Configuration: I chose the preset randomly and don't particularly recommend it. However, Make sure Mirostat Mode is 0 (other settings reported to work poorly on Mixtral) and Ban EOS Token unticked (otherwise Mixtral will always continue generating until your response max tokens, in schizo ways)

![](https://files.catbox.moe/4m14cy.png)


## Method without SSH (not recommended)

- Go to https://cloud.vast.ai/templates/ and EDIT Cuda:12.0.1-Devel-Ubuntu20.04

- In "On-start Script", paste:

```sh
git clone https://github.com/LostRuins/koboldcpp
cd koboldcpp
wget -c -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared-linux-amd64
make LLAMA_CUBLAS=1
wget https://huggingface.co/TheBloke/Mixtral-8x7B-Instruct-v0.1-GGUF/resolve/main/mixtral-8x7b-instruct-v0.1.Q5_0.gguf
(sleep 60 && ./cloudflared-linux-amd64 tunnel --url http://localhost:5001) &
./koboldcpp.py ./mixtral-8x7b-instruct-v0.1.Q5_0.gguf 5001 --ropeconfig 1.0 1000000 --contextsize 32768 --usecublas --gpulayers 33 --blasbatchsize -1
```

- Click "SELECT AND SAVE"

- Rent an instance

- Periodically check the instance's logs with the below outlined button. After 15 to 30 minutes, you will see your Cloudflare URL, just append `/api` to it, that's your Kobold API URL.

![](https://files.catbox.moe/pucbj7.png)

![](https://files.catbox.moe/1u5byg.png)