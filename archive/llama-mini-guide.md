# LLAMA.CPP SHORT GUIDE #

## INSTALLATION ##
```
git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
make
sudo mv main /usr/bin/llama.cpp
sudo mv server /usr/bin/server
```

You need a model, for example:
```
wget -c https://huggingface.co/NikolayKozloff/Marx-3B-V2-GGUF/resolve/main/Marx-3B-V2-Q4_1-GGUF.gguf
```

## OPTION 1: Run in the browser ##
Run server:
```
server -m Marx-3B-V2-Q4_1-GGUF.gguf -c 4096
```
Chat and advanced settings are in http://127.0.0.1:8080/ (see bottom of the page).

## OPTION 2: Run in the browser with mikupad ##
Run server (see above).
Get mikupad:
```
git clone https://github.com/lmg-anon/mikupad.git
cd mikupad
```
Then open mikupad.html

## OPTION 3: Run in terminal ##
```
llama.cpp -m Marx-3B-V2-Q4_1-GGUF.gguf --interactive-first --keep -1 -n 400 -c 4096 --ignore-eos --repeat_penalty 1.0 --top-k 0 --top-p 1.0 --color -r 'User:' --in-prefix " " --in-suffix 'Assistant:'
```
Then start typing.
To stop the chatbot in the middle of its conversation and give more instructions you have to press Ctrl-C. To continue the chatbot press Enter.
If you want to separate your text without giving control back to chatbot use the backslash "\" before enter.