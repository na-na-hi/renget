# LLAMA.CPP SHORT GUIDE #

## INSTALLATION ##
```
git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
make
sudo mv main /usr/bin/llama.cpp
sudo mv server /usr/bin/server
```

You need a model, for example: https://huggingface.co/NikolayKozloff/Marx-3B-V2-GGUF/resolve/main/Marx-3B-V2-Q4_1-GGUF.gguf

## OPTION 1: Run in terminal ##
```
llama.cpp -m Marx-3B-V2-Q4_1-GGUF.gguf -i -ins --keep -1 -n 400 -c 4096 --repeat_penalty 1.0 --top-k 0 --top-p 1.0 --color -r '### HUMAN: ' --in-prefix " " --in-suffix '### RESPONSE: '
```
Then start typing.
To stop the chatbot in the middle of its conversation and give more instructions you have to press Ctrl-C. To continue the chatbot press Enter.
If you want to separate your text with newlines without giving control back to chatbot use the backslash "\" before entering newlines.

## OPTION 2: Run in the browser ##
Run server:
```
server -m Marx-3B-V2-Q4_1-GGUF.gguf -c 4096
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