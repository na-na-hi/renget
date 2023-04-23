Zipped jsons with 90 000 conversations from sharegpt. Split in two files with 45k each:
part 1: https://files.catbox.moe/bhtp9i.zip
part 2: https://files.catbox.moe/ahoivx.zip

The entire pre-cleaned 90k conversation dataset is also available here: https://huggingface.co/datasets/anon8231489123/ShareGPT_Vicuna_unfiltered/tree/main/HTML_cleaned_raw_dataset

A pre-cleaned ,English only, "unfiltered," and 2048 token split version of the ShareGPT dataset ready for finetuning is available here: https://huggingface.co/datasets/anon8231489123/ShareGPT_Vicuna_unfiltered


Can be used to train your own Vicuna.

Format should work as is for training. Use clean tool to remove html markup 
https://github.com/lm-sys/FastChat/blob/main/docs/commands/data_cleaning.md

python3 -m fastchat.data.clean_sharegpt --in sharegpt_20230322_html.json --out sharegpt_20230322_clean.json
python3 -m fastchat.data.optional_clean --in sharegpt_20230322_clean.json --out sharegpt_20230322_clean_lang.json --skip-lang
python3 -m fastchat.data.split_long_conversation --in sharegpt_20230322_clean_lang.json --out sharegpt_20230322_clean_lang_split.json --model-name /home/ubuntu/model_weights/hf-llama-7b/

gsutil cp sharegpt_20230322_clean.json gs://model-weights/sharegpt/
gsutil cp sharegpt_20230322_split.json gs://model-weights/sharegpt/
