# LLAMA.CPP SHORT GUIDE #

## INSTALLATION ##
```
git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
make
sudo mv main /usr/bin/llama.cpp
sudo mv server /usr/bin/server
```

You need a model, for example: https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v0.3-GGUF/resolve/main/tinyllama-1.1b-chat-v0.3.Q6_K.gguf

## OPTION 1: Run in terminal ##
```
llama.cpp -m tinyllama-1.1b-chat-v0.3.Q6_K.gguf -i -ins --keep -1 -n 400 -c 4096 --repeat_penalty 1.0 --top-k 0 --top-p 1.0 --color -r '### HUMAN: ' --in-prefix " " --in-suffix '### RESPONSE: '
```
Then start typing.
To stop the chatbot in the middle of its conversation and give more instructions you have to press Ctrl-C. To continue the chatbot press Enter.
If you want to separate your text with newlines without giving control back to chatbot use the backslash "\" before entering newlines.

## OPTION 2: Run in the browser ##
Run server:
```
server -m tinyllama-1.1b-chat-v0.3.Q6_K.gguf -c 4096
```
Chat and advanced settings are in http://127.0.0.1:8080/ (see bottom of that page).

## OPTION 3: Run in the browser with mikupad ##
Run server (see above).
Get mikupad:
```
git clone https://github.com/lmg-anon/mikupad.git
cd mikupad
```
Then open mikupad.html