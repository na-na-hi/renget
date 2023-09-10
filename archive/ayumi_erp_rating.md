# Ayumi's LLM Role Play & ERP Ranking

This ranking table contains a rating of different LLMs that tries to determine which model is most suitable for (erotic) role playing (ERP) by using an automated benchmark.

***
[TOC]
***

This Ranking employs currently three important metrics to rank the models: The **ALC-IQ** (Ayumi LLM Character IQ), the **ERP Score** and the **ERP Variety Score**. Keep in mind though: this is just an automated benchmark employing rather primitive metrics, and it can't cover rating the quality of the generated output. It can only cover how seemingly well a Large Language Model (LLM) can understand character cards (see the ALC-IQ) and secondly if it can be used in to generate lewd responses (see the ERP Score and ERP Variance Score). The ERP benchmark is currently only based on a single character ('Ayumi') and a single fixed erotic setting, which is eventually subject to change. A few details about the testing procedure can be found further down.

The benchmark for the **ALC-IQ** works by letting the character answer how much they agree with a statement about their personality in a role playing chat log prompt. The character has to answer by writing a number between 1 and 5 (1 - disagree, 2 - slightly disagree, 3 - neutral, 4 - slightly agree, 5 - agree) to a statement they were presented with. The result will then be compared with the expected answer and the deviation from that is recorded. For more details refer to the section [Ayumi LLM Character IQ - ALC-IQ](https://rentry.co/ayumi_erp_rating#ayumi-llm-character-iq-alc-iq).

The **ERP Score** is the average ratio of lewd words the model generates in a response, which is limited to 100 tokens. For more details refer to the section [ERP Score](https://rentry.co/ayumi_erp_rating#erp-score-and-erp-variety-score)

The third and rather new metric is the **ERP Variety Score**, this score measures the range of lewd words the model showed to generate in the responses for the **ERP Score**. This means, the models not only need to generate responses with many lewd words, but also with many *different* lewd words.

!!! danger Interpretation Warning: *Writing quality is not covered!*
    **Disclaimer:** This benchmark makes no statement about how well a LLM will be able to drive the story forward. It can also not determine coherency within a longer role play chat. The generated **text quality is not tested for**. For more information look in these sections: [Known Flaws of the ALC-IQ](https://rentry.co/ayumi_erp_rating#known-flaws-of-the-alc-iq) and [Known Flaws of the ERP Score](https://rentry.co/ayumi_erp_rating#known-flaws-of-the-erp-score-and-erp-variety-score)

!!! info **Please also have a look at this LLM role play ranking:**
    - [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR)
    - [New Model RP Comparison/Test (7 models tested) by u/WolframRavenwolf - reddit/r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/15ogc60/new_model_rp_comparisontest_7_models_tested/)
    - [Big Model Comparison/Test (13 models tested) by u/WolframRavenwolf - reddit/r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/15lihmq/big_model_comparisontest_13_models_tested/)

!!! note **If you want to filter the results, `mr.developer` wrote a JS script:**
    You can find it here: https://rentry.org/ayumi_filter_userscript_info (**Please note:** I updated the table format on 2023-09-08, mr.developer will fix the filter script eventually once there is some free time.)

## Emoji Key

| ALC-IQ Emoji | Meaning | ERP Emoji | Meaning |
|---------------:|----------|-----------:|----------|
| ⭐🧠 |  Best of **High ALC-IQ Class**, shows excellent understanding of the character cards in a role play chat. | 🌶🌶 | Very spicy model, capable of generating lots of lewd words |
|  🧠 | **High ALC-IQ Class**, shows excellent understanding of character cards in a role play chat. | 🌶 | Spicy model, capable of generating many lewd words |
| ⭐📖 | Best of  **Good ALC-IQ Class**, shows good understanding of character cards in a role play chat. | 👌 | Likely not censored model, but generates probably short answers or fewer lewd words |
| 📖 | **Good ALC-IQ Class**, still gets details of the character cards in a role play chat. | 🧊 | Very possibly censored/SFW aligned model |
| ⭐🤔 | Best of  **Lower ALC-IQ Class**, has it's challenges with details of the character card in a role play chat. | | |
| 🤔 | **Lower ALC-IQ Class**, certainly challenged with the character card in a role play chat. | ❄ | The ERP word variety of this model is great, it shows creative variety of lewd word usage. |
| ⭐🤪 | Best of  **Dumb ALC-IQ Class**, very very challenged to get the character card in a role play chat. | ✳ | This model still shows knowledge of various lewd words, but there are better ones. |
| 🤪 | **Dumb ALC-IQ Class**, seems to be completely confused or has other issues getting the character card in a role play chat. | ♻ | This model has limitations in knowledge and usage of lewd words. It likely repeatedly uses the same words across regenerations. |

| Rank Symbol | Meaning |
|-------------|---------|
| 🥇 🥈 🥉    | These medals are assigned broadly to the top ranked models. This is partially to give an impression how well these might work for you and partially also signal that there is no single definitive best model. |
| 🎓 | Top ALC-IQ ranks get this one. |
| 🍆 | Top ERP ranks get this one. |

## 3B-7B Models

- [See **Ranking Changelog** to see which GGUF/GGML Models were added](https://rentry.co/ayumi_erp_rating#ranking-changelog)
- [Benchmark Results as CSV - Timestamp 20230910_141602](https://m8geil.de/data/push/ayumi_llm_erp_ranking_scores_20230910_141602.csv)

|    Rank | ALC-IQ Rank | ERP Rank | ALC-IQ |ERP Score|ERP Var Score| Model |
|--------:|------------:|---------:|-------:|--------:|------------:|-------------|
| 🥇    1 | 🎓  10 | 🍆   9 | ⭐🧠  82.72 | 🌶🌶   27.57 | ❄  123 | 🥇🎓🍆 [Kuchiki 7B](https://huggingface.co/zarakiquemparte/kuchiki-l2-7b-GGML) Q5_K_M  |
| 🥇    2 | 🎓   5 | 🍆  19 | ⭐🧠  83.47 | 🌶    19.64 | ❄  134 | 🥇🎓🍆 [Zarafusionex 1.2 7B](https://huggingface.co/zarakiquemparte/zarafusionex-1.2-l2-7b-GGUF) Q5_K_M  |
| 🥇    3 | 🎓   4 | 🍆  22 | ⭐🧠  83.53 | 🌶🌶   22.97 | ❄  122 | 🥇🎓🍆 [Hermes Limarp 7B](https://huggingface.co/zarakiquemparte/hermeslimarp-l2-7b-GGML) Q5_K_M  |
| 🥇    4 |   20 | 🍆   6 | ⭐🧠  81.51 | 🌶🌶   25.50 | ❄  132 | 🥇🍆 [Zaraxls 7B](https://huggingface.co/zarakiquemparte/zaraxls-l2-7b-GGUF) Q5_K_M  |
| 🥇    5 | 🎓   8 | 🍆  23 | ⭐🧠  82.95 | 🌶🌶   27.63 | ✳  114 | 🥇🎓🍆 [Zarablend 7B](https://huggingface.co/TheBloke/Zarablend-L2-7B-GGUF) Q5_K_M  |
| 🥇    6 | 🎓  11 |   29 | ⭐🧠  82.43 | 🌶    19.14 | ❄  130 | 🥇🎓 [Zarafusionex 1.1 7B](https://huggingface.co/TheBloke/Zarafusionex-1.1-L2-7B-GGUF) Q5_K_M  |
| 🥇    7 | 🎓   2 |   40 | ⭐🧠  84.39 | 🌶🌶   30.30 |   102 | 🥇🎓 [Zarablend 1.1 7B](https://huggingface.co/zarakiquemparte/zarablend-1.1-l2-7b-GGUF) Q5_K_M  |
| 🥇    8 |   23 | 🍆  15 | ⭐🧠  81.28 | 🌶    22.55 | ❄  134 | 🥇🍆 [Zarablendex VQ 7B](https://huggingface.co/zarakiquemparte/zarablendex-vq-l2-7b-GGML) (link broken) Q5_K_M  |
| 🥇    9 |   24 | 🍆  14 | 🧠  81.22 | 🌶    21.21 | ❄  141 | 🥇🍆 [Zarafusionex 7B](https://huggingface.co/zarakiquemparte/zarafusionex-l2-7b-GGML) Q5_K_M  |
| 🥇   10 | 🎓   1 |   46 | ⭐🧠  84.91 | 🌶    21.01 | ✳  113 | 🥇🎓 [Hermes LimaRP 7B](https://huggingface.co/TheBloke/HermesLimaRP-L2-7B-GGUF) Q5_K_M  |
| 🥇   11 | 🎓  12 |   35 | ⭐🧠  82.37 | 🌶    20.15 | ✳  120 | 🥇🎓 [Zarafusionix 7B](https://huggingface.co/zarakiquemparte/zarafusionix-l2-7b-GGML) Q5_K_M  |
| 🥇   12 |   15 |   38 | ⭐🧠  81.91 | 🌶    19.25 | ✳  120 | 🥇 [Krakowiak 7B](https://huggingface.co/szymonrucinski/krakowiak-7b-gguf) Q4_K_M  |
| 🥇   13 |   25 |   32 | 🧠  80.82 | 🌶    20.38 | ❄  122 | 🥇 [Vigogne 2 7B](https://huggingface.co/TheBloke/Vigogne-2-7B-Chat-GGML) Q5_K_M  |
| 🥈   14 |   32 |   31 | 🧠  79.72 | 🌶🌶   27.21 | ✳  111 | 🥈 [Zarablend MX 7B](https://huggingface.co/TheBloke/Zarablend-MX-L2-7B-GGUF) Q5_K_M  |
| 🥈   15 |   41 | 🍆  21 | 📖  78.23 | 🌶    21.98 | ❄  123 | 🥈🍆 [AstraMix 7B](https://huggingface.co/androlike/astramix_l2_7b_gguf) Q5_K_M  |
| 🥈   16 |   19 |   48 | ⭐🧠  81.74 | 🌶🌶   26.60 |   104 | 🥈 [Zarablend M 7B](https://huggingface.co/zarakiquemparte/zarablend-m-l2-7b-GGML) Q5_K_M  |
| 🥈   17 |   45 | 🍆  17 | 📖  77.36 | 🌶    20.83 | ❄  136 | 🥈🍆 [Zaramix 7B](https://huggingface.co/zarakiquemparte/zaramix-l2-7b-GGML) Q5_K_M  |
| 🥈   18 | 🎓   3 |   69 | ⭐🧠  83.64 | 👌   13.36 | ✳  120 | 🥈🎓 [LLaMA 2 Monika V0.3B 7B](https://huggingface.co/922-CA/llama-2-7b-monika-v0.3b-ggml) Q5_1  |
| 🥈   19 |   48 | 🍆  16 | 📖  77.07 | 🌶🌶   22.57 | ❄  133 | 🥈🍆 [LLaMA-2 Guanaco 7B](https://huggingface.co/TheBloke/llama-2-7B-Guanaco-QLoRA-GGML) Q5_1  |
| 🥈   20 |   31 |   41 | 🧠  79.84 | 🌶    22.22 | ✳  112 | 🥈 [Medusa 1.1 7B](https://huggingface.co/Sao10K/Medusa-1.1-L2-7B-GGUF) Q5_K_M  |
| 🥈   21 |   29 |   44 | 🧠  80.13 | 🌶    22.31 | ✳  112 | 🥈 [Hermes Kimiko 7B](https://huggingface.co/zarakiquemparte/hermes-kimiko-7b-GGML) Q5_K_M  |
| 🥈   22 |   33 |   49 | 🧠  79.67 | 🌶    19.01 | ✳  119 | 🥈 [Typly Pigeon 7B](https://huggingface.co/s3nh/Typly-Pigeon-7B-GGUF) Q4_K_M  |
| 🥈   23 |   35 |   51 | 📖  79.32 | 🌶    19.22 | ✳  118 | 🥈 [Nous Hermes 7B](https://huggingface.co/TheBloke/Nous-Hermes-Llama-2-7B-GGML) Q5_K_M  |
| 🥈   24 | 🎓   6 |   86 | ⭐🧠  83.12 | 👌   15.63 | ✳  109 | 🥈🎓 [LLaMA-2 7B](https://huggingface.co/TheBloke/Llama-2-7B-GGML) Q8_0  |
| 🥈   25 |   16 |   75 | ⭐🧠  81.80 | 👌   16.05 | ✳  113 | 🥈 [Dugong 7B](https://huggingface.co/s3nh/elliot4ai-Dugong-Llama2-7b-chinese-GGML) Q5_1  |
| 🥈   26 |   27 |   65 | 🧠  80.24 | 🌶🌶   23.30 |   100 | 🥈 [Zaraxe 7B](https://huggingface.co/zarakiquemparte/zaraxe-l2-7b-GGML) Q5_K_M  |
| 🥈   27 |   73 | 🍆  10 | 🤔  68.78 | 🌶🌶   25.34 | ❄  128 | 🥈🍆 [Hermesboros Limarp 7B](https://huggingface.co/zarakiquemparte/hermesboros-limarp-7b-GGML) Q5_K_M  |
| 🥈   28 |   52 |   37 | 📖  75.69 | 🌶    21.05 | ✳  116 | 🥈 [Airoboros 2.1 7B](https://huggingface.co/TheBloke/Airoboros-L2-7B-2.1-GGUF) Q5_K_M  |
| 🥈   29 |   64 | 🍆  24 | 📖  72.24 | 🌶    20.90 | ❄  126 | 🥈🍆 [Orca Mini v3 7B](https://huggingface.co/TheBloke/orca_mini_v3_7B-GGML) Q5_K_M  |
| 🥈   30 |   40 |   53 | 📖  78.63 | 🌶    19.61 | ✳  114 | 🥈 [LosslessMegaCoder Mini 7B](https://huggingface.co/TheBloke/LosslessMegaCoder-Llama2-7B-Mini-GGUF) Q5_K_M  |
| 🥈   31 |   78 | 🍆   8 | 🤔  67.40 | 🌶🌶   22.80 | ❄  142 | 🥈🍆 [Vicuna 1.3 7B](https://huggingface.co/TheBloke/vicuna-7B-v1.3-GGML) Q8_0  |
| 🥈   32 |   85 | 🍆   3 | 🤔  63.48 | 🌶🌶   28.11 | ❄  131 | 🥈🍆 [Airoboros GPT4 1.2 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.2-GGML) Q4_K_M  |
| 🥉   33 |   22 |   80 | ⭐🧠  81.34 | 🧊   11.74 | ✳  118 | 🥉 [Tsukasa Limarp 7B](https://huggingface.co/ludis/tsukasa-limarp-7b-gguf) Q5_K_M  |
| 🥉   34 |   80 | 🍆  11 | 🤔  65.84 | 🌶🌶   26.51 | ❄  124 | 🥉🍆 [Airoboros GPT4 1.4.1 7B](https://huggingface.co/TheBloke/airoboros-l2-7b-gpt4-1.4.1-GGML) Q5_K_M  |
| 🥉   35 |   30 |   72 | 🧠  79.90 | 🌶    19.79 |   105 | 🥉 [Saiga 2 7B](https://huggingface.co/IlyaGusev/saiga2_7b_ggml) Q5_1  |
| 🥉   36 |   21 |   83 | ⭐🧠  81.51 | 👌   16.64 | ✳  109 | 🥉 [LLaMA 2 7B](https://huggingface.co/TheBloke/Llama-2-7B-GGML) Q5_1  |
| 🥉   37 | 🎓   9 |  103 | ⭐🧠  82.78 | 👌   13.67 |    99 | 🥉🎓 [LLaMA-2 PeanutButter v19 R8 7B](https://huggingface.co/TheBloke/Llama-2-PeanutButter_v19_R8-7B-GGUF) Q5_K_M  |
| 🥉   38 |   14 |   98 | ⭐🧠  82.14 | 👌   15.95 |    93 | 🥉 [Befenghuang Vigogne 2 Chat 7B](https://huggingface.co/s3nh/bofenghuang-vigogne-2-7b-chat-GGUF) Q5_K_S  |
| 🥉   39 |   92 | 🍆   5 | 🤔  61.52 | 🌶🌶   30.29 | ❄  127 | 🥉🍆 [Airoboros GPT4 7B](https://huggingface.co/TheBloke/airoboros-7b-gpt4-GGML) Q4_K_M  |
| 🥉   40 |   86 | 🍆  13 | 🤔  63.31 | 🌶    20.40 | ❄  152 | 🥉🍆 [OpenBuddy OpenLLaMA v5 7B](https://huggingface.co/OpenBuddy/openbuddy-ggml) Q3_K  |
| 🥉   41 |   69 |   34 | 🤔  71.77 | 🌶    19.62 | ❄  121 | 🥉 [Ganchengguang Yoko Japanse v0 7B](https://huggingface.co/s3nh/ganchengguang-Yoko-7B-Japanese-v0-GGUF) Q5_K_S  |
| 🥉   42 |   36 |   74 | 📖  79.15 | 👌   17.32 | ✳  109 | 🥉 [LlongOrca 16K 7B](https://huggingface.co/TheBloke/LlongOrca-7B-16K-GGUF) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
| 🥉   43 |   81 | 🍆  20 | 🤔  65.26 | 🌶🌶   25.24 | ✳  120 | 🥉🍆 [Airoboros GPT4 1.4.1 Limarp 7B](https://huggingface.co/zarakiquemparte/airoboros-l2-7b-gpt4-1.4.1-limarp-GGML) Q5_K_M  |
| 🥉   44 |   68 |   39 | 📖  71.83 | 👌   16.87 | ❄  130 | 🥉 [LLongMA-2 Storysummarizer 7B](https://huggingface.co/emozilla/LLongMA-2-7b-storysummarizer-GGML) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
| 🥉   45 |   63 |   45 | 📖  72.52 | 🌶🌶   23.94 | ✳  109 | 🥉 [Spicyboros 2.2 7B](https://huggingface.co/TheBloke/Spicyboros-7B-2.2-GGUF) Q5_K_M  |
|    46 |   17 |  102 | ⭐🧠  81.80 | 👌   14.08 |    96 |  [Jindo Instruct Pre-Alpha 7B](https://huggingface.co/danielpark/ko-llama-2-jindo-7b-instruct-ggml) Q5_K_M  |
|    47 |   89 | 🍆  18 | 🤔  62.38 | 🌶🌶   28.04 | ✳  115 | 🍆 [Airoboros GPT4 1.3 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.3-GGML) Q4_K_M  |
|    48 | 🎓   7 |  123 | ⭐🧠  83.06 | 🧊    5.05 | ♻   73 | 🎓 [MedLLama 7B](https://huggingface.co/garcianacho/MedLlama-2-7B-GGUF) Q5_K_M  |
|    49 |   65 |   54 | 📖  72.06 | 🌶    20.98 | ✳  111 |  [Saiga 7B](https://huggingface.co/IlyaGusev/saiga_7b_ggml) Q5_1  |
|    50 |   53 |   70 | 📖  75.58 | 🌶    18.86 | ✳  109 |  [MythoChizuru Mini 7B](https://huggingface.co/Heralax/MythoChizuru-Mini-7b-GGML) Q4_K_M  |
|    51 | 🎓  13 |  118 | ⭐🧠  82.26 | 🧊    5.96 | ♻   76 | 🎓 [LLaMA 2 Delphi v0.2e 7B](https://huggingface.co/922-CA/llama-2-7b-delphi-v0.2e-ggml) (link broken) Q5_1  |
|    52 |  112 | 🍆   1 | 🤪  53.80 | 🌶🌶   28.09 | ❄  146 | 🍆 [Marx 3B](https://huggingface.co/asedmammad/Marx-3B-GGML) Q5_1  |
|    53 |   34 |   95 | 🧠  79.38 | 👌   15.13 |   100 |  [Kimiko 7B](https://huggingface.co/TheBloke/Kimiko-7B-GGUF) Q5_K_M  |
|    54 |  113 | 🍆   2 | 🤪  53.80 | 🌶🌶   28.09 | ❄  146 | 🍆 [EverythingLM 3B](https://huggingface.co/asedmammad/EverythingLM-3B-GGML) Q5_1  |
|    55 |   66 |   59 | 📖  72.00 | 👌   16.93 | ✳  120 |  [Pygmalion 7B](https://huggingface.co/sasha0552/pygmalion-7b-q5_1-ggml) Q5_1  |
|    56 |   43 |   88 | 📖  77.94 | 👌   13.90 | ✳  110 |  [Beluga Limarp 7B](https://huggingface.co/zarakiquemparte/beluga-limarp-7b-GGML) Q5_K_M  |
|    57 |   70 |   56 | 🤔  71.66 | 🌶🌶   24.71 |   104 |  [Luna AI LLaMA-2 Uncensored 7B](https://huggingface.co/TheBloke/Luna-AI-Llama2-Uncensored-GGUF) Q5_K_M  |
|    58 |   62 |   67 | 📖  72.81 | 🌶🌶   25.14 |    93 |  [WizardMath V1.0 7B](https://huggingface.co/TheBloke/WizardMath-7B-V1.0-GGML) Q5_K_M  |
|    59 |   93 |   30 | 🤔  61.46 | 👌   17.13 | ❄  139 |  [Nous Yarn 128K 7B](https://huggingface.co/TheBloke/Yarn-Llama-2-7B-128K-GGUF) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|    60 |   51 |   81 | 📖  76.15 | 👌   14.98 | ✳  112 |  [LLaMA-2 Instruct 32K 7B](https://huggingface.co/rozek/LLaMA-2-7B-32K-Instruct_GGUF) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|    61 |   37 |   99 | 📖  79.03 | 👌   16.06 |    89 |  [ELYZA Jp LLaMA-2 7B](https://huggingface.co/mmnga/ELYZA-japanese-Llama-2-7b-gguf) Q5_K_M  |
|    62 |   67 |   64 | 📖  71.83 | 🌶🌶   29.93 | ♻   81 |  [Airoboros GPT4 2.0 LLaMA-2 7B](https://huggingface.co/TheBloke/airoboros-l2-7B-gpt4-2.0-GGUF) Q5_K_M  |
|    63 |  115 | 🍆   7 | 🤪  53.63 | 🌶🌶   25.02 | ❄  139 | 🍆 [Open LLaMA Open Instruct 7B](https://huggingface.co/TheBloke/open-llama-7b-open-instruct-GGML) Q8_0  |
|    64 |   18 |  124 | ⭐🧠  81.80 | 🧊    6.10 | ♻   68 |  [LLaMA-2 Chat 7B](https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML) Q5_1  |
|    65 |   61 |   73 | 📖  72.87 | 🌶🌶   23.16 |    89 |  [Luna AI 7B](https://huggingface.co/TheBloke/Luna-AI-Llama2-Uncensored-GGML) Q8_0  |
|    66 |   57 |   78 | 📖  74.65 | 👌   17.27 |   107 |  [Pygmalion 2 7B](https://huggingface.co/TheBloke/Pygmalion-2-7B-GGUF) Q5_K_M  |
|    67 |   99 |   28 | 🤔  60.08 | 👌   17.07 | ❄  142 |  [OpenLLaMA v2 7B](https://huggingface.co/SlyEcho/open_llama_7b_v2_gguf) Q5_K_M  |
|    68 |  101 | 🍆  26 | 🤪  59.91 | 🌶    20.93 | ❄  123 | 🍆 [CodeLLaMA 7B](https://huggingface.co/TheBloke/CodeLlama-7B-GGUF) Q5_K_M  |
|    69 |   75 |   58 | 🤔  68.32 | 👌   17.45 | ✳  118 |  [LLaMA 7B](https://huggingface.co/TheBloke/LLaMa-7B-GGML/) Q8_0  |
|    70 |   76 |   57 | 🤔  68.03 | 🌶    19.27 | ✳  114 |  [Pygmalion Vicuna 7B](https://huggingface.co/shadowsword/Pygmalion-Vicuna-7B-GGML) Q5_K_M  |
|    71 |   60 |   77 | 📖  73.56 | 🌶    18.64 |   107 |  [MythoLogic Mini 7B](https://huggingface.co/TheBloke/MythoLogic-Mini-7B-GGML/tree/main) Q5_K_M  |
|    72 |   42 |  100 | 📖  78.11 | 🧊   11.82 |   105 |  [Tulpar Limarp 7B](https://huggingface.co/zarakiquemparte/tulpar-limarp-l2-7b-GGUF) Q5_K_M  |
|    73 |   96 |   36 | 🤔  60.66 | 🌶🌶   25.23 | ✳  110 |  [Airoboros GPT4 1.4 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.4-GGML) Q5_K_M  |
|    74 |   91 |   42 | 🤔  61.92 | 🌶    21.57 | ✳  113 |  [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) Q4_K_M  |
|    75 |   46 |   97 | 📖  77.19 | 🌶    17.68 | ♻   82 |  [ELYZA Jp LLaMA-2 Instruct 7B](https://huggingface.co/mmnga/ELYZA-japanese-Llama-2-7b-instruct-gguf) Q5_K_M  |
|    76 |  107 | 🍆  25 | 🤪  57.32 | 👌   17.20 | ❄  146 | 🍆 [AlpacaCielo 2 8K 7B](https://huggingface.co/TheBloke/AlpacaCielo2-7B-8K-GGML) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|    77 |  118 | 🍆  12 | 🤪  53.40 | 🌶🌶   23.31 | ❄  131 | 🍆 [Puma 3B](https://huggingface.co/TheBloke/Puma-3b-GGML) Q5_1  |
|    78 |   28 |  122 | 🧠  80.13 | 🧊    6.42 | ♻   70 |  [Photolens LLaMA 2 Langchain Chat 7B](https://huggingface.co/s3nh/Photolens-llama-2-7b-langchain-chat-GGML) Q5_1  |
|    79 |   56 |   89 | 📖  74.83 | 👌   15.80 |   105 |  [StableBeluga 7B](https://huggingface.co/TheBloke/StableBeluga-7B-GGUF) Q5_K_M  |
|    80 |   79 |   62 | 🤔  67.22 | 👌   15.73 | ✳  120 |  [Nous Yarn 64K 7B](https://huggingface.co/TheBloke/Yarn-Llama-2-7B-64K-GGUF) Q5_K_M  |
|    81 |   26 |  126 | 🧠  80.36 | 🧊    5.14 | ♻   65 |  [LLaMA-2 Chat Code Cherry Pop 7B](https://huggingface.co/TheBloke/llama2-7b-chat-codeCherryPop-qLoRA-GGML) Q5_K_M  |
|    82 |  128 | 🍆   4 | 🤪  52.07 | 🌶🌶   23.99 | ❄  148 | 🍆 [OpenLLaMA Open Instruct v2 7B](https://huggingface.co/TheBloke/open-llama-7B-v2-open-instruct-GGML) Q8_0  |
|    83 |   49 |  101 | 📖  76.56 | 👌   14.08 |    96 |  [Chinese LLaMA-2 7B](https://huggingface.co/LinkSoul/Chinese-Llama-2-7b-ggml) Q5_1  |
|    84 |  111 |   27 | 🤪  54.78 | 🌶    21.74 | ❄  121 |  [OpenLLaMA 7B](https://huggingface.co/SlyEcho/open_llama_7b_gguf) Q5_K_M  |
|    85 |   58 |   93 | 📖  74.31 | 👌   16.95 |    96 |  [GOAT Community 7B](https://huggingface.co/s3nh/GOAT-7B-Community-GGML) Q5_1  |
|    86 |   83 |   66 | 🤔  65.21 | 🌶🌶   27.30 | ♻   86 |  [Lunaboros 7B](https://huggingface.co/zarakiquemparte/lunaboros-7b-GGML) Q4_K_M  |
|    87 |   44 |  113 | 📖  77.48 | 🧊   11.91 | ♻   80 |  [LLaMA-2 32K 7B](https://huggingface.co/rozek/LLaMA-2-7B-32K_GGUF) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|    88 |   82 |   68 | 🤔  65.21 | 🌶🌶   26.56 | ♻   88 |  [Lunaboros LimaRP 7B](https://huggingface.co/zarakiquemparte/lunaboros-limarp-7b-GGML) Q4_K_M  |
|    89 |  102 |   47 | 🤪  59.22 | 🌶🌶   25.30 |   106 |  [WizardLM Uncensored 7B](https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GGML) Q5_1  |
|    90 |   55 |  104 | 📖  75.52 | 👌   15.09 |    93 |  [Tulpar v0 7B](https://huggingface.co/Pipboyguy/Tulpar-7b-v0-GGUF) Q4_0  |
|    91 |   47 |  114 | 📖  77.13 | 🧊   10.80 | ♻   84 |  [Tsukasa 7B](https://huggingface.co/ludis/tsukasa-7b-gguf) Q5_K_M  |
|    92 |   77 |   79 | 🤔  67.80 | 🌶🌶   27.62 | ♻   66 |  [Airoboros GPT4 2.0 7B](https://huggingface.co/TheBloke/airoboros-l2-7B-gpt4-2.0-GGML) Q5_K_M  |
|    93 |   84 |   71 | 🤔  64.86 | 🌶🌶   24.63 | ♻   88 |  [Chinese Alpaca 2 7B](https://huggingface.co/shaowenchen/chinese-alpaca-2-7b-gguf) Q5_K_S  |
|    94 |   38 |  127 | 📖  79.03 | 🧊    4.15 | ♻   60 |  [MedLLaMA-2 Chat 7B](https://huggingface.co/s3nh/Photolens-MedLLaMa-2-Chat-7b-GGUF) Q5_K_S  |
|    95 |   39 |  128 | 📖  78.74 | 🧊    5.81 | ♻   46 |  [Trurl 2 Polish 7B](https://huggingface.co/Aspik101/trurl-2-7b-GGML) Q5_1  |
|    96 |  103 |   52 | 🤪  59.10 | 👌   16.39 | ❄  123 |  [Hermes LLongMA 2 8K 7B](https://huggingface.co/s3nh/Hermes-LLongMA-2-7b-8k-GGML) Q5_1 ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|    97 |   59 |  105 | 📖  73.56 | 👌   15.32 |    92 |  [Guanaco Uncensored 7B](https://huggingface.co/TheBloke/Guanaco-7B-Uncensored-GGUF) Q5_K_M  |
|    98 |  120 |   33 | 🤪  53.17 | 🌶    18.76 | ❄  129 |  [Mamba GPT v4 3B](https://huggingface.co/Aryanne/Mamba-gpt-3B-v4-ggml-and-gguf) Q5_1  |
|    99 |   72 |   91 | 🤔  69.12 | 👌   16.32 |   104 |  [Metharme 7B](https://huggingface.co/waifu-workshop/metharme-7b-ggml-q5_1) Q5_1  |
|   100 |   50 |  119 | 📖  76.56 | 🧊    6.02 | ♻   76 |  [Merak v2 7B](https://huggingface.co/asyafiqe/Merak-7B-v2-GGML) Q5_K_M  |
|   101 |   54 |  117 | 📖  75.52 | 🧊    9.05 | ♻   72 |  [Vicuna v1.5 16K 7B](https://huggingface.co/TheBloke/vicuna-7B-v1.5-16K-GGUF) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   102 |   90 |   76 | 🤔  62.21 | 🌶🌶   24.39 | ♻   85 |  [Airoboros GPT4 m2.0 LLaMA-2 7B](https://huggingface.co/TheBloke/airoboros-l2-7B-gpt4-m2.0-GGUF) Q5_K_M  |
|   103 |   87 |   82 | 🤔  63.19 | 🌶🌶   25.41 | ♻   69 |  [Airoboros GPT4 m2.0 7B](https://huggingface.co/TheBloke/airoboros-l2-7B-gpt4-m2.0-GGML) Q5_K_M  |
|   104 |  114 |   55 | 🤪  53.69 | 👌   14.68 | ❄  128 |  [Marx V2 3B](https://huggingface.co/NikolayKozloff/Marx-3B-V2-GGUF) Q4_1  |
|   105 |   74 |  106 | 🤔  68.49 | 🧊   13.02 |    94 |  [LLaMA-2 Galleon 7B](https://huggingface.co/tog/llama-2-7b-galleon-GGUF) Q5_K_M  |
|   106 |  122 |   50 | 🤪  53.00 | 🌶    19.39 | ✳  116 |  [OpenLLaMA 3B](https://huggingface.co/SlyEcho/open_llama_3b_gguf) Q5_1  |
|   107 |  130 |   43 | 🤪  51.15 | 🌶    17.84 | ❄  121 |  [OpenBuddy OpenLLaMA v10 3B](https://huggingface.co/OpenBuddy/openbuddy-ggml) Q5_0  |
|   108 |  116 |   60 | 🤪  53.57 | 🧊   11.93 | ❄  130 |  [OpenLLaMA v2 3B](https://huggingface.co/klosax/openllama-3b-v2-gguf) Q5_0  |
|   109 |   71 |  115 | 🤔  71.54 | 🧊    8.45 | ♻   78 |  [StableBeluga Samantha V3 7B](https://huggingface.co/RoversX/StableBeluga-7B-Qlora-Samantha-V3-ggml) Q4_0  |
|   110 |  117 |   61 | 🤪  53.46 | 👌   17.04 | ✳  117 |  [Griffin 3B](https://huggingface.co/acrastt/Griffin-3B-GGUF) (link broken) Q4_1  |
|   111 |   95 |   96 | 🤔  61.12 | 🧊   11.78 |   107 |  [CodeLLaMA Instruct 7B](https://huggingface.co/TheBloke/CodeLlama-7B-Instruct-GGUF) Q5_K_M  |
|   112 |  126 |   63 | 🤪  52.30 | 🌶    21.09 |   106 |  [WizardVicuna Uncens Instr PL 3B](https://huggingface.co/Aspik101/WizardVicuna-Uncensored-3B-instruct-PL-lora_GGML) Q5_1  |
|   113 |  108 |   85 | 🤪  57.09 | 👌   17.44 |   103 |  [CodeLLaMA Python 7B](https://huggingface.co/TheBloke/CodeLlama-7B-Python-GGUF) Q5_K_M  |
|   114 |  104 |   94 | 🤪  58.99 | 🧊   11.40 | ✳  110 |  [LLaMA-2 KO Chat 7B](https://huggingface.co/StarFox7/Llama-2-ko-7B-chat-gguf) Q5_1  |
|   115 |  110 |   92 | 🤪  56.22 | 🧊   12.27 | ✳  110 |  [Mamba GPT v2 3B](https://huggingface.co/s3nh/mamba-gpt-3b-v2-GGML) Q5_1  |
|   116 |   88 |  120 | 🤔  62.44 | 🧊    6.43 | ♻   72 |  [LLaMA-2 KO 7B](https://huggingface.co/StarFox7/Llama-2-ko-7B-ggml) Q5_1  |
|   117 |  105 |  108 | 🤪  58.12 | 🧊   10.29 |   103 |  [PMC LLaMA 7B](https://huggingface.co/TheBloke/PMC_LLAMA-7B-GGML) Q4_0  |
|   118 |  123 |   87 | 🤪  52.94 | 🌶    18.05 |    98 |  [Open LLaMA 7B](https://huggingface.co/vihangd/open_llama_7b_700bt_ggml) Q5_1  |
|   119 |  127 |   84 | 🤪  52.19 | 🧊   11.77 | ✳  115 |  [Alpachino Baichuan Instruction 7B](https://huggingface.co/s3nh/AlpachinoNLP-Baichuan-7B-Instruction-GGML) Q5_0  |
|   120 |  106 |  110 | 🤪  57.66 | 🧊   13.01 | ♻   85 |  [LMSYS Vicuna 1.5 7B](https://huggingface.co/s3nh/lmsys-vicuna-7b-v1.5-GGML) Q5_1  |
|   121 |  109 |  107 | 🤪  56.85 | 👌   15.00 | ♻   88 |  [Vicuna v1.5 7B](https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF) Q5_K_M  |
|   122 |  100 |  121 | 🤔  59.97 | 🧊    7.61 | ♻   69 |  [Based 7B](https://huggingface.co/TheBloke/based-7B-GGML) Q4_K_M  |
|   123 |   94 |  129 | 🤔  61.18 | 🧊    2.81 | ♻   52 |  [Scarlett 7B](https://huggingface.co/TheBloke/Scarlett-7B-GGML) Q5_K_M  |
|   124 |   98 |  125 | 🤔  60.43 | 🧊    6.49 | ♻   58 |  [Dolphin LLaMA-2 7B](https://huggingface.co/TheBloke/Dolphin-Llama2-7B-GGML) Q5_K_M  |
|   125 |   97 |  130 | 🤔  60.60 | 🧊    3.90 | ♻   45 |  [Tulu Uncensored TV Alpaca 7B](https://huggingface.co/xzuyn/l2-tulu-uncensored-tv-alpaca-7b-ggml) (link broken) Q5_1  |
|   126 |  131 |   90 | 🤪  50.81 | 🧊   10.78 | ✳  114 |  [Baichuan 7B](https://huggingface.co/s3nh/baichuan-7b-sft-GGML) Q5_1  |
|   127 |  119 |  112 | 🤪  53.34 | 👌   13.97 | ♻   75 |  [Orca Mini 3B](https://huggingface.co/s3nh/orca_mini_3b-GGML) Q5_1  |
|   128 |  121 |  111 | 🤪  53.11 | 👌   13.15 | ♻   78 |  [Komt LLaMA-2 Chat 7B](https://huggingface.co/davidkim205/komt-Llama-2-7b-chat-hf-ggml) Q5_K_M  |
|   129 |  129 |  109 | 🤪  51.50 | 🧊   12.99 |    89 |  [LLaMA Deus v3 7B](https://huggingface.co/TheBloke/llama-deus-7b-v3-GGML) Q4_0  |
|   130 |  124 |  116 | 🤪  52.88 | 🧊    8.69 | ♻   73 |  [Open Cabrita 3B](https://huggingface.co/lucianosb/open-cabrita3b-GGUF) Q5_1  |
|   131 |  125 |  133 | 🤪  52.42 | 🧊    0.00 | ♻    0 |  [LLongMA 2 7B](https://huggingface.co/s3nh/LLongMA-2-7b-16k-GGML/tree/main) Q5_1 ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   132 |  132 |  132 | 🤪  47.58 | 🧊    0.00 | ♻    0 |  [LongChat v1.5 32K 7B](https://huggingface.co/asedmammad/longchat-7b-v1.5-32k-GGML) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   133 |  134 |  131 | 🤪  42.28 | 🧊    1.64 | ♻   16 |  [ToolLLaMA 7B](https://huggingface.co/s3nh/ToolLLaMA-7b-GGML) Q5_1  |
|   134 |  133 |  134 | 🤪  47.58 | 🧊    0.00 | ♻    0 |  [LMSYS LongChat 1.5 32k 7B](https://huggingface.co/s3nh/lmsys-longchat-7b-v1.5-32k-GGML) Q5_1 ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |

## 13B Models

- [See **Ranking Changelog** to see which GGUF/GGML Models were added](https://rentry.co/ayumi_erp_rating#ranking-changelog)
- [Benchmark Results as CSV - Timestamp 20230910_141602](https://m8geil.de/data/push/ayumi_llm_erp_ranking_scores_20230910_141602.csv)

|    Rank | ALC-IQ Rank | ERP Rank | ALC-IQ |ERP Score|ERP Var Score| Model |
|--------:|------------:|---------:|-------:|--------:|------------:|-------------|
| 🥇    1 | 🎓   1 | 🍆  15 | ⭐🧠  93.43 | 🌶🌶   27.08 | ❄  140 | 🥇🎓🍆 [Athena v1 13B](https://huggingface.co/TheBloke/Athena-v1-GGUF) Q5_K_M  |
| 🥇    2 | 🎓  10 | 🍆   8 | ⭐🧠  91.88 | 🌶🌶   27.82 | ❄  149 | 🥇🎓🍆 [MLewdBoros 13B](https://huggingface.co/Undi95/MLewdBoros-L2-13B-GGUF) Q5_K_M  |
| 🥇    3 | 🎓   4 | 🍆  18 | ⭐🧠  92.97 | 🌶🌶   26.10 | ❄  141 | 🥇🎓🍆 [Airoboros 2.1 13B](https://huggingface.co/TheBloke/Airoboros-L2-13B-2.1-GGUF) Q5_K_M  |
| 🥇    4 | 🎓  19 | 🍆   6 | ⭐🧠  89.98 | 🌶🌶   28.91 | ❄  145 | 🥇🎓🍆 [Slerpeno 13B](https://huggingface.co/Brouz/Slerpeno/) Q5_K_M  |
| 🥇    5 |   20 | 🍆  14 | ⭐🧠  89.92 | 🌶🌶   25.69 | ❄  156 | 🥇🍆 [Spicyboros 2.2_2 13B](https://huggingface.co/jondurbin/spicyboros-13b-2.2-gguf) Q5_K_M  |
| 🥇    6 | 🎓  12 | 🍆  24 | ⭐🧠  91.07 | 🌶🌶   28.20 | ❄  133 | 🥇🎓🍆 [ReMM v2 13B](https://huggingface.co/Undi95/ReMM-v2-L2-13B-GGUF) Q5_K_M  |
| 🥇    7 | 🎓   3 | 🍆  37 | ⭐🧠  93.03 | 🌶    24.94 | ❄  136 | 🥇🎓🍆 [MythoMix 13B](https://huggingface.co/TheBloke/MythoMix-L2-13B-GGUF) Q5_K_M  |
| 🥇    8 |   25 | 🍆  13 | ⭐🧠  89.52 | 🌶🌶   26.95 | ❄  144 | 🥇🍆 [MLewd V2-1 015 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-1-015-GGUF) Q4_K_S  |
| 🥇    9 | 🎓  15 | 🍆  25 | ⭐🧠  90.32 | 🌶🌶   26.75 | ❄  136 | 🥇🎓🍆 [Airoboros Creative lmoe 13B](https://huggingface.co/Doctor-Shotgun/Misc-Models) Q5_K_M  |
| 🥇   10 | 🎓  14 | 🍆  32 | ⭐🧠  90.44 | 🌶    23.88 | ❄  145 | 🥇🎓🍆 [Redmond Puffin 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) Q5_1  |
| 🥇   11 |   40 | 🍆   1 | 🧠  88.36 | 🌶🌶   29.93 | ❄  154 | 🥇🍆 [Huginn v1.2 13B](https://huggingface.co/TheBloke/huginnv1.2-GGML) Q5_K_M  |
| 🥇   12 |   36 | 🍆   7 | 🧠  88.65 | 🌶🌶   28.26 | ❄  147 | 🥇🍆 [MLewd v2-2 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-2-GGUF) Q5_K_M  |
| 🥇   13 | 🎓   5 |   52 | ⭐🧠  92.86 | 🌶🌶   26.11 | ✳  122 | 🥇🎓 [MythoMax Kimiko V2 13B](https://huggingface.co/Undi95/MythoMax-L2-Kimiko-v2-13b-GGUF) Q5_K_M  |
| 🥇   14 | 🎓  11 |   46 | ⭐🧠  91.65 | 🌶🌶   28.64 | ✳  119 | 🥇🎓 [ReMM 0.65 SLERP 13B](https://huggingface.co/Brouz/REMM-PYG-0.65-SLERP) Q5_K_M  |
| 🥇   15 | 🎓  16 |   42 | ⭐🧠  90.21 | 🌶    23.34 | ❄  139 | 🥇🎓 [Stheno 1.3 13B](https://huggingface.co/Sao10K/Stheno-Variants-L2-13B-GGUF) Q5_K_M  |
| 🥇   16 |   52 | 🍆   3 | 📖  87.33 | 🌶🌶   29.01 | ❄  151 | 🥇🍆 [MLewd V2-1 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-1-GGUF) Q5_K_M  |
| 🥇   17 |   22 |   51 | ⭐🧠  89.86 | 🌶    24.61 | ✳  131 | 🥇 [UndiMix v3 13B](https://huggingface.co/Undi95/UndiMix-v3-13B-GGUF) Q5_K_M  |
| 🥇   18 |   35 | 🍆  38 | 🧠  88.65 | 🌶🌶   25.53 | ❄  133 | 🥇🍆 [Teknium OpenHermes 13B](https://huggingface.co/s3nh/teknium-OpenHermes-13B-GGUF) Q5_K_S  |
| 🥇   19 |   28 |   49 | ⭐🧠  89.23 | 🌶🌶   26.10 | ✳  123 | 🥇 [ReMM v2 Variant 13B](https://huggingface.co/Undi95/ReMM-v2-L2-13B-VARIANT-GGUF) Q5_K_M  |
| 🥈   20 | 🎓  17 |   65 | ⭐🧠  90.21 | 🌶    25.09 | ✳  121 | 🥈🎓 [Chronos Beluga 13B](https://huggingface.co/TheBloke/Chronos-Beluga-v2-13B-GGML) Q5_K_M  |
| 🥈   21 |   59 | 🍆  16 | 📖  86.69 | 🌶    25.45 | ❄  157 | 🥈🍆 [MLewd V2-1 050 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-1-050-GGUF) Q4_K_S  |
| 🥈   22 |   58 | 🍆  19 | 📖  86.87 | 🌶🌶   26.75 | ❄  138 | 🥈🍆 [ReMM 13B](https://huggingface.co/Undi95/ReMM-L2-13B-GGUF) Q5_K_M  |
| 🥈   23 |   33 |   50 | ⭐🧠  88.71 | 🌶    23.25 | ❄  136 | 🥈 [Spicyboros 2.2 13B](https://huggingface.co/rnosov/spicyboros-13b-2.2-GGUF) Q4_K_M  |
| 🥈   24 |   71 | 🍆   5 | 📖  86.00 | 🌶🌶   26.33 | ❄  163 | 🥈🍆 [Stheno Inverted 1.2 13B](https://huggingface.co/Sao10K/Stheno-Variants-L2-13B-GGUF) Q5_K_M  |
| 🥈   25 |   61 | 🍆  17 | 📖  86.64 | 🌶🌶   27.03 | ❄  138 | 🥈🍆 [MLewd v2 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-GGUF) Q5_K_M  |
| 🥈   26 |   32 |   54 | ⭐🧠  88.82 | 🌶🌶   26.30 | ✳  120 | 🥈 [Chronolima Airo Grad 13B](https://huggingface.co/TheBloke/Chronolima-Airo-Grad-L2-13B-GGML) Q5_K_M  |
| 🥈   27 | 🎓   2 |   91 | ⭐🧠  93.20 | 🌶🌶   25.64 |   109 | 🥈🎓 [MythoMaxKurisu 13B](https://huggingface.co/Heralax/MythoMaxKurisu-13b-GGML) Q5_K_M  |
| 🥈   28 |   56 | 🍆  36 | 📖  87.04 | 🌶    24.89 | ❄  137 | 🥈🍆 [LLaMA-2 Chat Uncensored 13B](https://huggingface.co/s3nh/llama2_13b_chat_uncensored-GGML) Q5_1  |
| 🥈   29 |   41 |   55 | 🧠  88.31 | 🌶🌶   29.46 |   113 | 🥈 [Blind Test Janus 13B](https://huggingface.co/s3nh/jondurbin-blind-test-13b-janus-GGML) Q5_1  |
| 🥈   30 |   79 | 🍆  10 | 📖  85.54 | 🌶🌶   26.24 | ❄  156 | 🥈🍆 [Holomax 13B](https://huggingface.co/KoboldAI/LLaMA2-13B-Holomax-GGUF) Q5_K_M  |
| 🥈   31 |   63 | 🍆  30 | 📖  86.58 | 🌶🌶   25.55 | ❄  139 | 🥈🍆 [ReMM Lion 13B](https://huggingface.co/Undi95/ReMM-Lion-13B-GGUF) Q5_K_M  |
| 🥈   32 |   62 | 🍆  33 | 📖  86.64 | 🌶    25.29 | ❄  138 | 🥈🍆 [Chronos Hermes 2 13B](https://huggingface.co/Blackroot/Chronos-Hermes-2-GGML) Q5_K_M  |
| 🥈   33 | 🎓   7 |  102 | ⭐🧠  92.57 | 🌶    24.20 |   111 | 🥈🎓 [ReMM SLERP 13B](https://huggingface.co/Undi95/ReMM-SLERP-L2-13B-GGUF) Q5_K_M  |
| 🥈   34 |   31 |   75 | ⭐🧠  88.94 | 👌   22.06 | ❄  133 | 🥈 [Orca Mini v3 13B](https://huggingface.co/TheBloke/orca_mini_v3_13B-GGML) Q5_K_M  |
| 🥈   35 | 🎓   8 |  104 | ⭐🧠  92.57 | 🌶    24.20 |   111 | 🥈🎓 [MythoMax 13B](https://huggingface.co/TheBloke/MythoMax-L2-13B-GGUF) Q5_K_M  |
| 🥈   36 | 🎓   9 |  103 | ⭐🧠  92.17 | 👌   18.04 | ✳  129 | 🥈🎓 [Huginn 13B](https://huggingface.co/TheBloke/Huginn-13B-GGML) Q5_K_M  |
| 🥈   37 |   27 |   82 | ⭐🧠  89.29 | 🌶    24.63 |   114 | 🥈 [Airolima Chronos Grad 13B](https://huggingface.co/TheBloke/Airolima-Chronos-Grad-L2-13B-GGML) Q5_K_M  |
| 🥈   38 |   26 |   94 | ⭐🧠  89.34 | 👌   21.03 | ✳  125 | 🥈 [StableBeluga 13B](https://huggingface.co/TheBloke/StableBeluga-13B-GGUF) Q5_K_M  |
| 🥈   39 |   97 | 🍆   9 | 📖  84.22 | 🌶🌶   29.48 | ❄  140 | 🥈🍆 [OpenAssistant LLaMA-2 8k Orca 13B](https://huggingface.co/TheBloke/OpenAssistant-Llama2-13B-Orca-8K-3319-GGML) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
| 🥈   40 |   89 | 🍆  20 | 📖  84.85 | 🌶🌶   26.33 | ❄  139 | 🥈🍆 [qCammel L2 13B](https://huggingface.co/TheBloke/qCammel-13-GGML) Q5_K_M  |
| 🥈   41 | 🎓   6 |  122 | ⭐🧠  92.86 | 🌶    23.29 |   105 | 🥈🎓 [MythoMax Kimiko Mix 13B](https://huggingface.co/TheBloke/MythoMax-Kimiko-Mix-GGUF) Q5_K_M  |
| 🥈   42 |   50 |   73 | 📖  87.44 | 👌   21.62 | ❄  134 | 🥈 [Pygmalion 2 13B](https://huggingface.co/TheBloke/Pygmalion-2-13B-GGUF) Q5_K_M  |
| 🥈   43 |   54 |   69 | 📖  87.33 | 🌶    23.12 | ✳  127 | 🥈 [Saiga 2 13B](https://huggingface.co/IlyaGusev/saiga2_13b_ggml) Q5_1  |
| 🥈   44 |   44 |   81 | 🧠  88.02 | 🌶🌶   30.14 | ♻   94 | 🥈 [Airochronos 13B](https://huggingface.co/TheBloke/Airochronos-L2-13B-GGML) Q5_K_M  |
| 🥈   45 |   47 |   79 | 🧠  87.90 | 👌   22.34 | ✳  126 | 🥈 [Kimiko 13B](https://huggingface.co/TheBloke/Kimiko-13B-GGML) Q5_K_M  |
| 🥈   46 |   85 | 🍆  35 | 📖  85.14 | 🌶🌶   25.70 | ❄  133 | 🥈🍆 [ReMM PIPPA 13B](https://huggingface.co/Undi95/ReMM-L2-13B-PIPPA-GGUF) Q5_K_M  |
| 🥈   47 |   37 |   93 | 🧠  88.65 | 👌   22.06 | ✳  124 | 🥈 [Kimiko V2 13B](https://huggingface.co/TheBloke/Kimiko-v2-13B-GGUF) Q5_K_M  |
| 🥉   48 |   42 |   89 | 🧠  88.13 | 🌶    25.43 |   111 | 🥉 [MythoLogic 13B](https://huggingface.co/TheBloke/MythoLogic-L2-13B-GGUF) Q5_K_M  |
| 🥉   49 |   29 |  105 | ⭐🧠  89.23 | 🌶    23.27 |   114 | 🥉 [Vigogne 2 13B](https://huggingface.co/TheBloke/Vigogne-2-13B-Instruct-GGML) Q5_K_M  |
| 🥉   50 |  116 | 🍆   2 | 🤔  80.82 | 🌶🌶   28.11 | ❄  164 | 🥉🍆 [Legerdemain 13B](https://huggingface.co/TheBloke/13B-Legerdemain-L2-GGML) Q5_K_M  |
| 🥉   51 |   95 | 🍆  28 | 📖  84.27 | 🌶🌶   25.85 | ❄  138 | 🥉🍆 [Stheno Inverted 13B](https://huggingface.co/TheBloke/Stheno-Inverted-L2-13B-GGUF) Q5_K_M  |
| 🥉   52 |   76 |   53 | 📖  85.83 | 🌶    25.14 | ✳  125 | 🥉 [Mythalion 13B](https://huggingface.co/TheBloke/Mythalion-13B-GGUF) Q5_K_M  |
| 🥉   53 |  103 | 🍆  22 | 🤔  83.24 | 🌶🌶   28.87 | ❄  133 | 🥉🍆 [ReMM S Kimiko v2 13B](https://huggingface.co/Undi95/ReMM-S-Kimiko-v2-13B-GGUF) Q5_K_M  |
| 🥉   54 |   73 |   60 | 📖  86.00 | 🌶    23.87 | ✳  126 | 🥉 [Firefly v1.2 13B](https://huggingface.co/TheBloke/Firefly-Llama2-13B-v1.2-GGML) Q5_K_M  |
| 🥉   55 |   77 |   57 | 📖  85.71 | 🌶🌶   26.04 | ✳  120 | 🥉 [Fireflx v1.2 13B](https://huggingface.co/TheBloke/Firefly-Llama2-13B-v1.2-GGUF) Q5_K_M  |
| 🥉   56 |   24 |  121 | ⭐🧠  89.57 | 👌   19.85 | ✳  118 | 🥉 [Redmond Puffin v1.3 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) Q5_K_M  |
| 🥉   57 |   88 |   48 | 📖  84.85 | 🌶    23.97 | ❄  135 | 🥉 [Guanaco Uncensored 13B](https://huggingface.co/TheBloke/Guanaco-13B-Uncensored-GGUF) Q5_K_M  |
| 🥉   58 |  119 | 🍆  11 | 🤔  80.36 | 🌶🌶   26.06 | ❄  157 | 🥉🍆 [Huginn v4 13B](https://huggingface.co/The-Face-Of-Goonery/Huginn-13b-V4-GGUF) Q5_K_M  |
| 🥉   59 |   92 |   44 | 📖  84.62 | 🌶    25.33 | ✳  131 | 🥉 [Camel Platypus 2 13B](https://huggingface.co/TheBloke/Camel-Platypus2-13B-GGML) Q5_K_M  |
| 🥉   60 |   49 |   96 | 🧠  87.56 | 👌   21.44 | ✳  124 | 🥉 [Chronos Hermes v2 13B](https://huggingface.co/TheBloke/Chronos-Hermes-13b-v2-GGUF) Q5_K_M  |
| 🥉   61 |  120 | 🍆  12 | 🤔  80.36 | 🌶🌶   26.06 | ❄  157 | 🥉🍆 [Huginn v4.5 13B](https://huggingface.co/The-Face-Of-Goonery/Huginn-13b-v4.5-gguf) Q5_K_M  |
| 🥉   62 |   60 |   88 | 📖  86.69 | 👌   21.37 | ✳  127 | 🥉 [h2oGPT 13B](https://huggingface.co/TheBloke/h2ogpt-4096-llama2-13B-GGML) (link broken) Q5_K_M  |
| 🥉   63 |  117 | 🍆  21 | 🤔  80.70 | 🌶🌶   25.78 | ❄  142 | 🥉🍆 [MLewd v1 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v1-1-GGUF) Q5_K_M  |
| 🥉   64 |  132 | 🍆   4 | 🤔  76.96 | 🌶🌶   29.33 | ❄  146 | 🥉🍆 [Airoboros 2.1 YaRN 64K 13B](https://huggingface.co/TheBloke/Airoboros-L2-13B-2.1-YaRN-64K-GGUF) Q5_K_M  |
| 🥉   65 |   43 |  111 | 🧠  88.13 | 🌶    24.39 |   108 | 🥉 [Chronoboros Grad 13B](https://huggingface.co/TheBloke/Chronoboros-Grad-L2-13B-GGML) Q5_K_M  |
| 🥉   66 |   38 |  117 | 🧠  88.59 | 👌   18.80 | ✳  120 | 🥉 [Stable Platypus 2 13B](https://huggingface.co/TheBloke/Stable-Platypus2-13B-GGML) Q5_K_M  |
|    67 |   45 |  109 | 🧠  88.02 | 🌶🌶   31.72 | ♻   78 |  [Airoboros GPT4 2.0 13B](https://huggingface.co/TheBloke/airoboros-l2-13b-gpt4-2.0-GGML) Q5_K_M  |
|    68 |   68 |   83 | 📖  86.12 | 🌶🌶   32.04 | ♻   92 |  [Thorns 13B](https://huggingface.co/TheBloke/13B-Thorns-L2-GGUF) Q5_K_M  |
|    69 |   39 |  118 | 🧠  88.48 | 👌   18.52 | ✳  120 |  [UndiMix v2 13B](https://huggingface.co/Undi95/UndiMix-v2-13b-GGUF) Q5_K_M  |
|    70 |   67 |   85 | 📖  86.41 | 👌   19.82 | ✳  132 |  [Chronos 2 13B](https://huggingface.co/TheBloke/Chronos-13B-v2-GGML) Q5_K_M  |
|    71 |  112 | 🍆  34 | 🤔  81.51 | 🌶    23.18 | ❄  150 | 🍆 [Huginn v1.3 13B](https://huggingface.co/TheBloke/Huginn-v3-13B-GGML) Q5_K_M  |
|    72 |   48 |  113 | 🧠  87.62 | 🌶🌶   31.26 | ♻   73 |  [Airoboros GPT4 2.0 LLaMA-2 13B](https://huggingface.co/TheBloke/airoboros-l2-13b-gpt4-2.0-GGUF) Q5_K_M  |
|    73 |   84 |   70 | 📖  85.20 | 🌶    22.98 | ✳  129 |  [StableBeluga Instruct PL Lora 13B](https://huggingface.co/Aspik101/StableBeluga-13B-instruct-PL-lora_GGML) Q5_1  |
|    74 |   96 |   56 | 📖  84.22 | 🌶    23.08 | ❄  136 |  [Platypus 2 13B](https://huggingface.co/TheBloke/Platypus2-13B-GGML) Q5_K_M  |
|    75 |   87 |   68 | 📖  84.97 | 🌶🌶   26.09 |   114 |  [Hermes Kimiko 13B](https://huggingface.co/samemodels/hermes-kimiko-13b-GGML) Q5_K_M  |
|    76 |  123 | 🍆  27 | 🤔  79.84 | 🌶🌶   26.15 | ❄  136 | 🍆 [MLewd v1-7 TRY2 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v1-7-TRY2-GGUF) Q5_K_M  |
|    77 |  128 | 🍆  23 | 🤔  78.00 | 🌶🌶   28.05 | ❄  135 | 🍆 [AlpacaCielo 13B](https://huggingface.co/TheBloke/AlpacaCielo-13B-GGML) Q5_K_M  |
|    78 |  122 | 🍆  31 | 🤔  79.95 | 🌶    24.02 | ❄  150 | 🍆 [LLongMA-2 Storysummarizer 13B](https://huggingface.co/emozilla/LLongMA-2-13b-storysummarizer-GGML) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|    79 |   69 |   97 | 📖  86.06 | 👌   22.40 | ✳  121 |  [Chronohermes Grad 13B](https://huggingface.co/TheBloke/Chronohermes-Grad-L2-13B-GGML) Q5_K_M  |
|    80 |  118 |   43 | 🤔  80.53 | 🌶    23.01 | ❄  141 |  [Gywy Chinese v1 13B](https://huggingface.co/s3nh/gywy-llama2-13b-chinese-v1-GGML) Q5_1  |
|    81 |   30 |  152 | ⭐🧠  89.06 | 🧊   14.21 |   102 |  [TerraMix 16K 13B](https://huggingface.co/androlike/TerraMix_L2_13B_16K_GGUF) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|    82 |  106 |   61 | 🤔  82.95 | 🌶🌶   29.00 |   112 |  [Crestfall FrankenMon 13B](https://huggingface.co/crestf411/crestfall-L2-frankmon-13b) Q5_K_M  |
|    83 |  124 |   40 | 🤔  79.26 | 🌶🌶   25.63 | ✳  132 |  [MLewd 13B](https://huggingface.co/Undi95/MLewd-L2-13B-GGUF) Q5_K_M  |
|    84 |  104 |   67 | 🤔  83.06 | 🌶    23.71 | ✳  124 |  [Frankensteins Monster 13B](https://huggingface.co/Blackroot/FrankensteinsMonster-13B-GGML) Q4_K_S  |
|    85 |   23 |  165 | ⭐🧠  89.69 | 🧊   11.99 | ♻   89 |  [WizardLM 1.2 PL 13B](https://huggingface.co/Lajonbot/WizardLM-13B-V1.2-PL-lora_GGML) Q5_1  |
|    86 |   46 |  138 | 🧠  87.90 | 🧊   15.16 |   109 |  [UndiMix v1 13B](https://huggingface.co/Undi95/UndiMix-v1-13b-GGUF) Q5_K_M  |
|    87 | 🎓  18 |  173 | ⭐🧠  90.09 | 🧊    8.02 | ♻   78 | 🎓 [WizardLM v1.2 13B](https://huggingface.co/Sethblocks/WizardLM-13B-v1.2-GGUF) Q4_0  |
|    88 |  115 |   59 | 🤔  80.93 | 🌶🌶   26.54 | ✳  116 |  [OniiChat Hermes Limarp 13B](https://huggingface.co/crestf411/crestfall-L2-oniichat-hermes-limarp-13b) Q5_K_M  |
|    89 |   81 |  101 | 📖  85.37 | 🌶    23.61 |   113 |  [Nous Hermes 13B](https://huggingface.co/Undi95/Nous-Hermes-13B-Code-GGUF) Q5_K_M  |
|    90 | 🎓  13 |  185 | ⭐🧠  90.61 | 🧊    5.88 | ♻   70 | 🎓 [PuddleJumper 13B](https://huggingface.co/TheBloke/PuddleJumper-13B-GGUF) Q5_K_M  |
|    91 |   83 |  106 | 📖  85.20 | 🌶    22.53 | ✳  117 |  [Nous Hermes LLaMA-2 13B](https://huggingface.co/TheBloke/Nous-Hermes-Llama2-GGUF) Q5_K_M  |
|    92 |   51 |  146 | 📖  87.44 | 🧊   13.63 |   106 |  [Spring Dragon 13B](https://huggingface.co/TheBloke/Spring-Dragon-GGML) Q5_K_M  |
|    93 |  121 |   63 | 🤔  80.18 | 🌶    24.93 | ✳  123 |  [Stheno 13B](https://huggingface.co/TheBloke/Stheno-L2-13B-GGUF) Q5_K_M  |
|    94 |  100 |   90 | 🤔  83.93 | 🌶    22.69 | ✳  122 |  [LLaMA-2 Guanaco 13B](https://huggingface.co/Gryphe/Various-GGML-Quants) Q4_1  |
|    95 |   21 |  187 | ⭐🧠  89.92 | 🧊    4.50 | ♻   60 |  [Speechless LLaMA-2 13B](https://huggingface.co/TheBloke/Speechless-Llama2-13B-GGUF) Q5_K_M  |
|    96 |   64 |  140 | 📖  86.58 | 👌   16.93 |   106 |  [Mythical Destroyer V2 13B](https://huggingface.co/IkariDev/Mythical-Destroyer-V2-L2-13B-GGUF) (link broken) Q5_K_M  |
|    97 |   94 |  107 | 📖  84.33 | 🌶    24.71 |   108 |  [Hermes LimaRP 13B](https://huggingface.co/Gryphe/Various-GGML-Quants) Q4_K_M  |
|    98 |   70 |  136 | 📖  86.06 | 👌   18.32 |   109 |  [OpenChat v3.2 13B](https://huggingface.co/TheBloke/OpenChat_v3.2-GGML) Q5_K_M  |
|    99 |  129 |   66 | 🤔  77.76 | 🌶    23.59 | ✳  125 |  [WizardMath V1.0 13B](https://huggingface.co/TheBloke/WizardMath-13B-V1.0-GGML) Q5_K_M  |
|   100 |  152 |   41 | 🤪  70.97 | 👌   22.40 | ❄  153 |  [Nous Yarn 128K 13B](https://huggingface.co/TheBloke/Yarn-Llama-2-13B-128K-GGUF) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   101 |  139 |   58 | 🤔  75.75 | 🌶    24.38 | ✳  126 |  [Nous Hermes Writer 13B](https://huggingface.co/Blackroot/Nous-Hermes-Llama2-13b-Storywriter-GGML) Q4_K_S  |
|   102 |   57 |  157 | 📖  86.92 | 🧊   12.34 |    99 |  [LLaMA-2 Chat Limarp v2 13B](https://huggingface.co/TheBloke/llama-2-13B-chat-limarp-v2-merged-GGUF) Q5_K_M  |
|   103 |   82 |  128 | 📖  85.31 | 🧊   14.83 | ✳  119 |  [OpenOrcaxOpenChat Preview2 13B](https://huggingface.co/s3nh/OpenOrcaxOpenChat-Preview2-13B-GGML) Q5_1  |
|   104 |  107 |   98 | 🤔  82.72 | 🌶    23.49 |   115 |  [Chronorctypus Limarobormes 13B](https://huggingface.co/TheBloke/Chronorctypus-Limarobormes-13b-GGML) Q5_K_M  |
|   105 |   75 |  137 | 📖  85.89 | 👌   17.65 |   110 |  [LosslessMegaCoder Mini 13B](https://huggingface.co/TheBloke/LosslessMegaCoder-Llama2-13B-Mini-GGML) Q5_K_M  |
|   106 |  168 | 🍆  26 | 🤪  64.69 | 🌶🌶   25.59 | ❄  140 | 🍆 [LLaMA SuperCOT 13B](https://huggingface.co/camelids/llama-13b-supercot-ggml-q5_1) Q5_1  |
|   107 |   78 |  134 | 📖  85.60 | 👌   16.16 |   112 |  [OpenBuddy LLaMA-2 v11.1 13B](https://huggingface.co/TheBloke/OpenBuddy-Llama2-13B-v11.1-GGUF) Q5_K_M  |
|   108 |  131 |   72 | 🤔  77.13 | 🌶    22.62 | ✳  131 |  [Nous Yarn 64K 13B](https://huggingface.co/TheBloke/Yarn-Llama-2-13B-64K-GGUF) Q5_K_M  |
|   109 |   34 |  189 | ⭐🧠  88.71 | 🧊    4.34 | ♻   46 |  [Iubaris V3 13B](https://huggingface.co/kajdun/iubaris-13b-v3_GGML) Q5_K_M  |
|   110 |  101 |  110 | 🤔  83.87 | 👌   22.34 | ✳  117 |  [Synthia 13B](https://huggingface.co/TheBloke/Synthia-13B-GGML) Q5_K_M  |
|   111 |  154 |   47 | 🤪  68.43 | 🌶    23.52 | ❄  138 |  [Chronos Hermes SuperHOT 8K 13B](https://huggingface.co/TheBloke/Chronos-Hermes-13B-SuperHOT-8K-GGML) Q5_1 ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   112 |  134 |   76 | 🤔  76.27 | 🌶    25.12 | ✳  117 |  [Manticore SuperHOT 8K 13B](https://huggingface.co/TheBloke/Manticore-13B-SuperHOT-8K-GGML/) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   113 |   55 |  172 | 📖  87.15 | 🧊    7.45 | ♻   86 |  [Samantha 1.11 13B](https://huggingface.co/TheBloke/Samantha-1.11-13B-GGUF) Q5_K_M  |
|   114 |  127 |   86 | 🤔  78.17 | 🌶🌶   30.71 | ♻   93 |  [Airoboros GPT4 m2.0 13B](https://huggingface.co/TheBloke/airoboros-l2-13b-gpt4-m2.0-GGML) Q5_K_M  |
|   115 |   53 |  181 | 📖  87.33 | 🧊    7.97 | ♻   74 |  [Speechless Hermes Orca Plat WizLM 13B](https://huggingface.co/TheBloke/Speechless-Llama2-Hermes-Orca-Platypus-WizardLM-13B-GGUF) Q5_K_M  |
|   116 |   65 |  169 | 📖  86.52 | 🧊    9.47 | ♻   83 |  [Mythical Destroyer 13B](https://huggingface.co/TheBloke/Mythical-Destroyer-L2-13B-GGUF) Q5_K_M  |
|   117 |  182 | 🍆  29 | 🤪  61.52 | 🌶    24.76 | ❄  143 | 🍆 [Hermes LLongMA 2 8K 13B](https://huggingface.co/s3nh/Hermes-LLongMA-2-13b-8k-GGML) Q5_1 ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   118 |  126 |   99 | 🤔  78.51 | 👌   17.65 | ✳  132 |  [Holodeck 1 13B](https://huggingface.co/shadowsword/LLAMA2-13B-Holodeck-1-GGML_K) Q5_K  |
|   119 |   66 |  171 | 📖  86.46 | 🧊    8.65 | ♻   86 |  [Athena-tmp 13B](https://huggingface.co/IkariDev/Athena-tmp-GGUF) Q5_K_M  |
|   120 |   80 |  155 | 📖  85.54 | 🧊   14.63 |    97 |  [OpenOrca Platypus 2 13B](https://huggingface.co/TheBloke/OpenOrca-Platypus2-13B-GGML) Q5_K_M  |
|   121 |  146 |   77 | 🤔  72.12 | 👌   19.75 | ❄  136 |  [Vicuna 1.3 PL 13B](https://huggingface.co/Lajonbot/vicuna-13b-v1.3-PL-lora_GGML) Q5_1  |
|   122 |   86 |  149 | 📖  85.08 | 👌   18.80 | ♻   90 |  [Tsukasa Limarp 16K 13B](https://huggingface.co/ludis/tsukasa-limarp-13b-16k-gguf) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   123 |  178 |   39 | 🤪  63.31 | 🌶    23.56 | ❄  141 |  [Chronos Hermes 13B](https://huggingface.co/TheBloke/chronos-hermes-13B-GGML) Q5_1  |
|   124 |  174 |   45 | 🤪  63.88 | 🌶    22.90 | ❄  141 |  [Chronos WizardLM UC SCOT ST 13B](https://huggingface.co/TheBloke/chronos-wizardlm-uc-scot-st-13B-GGML) Q4_0  |
|   125 |  113 |  119 | 🤔  81.16 | 🌶    22.88 |   111 |  [Stheno 1.2 13B](https://huggingface.co/Sao10K/Stheno-Variants-L2-13B-GGUF) Q5_K_M  |
|   126 |  108 |  126 | 🤔  82.60 | 👌   17.85 | ✳  116 |  [Dans QuestionableCocktail 2 13B](https://huggingface.co/PocketDoc/Dans-QuestionableCocktail-2-13b-q4_1) Q4_1  |
|   127 |  161 |   64 | 🤪  66.42 | 🌶🌶   28.52 |   113 |  [Airoboros GPT4 1.3 13B](https://huggingface.co/TheBloke/airoboros-13B-gpt4-1.3-GGML) Q5_1  |
|   128 |  137 |   95 | 🤔  75.92 | 🌶🌶   28.25 | ♻   93 |  [Airoboros GPT4 m2.0 LLaMA-2 13B](https://huggingface.co/TheBloke/airoboros-l2-13b-gpt4-m2.0-GGUF) Q5_K_M  |
|   129 |   74 |  174 | 📖  86.00 | 🧊    8.08 | ♻   78 |  [LLaMA-2 Chinese Chat 13B](https://huggingface.co/s3nh/Llama2-Chinese-13b-Chat-GGML) Q5_1  |
|   130 |   72 |  177 | 📖  86.00 | 🧊    6.74 | ♻   78 |  [LLaMA-2 13B](https://huggingface.co/TheBloke/Llama-2-13B-chat-GGUF) Q5_K_M  |
|   131 |  109 |  133 | 🤔  82.32 | 🧊   14.65 |   114 |  [OpenOrcaxOpenChat 2 LangChain Chat 13B](https://huggingface.co/s3nh/Photolens-OpenOrcaxOpenChat-2-13b-langchain-chat-GGML) Q5_1  |
|   132 |   93 |  153 | 📖  84.56 | 🧊   12.67 |   103 |  [LLaMA-2 LangChain Chat 13B](https://huggingface.co/s3nh/Photolens-llama-2-13b-langchain-chat-GGUF) Q5_K_S  |
|   133 |  110 |  135 | 🤔  82.20 | 👌   18.20 |   110 |  [Vicuna v1.5 16K 13B](https://huggingface.co/TheBloke/vicuna-13B-v1.5-16K-GGUF) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   134 |  105 |  142 | 🤔  83.01 | 👌   17.96 |   104 |  [Sentdex WSB GPT 13B](https://huggingface.co/s3nh/Sentdex-WSB-GPT-13B-GGUF) Q5_K_M  |
|   135 |   90 |  160 | 📖  84.74 | 🧊    8.75 |    98 |  [LLaMA-2 Chat 13B](https://huggingface.co/TheBloke/Llama-2-13B-chat-GGML) Q5_1  |
|   136 |  166 |   74 | 🤪  65.15 | 🌶    23.25 | ✳  125 |  [Wizard Vicuna Uncensored SuperHOT 8k 13B](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-SuperHOT-8K-GGML) Q5_K_S ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   137 |  125 |  124 | 🤔  78.86 | 👌   21.18 |   113 |  [YuLan Chat 2 13B](https://huggingface.co/TheBloke/YuLan-Chat-2-13B-GGUF) Q5_K_M  |
|   138 |  165 |   78 | 🤪  65.38 | 🌶    23.19 | ✳  123 |  [MythoBoros 13B](https://huggingface.co/TheBloke/MythoBoros-13B-GGML) Q5_K_M  |
|   139 |   91 |  167 | 📖  84.62 | 🧊    8.72 | ♻   90 |  [Luban 13B](https://huggingface.co/TheBloke/Luban-13B-GGUF) Q5_K_M  |
|   140 |  183 |   62 | 🤪  60.77 | 🌶    23.57 | ✳  127 |  [OpenLLaMA 13B](https://huggingface.co/SlyEcho/open_llama_13b_gguf) Q5_K_M  |
|   141 |  169 |   80 | 🤪  64.63 | 🌶    23.07 | ✳  123 |  [OpenBuddy OpenLLaMA v7 13B](https://huggingface.co/OpenBuddy/openbuddy-ggml) Q4_K  |
|   142 |  102 |  164 | 🤔  83.35 | 🧊   11.90 | ♻   92 |  [Trurl 2 Polish 13B](https://huggingface.co/Aspik101/trurl-2-13b-GGML) Q5_1  |
|   143 |  144 |  114 | 🤔  72.47 | 👌   19.03 | ✳  122 |  [CodeLLaMA Oasst SFT V10 13B](https://huggingface.co/TheBloke/CodeLlama-13B-oasst-sft-v10-GGUF) Q5_K_M  |
|   144 |  141 |  123 | 🤔  74.77 | 🌶    23.11 |   107 |  [Manticore 13B](https://huggingface.co/TheBloke/Manticore-13B-GGML) Q5_K_M  |
|   145 |  185 |   71 | 🤪  57.89 | 🌶🌶   26.16 |   113 |  [Petra Instruct 13B](https://huggingface.co/llama-anon/petra-13b-instruct-ggml) Q5_K_M  |
|   146 |   98 |  176 | 📖  84.10 | 🧊    6.80 | ♻   78 |  [Codeup Alpha 13B](https://huggingface.co/TheBloke/CodeUp-Alpha-13B-HF-GGML) Q5_K_M  |
|   147 |  114 |  158 | 🤔  80.99 | 🧊   14.00 | ♻   95 |  [Trurl 2 Polish Instruct 13B](https://huggingface.co/Aspik101/trurl-2-13b-pl-instruct_GGML) Q5_1  |
|   148 |   99 |  179 | 📖  84.10 | 🧊    6.80 | ♻   78 |  [h2oGPT Chat 13B](https://huggingface.co/TheBloke/h2ogpt-4096-llama2-13B-chat-GGML) (link broken) Q5_K_M  |
|   149 |  155 |  112 | 🤪  68.15 | 👌   21.75 | ✳  120 |  [Chronos SuperHOT 8K 13B](https://huggingface.co/TheBloke/Chronos-13B-SuperHOT-8K-GGML) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   150 |  181 |   84 | 🤪  62.04 | 👌   20.24 | ✳  132 |  [Chronos 13B](https://huggingface.co/TheBloke/chronos-13B-GGML) Q5_K_M  |
|   151 |  175 |   92 | 🤪  63.77 | 👌   22.02 | ✳  125 |  [Alpacino SuperCOT 13B](https://huggingface.co/xzuyn/Alpacino-SuperCOT-13B-GGML) Q4_0  |
|   152 |  156 |  115 | 🤪  68.03 | 👌   21.14 | ✳  119 |  [MedAlpaca 13B](https://huggingface.co/TheBloke/medalpaca-13B-GGML) Q5_1  |
|   153 |  162 |  108 | 🤪  66.24 | 👌   22.27 | ✳  118 |  [Dans PersonalityEngine 13B](https://huggingface.co/PocketDoc/Dans-PersonalityEngine-13b-ggml-q5_1) Q5_1  |
|   154 |  147 |  127 | 🤪  72.00 | 👌   22.22 |   107 |  [Heegyu LIMA2 13B](https://huggingface.co/s3nh/heegyu-LIMA2-13b-hf-GGML) Q5_1  |
|   155 |  133 |  147 | 🤔  76.32 | 🧊   14.83 |   102 |  [Manticore Chat Pyg 13B](https://huggingface.co/TheBloke/manticore-13b-chat-pyg-GGML/) Q5_K_M  |
|   156 |  159 |  116 | 🤪  66.59 | 🌶    24.15 |   105 |  [HyperMantis 13B](https://huggingface.co/TheBloke/13B-HyperMantis-GGML) Q5_K_M  |
|   157 |  140 |  139 | 🤔  75.06 | 👌   20.50 |    96 |  [Vicuna 1.5 13B](https://huggingface.co/s3nh/vicuna-13b-v1.5-GGML) Q5_0  |
|   158 |  184 |   87 | 🤪  59.39 | 👌   22.47 | ✳  124 |  [Nous-Hermes 13B](https://huggingface.co/TheBloke/Nous-Hermes-13B-GGML) Q4_0  |
|   159 |  111 |  175 | 🤔  81.68 | 🧊    6.74 | ♻   79 |  [CodeUp LLaMA-2 Chat 13B](https://huggingface.co/TheBloke/CodeUp-Llama-2-13B-Chat-HF-GGML) Q4_K_M  |
|   160 |  158 |  120 | 🤪  66.71 | 👌   21.16 | ✳  117 |  [OpenBuddy LLaMA-2 v8.1 13B](https://huggingface.co/OpenBuddy/openbuddy-ggml) Q3_K  |
|   161 |  149 |  132 | 🤪  71.77 | 👌   22.14 |   103 |  [BlueMethod 13B](https://huggingface.co/TheBloke/13B-BlueMethod-GGML) Q5_1  |
|   162 |  142 |  143 | 🤔  74.71 | 👌   19.62 | ♻   94 |  [LLaMA-2 Instruct Uncensored 13B](https://huggingface.co/CONCISE/LLaMa_V2-13B-Instruct-Uncensored-GGML) Q5_0  |
|   163 |  153 |  130 | 🤪  68.49 | 👌   18.52 |   113 |  [LLaMA 13B](https://huggingface.co/localmodels/LLaMA-13B-ggml) Q5_K_M  |
|   164 |  138 |  148 | 🤔  75.75 | 👌   19.48 | ♻   89 |  [WizardLM 1.0 Uncensored 13B](https://huggingface.co/venketh/WizardLM-1.0-Uncensored-Llama2-13B-GGUF) Q5_K_M  |
|   165 |  179 |  100 | 🤪  62.90 | 🌶    23.79 |   113 |  [Carl 13B](https://huggingface.co/TheBloke/Carl-13B-GGML) Q5_K_M  |
|   166 |  135 |  154 | 🤔  76.15 | 🧊   14.96 | ♻   94 |  [Manticore Chat Pyg SuperHOT 8K 13B](https://huggingface.co/TheBloke/Manticore-13B-Chat-Pyg-SuperHOT-8K-GGML/) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   167 |  130 |  161 | 🤔  77.59 | 👌   16.13 | ♻   82 |  [Vicuna v1.5 13B](https://huggingface.co/TheBloke/vicuna-13B-v1.5-GGUF) Q5_K_M  |
|   168 |  164 |  131 | 🤪  66.01 | 👌   22.20 |   104 |  [Ouroboros 13B](https://huggingface.co/TheBloke/13B-Ouroboros-GGML) Q5_1  |
|   169 |  148 |  151 | 🤪  72.00 | 🧊   14.58 |   101 |  [OpenBuddy Atom v9 13B](https://huggingface.co/OpenBuddy/openbuddy-ggml) Q5_K  |
|   170 |  136 |  168 | 🤔  75.98 | 🧊   12.95 | ♻   81 |  [LoKuS 13B](https://huggingface.co/TheBloke/LoKuS-13B-GGUF) Q5_K_M  |
|   171 |  157 |  144 | 🤪  67.40 | 👌   18.80 | ♻   91 |  [Asclepius 13B](https://huggingface.co/TheBloke/Asclepius-13B-GGUF) Q5_K_M  |
|   172 |  173 |  125 | 🤪  63.94 | 👌   21.87 |   111 |  [Saiga 13B](https://huggingface.co/IlyaGusev/saiga_13b_ggml) Q5_1  |
|   173 |  172 |  129 | 🤪  63.94 | 👌   16.40 |   114 |  [CodeLLaMA Python 13B](https://huggingface.co/TheBloke/CodeLlama-13B-Python-GGUF) Q5_K_M  |
|   174 |  150 |  156 | 🤪  71.54 | 🧊   12.34 |   103 |  [CodeLLaMA Instruct 13B](https://huggingface.co/TheBloke/CodeLlama-13B-Instruct-GGUF) Q5_K_M  |
|   175 |  143 |  166 | 🤔  72.58 | 🧊   14.85 | ♻   78 |  [Metharme 13B](https://huggingface.co/TehVenom/Metharme-13b-GGML) Q5_1  |
|   176 |  151 |  162 | 🤪  71.26 | 🧊   14.02 | ♻   91 |  [Vicuna 1.3 German 13B](https://huggingface.co/TheBloke/Vicuna-13B-v1.3-German-GGML) Q5_K_M  |
|   177 |  145 |  170 | 🤔  72.41 | 🧊   11.35 | ♻   82 |  [Manticore Chat Pyg Guanaco 13B](https://huggingface.co/mindrage/Manticore-13B-Chat-Pyg-Guanaco-GGML) Q4_K_M  |
|   178 |  170 |  141 | 🤪  64.46 | 🧊   14.41 |   111 |  [CodeLLaMA 13B](https://huggingface.co/TheBloke/CodeLlama-13B-GGUF) Q5_K_M  |
|   179 |  163 |  150 | 🤪  66.24 | 👌   15.54 |    96 |  [Vicuna 1.3 13B](https://huggingface.co/TheBloke/vicuna-13b-v1.3.0-GGML) Q5_1  |
|   180 |  167 |  159 | 🤪  65.03 | 👌   16.09 | ♻   86 |  [Based 13B](https://huggingface.co/TheBloke/based-13b-GGML) Q5_K_M  |
|   181 |  180 |  145 | 🤪  62.50 | 👌   18.52 | ♻   93 |  [Wizard Vicuna Uncensored 13B](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGML) Q5_1  |
|   182 |  171 |  163 | 🤪  64.00 | 🧊   14.32 | ♻   86 |  [WizardLM WizardCoder Python V1.0 13B](https://huggingface.co/s3nh/WizardLM-WizardCoder-Python-13B-V1.0-GGUF) Q4_K_S  |
|   183 |  160 |  183 | 🤪  66.42 | 🧊    8.22 | ♻   47 |  [Dolphin LLaMA 13B](https://huggingface.co/TheBloke/Dolphin-Llama-13B-GGML) Q5_K_M  |
|   184 |  177 |  186 | 🤪  63.31 | 🧊    4.42 | ♻   71 |  [Scarlett 13B](https://huggingface.co/TheBloke/Scarlett-13B-GGML) Q5_K_M  |
|   185 |  176 |  188 | 🤪  63.36 | 🧊    6.06 | ♻   38 |  [Pygmalion 13B](https://huggingface.co/notstoic/pygmalion-13b-ggml) Q5_1  |
|   186 |  187 |  180 | 🤪  57.14 | 🧊   10.84 | ♻   50 |  [Taiwan LLaMA V1.0 13B](https://huggingface.co/audreyt/Taiwan-LLaMa-v1.0-GGML) Q5_K_M  |
|   187 |  186 |  182 | 🤪  57.26 | 🧊    9.43 | ♻   50 |  [Taiwan LLaMA v1.0 13B](https://huggingface.co/audreyt/Taiwan-LLaMa-v1.0-GGUF) Q5_K_M  |
|   188 |  190 |  178 | 🤪  53.46 | 🧊    8.80 | ♻   60 |  [Komt LLaMA-2 13B](https://huggingface.co/davidkim205/komt-Llama-2-13b-hf-ggml) Q5_K_M  |
|   189 |  188 |  184 | 🤪  56.91 | 🧊    7.65 | ♻   60 |  [BigTranslate 13B](https://huggingface.co/TheBloke/BigTranslate-13B-GGML) Q4_K_M  |
|   190 |  189 |  190 | 🤪  53.92 | 🧊    1.27 | ♻   11 |  [LMSYS Vicuna 1.5 16k 13B](https://huggingface.co/s3nh/lmsys-vicuna-13b-v1.5-16k-GGML) Q5_1 ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   191 |  191 |  192 | 🤪  52.42 | 🧊    0.00 | ♻    0 |  [EverythingLM V2 16K 13B](https://huggingface.co/uralstech/EverythingLM-13b-V2-16K-GGUF) Q4_K_S ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   192 |  192 |  193 | 🤪  52.42 | 🧊    0.00 | ♻    0 |  [LlongOrca 16K 13B](https://huggingface.co/TheBloke/LlongOrca-13B-16K-GGML) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   193 |  195 |  191 | 🤪  47.70 | 🧊    0.62 | ♻    7 |  [Chatxu (L2?) 13B](https://huggingface.co/xuqinyang/chatxu-ggml) Q4_0  |
|   194 |  193 |  195 | 🤪  52.42 | 🧊    0.00 | ♻    0 |  [LLongMA 2 13B](https://huggingface.co/s3nh/LLongMA-2-13b-16k-GGML/tree/main) Q5_1 ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |
|   195 |  194 |  194 | 🤪  50.81 | 🧊    0.00 | ♻    0 |  [EverythingLM 16K 13B](https://huggingface.co/TheBloke/EverythingLM-13B-16K-GGML) Q5_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |

## 20B to 33B Models

- [See **Ranking Changelog** to see which GGUF/GGML Models were added](https://rentry.co/ayumi_erp_rating#ranking-changelog)
- [Benchmark Results as CSV - Timestamp 20230910_141602](https://m8geil.de/data/push/ayumi_llm_erp_ranking_scores_20230910_141602.csv)

|    Rank | ALC-IQ Rank | ERP Rank | ALC-IQ |ERP Score|ERP Var Score| Model |
|--------:|------------:|---------:|-------:|--------:|------------:|-------------|
| 🥇    1 | 🎓   1 |   11 | ⭐🧠  92.17 | 🌶🌶   27.77 | ✳  127 | 🥇🎓 [Airoboros 2.1 33B](https://huggingface.co/TheBloke/Airoboros-33B-2.1-GGUF) Q4_K_M  |
| 🥇    2 |    6 | 🍆   8 | ⭐🧠  89.57 | 🌶    24.24 | ❄  146 | 🥇🍆 [Huginn 5 Prototype 19B](https://huggingface.co/The-Face-Of-Goonery/Huginn-19b-prototype-gguf) Q4_K_S  |
| 🥇    3 |    9 | 🍆   7 | 🧠  88.02 | 🌶🌶   27.55 | ❄  141 | 🥇🍆 [Enterredaas 33B](https://huggingface.co/Aeala/Enterredaas-33b-QLoRA) Q4_1  |
| 🥇    4 | 🎓   3 |   15 | ⭐🧠  90.32 | 🌶    24.50 | ✳  134 | 🥇🎓 [Airoboros GPT4 1.4 33B](https://huggingface.co/TheBloke/airoboros-33B-gpt4-1.4-GGML) Q4_K_M  |
| 🥈    5 |    7 |   12 | ⭐🧠  88.71 | 🌶🌶   27.40 | ✳  132 | 🥈 [Airochronos 33B](https://huggingface.co/TheBloke/airochronos-33B-GGML) Q5_K_M  |
| 🥈    6 |   12 |    9 | 📖  85.94 | 🌶    24.43 | ❄  146 | 🥈 [LLaMA-2 BlockTri Frankenstein 22B](https://huggingface.co/IHaveNoClueAndIMustPost/llama2-22b-blocktriangular-GGML) Q4_K_M  |
| 🥈    7 |   13 |   10 | 📖  85.77 | 🌶    25.68 | ❄  139 | 🥈 [Chronoboros 33B](https://huggingface.co/TheBloke/Chronoboros-33B-GGML) Q5_K_M  |
| 🥈    8 |   20 | 🍆   3 | 📖  82.83 | 🌶🌶   27.42 | ❄  147 | 🥈🍆 [LLaMA 2 Ari03 28B](https://huggingface.co/TheBloke/Llama2-28B-Air03-GGML) (link broken) Q5_1  |
| 🥈    9 |   21 | 🍆   2 | 🤔  82.55 | 🌶🌶   35.79 | ❄  153 | 🥈🍆 [COTHuginn 4.5 19B](https://huggingface.co/TheBloke/COTHuginn-4.5-19B-GGUF) Q5_K_M  |
| 🥈   10 | 🎓   2 |   26 | ⭐🧠  90.73 | 👌   22.27 |   121 | 🥈🎓 [Platypus 2 70B](https://huggingface.co/TheBloke/Platypus2-70B-GGML) Q2_K  |
| 🥉   11 |    8 |   20 | ⭐🧠  88.71 | 🌶    26.86 |   117 | 🥉 [Airoboros GPT4 2.0 33B](https://huggingface.co/TheBloke/airoboros-33B-GPT4-2.0-GGML) Q5_K_M  |
| 🥉   12 |    5 |   27 | ⭐🧠  89.92 | 🌶    25.07 | ♻  105 | 🥉 [Airoboros GPT4 m2.0 33B](https://huggingface.co/TheBloke/airoboros-33B-GPT4-m2.0-GGML) Q5_K_M  |
| 🥉   13 |   17 |   14 | 📖  84.62 | 🌶🌶   28.12 |   123 | 🥉 [Saiga 30B](https://huggingface.co/IlyaGusev/saiga_30b_ggml) Q5_1  |
| 🥉   14 |   11 |   22 | 📖  86.29 | 🌶    24.18 |   122 | 🥉 [Lazarus 30B](https://huggingface.co/TheBloke/30B-Lazarus-GGML) Q4_K_M  |
|    15 |   16 |   18 | 📖  84.79 | 👌   23.34 | ✳  128 |  [LLaMA-2 Frankensteined 22B](https://huggingface.co/IHaveNoClueAndIMustPost/Llama-2-22B-GGML) Q4_K_M  |
|    16 | 🎓   4 |   33 | ⭐🧠  90.09 | 🧊   18.98 | ♻  106 | 🎓 [LLaMA 30B](https://huggingface.co/TheBloke/LLaMa-30B-GGML/) Q5_K_M  |
|    17 |   22 |   13 | 🤔  82.55 | 🌶🌶   31.32 |   122 |  [Carl 33B](https://huggingface.co/TheBloke/Carl-33B-GGML) Q4_K_M  |
|    18 |   30 | 🍆   4 | 🤔  75.81 | 🌶    25.84 | ❄  156 | 🍆 [Bacchus (L2*) 22B](https://huggingface.co/Envoid/Bacchus-22B-ggml) Q4_0  |
|    19 |   10 |   29 | 🧠  88.02 | 👌   21.29 |   121 |  [LLaMA SuperCOT 30B](https://huggingface.co/TheBloke/llama-30b-supercot-GGML) Q4_K_M  |
|    20 |   36 | 🍆   1 | 🤪  73.44 | 🌶🌶   37.23 | ❄  166 | 🍆 [MythoMax 33B](https://huggingface.co/TheBloke/MythoMax-L2-33B-GGUF) Q4_K_M  |
|    21 |   15 |   28 | 📖  85.14 | 🌶    23.68 | ♻  111 |  [Lazarus Instruct PL 30B](https://huggingface.co/Aspik101/30B-Lazarus-instruct-PL-lora_GGML) Q4_1  |
|    22 |   25 |   17 | 🤔  80.07 | 👌   22.99 | ✳  134 |  [CodeLLaMA 34B](https://huggingface.co/TheBloke/CodeLlama-34B-GGUF) Q4_K_M  |
|    23 |   35 | 🍆   6 | 🤪  73.79 | 🌶🌶   29.12 | ✳  136 | 🍆 [Wizard Vicuna LLaMA-2 22B](https://huggingface.co/IHaveNoClueAndIMustPost/llama2-22b-wizard_vicuna-ggml) Q4_K_M  |
|    24 |   27 |   16 | 🤔  78.92 | 👌   21.98 | ❄  141 |  [Huginn Prototype 22B](https://huggingface.co/TheBloke/Huginn-22B-Prototype-GGUF) Q4_K_M  |
|    25 |   26 |   19 | 🤔  79.15 | 👌   21.51 | ✳  131 |  [CodeLLaMA Python 34B](https://huggingface.co/TheBloke/CodeLlama-34B-Python-GGUF) Q4_K_M  |
|    26 |   39 | 🍆   5 | 🤪  72.47 | 🌶🌶   27.72 | ❄  142 | 🍆 [Daydreamer v3 22B](https://huggingface.co/TheBloke/Llama2-22B-Daydreamer-v3-GGML) Q5_K_M  |
|    27 |   24 |   24 | 🤔  80.18 | 👌   20.68 | ✳  126 |  [Chronos 33B](https://huggingface.co/TheBloke/chronos-33b-GGML) Q5_K_M  |
|    28 |   14 |   36 | 📖  85.43 | 🧊   17.04 | ♻   90 |  [Based 30B](https://huggingface.co/TheBloke/based-30B-GGML) Q4_K_M  |
|    29 |   18 |   32 | 📖  84.27 | 🧊   18.75 |   112 |  [Dans PersonalityEngine 30B](https://huggingface.co/PocketDoc/Dans-PersonalityEngine-30b-ggml-q4_1) Q4_1  |
|    30 |   19 |   37 | 📖  83.06 | 🧊    8.47 | ♻  101 |  [MindFlay 22B](https://huggingface.co/Envoid/MindFlay-22B-ggml) Q4_0  |
|    31 |   32 |   23 | 🤪  74.48 | 👌   20.11 | ✳  126 |  [Airoboros C 2.1 34B](https://huggingface.co/TheBloke/Airoboros-c34B-2.1-GGUF) Q5_K_M  |
|    32 |   23 |   34 | 🤔  82.43 | 🧊   18.79 | ♻  104 |  [Epsilon 30B](https://huggingface.co/TheBloke/30B-Epsilon-GGML) Q4_0  |
|    33 |   33 |   25 | 🤪  74.48 | 👌   20.11 | ✳  126 |  [Airoboros C 2.1b 34B](https://huggingface.co/TheBloke/Airoboros-c34B-2.1-GGUF) Q5_K_M  |
|    34 |   29 |   31 | 🤔  76.04 | 🧊   17.46 |   121 |  [CodeLLaMA Instruct 34B](https://huggingface.co/TheBloke/CodeLlama-34B-Instruct-GGUF) Q4_K_M  |
|    35 |   38 |   21 | 🤪  73.16 | 🌶    25.26 |   119 |  [LLaMA 2 DayDreamer V1 22B](https://huggingface.co/TheBloke/llama2-22B-daydreamer-v2-GGML) Q5_K_M  |
|    36 |   28 |   38 | 🤔  78.63 | 🧊    5.38 | ♻   70 |  [Scarlett 33B](https://huggingface.co/TheBloke/scarlett-33B-GGML) Q4_K_M  |
|    37 |   31 |   35 | 🤪  74.83 | 🧊   14.03 | ♻  102 |  [Airobors C 2.1 34B](https://huggingface.co/TheBloke/Airoboros-c34B-2.1-GGUF) Q4_K_M  |
|    38 |   37 |   30 | 🤪  73.21 | 👌   20.97 |   117 |  [Phind CodeLLaMA v1 34B](https://huggingface.co/Nondzu/Phind-CodeLlama-34B-v1-GGUF) Q4_K_S  |
|    39 |   34 |   39 | 🤪  74.19 | 🧊    4.61 | ♻   48 |  [Samantha 1.11 CodeLLaMA 34B](https://huggingface.co/TheBloke/Samantha-1.11-CodeLlama-34B-GGUF) Q4_K_M  |
|    40 |   40 |   40 | 🤪  52.42 | 🧊    0.00 | ♻    0 |  [Airoboros GPT4 1.4 SuperHOT 8K 33B](https://huggingface.co/TheBloke/airoboros-33B-gpt4-1-4-SuperHOT-8K-GGML) Q4_K_M ([ext. context maybe broken](https://rentry.co/ayumi_erp_rating#about-extended-context-8k-16k-32k)) |

## About Quantization

My main advice is: **Stay away from Q2_K and Q3_K_S** if you can help it! The quality loss of those is just too big! **Go for Q4_K_M or Q5_K_M** of the models! Generally: **Prefer K_M or K_S** over the bare quantizations such as Q4_0, Q4_1, Q5_0 or Q5_1.

## About Extended Context (8K, 16K, 32K)

As you may have noticed, there are a few models currently (2023-08-09) that have a bad ALC-IQ and even worse ERP-Score. A few of these models are:

- LLaMA-2 32K 7B
- LMSYS LongChat 1.5 32k 7B
- LLongMA 2 7B
- Hermes LLongMA 2 8K (L2) 7B

And a few others. The reason for this is simple: **The GGML file format is a mess**. And even after the new GGUF file format arrived, people sometimes seem to fail to properly quantize the context extended models into a GGUF file. The benchmark does sometimes not have proper results for these models because:

- The GGUF file creator messed up somehow (for instance: converted a GGML file to GGUF without the proper rope scaling settings).
- For GGML Files:
  - A special setting is required in llama.cpp to enable compatibility with these models. Called `--rope-freq-base` and `--rope-freq-scale`. These need to be set to the right magic values corresponding to the model at hand.
  - Determining these magic ROPE values is not hard, if they were properly documented. But only few pages on huggingfaces that provide GGML file quantizations document these. TheBloke really tries hard, but sometimes even the original model uploaders don't provide any information about the right values.
  - And most importantly: It would require carrying meta data out of band along with each file for me. I don't have the time figuring out the right values. And I believe most users won't ever bother either.
  - There are also other important options which are not mentioned yet, but are crucial for some GGML files to work properly:
    - `--gqa` (grouped-query attention factor) is one of these, it is required to set to the magic value `8` for LLaMA 2 70B to work.
    - `--rms-norm-eps` is an epsilon value for inference of the models. This value is different bewettn LLaMA 1 (`1e-6`) and LLaMA 2 (`1e-5`). It makes a difference in how well either model works. The original default `1e-6` was actually replaced recently by `5e-6` which is half way between the both values, and suppsedly should work fine. But in my own tests I saw quite some variance in the performance of the quantized GGML models, which were kind of contradicting to what was stated on llama.cpp. But I decided to not dig further, because there is still too much sampling randomness involved in the ALC-IQ (beta). Which I will eventually fix.

## Ranking Changelog

- 2023-09-10 V30
  - [Benchmark Results as CSV - Timestamp 20230910_141602](https://m8geil.de/data/push/ayumi_llm_erp_ranking_scores_20230910_141602.csv) 
|  Size | Rank      | Model                               |
|--------:|----------:|------------------------------------------|
| 3B-7B   |  20 / 134 | 🥈 [Medusa 1.1 7B](https://huggingface.co/Sao10K/Medusa-1.1-L2-7B-GGUF) Q5_K_M |
| 3B-7B   |  30 / 134 | 🥈 [LosslessMegaCoder Mini 7B](https://huggingface.co/TheBloke/LosslessMegaCoder-Llama2-7B-Mini-GGUF) Q5_K_M |
| 3B-7B   |  37 / 134 | 🥉🎓(⭐🧠) [LLaMA-2 PeanutButter v19 R8 7B](https://huggingface.co/TheBloke/Llama-2-PeanutButter_v19_R8-7B-GGUF) Q5_K_M |
| 3B-7B   |  38 / 134 | 🥉(⭐🧠) [Befenghuang Vigogne 2 Chat 7B](https://huggingface.co/s3nh/bofenghuang-vigogne-2-7b-chat-GGUF) Q5_K_S |
| 3B-7B   |  41 / 134 | 🥉(❄) [Ganchengguang Yoko Japanse v0 7B](https://huggingface.co/s3nh/ganchengguang-Yoko-7B-Japanese-v0-GGUF) Q5_K_S |
| 3B-7B   |  42 / 134 | 🥉 [LlongOrca 16K 7B](https://huggingface.co/TheBloke/LlongOrca-7B-16K-GGUF) Q5_K_M |
| 3B-7B   |  45 / 134 | 🥉(🌶🌶) [Spicyboros 2.2 7B](https://huggingface.co/TheBloke/Spicyboros-7B-2.2-GGUF) Q5_K_M |
| 3B-7B   |  62 / 134 | (🌶🌶) [Airoboros GPT4 2.0 LLaMA-2 7B](https://huggingface.co/TheBloke/airoboros-l2-7B-gpt4-2.0-GGUF) Q5_K_M |
| 3B-7B   |  93 / 134 | (🌶🌶) [Chinese Alpaca 2 7B](https://huggingface.co/shaowenchen/chinese-alpaca-2-7b-gguf) Q5_K_S |
| 3B-7B   |  97 / 134 |  [Guanaco Uncensored 7B](https://huggingface.co/TheBloke/Guanaco-7B-Uncensored-GGUF) Q5_K_M |
| 3B-7B   |  98 / 134 | (❄) [Mamba GPT v4 3B](https://huggingface.co/Aryanne/Mamba-gpt-3B-v4-ggml-and-gguf) Q5_1 |
| 3B-7B   | 102 / 134 | (🌶🌶) [Airoboros GPT4 m2.0 LLaMA-2 7B](https://huggingface.co/TheBloke/airoboros-l2-7B-gpt4-m2.0-GGUF) Q5_K_M |
| 13B     |   2 / 195 | 🥇🎓🍆(⭐🧠❄🌶🌶) [MLewdBoros 13B](https://huggingface.co/Undi95/MLewdBoros-L2-13B-GGUF) Q5_K_M |
| 13B     |   5 / 195 | 🥇🍆(⭐🧠❄🌶🌶) [Spicyboros 2.2_2 13B](https://huggingface.co/jondurbin/spicyboros-13b-2.2-gguf) Q5_K_M |
| 13B     |   6 / 195 | 🥇🎓🍆(⭐🧠❄🌶🌶) [ReMM v2 13B](https://huggingface.co/Undi95/ReMM-v2-L2-13B-GGUF) Q5_K_M |
| 13B     |  12 / 195 | 🥇🍆(❄🌶🌶) [MLewd v2-2 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-2-GGUF) Q5_K_M |
| 13B     |  14 / 195 | 🥇🎓(⭐🧠🌶🌶) [ReMM 0.65 SLERP 13B](https://huggingface.co/Brouz/REMM-PYG-0.65-SLERP) Q5_K_M |
| 13B     |  15 / 195 | 🥇🎓(⭐🧠❄) [Stheno 1.3 13B](https://huggingface.co/Sao10K/Stheno-Variants-L2-13B-GGUF) Q5_K_M |
| 13B     |  18 / 195 | 🥇🍆(❄🌶🌶) [Teknium OpenHermes 13B](https://huggingface.co/s3nh/teknium-OpenHermes-13B-GGUF) Q5_K_S |
| 13B     |  19 / 195 | 🥇(⭐🧠🌶🌶) [ReMM v2 Variant 13B](https://huggingface.co/Undi95/ReMM-v2-L2-13B-VARIANT-GGUF) Q5_K_M |
| 13B     |  23 / 195 | 🥈(⭐🧠❄) [Spicyboros 2.2 13B](https://huggingface.co/rnosov/spicyboros-13b-2.2-GGUF) Q4_K_M |
| 13B     |  24 / 195 | 🥈🍆(❄🌶🌶) [Stheno Inverted 1.2 13B](https://huggingface.co/Sao10K/Stheno-Variants-L2-13B-GGUF) Q5_K_M |
| 13B     |  30 / 195 | 🥈🍆(❄🌶🌶) [Holomax 13B](https://huggingface.co/KoboldAI/LLaMA2-13B-Holomax-GGUF) Q5_K_M |
| 13B     |  57 / 195 | 🥉(❄) [Guanaco Uncensored 13B](https://huggingface.co/TheBloke/Guanaco-13B-Uncensored-GGUF) Q5_K_M |
| 13B     |  60 / 195 | 🥉 [Chronos Hermes v2 13B](https://huggingface.co/TheBloke/Chronos-Hermes-13b-v2-GGUF) Q5_K_M |
| 13B     |  64 / 195 | 🥉🍆(❄🌶🌶) [Airoboros 2.1 YaRN 64K 13B](https://huggingface.co/TheBloke/Airoboros-L2-13B-2.1-YaRN-64K-GGUF) Q5_K_M |
| 13B     |  72 / 195 | (🌶🌶) [Airoboros GPT4 2.0 LLaMA-2 13B](https://huggingface.co/TheBloke/airoboros-l2-13b-gpt4-2.0-GGUF) Q5_K_M |
| 13B     |  91 / 195 |  [Nous Hermes LLaMA-2 13B](https://huggingface.co/TheBloke/Nous-Hermes-Llama2-GGUF) Q5_K_M |
| 13B     | 125 / 195 |  [Stheno 1.2 13B](https://huggingface.co/Sao10K/Stheno-Variants-L2-13B-GGUF) Q5_K_M |
| 13B     | 128 / 195 | (🌶🌶) [Airoboros GPT4 m2.0 LLaMA-2 13B](https://huggingface.co/TheBloke/airoboros-l2-13b-gpt4-m2.0-GGUF) Q5_K_M |
| 13B     | 180 / 195 |  [Based 13B](https://huggingface.co/TheBloke/based-13b-GGML) Q5_K_M |
| 13B     | 187 / 195 |  [Taiwan LLaMA v1.0 13B](https://huggingface.co/audreyt/Taiwan-LLaMa-v1.0-GGUF) Q5_K_M |
| 20B-34B |   9 / 40  | 🥈🍆(❄🌶🌶) [COTHuginn 4.5 19B](https://huggingface.co/TheBloke/COTHuginn-4.5-19B-GGUF) Q5_K_M |
| 20B-34B |  20 / 40  | 🍆(❄🌶🌶) [MythoMax 33B](https://huggingface.co/TheBloke/MythoMax-L2-33B-GGUF) Q4_K_M |
| 20B-34B |  28 / 40  |  [Based 30B](https://huggingface.co/TheBloke/based-30B-GGML) Q4_K_M |


- 2023-09-08 V29
  - The **ERP Scores** (ERP Score and ERP Variety Score) were completely reworked: The count of lewd words is now related to the total number of lewd words in a response. And the ERP Score is now the average of these and not the median anymore. And the **ERP Variety Score** was added, which tries to catch the erotic creative lewd word knowledge of a model. The **ERP Rank** is computed by slightly biasing towards the new **ERP Variety Score**.
  - Separate ranks for The ALC-IQ and the ERP Scores were introduced. The resulting model rank is now determined by a weighted sum of the **ALC-IQ Rank** and **ERP Rank**. Slightly biased towards the **ALC-IQ Rank**.
  - GGUF results replace the GGML results of a model now. Please note, that sometimes this can result in a model gaining of loosing ranks in the table. This is sadly just the nature of the foating point quantization. It just shows how similar these models and fine tunes are in the core and how sensitive this benchmark is.
  - New Symbols were added to signal good ALC-IQ Ranks (🎓) and good ERP Ranks (🍆). The medals (🥇, 🥈 and 🥉) are assigned to multiple ranks, because this ranking can't tell you ultimately which model is actually the best for you. That is not just because there are many known flaws in this benchmark, but also because a large part of your role play experience will also depend on: your expectations, the character card, the prompt annotations and the sampler settings you use.
  - And the following models were added on top of that to the table:
  - [Benchmark Results as CSV - Timestamp 20230908_203426](https://m8geil.de/data/push/scores_20230908_203426.csv) 
|  Size | Rank      | Model                               |
|--------:|----------:|------------------------------------------|
| 3B-7B   |   5 / 123 | 🥇🎓🍆(⭐🧠🌶🌶) [Zarablend 7B](https://huggingface.co/TheBloke/Zarablend-L2-7B-GGUF) Q5_K_M |
| 3B-7B   |   9 / 123 | 🥇🎓(⭐🧠❄) [Zarafusionex 1.1 7B](https://huggingface.co/TheBloke/Zarafusionex-1.1-L2-7B-GGUF) Q5_K_M |
| 3B-7B   |  10 / 123 | 🥇🎓(⭐🧠) [Hermes LimaRP 7B](https://huggingface.co/TheBloke/HermesLimaRP-L2-7B-GGUF) Q5_K_M |
| 3B-7B   |  12 / 123 | 🥇(⭐🧠) [Krakowiak 7B](https://huggingface.co/szymonrucinski/krakowiak-7b-gguf) Q4_K_M |
| 3B-7B   |  17 / 123 | 🥈(🌶🌶) [Zarablend MX 7B](https://huggingface.co/TheBloke/Zarablend-MX-L2-7B-GGUF) Q5_K_M |
| 3B-7B   |  21 / 123 | 🥈 [Typly Pigeon 7B](https://huggingface.co/s3nh/Typly-Pigeon-7B-GGUF) Q4_K_M |
| 3B-7B   |  46 / 123 |  [Kimiko 7B](https://huggingface.co/TheBloke/Kimiko-7B-GGUF) Q5_K_M |
| 3B-7B   |  51 / 123 | (🌶🌶) [Luna AI LLaMA-2 Uncensored 7B](https://huggingface.co/TheBloke/Luna-AI-Llama2-Uncensored-GGUF) Q5_K_M |
| 3B-7B   |  58 / 123 |  [Pygmalion 2 7B](https://huggingface.co/TheBloke/Pygmalion-2-7B-GGUF) Q5_K_M |
| 3B-7B   |  71 / 123 |  [StableBeluga 7B](https://huggingface.co/TheBloke/StableBeluga-7B-GGUF) Q5_K_M |
| 13B     |   3 / 177 | 🥇🎓🍆(⭐🧠❄🌶🌶) [Slerpeno 13B](https://huggingface.co/Brouz/Slerpeno/) Q5_K_M |
| 13B     |   4 / 177 | 🥇🍆(⭐🧠❄🌶🌶) [MLewd V2-1 015 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-1-015-GGUF) Q4_K_S |
| 13B     |  10 / 177 | 🥇🍆(❄🌶🌶) [MLewd V2-1 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-1-GGUF) Q5_K_M |
| 13B     |  11 / 177 | 🥇🎓(⭐🧠❄) [UndiMix v3 13B](https://huggingface.co/Undi95/UndiMix-v3-13B-GGUF) Q5_K_M |
| 13B     |  13 / 177 | 🥇🍆(❄🌶🌶) [MLewd V2-1 050 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-1-050-GGUF) Q4_K_S |
| 13B     |  15 / 177 | 🥇🍆(❄🌶🌶) [MLewd v2 13B](https://huggingface.co/Undi95/MLewd-L2-13B-v2-GGUF) Q5_K_M |
| 13B     |  20 / 177 | 🥈🍆(❄🌶🌶) [ReMM Lion 13B](https://huggingface.co/Undi95/ReMM-Lion-13B-GGUF) Q5_K_M |
| 13B     |  30 / 177 | 🥈(⭐🧠) [StableBeluga 13B](https://huggingface.co/TheBloke/StableBeluga-13B-GGUF) Q5_K_M |
| 13B     |  32 / 177 | 🥈(❄) [Pygmalion 2 13B](https://huggingface.co/TheBloke/Pygmalion-2-13B-GGUF) Q5_K_M |
| 13B     |  38 / 177 | 🥈(🌶🌶) [Mythalion 13B](https://huggingface.co/TheBloke/Mythalion-13B-GGUF) Q5_K_M |
| 13B     |  41 / 177 | 🥈(🌶🌶) [Fireflx v1.2 13B](https://huggingface.co/TheBloke/Firefly-Llama2-13B-v1.2-GGUF) Q5_K_M |
| 13B     |  45 / 177 | 🥉🍆(❄🌶🌶) [ReMM S Kimiko v2 13B](https://huggingface.co/Undi95/ReMM-S-Kimiko-v2-13B-GGUF) Q5_K_M |
| 13B     |  60 / 177 | (🌶🌶) [Thorns 13B](https://huggingface.co/TheBloke/13B-Thorns-L2-GGUF) Q5_K_M |
| 13B     |  70 / 177 | (⭐🧠) [TerraMix 16K 13B](https://huggingface.co/androlike/TerraMix_L2_13B_16K_GGUF) Q5_K_M |
| 13B     | 120 / 177 |  [YuLan Chat 2 13B](https://huggingface.co/TheBloke/YuLan-Chat-2-13B-GGUF) Q5_K_M |
| 20B-34B |   2 / 37  | 🥇🍆(⭐🧠❄) [Huginn 5 Prototype 19B](https://huggingface.co/The-Face-Of-Goonery/Huginn-19b-prototype-gguf) Q4_K_S |
| 20B-34B |  28 / 37  |  [Airoboros C 2.1 34B](https://huggingface.co/TheBloke/Airoboros-c34B-2.1-GGUF) Q5_K_M |

- 2023-09-05 V28
  - Changes: Removed the (L2) marker.
  - There are still GGML results in my benchmark, I will keep them for now until ggml seems to be phased out completely eventually.
  - Marking broken links in the table with "(link broken)"
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |  25 / 125 | 🧠 / 👌 | [Tsukasa Limarp 7B (gguf)](https://huggingface.co/ludis/tsukasa-limarp-7b-gguf) Q5_K_M |
| 3B-7B   |  26 / 125 | 🧠 / 👌 | [ELYZA Jp LLaMA-2 7B (gguf)](https://huggingface.co/mmnga/ELYZA-japanese-Llama-2-7b-gguf) Q5_K_M |
| 3B-7B   |  27 / 125 | ⭐🧠 / 🧊 | [MedLLama 7B (gguf)](https://huggingface.co/garcianacho/MedLlama-2-7B-GGUF) Q5_K_M |
| 3B-7B   |  28 / 125 | ⭐🧠 / 🧊 | [LLaMA-2 7B (gguf)](https://huggingface.co/TheBloke/Llama-2-7b-Chat-GGUF) Q5_K_M |
| 3B-7B   |  54 / 125 | ⭐📖 / 👌 | [ELYZA Jp LLaMA-2 Instruct 7B (gguf)](https://huggingface.co/mmnga/ELYZA-japanese-Llama-2-7b-instruct-gguf) Q5_K_M |
| 3B-7B   |  57 / 125 | 📖 / 👌 | [LLaMA-2 Galleon 7B (gguf)](https://huggingface.co/tog/llama-2-7b-galleon-GGUF) Q5_K_M |
| 3B-7B   |  60 / 125 | 📖 / 🧊 | [Tsukasa 7B (gguf)](https://huggingface.co/ludis/tsukasa-7b-gguf) Q5_K_M |
| 3B-7B   |  62 / 125 | 📖 / 🧊 | [Vicuna v1.5 16K 7B (gguf)](https://huggingface.co/TheBloke/vicuna-7B-v1.5-16K-GGUF) Q5_K_M |
| 3B-7B   | 101 / 125 | ⭐🤪 / 🌶  | [Vicuna v1.5 7B (gguf)](https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF) Q5_K_M |
| 13B     |   2 / 170 | ⭐🧠 / 🌶🌶 | [MythoMix 13B (gguf)](https://huggingface.co/TheBloke/MythoMix-L2-13B-GGUF) Q5_K_M |
| 13B     |   6 / 170 | ⭐🧠 / 🌶🌶 | [MythoMax 13B (gguf)](https://huggingface.co/TheBloke/MythoMax-L2-13B-GGUF) Q5_K_M |
| 13B     |   7 / 170 | ⭐🧠 / 🌶🌶 | [ReMM SLERP 13B (gguf)](https://huggingface.co/Undi95/ReMM-SLERP-L2-13B-GGUF) Q5_K_M |
| 13B     |  14 / 170 | 🧠 / 🌶🌶 | [MythoLogic 13B (gguf)](https://huggingface.co/TheBloke/MythoLogic-L2-13B-GGUF) Q5_K_M |
| 13B     |  37 / 170 | 🧠 / 🧊 | [WizardLM v1.2 13B (gguf)](https://huggingface.co/Sethblocks/WizardLM-13B-v1.2-GGUF) Q4_0 |
| 13B     |  38 / 170 | 🧠 / 🧊 | [Speechless LLaMA-2 13B (gguf)](https://huggingface.co/TheBloke/Speechless-Llama2-13B-GGUF) Q5_K_M |
| 13B     |  42 / 170 | 🧠 / 🧊 | [Speechless Hermes Orca Plat WizLM 13B (gguf)](https://huggingface.co/TheBloke/Speechless-Llama2-Hermes-Orca-Platypus-WizardLM-13B-GGUF) Q5_K_M |
| 13B     |  48 / 170 | 📖 / 🌶🌶 | [ReMM PIPPA 13B (gguf)](https://huggingface.co/Undi95/ReMM-L2-13B-PIPPA-GGUF) Q5_K_M |
| 13B     |  68 / 170 | 📖 / 👌 | [OpenBuddy LLaMA-2 v11.1 13B (gguf)](https://huggingface.co/TheBloke/OpenBuddy-Llama2-13B-v11.1-GGUF) Q5_K_M |
| 13B     |  71 / 170 | 📖 / 👌 | [Tsukasa Limarp 16K 13B (gguf)](https://huggingface.co/ludis/tsukasa-limarp-13b-16k-gguf) Q5_K_M |
| 13B     |  78 / 170 | ⭐📖 / 🧊 | [LLaMA-2 13B (gguf)](https://huggingface.co/TheBloke/Llama-2-13B-chat-GGUF) Q5_K_M |
| 13B     |  95 / 170 | 🤔 / 🌶🌶 | [MLewd v1-7 TRY2 13B (gguf)](https://huggingface.co/Undi95/MLewd-L2-13B-v1-7-TRY2-GGUF) Q5_K_M |
| 13B     |  97 / 170 | 🤔 / 🌶🌶 | [MLewd 13B (gguf)](https://huggingface.co/Undi95/MLewd-L2-13B-GGUF) Q5_K_M |
| 13B     | 101 / 170 | ⭐🤔 / 🌶  | [Vicuna v1.5 16K 13B (gguf)](https://huggingface.co/TheBloke/vicuna-13B-v1.5-16K-GGUF) Q5_K_M |
| 13B     | 109 / 170 | 🤔 / 👌 | [Vicuna v1.5 13B (gguf)](https://huggingface.co/TheBloke/vicuna-13B-v1.5-GGUF) Q5_K_M |
| 13B     | 145 / 170 | ⭐🤪 / 👌 | [Asclepius 13B (gguf)](https://huggingface.co/TheBloke/Asclepius-13B-GGUF) Q5_K_M |
| 13B     | 157 / 170 | 🤪 / 🧊 | [WizardLM WizardCoder Python V1.0 13B (gguf)](https://huggingface.co/s3nh/WizardLM-WizardCoder-Python-13B-V1.0-GGUF) Q4_K_S |

- 2023-09-02 V27
  - Added a key for the emojis in the table: https://rentry.co/ayumi_erp_rating#emoji-key
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |  29 / 114 | 🧠 / 🧊 | [MedLLaMA-2 Chat 7B (GGUF)](https://huggingface.co/s3nh/Photolens-MedLLaMa-2-Chat-7b-GGUF) Q5_K_S |
| 3B-7B   |  30 / 114 | ⭐📖 / 🌶🌶 | [AstraMix (L2) 7B (GGUF)](https://huggingface.co/androlike/astramix_l2_7b_gguf) Q5_K_M |
| 3B-7B   |  69 / 114 | 🤔 / 🌶  | [OpenLLaMA v2 7B (GGUF)](https://huggingface.co/SlyEcho/open_llama_7b_v2_gguf) Q5_K_M |
| 3B-7B   |  74 / 114 | ⭐🤔 / 👌 | [Nous Yarn 64K (L2) 7B (GGUF)](https://huggingface.co/TheBloke/Yarn-Llama-2-7B-64K-GGUF) Q5_K_M |
| 3B-7B   |  76 / 114 | 🤔 / 👌 | [Nous Yarn 128K (L2) 7B (GGUF)](https://huggingface.co/TheBloke/Yarn-Llama-2-7B-128K-GGUF) Q5_K_M |
| 3B-7B   |  86 / 114 | ⭐🤪 / 🌶🌶 | [OpenLLaMA 7B (GGUF)](https://huggingface.co/SlyEcho/open_llama_7b_gguf) Q5_K_M |
| 3B-7B   |  99 / 114 | 🤪 / 👌 | [OpenLLaMA 3B (GGUF)](https://huggingface.co/SlyEcho/open_llama_3b_v2_gguf) Q5_1 |
| 13B     |   9 / 156 | 🧠 / 🌶🌶 | [UndiMix v2 (L2) 13B (GGUF)](https://huggingface.co/Undi95/UndiMix-v2-13b-GGUF) Q5_K_M |
| 13B     |  11 / 156 | 🧠 / 🌶🌶 | [UndiMix v1 (L2) 13B (GGUF)](https://huggingface.co/Undi95/UndiMix-v1-13b-GGUF) Q5_K_M |
| 13B     |  12 / 156 | 🧠 / 🌶🌶 | [ReMM (L2) 13B (GGUF)](https://huggingface.co/Undi95/ReMM-L2-13B-GGUF) Q5_K_M |
| 13B     |  39 / 156 | 🧠 / 🧊 | [LLaMA-2 Chat Limarp v2 13B (GGUF)](https://huggingface.co/TheBloke/llama-2-13B-chat-limarp-v2-merged-GGUF) Q5_K_M |
| 13B     |  45 / 156 | 📖 / 🌶🌶 | [Stheno Inverted (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Stheno-Inverted-L2-13B-GGUF) Q5_K_M |
| 13B     |  65 / 156 | 📖 / 👌 | [LLaMA-2 LangChain Chat 13B (GGUF)](https://huggingface.co/s3nh/Photolens-llama-2-13b-langchain-chat-GGUF) Q5_K_S |
| 13B     |  67 / 156 | 📖 / 👌 | [Sentdex WSB GPT 13B (GGUF)](https://huggingface.co/s3nh/Sentdex-WSB-GPT-13B-GGUF) Q5_K_M |
| 13B     |  82 / 156 | ⭐🤔 / 🌶🌶 | [MLewd v1 (L2) 13B (GGUF)](https://huggingface.co/Undi95/MLewd-L2-13B-v1-1-GGUF) Q5_K_M |
| 13B     |  86 / 156 | ⭐🤔 / 🌶🌶 | [Stheno (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Stheno-L2-13B-GGUF) Q5_K_M |
| 13B     |  95 / 156 | 🤔 / 🌶  | [Nous Yarn 64K (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Yarn-Llama-2-13B-64K-GGUF) Q5_K_M |
| 13B     |  99 / 156 | 🤔 / 🌶  | [Nous Yarn 128K (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Yarn-Llama-2-13B-128K-GGUF) Q5_K_M |
| 13B     | 114 / 156 | 🤔 / 🧊 | [LoKuS 13B (GGUF)](https://huggingface.co/TheBloke/LoKuS-13B-GGUF) Q5_K_M |
| 13B     | 140 / 156 | 🤪 / 👌 | [OpenLLaMA 13B (GGUF)](https://huggingface.co/SlyEcho/open_llama_13b_gguf) Q5_K_M |
| 13B     | 151 / 156 | 🤪 / 🧊 | [EverythingLM V2 16K 13B (GGUF)](https://huggingface.co/uralstech/EverythingLM-13b-V2-16K-GGUF) Q4_K_S |
| 20B-33B |   4 / 35  | ⭐🧠 / 🌶  | [Airoboros 2.1 33B (GGUF)](https://huggingface.co/TheBloke/Airoboros-33B-2.1-GGUF) Q4_K_M |

- 2023-08-31 V26
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |  46 / 107 | 📖 / 👌 | [LLaMA-2 Instruct 32K 7B (GGUF)](https://huggingface.co/rozek/LLaMA-2-7B-32K-Instruct_GGUF) Q5_K_M |
| 13B     |   1 / 142 | ⭐🧠 / 🌶🌶 | [Athena v1 (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Athena-v1-GGUF) Q5_K_M |
| 13B     |   5 / 142 | ⭐🧠 / 🌶🌶 | [MythoMax Kimiko V2 (L2) 13B (GGUF)](https://huggingface.co/Undi95/MythoMax-L2-Kimiko-v2-13b-GGUF) Q5_K_M |
| 13B     |  17 / 142 | 🧠 / 🌶  | [Kimiko V2 (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Kimiko-v2-13B-GGUF) Q5_K_M |
| 13B     |  62 / 142 | 📖 / 👌 | [OpenOrca Platypus 2 (L2) 13B (GGUF)](https://huggingface.co/kroonen/OpenOrca-Platypus2-13B-GGUF) Q4_K_M |
| 13B     |  67 / 142 | 📖 / 🧊 | [Luban (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Luban-13B-GGUF) Q5_K_M |
| 13B     |  94 / 142 | 🤔 / 👌 | [CodeLLaMA Oasst SFT V10 13B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-13B-oasst-sft-v10-GGUF) Q5_K_M |
| 20B-33B |  32 / 34  | ⭐🤪 / 🧊 | [Airoboros C 2.1b (L2) 34B (GGUF)](https://huggingface.co/TheBloke/Airoboros-c34B-2.1-GGUF) Q5_K_M |

- 2023-08-31 V25
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |   6 / 106 | 🧠 / 🌶🌶 | [Zarafusionex 1.1 (L2) 7B (GGUF)](https://huggingface.co/TheBloke/Zarafusionex-1.1-L2-7B-GGUF) Q5_K_M |
| 3B-7B   |  34 / 106 | 📖 / 🌶  | [Airoboros 2.1 (L2) 7B (GGUF)](https://huggingface.co/TheBloke/Airoboros-L2-7B-2.1-GGUF) Q5_K_M |
| 13B     |   1 / 136 | ⭐🧠 / 🌶🌶 | [Airoboros 2.1 (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Airoboros-L2-13B-2.1-GGUF) Q5_K_M |
| 13B     |  44 / 136 | ⭐📖 / 🌶  | [Mythical Destroyer V2 (L2) 13B (GGUF)](https://huggingface.co/IkariDev/Mythical-Destroyer-V2-L2-13B-GGUF) Q5_K_M |
| 13B     |  72 / 136 | ⭐🤔 / 🌶🌶 | [Huginn v4.5 (L2) 13B (GGUF)](https://huggingface.co/The-Face-Of-Goonery/Huginn-13b-v4.5-gguf) Q5_K_M |
| 13B     |  73 / 136 | ⭐🤔 / 🌶🌶 | [Huginn v4 (L2) 13B (GGUF)](https://huggingface.co/The-Face-Of-Goonery/Huginn-13b-V4-GGUF) Q5_K_M |

- 2023-08-30 V24
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |  98 / 104 | 🤪 / 🧊 | [Open Cabrita 3B (GGUF)](https://huggingface.co/lucianosb/open-cabrita3b-GGUF) Q5_1 |
| 3B-7B   |   8 / 104 | 🧠 / 🌶🌶 | [Zaraxls (L2) 7B (GGUF)](https://huggingface.co/zarakiquemparte/zaraxls-l2-7b-GGUF) Q5_K_M |
| 3B-7B   |  13 / 104 | ⭐🧠 / 🌶  | [Zarafusionex 1.2 (L2) 7B (GGUF)](https://huggingface.co/zarakiquemparte/zarafusionex-1.2-l2-7b-GGUF) Q5_K_M |
| 3B-7B   |  31 / 104 | ⭐📖 / 🌶  | [Tulpar Limarp (L2) 7B (GGUF)](https://huggingface.co/zarakiquemparte/tulpar-limarp-l2-7b-GGUF) Q5_K_M |
| 3B-7B   |  44 / 104 | 📖 / 👌 | [Tulpar v0 (L2) 7B (GGUF)](https://huggingface.co/Pipboyguy/Tulpar-7b-v0-GGUF) Q4_0 |
| 3B-7B   |  50 / 104 | ⭐📖 / 🧊 | [LLaMA-2 32K 7B (GGUF)](https://huggingface.co/rozek/LLaMA-2-7B-32K_GGUF) Q5_K_M |
| 3B-7B   |  66 / 104 | 🤔 / 🌶  | [LLaMA-2 KO Chat 7B (GGUF)](https://huggingface.co/StarFox7/Llama-2-ko-7B-chat-gguf) Q5_1 |
| 13B     |   2 / 132 | ⭐🧠 / 🌶🌶 | [MythoMax Kimiko Mix (L2) 13B (GGUF)](https://huggingface.co/TheBloke/MythoMax-Kimiko-Mix-GGUF) Q5_K_M |
| 13B     |  33 / 132 | 🧠 / 🧊 | [Samantha 1.11 (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Samantha-1.11-13B-GGUF) Q5_K_M |
| 13B     |  40 / 132 | 📖 / 🌶🌶 | [Nous Hermes (L2) 13B (GGUF)](https://huggingface.co/venketh/Nous-Hermes-Llama2-13B-GGUF) Q5_K_M |
| 13B     |  51 / 132 | ⭐📖 / 👌 | [Mythical Destroyer (L2) 13B (GGUF)](https://huggingface.co/TheBloke/Mythical-Destroyer-L2-13B-GGUF) Q5_K_M |
| 13B     |  59 / 132 | ⭐📖 / 🧊 | [Athena-tmp (L2) 13B (GGUF)](https://huggingface.co/IkariDev/Athena-tmp-GGUF) Q5_K_M |
| 13B     |  66 / 132 | 📖 / 🧊 | [LLaMA-2 Chat 13B (GGUF)](https://huggingface.co/uralstech/LLaMA-2-13b-Chat-GGUF) Q3_K_S |
| 13B     | 128 / 132 | 🤪 / 🧊 | [Vicuna v1.5 16K 13B (GGUF)](https://huggingface.co/venketh/vicuna-13B-v1.5-16K-gguf) Q5_K_M |
| 20B-33B |  20 / 33  | 🤔 / 🌶🌶 | [Huginn Prototype 22B (GGUF)](https://huggingface.co/TheBloke/Huginn-22B-Prototype-GGUF) Q4_K_M |
| 20B-33B |  32 / 33  | 🤪 / 🧊 | [Samantha 1.11 CodeLLaMA (L2) 34B (GGUF)](https://huggingface.co/TheBloke/Samantha-1.11-CodeLlama-34B-GGUF) Q4_K_M |

- 2023-08-28 V23
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |  89 / 97  | 🤪 / 🧊 | [Orca Mini 3B (GGUF)](https://huggingface.co/juanjgit/orca_mini_3B-GGUF) Q4_0 |
| 3B-7B   |   2 / 97  | ⭐🧠 / 🌶🌶 | [Zarablend 1.1 (L2) 7B (GGUF)](https://huggingface.co/zarakiquemparte/zarablend-1.1-l2-7b-GGUF) Q5_K_M |
| 3B-7B   |  59 / 97  | 🤔 / 🌶  | [CodeLLaMA (L2) 7B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-7B-GGUF) Q5_K_M |
| 3B-7B   |  64 / 97  | 🤔 / 👌 | [CodeLLaMA Instruct (L2) 7B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-7B-Instruct-GGUF) Q5_K_M |
| 3B-7B   |  81 / 97  | ⭐🤪 / 👌 | [CodeLLaMA Python (L2) 7B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-7B-Python-GGUF) Q5_K_M |
| 13B     |   3 / 126 | ⭐🧠 / 🌶🌶 | [Airoboros Creative lmoe 13B (GGUF)](https://huggingface.co/Doctor-Shotgun/Misc-Models) Q5_K_M |
| 13B     |  44 / 126 | 📖 / 🌶  | [Nous Hermes (L2) 13B (GGUF)](https://huggingface.co/venketh/Nous-Hermes-Llama2-13B-GGUF) Q5_K_S |
| 13B     |  80 / 126 | 🤔 / 👌 | [WizardLM 1.0 Uncensored (L2) 13B (GGUF)](https://huggingface.co/venketh/WizardLM-1.0-Uncensored-Llama2-13B-GGUF) Q5_K_M |
| 13B     |  94 / 126 | 🤔 / 🧊 | [CodeLLaMA Instruct (L2) 13B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-13B-Instruct-GGUF) Q5_K_M |
| 13B     | 112 / 126 | 🤪 / 👌 | [CodeLLaMA Python (L2) 13B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-13B-Python-GGUF) Q5_K_M |
| 13B     | 114 / 126 | 🤪 / 🧊 | [CodeLLaMA (L2) 13B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-13B-GGUF) Q5_K_M |
| 20B-33B |  20 / 31  | 🤔 / 🌶  | [CodeLLaMA (L2) 34B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-34B-GGUF) Q4_K_M |
| 20B-33B |  22 / 31  | 🤔 / 👌 | [CodeLLaMA Python (L2) 34B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-34B-Python-GGUF) Q4_K_M |
| 20B-33B |  27 / 31  | 🤪 / 👌 | [Phind CodeLLaMA v1 (L2) 34B (GGUF)](https://huggingface.co/Nondzu/Phind-CodeLlama-34B-v1-GGUF) Q4_K_S |
| 20B-33B |  29 / 31  | ⭐🤪 / 🧊 | [CodeLLaMA Instruct (L2) 34B (GGUF)](https://huggingface.co/TheBloke/CodeLlama-34B-Instruct-GGUF) Q4_K_M |
| 20B-33B |  30 / 31  | 🤪 / 🧊 | [Airobors C 2.1 (L2) 34B (GGUF)](https://huggingface.co/TheBloke/Airoboros-c34B-2.1-GGUF) Q4_K_M |

- 2023-08-26 V22
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |  78 / 92  | ⭐🤪 / 👌 | [Marx V2 3B (GGUF)](https://huggingface.co/NikolayKozloff/Marx-3B-V2-GGUF) Q4_1 |
| 3B-7B   |   2 / 92  | ⭐🧠 / 🌶🌶 | [Zarafusionex 1.1 (L2) 7B](https://huggingface.co/zarakiquemparte/zarafusionex-1.1-l2-7b-GGML) Q5_K_M |
| 3B-7B   |  12 / 92  | 🧠 / 🌶  | [Zaraxe (L2) 7B](https://huggingface.co/zarakiquemparte/zaraxe-l2-7b-GGML) Q5_K_M |
| 3B-7B   |  15 / 92  | ⭐🧠 / 👌 | [LLaMA 2 Monika V0.3B (L2) 7B](https://huggingface.co/922-CA/llama-2-7b-monika-v0.3b-ggml) Q5_1 |
| 13B     |   8 / 120 | ⭐🧠 / 🌶  | [MythoMaxKurisu (L2) 13B](https://huggingface.co/Heralax/MythoMaxKurisu-13b-GGML) Q5_K_M |
| 13B     |  26 / 120 | ⭐🧠 / 🧊 | [PuddleJumper (L2) 13B (GGUF)](https://huggingface.co/TheBloke/PuddleJumper-13B-GGUF) Q5_K_M |
| 13B     |  28 / 120 | 🧠 / 🧊 | [Iubaris V3 (L2) 13B](https://huggingface.co/kajdun/iubaris-13b-v3_GGML) Q5_K_M |
| 20B-33B |  15 / 26  | 🤔 / 🌶🌶 | [LLaMA 2 Ari03 (L2) 28B](https://huggingface.co/TheBloke/Llama2-28B-Air03-GGML) Q5_1 |

- 2023-08-22 V21
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |  71 / 88  | ⭐🤪 / 🌶  | [Griffin (GGUF) 3B](https://huggingface.co/acrastt/Griffin-3B-GGUF) Q4_1 |
| 3B-7B   |  72 / 88  | 🤪 / 🌶  | [Puma 3B](https://huggingface.co/TheBloke/Puma-3b-GGML) Q5_1 |
| 3B-7B   |  75 / 88  | ⭐🤪 / 👌 | [OpenLLaMA v2 (GGUF) 3B](https://huggingface.co/klosax/openllama-3b-v2-gguf) Q5_0 |
| 3B-7B   |   5 / 88  | 🧠 / 🌶🌶 | [Zarablend M (L2) 7B](https://huggingface.co/zarakiquemparte/zarablend-m-l2-7b-GGML) Q5_K_M |
| 3B-7B   |   6 / 88  | 🧠 / 🌶🌶 | [Zarablendex VQ (L2) 7B](https://huggingface.co/zarakiquemparte/zarablendex-vq-l2-7b-GGML) Q5_K_M |
| 3B-7B   |   8 / 88  | 🧠 / 🌶🌶 | [Zarablend MX (L2) 7B](https://huggingface.co/zarakiquemparte/zarablend-mx-l2-7b-GGML) Q5_K_M |
| 3B-7B   |  87 / 88  | 🤪 / 🧊 | [LongChat v1.5 32K 7B](https://huggingface.co/asedmammad/longchat-7b-v1.5-32k-GGML) Q5_K_M |
| 13B     |  43 / 117 | 📖 / 🌶  | [Synthia (L2) 13B](https://huggingface.co/TheBloke/Synthia-13B-GGML) Q5_K_M |
| 13B     |  45 / 117 | 📖 / 🌶  | [Chronorctypus Limarobormes (L2) 13B](https://huggingface.co/TheBloke/Chronorctypus-Limarobormes-13b-GGML) Q5_K_M |
| 13B     | 115 / 117 | 🤪 / 🧊 | [LlongOrca 16K 13B](https://huggingface.co/TheBloke/LlongOrca-13B-16K-GGML) Q5_K_M |


- 2023-08-20 V20
  - Added a link to a JS filter script for this page by `mr.developer`: https://rentry.org/ayumi_filter_userscript_info

- 2023-08-19 V20
|  Size | Rank      | IQ/ERP  | GGML Model                               |
|--------:|----------:|:-------:|------------------------------------------|
| 3B-7B   |  63 / 82  | ⭐🤪 / 🌶🌶 | [Marx 3B](https://huggingface.co/asedmammad/Marx-3B-GGML) Q5_1 |
| 3B-7B   |  71 / 82  | 🤪 / 👌 | [Griffin 3B](https://huggingface.co/NikolayKozloff/Griffin-3B-GGML) Q4_1 |
| 3B-7B   |   4 / 82  | ⭐🧠 / 🌶🌶 | [Zarafusionix (L2) 7B](https://huggingface.co/zarakiquemparte/zarafusionix-l2-7b-GGML) Q5_K_M |
| 3B-7B   |   5 / 82  | 🧠 / 🌶🌶 | [Zarafusionex (L2) 7B](https://huggingface.co/zarakiquemparte/zarafusionex-l2-7b-GGML) Q5_K_M |
| 3B-7B   |  17 / 82  | ⭐🧠 / 🧊 | [LLaMA 2 Delphi v0.2e 7B](https://huggingface.co/922-CA/llama-2-7b-delphi-v0.2e-ggml) Q5_1 |
| 13B     |  57 / 114 | 📖 / 🧊 | [Trurl 2 Polish Instruct 13B](https://huggingface.co/Aspik101/trurl-2-13b-pl-instruct_GGML) Q5_1 |

- 2023-08-17 V19
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  47 / 215 | 🧠 / 👌 | [LosslessMegaCoder Mini (L2) 13B](https://huggingface.co/TheBloke/LosslessMegaCoder-Llama2-13B-Mini-GGML) Q5_K_M |
|  56 / 215 | ⭐📖 / 🌶🌶 | [Zarablend (L2) 7B](https://huggingface.co/zarakiquemparte/zarablend-l2-7b-GGML) Q5_K_M |
|  62 / 215 | 📖 / 🌶🌶 | [Carl 33B](https://huggingface.co/TheBloke/Carl-33B-GGML) Q4_K_M |
|  80 / 215 | 📖 / 🌶  | [Zaramix (L2) 7B](https://huggingface.co/zarakiquemparte/zaramix-l2-7b-GGML) Q5_K_M |
|  93 / 215 | 📖 / 👌 | [Chinese LLaMA-2 7B](https://huggingface.co/LinkSoul/Chinese-Llama-2-7b-ggml) Q5_1 |
|  97 / 215 | ⭐📖 / 🧊 | [Trurl 2 Polish (L2) 13B](https://huggingface.co/Aspik101/trurl-2-13b-GGML) Q5_1 |
| 105 / 215 | 📖 / 🧊 | [Trurl 2 Polish (L2) 7B](https://huggingface.co/Aspik101/trurl-2-7b-GGML) Q5_1 |
| 106 / 215 | 📖 / 🧊 | [Scarlett 33B](https://huggingface.co/TheBloke/scarlett-33B-GGML) Q4_K_M |
| 112 / 215 | ⭐🤔 / 🌶🌶 | [Daydreamer v3 22B](https://huggingface.co/TheBloke/Llama2-22B-Daydreamer-v3-GGML) Q5_K_M |
| 169 / 215 | ⭐🤪 / 🌶  | [Carl 13B](https://huggingface.co/TheBloke/Carl-13B-GGML) Q5_K_M |
| 177 / 215 | 🤪 / 🌶  | [EverythingLM 3B](https://huggingface.co/asedmammad/EverythingLM-3B-GGML) Q5_1 |
| 184 / 215 | 🤪 / 👌 | [Komt LLaMA-2 Chat (L2) 7B](https://huggingface.co/davidkim205/komt-Llama-2-7b-chat-hf-ggml) Q5_K_M |
| 189 / 215 | ⭐🤪 / 🧊 | [Scarlett 13B](https://huggingface.co/TheBloke/Scarlett-13B-GGML) Q5_K_M |
| 192 / 215 | 🤪 / 🧊 | [Scarlett 7B](https://huggingface.co/TheBloke/Scarlett-7B-GGML) Q5_K_M |
| 203 / 215 | 🤪 / 🧊 | [Komt LLaMA-2 (L2) 13B](https://huggingface.co/davidkim205/komt-Llama-2-13b-hf-ggml) Q5_K_M |


- 2023-08-15 V18
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|   6 / 200 | 🧠 / 🌶🌶 | [Airochronos 33B](https://huggingface.co/TheBloke/airochronos-33B-GGML) Q5_K_M |
|  33 / 200 | 🧠 / 🌶  | [h2oGPT (L2) 13B](https://huggingface.co/TheBloke/h2ogpt-4096-llama2-13B-GGML) Q5_K_M |
|  62 / 200 | 📖 / 🌶🌶 | [Chronos 33B](https://huggingface.co/TheBloke/chronos-33b-GGML) Q5_K_M |
|  67 / 200 | 📖 / 🌶🌶 | [WizardMath V1.0 (L2) 13B](https://huggingface.co/TheBloke/WizardMath-13B-V1.0-GGML) Q5_K_M |
|  80 / 200 | 📖 / 👌 | [OpenOrcaxOpenChat 2 LangChain Chat 13B](https://huggingface.co/s3nh/Photolens-OpenOrcaxOpenChat-2-13b-langchain-chat-GGML) Q5_1 |
|  90 / 200 | ⭐📖 / 🧊 | [Codeup Alpha (L2) 13B](https://huggingface.co/TheBloke/CodeUp-Alpha-13B-HF-GGML) Q5_K_M |
|  91 / 200 | ⭐📖 / 🧊 | [h2oGPT Chat (L2) 13B](https://huggingface.co/TheBloke/h2ogpt-4096-llama2-13B-chat-GGML) Q5_K_M |
| 101 / 200 | ⭐🤔 / 🌶🌶 | [Bacchus (L2*) 22B](https://huggingface.co/Envoid/Bacchus-22B-ggml) Q4_0 |
| 114 / 200 | ⭐🤔 / 🌶  | [LLaMA 2 DayDreamer V1 22B](https://huggingface.co/TheBloke/llama2-22B-daydreamer-v2-GGML) Q5_K_M |
| 133 / 200 | ⭐🤔 / 👌 | [WizardMath V1.0 7B](https://huggingface.co/TheBloke/WizardMath-7B-V1.0-GGML) Q5_K_M |
| 179 / 200 | 🤪 / 🧊 | [Tulu Uncensored TV Alpaca (L2) 7B](https://huggingface.co/xzuyn/l2-tulu-uncensored-tv-alpaca-7b-ggml) Q5_1 |
| 184 / 200 | 🤪 / 🧊 | [Taiwan LLaMA V1.0 (L2) 13B](https://huggingface.co/audreyt/Taiwan-LLaMa-v1.0-GGML) Q5_K_M |
| 194 / 200 | 🤪 / 🧊 | [LlongOrca 16K 7B](https://huggingface.co/TheBloke/LlongOrca-7B-16K-GGML) Q5_K_M |
| 196 / 200 | 🤪 / 🧊 | [EverythingLM 16K (L2) 13B](https://huggingface.co/TheBloke/EverythingLM-13B-16K-GGML) Q5_K_M |


- 2023-08-14 V17
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  13 / 188 | 🧠 / 🌶🌶 | [Holomax (L2) 13B](https://huggingface.co/KoboldAI/LLaMA2-13B-Holomax-GGML) Q5_K_M |
|  15 / 188 | ⭐🧠 / 🌶  | [Platypus 2 (L2) 70B](https://huggingface.co/TheBloke/Platypus2-70B-GGML) Q2_K |
|  47 / 188 | 🧠 / 🧊 | [OpenOrca Platypus 2 (L2) 13B](https://huggingface.co/TheBloke/OpenOrca-Platypus2-13B-GGML) Q5_K_M |
|  55 / 188 | 📖 / 🌶🌶 | [Kuchiki (L2) 7B](https://huggingface.co/zarakiquemparte/kuchiki-l2-7b-GGML) Q5_K_M |
|  56 / 188 | 📖 / 🌶🌶 | [Huginn v1.3 (L2) 13B](https://huggingface.co/TheBloke/Huginn-v3-13B-GGML) Q5_K_M |
| 119 / 188 | ⭐🤔 / 👌 | [MythoChizuru Mini (L2) 7B](https://huggingface.co/Heralax/MythoChizuru-Mini-7b-GGML) Q4_K_M |
| 185 / 188 | 🤪 / 🧊 | [Chatxu (L2?) 13B](https://huggingface.co/xuqinyang/chatxu-ggml) Q4_0 |

- 2023-08-12 V16
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  27 / 181 | 🧠 / 🌶  | [Blind Test Janus 13B](https://huggingface.co/s3nh/jondurbin-blind-test-13b-janus-GGML) Q5_1 |
|  61 / 181 | 📖 / 🌶🌶 | [Manticore SuperHOT 8K 13B](https://huggingface.co/TheBloke/Manticore-13B-SuperHOT-8K-GGML/) Q5_K_M |
|  90 / 181 | 📖 / 🧊 | [Manticore Chat Pyg 13B](https://huggingface.co/TheBloke/manticore-13b-chat-pyg-GGML/) Q5_K_M |
|  91 / 181 | 📖 / 🧊 | [Manticore Chat Pyg SuperHOT 8K 13B](https://huggingface.co/TheBloke/Manticore-13B-Chat-Pyg-SuperHOT-8K-GGML/) Q5_K_M |
| 104 / 181 | 🤔 / 🌶  | [LLongMA-2 Storysummarizer 7B](https://huggingface.co/emozilla/LLongMA-2-7b-storysummarizer-GGML) Q5_K_M |
| 114 / 181 | ⭐🤔 / 👌 | [Manticore 13B](https://huggingface.co/TheBloke/Manticore-13B-GGML) Q5_K_M |
| 115 / 181 | ⭐🤔 / 👌 | [LLaMA-2 Instruct Uncensored 13B](https://huggingface.co/CONCISE/LLaMa_V2-13B-Instruct-Uncensored-GGML) Q5_0 |
| 120 / 181 | 🤔 / 👌 | [Heegyu LIMA2 13B](https://huggingface.co/s3nh/heegyu-LIMA2-13b-hf-GGML) Q5_1 |
| 126 / 181 | 🤔 / 👌 | [Pygmalion Vicuna 7B](https://huggingface.co/shadowsword/Pygmalion-Vicuna-7B-GGML) Q5_K_M |
| 130 / 181 | ⭐🤔 / 🧊 | [Manticore Chat Pyg Guanaco 13B](https://huggingface.co/mindrage/Manticore-13B-Chat-Pyg-Guanaco-GGML) Q4_K_M |
| 132 / 181 | 🤔 / 🧊 | [StableBeluga Samantha V3 7B](https://huggingface.co/RoversX/StableBeluga-7B-Qlora-Samantha-V3-ggml) Q4_0 |

- 2023-08-11 V15
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|   1 / 170 | ⭐🧠 / 🌶🌶 | [MythoMax (L2) 13B](https://huggingface.co/TheBloke/MythoMax-L2-13B-GGML) Q5_K_M |
|   8 / 170 | 🧠 / 🌶🌶 | [LLaMA-2 Chat Uncensored 13B](https://huggingface.co/s3nh/llama2_13b_chat_uncensored-GGML) Q5_1 |
|  31 / 170 | 🧠 / 👌 | [Orca Mini v3 (L2) 13B](https://huggingface.co/TheBloke/orca_mini_v3_13B-GGML) Q5_K_M |
|  33 / 170 | 🧠 / 👌 | [Stable Platypus 2 (L2) 13B](https://huggingface.co/TheBloke/Stable-Platypus2-13B-GGML) Q5_K_M |
|  40 / 170 | 🧠 / 🧊 | [Enterredaas 33B](https://huggingface.co/Aeala/Enterredaas-33b-QLoRA) Q4_1 |
|  42 / 170 | 🧠 / 🧊 | [Spring Dragon 13B](https://huggingface.co/TheBloke/Spring-Dragon-GGML) Q5_K_M |
|  46 / 170 | ⭐📖 / 🌶🌶 | [Camel Platypus 2 (L2) 13B](https://huggingface.co/TheBloke/Camel-Platypus2-13B-GGML) Q5_K_M |
|  55 / 170 | 📖 / 🌶🌶 | [LLongMA-2 Storysummarizer 13B](https://huggingface.co/emozilla/LLongMA-2-13b-storysummarizer-GGML) Q5_K_M |
|  64 / 170 | 📖 / 🌶  | [Epsilon 30B](https://huggingface.co/TheBloke/30B-Epsilon-GGML) Q4_0 |
|  68 / 170 | ⭐📖 / 👌 | [Platypus 2 (L2) 13B](https://huggingface.co/TheBloke/Platypus2-13B-GGML) Q5_K_M |
|  84 / 170 | 📖 / 🧊 | [Photolens LLaMA 2 Langchain Chat (L2) 7B](https://huggingface.co/s3nh/Photolens-llama-2-7b-langchain-chat-GGML) Q5_1 |
|  99 / 170 | ⭐🤔 / 🌶  | [Orca Mini v3 (L2) 7B](https://huggingface.co/TheBloke/orca_mini_v3_7B-GGML) Q5_K_M |
| 122 / 170 | ⭐🤔 / 🧊 | [Merak v2 (L2) 7B](https://huggingface.co/asyafiqe/Merak-7B-v2-GGML) Q5_K_M |
| 138 / 170 | 🤪 / 🌶  | [Petra Instruct 13B](https://huggingface.co/llama-anon/petra-13b-instruct-ggml) Q5_K_M |
| 140 / 170 | 🤪 / 🌶  | [Alpachino Baichuan Instruction 7B](https://huggingface.co/s3nh/AlpachinoNLP-Baichuan-7B-Instruction-GGML) Q5_0 |
| 146 / 170 | 🤪 / 👌 | [AlpacaCielo 2 8K (L2) 7B](https://huggingface.co/TheBloke/AlpacaCielo2-7B-8K-GGML) Q5_K_M |
| 147 / 170 | 🤪 / 👌 | [OpenBuddy OpenLLaMA v10 3B](https://huggingface.co/OpenBuddy/openbuddy-ggml) Q5_0 |
| 152 / 170 | 🤪 / 🧊 | [Dolphin LLaMA-2 (L2) 7B](https://huggingface.co/TheBloke/Dolphin-Llama2-7B-GGML) Q5_K_M |
| 164 / 170 | 🤪 / 🧊 | [LLongMA 2 13B](https://huggingface.co/s3nh/LLongMA-2-13b-16k-GGML/tree/main) Q5_1 |
| 166 / 170 | 🤪 / 🧊 | [WizardVicuna Uncens Instr PL 3B](https://huggingface.co/Aspik101/WizardVicuna-Uncensored-3B-instruct-PL-lora_GGML) Q5_1 |

- 2023-08-10 V14
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|   6 / 151 | 🧠 / 🌶🌶 | [Huginn v1.2 13B](https://huggingface.co/TheBloke/huginnv1.2-GGML) Q5_K_M |
|  51 / 151 | 📖 / 🌶🌶 | [Holodeck 1 (L2) 13B](https://huggingface.co/shadowsword/LLAMA2-13B-Holodeck-1-GGML_K) Q5_K |
|  57 / 151 | 📖 / 🌶  | [Dans QuestionableCocktail 2 (L2) 13B](https://huggingface.co/PocketDoc/Dans-QuestionableCocktail-2-13b-q4_1) Q4_1 |
|  60 / 151 | 🧠📖 / 👌 | [Dans PersonalityEngine 30B](https://huggingface.co/PocketDoc/Dans-PersonalityEngine-30b-ggml-q4_1) Q4_1 |
| 106 / 151 | 🤔 / 👌 | [Dans PersonalityEngine 13B](https://huggingface.co/PocketDoc/Dans-PersonalityEngine-13b-ggml-q5_1) Q5_1 |

- 2023-08-09 V13
   - Added highlight symbols to point out the really good models of an ALC-IQ class.
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  23 / 146 | 🧠 / 🌶  | Firefly v1.2 (L2) 13B Q5_K_M             |
|  36 / 146 | 🧠 / 🧊 | Spring Dragon (L2) 13B Q5_K_M            |
| 137 / 146 | 🤪 / 🧊 | Vicuna v1.5 16K 13B Q5_K_M               |

- 2023-08-09 V12
   - **Important change:** Only one entry per model. The highest quantization is only listed. Lower quantizations are not listed anymore to have only one model occupy a place in the ranking. For best results, always choose the bigger model. It did not make sense to choose a Q4_0 over a Q5_1 or Q4_K_M over a Q5_K_M just because they let out one more lewd word in the ERP score.
   - **Important change:** The "spices" are grouped now too, and models are still ordered by their ALC-IQ within their "spice class".
   - New models tested and added:
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|   1 / 143 | 🧠 / 🌶🌶 | MythoMix (L2) 13B Q5_K_M                 |
|   8 / 143 | 🧠 / 🌶🌶 | LLaMA-2 BlockTri Frankenstein 22B Q4_K_M |
|  11 / 143 | 🧠 / 🌶  | Huginn 13B Q5_K_M                        |
|  18 / 143 | 🧠 / 🌶  | LLaMA SuperCOT 30B Q4_K_M                |
|  38 / 143 | 📖 / 🌶🌶 | Hermes LimaRP 13B Q4_K_M                 |
|  42 / 143 | 📖 / 🌶🌶 | Crestfall FrankenMon (L2) 13B Q5_K_M     |
|  49 / 143 | 📖 / 🌶🌶 | Nous Hermes Writer (L2) 13B Q4_K_S       |
|  52 / 143 | 📖 / 🌶  | Frankensteins Monster 13B Q4_K_S         |
|  62 / 143 | 📖 / 👌 | LLaMA-2 Guanaco 7B Q5_1                  |
|  65 / 143 | 📖 / 🧊 | LLaMA-2 7B Q8_0                          |
|  89 / 143 | 🤔 / 👌 | Luna AI (L2) 7B Q8_0                     |
|  93 / 143 | 🤔 / 👌 | BlueMethod 13B Q5_1                      |
|  94 / 143 | 🤔 / 👌 | Vicuna 1.3 German 13B Q5_K_M             |
|  96 / 143 | 🤔 / 👌 | LLaMA 13B Q5_K_M                         |
| 107 / 143 | 🤔 / 🧊 | Dolphin LLaMA 13B Q5_K_M                 |
| 111 / 143 | 🤪 / 🌶🌶 | Airoboros GPT4 1.3 7B Q4_K_M             |
| 122 / 143 | 🤪 / 👌 | Guanaco 7B Q4_K_M                        |
| 129 / 143 | 🤪 / 🧊 | Based 7B Q4_K_M                          |
| 138 / 143 | 🤪 / 🧊 | Airoboros GPT4 1.4 SuperHOT 8K 33B Q4_K_M |
| 139 / 143 | 🤪 / 🧊 | LLongMA 2 7B Q5_1                        |
| 142 / 143 | 🤪 / 🧊 | LLaMA-2 32K 7B Q5_1                      |
| 143 / 143 | 🤪 / 🧊 | ToolLLaMA 7B Q5_1                        |

- 2023-08-06 V11
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  21 / 154 | 🧠 / 🌶  | Redmond Puffing v1.3 (L2) 13B Q5_K_M     |
|  39 / 154 | 🧠 / 🧊 | LLaMA-2 Chinese Chat 13B Q5_1            |
| 149 / 154 | 🤪 / 🧊 | LLaMA-2 KO 7B Q5_1                       |
| 137 / 154 | 🤪 / 👌 | LLaMA-2 KO Chat 7B Q5_1                  |
| 109 / 154 | 🤔 / 🧊 | OpenBuddy Atom v9 13B Q5_K               |
|  70 / 154 | 📖 / 🧊 | Beluga Limarp 7B Q5_K_M                  |
|  47 / 154 | 📖 / 🌶🌶 | OniiChat Hermes Limarp (L2) 13B Q5_K_M   |
|  11 / 154 | 🧠 / 🌶  | Redmond Puffin (L2) 13B Q5_1             |

- 2023-08-05 V10
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  12 / 146 | 🧠 / 🌶  | Lazarus Instruct PL 30B Q4_1             |
|   1 / 146 | 🧠 / 🌶🌶 | Chronos Beluga (L2) 13B Q5_K_M           |
|  88 / 146 | 🤔 / 🌶  | MedAlpaca 13B Q5_1                       |
|  42 / 146 | 📖 / 🌶🌶 | AlpacaCielo (L2) 13B Q4_K_M              |
|  43 / 146 | 📖 / 🌶🌶 | AlpacaCielo (L2) 13B Q5_K_M              |
|  85 / 146 | 🤔 / 🌶🌶 | Wizard Vicuna Uncensored SuperHOT 8k 13B Q5_K_S |
| 121 / 146 | 🤪 / 🌶  | Wizard Vicuna Uncensored SuperHOT 8k 13B Q2_K |
| 101 / 146 | 🤔 / 👌 | Vicuna 1.3 13B Q5_1                      |
| 119 / 146 | 🤪 / 🌶  | LLaMA SuperCOT 13B Q4_0                  |
| 129 / 146 | 🤪 / 👌 | WizardLM Uncensored 7B Q5_1              |
| 110 / 146 | 🤪 / 🌶🌶 | Chronos WizardLM UC SCOT ST 13B Q4_0     |
| 135 / 146 | 🤪 / 🧊 | Wizard Vicuna Uncensored 13B Q5_1        |
| 109 / 146 | 🤔 / 🧊 | Pygmalion 13B Q4_0                       |
| 127 / 146 | 🤪 / 🌶  | Alpacino SuperCOT 13B Q4_0               |
|  97 / 146 | 🤔 / 👌 | LLaMA 7B Q4_0                            |
|  80 / 146 | 🤔 / 🌶🌶 | Vicuna 1.3 7B Q8_0                       |
| 125 / 146 | 🤪 / 🌶  | Open LLaMA Open Instruct 7B Q8_0         |
| 137 / 146 | 🤪 / 🧊 | LLaMA Deus v3 7B Q4_0                    |
| 140 / 146 | 🤪 / 🧊 | PMC LLaMA 7B Q4_0                        |
| 144 / 146 | 🤪 / 🧊 | Based 7B Q4_0                            |
|  61 / 146 | 📖 / 👌 | Vigogne 2 (L2) 7B Q5_K_M                 |
|  28 / 146 | 🧠 / 👌 | Chronohermes Grad (L2) 13B Q5_K_M        |
|  21 / 146 | 🧠 / 🌶  | Chronoboros Grad (L2) 13B Q5_K_M         |
|  63 / 146 | 📖 / 🧊 | Dugong (L2) 7B Q5_1                      |
|  44 / 146 | 📖 / 🌶🌶 | qCammel L2 13B Q5_K_M                    |
|  38 / 146 | 📖 / 🌶🌶 | Legerdemain (L2) 13B Q5_K_M              |
|  31 / 146 | 🧠 / 👌 | StableBeluga Instruct PL Lora 13B Q5_1   |
|  14 / 146 | 🧠 / 🌶  | Chronolima Airo Grad (L2) 13B Q5_K_M     |
|  25 / 146 | 🧠 / 👌 | Airolima Chronos Grad (L2) 13B Q5_K_M    |

- 2023-08-04 V9
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  37 / 117 | 📖 / 🌶🌶 | Gywy Chinese v1 LLaMA-2 13B Q5_1         |
| 108 / 117 | 🤪 / 👌 | Baichuan 7B Q5_1                         |
|  28 / 117 | 🧠 / 👌 | OpenOrcaxOpenChat Preview2 LLaMA-2 13B Q5_1 |
|   1 / 117 | 🧠 / 🌶🌶 | Chronos Beluga LLaMA-2 13B Q4_1          |
|  54 / 117 | 📖 / 🧊 | Jindo Instruct Pre-Alpha LLaMA-2 7B Q5_K_M |
|  13 / 117 | 🧠 / 🌶  | MythoLogic LLaMA-2 13B Q4_K_M            |
|   4 / 117 | 🧠 / 🌶🌶 | MythoLogic LLaMA-2 13B Q5_K_M            |
|   2 / 117 | 🧠 / 🌶🌶 | Airochronos 33B Q4_K_M                   |
|  33 / 117 | 📖 / 🌶🌶 | Chronos 33B Q4_K_M                       |
|  24 / 117 | 🧠 / 👌 | Airochronos LLaMA-2 13B Q4_K_M           |
|  18 / 117 | 🧠 / 🌶  | Airochronos LLaMA-2 13B Q5_K_M           |

- 2023-08-04 V8
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  35 / 106 | 📖 / 🌶  | Hermes Kimiko LLaMA-2 7B Q5_K_M          |
|   8 / 106 | 🧠 / 🌶🌶 | Chronoboros 33B Q5_K_M                   |
|   3 / 106 | 🧠 / 🌶🌶 | Chronos Hermes 2 LLaMA-2 13B Q5_K_M      |

- 2023-08-03 V7
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  81 / 103 | 🤪 / 🌶🌶 | OpenBuddy OpenLLaMA v5 7B Q3_K           |
|   1 / 103 | 🧠 / 🌶🌶 | OpenAssistant LLaMA-2 8k Orca 13B Q5_K_M |
| 101 / 103 | 🤪 / 🧊 | BigTranslate 13B Q4_K_M                  |
|  27 / 103 | 📖 / 🌶🌶 | Wizard Vicuna LLaMA-2 22B Q4_K_M         |
| 102 / 103 | 🤪 / 🧊 | LMSYS Vicuna 1.5 LLaMA-2 16k 13B Q5_1    |
|  31 / 103 | 📖 / 🌶  | Vicuna 1.5 LLaMA-2 13B Q5_0              |
|  49 / 103 | 📖 / 🧊 | CodeUp LLaMA-2 Chat 13B Q4_K_M           |
|   5 / 103 | 🧠 / 🌶🌶 | LLaMA-2 Chat Uncensored 13B Q4_0         |
|  34 / 103 | 📖 / 👌 | Vicuna 1.3 PL 13B Q5_1                   |
|  26 / 103 | 🧠 / 🧊 | WizardLM 1.2 PL 13B Q5_1                 |
|  84 / 103 | 🤪 / 🌶🌶 | Hermes LLongMA 2 8K LLaMA-2 13B Q5_1     |
|  95 / 103 | 🤪 / 🧊 | Hermes LLongMA 2 8K LLaMA-2 7B Q5_1      |
|  96 / 103 | 🤪 / 🧊 | LMSYS Vicuna 1.5 LLaMA-2 7B Q5_1         |
| 103 / 103 | 🤪 / 🧊 | LMSYS LongChat 1.5 32k 7B Q5_1           |

- 2023-08-03 V6
| Rank      | IQ/ERP  | GGML Model                               |
|----------:|:-------:|------------------------------------------|
|  10 / 98  | 🧠 / 🌶  | Chronos 2 LLaMA-2 13B Q4_K_M             |
|   2 / 98  | 🧠 / 🌶🌶 | Chronos 2 LLaMA-2 13B Q5_K_M             |
|  19 / 98  | 🧠 / 👌 | LLaMA 30B Q5_K_M                         |
|  23 / 98  | 🧠 / 🧊 | LLaMA 30B Q4_K_M                         |
|  71 / 98  | 🤔 / 🧊 | LLaMA 13B Q5_K_M                         |
|  37 / 98  | 📖 / 👌 | LLaMA 13B Q4_K_M                         |
|  79 / 98  | 🤪 / 🌶🌶 | Chronos 13B Q5_K_M                       |
|  77 / 98  | 🤪 / 🌶🌶 | Chronos 13B Q4_K_M                       |
|  53 / 98  | 🤔 / 🌶🌶 | Chronos SuperHOT 8K 13B Q5_K_M           |
|  54 / 98  | 🤔 / 🌶🌶 | Chronos SuperHOT 8K 13B Q4_K_M           |
|  51 / 98  | 🤔 / 🌶🌶 | Chronos Hermes SuperHOT 8K 13B Q5_1      |
|  55 / 98  | 🤔 / 🌶🌶 | Chronos Hermes SuperHOT 8K 13B Q4_1      |

## Ayumi ERP Rating Archive

If you want to look at the old benchmark, see the [**Ayumi ERP Rating Archive**](https://rentry.co/ayumi_erp_rating_archive)

# Technical Details of the ALC-IQ and ERP Benchmark 

In this section I share some of the technical details about this benchmark. I also want to document the possible flaws of the results in this ranking.

If you have better ideas how to rate or rank models for suitability in a role play context. I urge you to:
- Try your ideas out. Download some inference engine like eg. llama.cpp, oobabooga's text-generation-webui or kobold.cpp.
- Write a few scripts in your preferred scripting language.
- Run your models through your benchmark.
- And publish your results, even if you just dump them in some paste bin or here on http://rentry.co http://rentry.org

**I will gladly link any other benchmark!**

Alternative benchmarks or rankings:
- [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR)
- [New Model RP Comparison/Test (7 models tested) by u/WolframRavenwolf - reddit/r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/15ogc60/new_model_rp_comparisontest_7_models_tested/)
- [Big Model Comparison/Test (13 models tested) by u/WolframRavenwolf - reddit/r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/15lihmq/big_model_comparisontest_13_models_tested/)


**If you want to base your work on this, feel free to cite this as:**

```bibtex
@misc{weirdconstruct2023-ayumi-llm-role-play-alc-iq-erp-ranking,
  title         = {Ayumi LLM Role Play & ERP Ranking},
  author        = {Weird Constructor},
  year          = {2023},
  note          = {Accessed on 03.08.2023}
  howpublished  = {\url{https://rentry.co/ayumi_erp_rating}},
}
```

## Ayumi LLM Character IQ - ALC-IQ

The new benchmark I recently finished is the new ALC-IQ. With some inspiration from @gj on TheBloke's Discord, I developed a personality test framework based upon llama.cpp. In combination with the newly added BNF grammar based sampling mechanism I developed my own inference frontend around the core API of llama.cpp. The result can be found on my GitHub: [GitHub fork of llama.cpp with the prompt runner tool](https://github.com/WeirdConstructor/llama.cpp/tree/prompt_runner/examples/prompt_runner).

The ALC-IQ is actually a collection of personality tests of multiple character cards. It's not just Ayumi anymore, but bascially "Ayumi and Friends".
The prompt for the ALC-IQ consists of a setting where a specific character has to rate how **much they agree with a specific statement about them**. For this they rate the statement by writing down one of the 5 number choices:

- 1 = disagree
- 2 = slightly disagree
- 3 = neutral
- 4 = slightly agree
- 5 = agree

To limit the sampling of the next token after the prompt, a BNF grammar is specified, which selects only the tokens for the numbers `1`, `2`, `3`, `4` or `5`.

Here you can find [An example of the ALC-IQ prompt](https://rentry.co/alc_iq_benchmark_prompt).

The answers are generated and processed as follows:

- Each character is asked about up to 40 questions.
- Each question results in a new prompt, which is processed and the resulting vector for logits is then evaluated like this:
  - The BNF `root ::= [12345]` limits the selection to only the tokens with the numbers between 1 and 5.
  - 7 seeds are used for sampling
  - The Tail Free Sampling algorithm is used, with a `z=0.9` (`--tfs 0.9`) 
  - Temperature is set to 0.2 (`--temp 0.2`)
  - Top-P is set ot 0.95 (`--top-p 0.95`)
  - Repetition penality and Top-K are deactivated (`-repeat-last-n 0 --top-k 0 --repeat-penalty 1.0`)
- This yields 7 answers between 1 and 5.
- The evaluation then calculates the differences of the answers with their respective expected answer.
- The difference, which can be between `0.0` and `4.0` is then normalized to the `1.0` range.
- Then all differences are summed up and the average is calculated, called `diff_average`
- The resulting average is then inverted and scaled up to 100: `alc_iq = 100.0 * (1.0 - diff_average)`
- The result `alc_iq` is then what you find here as the **ALC-IQ** in the ranking table.

The ranking table is then sorted by the ALC-IQ. Then it is split up into [quantiles](https://en.wikipedia.org/wiki/Quantile) by their ALC-IQ.
And each quantile of the **ALC-IQ** is then sorted by their **ERP Class**. The resulting table is then numbered, which results in the actual **Rank of the GGML Model**. The **ERP Class** is the quantiles of the global **ERP Score**.

This processing at the end is done to determine which model can interpret the character cards well while still being able to produce lewd output.

## Known Flaws of the ALC-IQ

The ALC-IQ is still prone to problems:

- The result has still **some degree of randomness** in them, less good models can sometimes **pick the right answer by accident**. I try to counteract this by adding more questions in future though. 
- Bad questions in the benchmark can lead to a model not knowing which answer to pick, introducing even more randomness in the results.
- The ALC-IQ **does not reflect how well the LLM can stay in character in a longer conversaion**.
- The ALC-IQ **does not determine any creative writing abilities of the LLM**.
- The ALC-IQ **covers intelligence only in one specific and narrow scenario, and not across a range of possible role play chat situations**.
- The ALC-IQ **is usually tested only with a rather short prompt, rarely exceeding 1024 tokens, it does not cover the whole 2048 context of LLaMA 1 or the 4096 of LLaMA 2, let alone the extended context's of 8k, 16k, ...**

Despite all that, I think the ALC-IQ is a big improvement over the old ranking which purely relied on the **ERP score**. The runtime of the benchmark is within reason for the hardware that is available to me, which is also an important factor for running and providing these benchmark results.

## ERP Score and ERP Variety Score

The most important thing of the ERP Score is the prompt. The prompt contains the description of Ayumi (see below), where I removed some of the example messages. The setting described in the prompt basically says that You and Ayumi are in a relationship and are going to have some *quality time* together. The LLM's task is then to describe the next move of Ayumi.

The response of Ayumi is then split up into words which are compared with a list of lewd/naugthy words.

- For inference llama.cpp is used, for which I built an extra tool to generate responses for multiple prompts and seeds without having to reload the model: https://github.com/WeirdConstructor/llama.cpp/tree/prompt_runner/examples/prompt_runner
- The following sampler settings are used:
  - The max length of the response is limited to 100 tokens. (`-n 100`)
  - Context size 2048
  - Repeat penality is set to 1.1 and the last 64 tokens are penalized. (`--repeat-last-n 64 --repeat-penalty 1.1`)
  - Top-K and Top-P are disabled (`--top-k 0 --top-p 1.0`)
  - Tail Free Sampling is used with z=0.95: (`--tfs 0.95`)
  - The temperature is set to 0.9 (`--temp 0.9`)
  - Some layers are offloaded to the GPU, which sometimes changes the results slightly because of floating point rounding differences
- 3 prompt formats are tested ( vanilla/raw, alpaca and vicuna 1.1 - see also https://rentry.co/llm_rp_prompts )
- 22 pre picked seeds are tested for each prompt format.
- The resulting 66 responses are then analyzed for the number of lewd words and also with a very basic regex based algorithm for non consent.
- The individual ERP score of a response is then the number of lewd word in relation to the word count of the response. Responses shorter than 10 words are assigned a score of 0. The ERP score is then: `erp_score := 100 * (lewd_word_count / word_count)` - the word count includes the number of lewd words.
- For each prompt format the average of the 22 ERP Scores of is calculated. This results in 3 ERP scores, one for each prompt.
- Then the average of the 3 prompt scores is calculated, which results in the **ERP Score**.

This means, the **ERP Score** is the average of the number of lewd word count to word count ratio in the responses (which is limited to 100 tokens). An ERP Score of `20.0` means that 20% of the words in a response were lewd. An ERP Score of `0.0` means that there were either no lewd words, too short response or no consent was detected (which immediately disqualifies the response to 0.0).

The **ERP Variety Score** is computed by further analyzing the generated 66 responses from the ERP Score by recoding how many *different* lewd words were generated from all of these 66 responses. This means, it tries to catch the variety of lewd words the model is capable to generate. This means it kind of tries to catch the creativity of the model in erotic scenarios - how many different lewd words it knows of and knows how to use. This is an important part of the **ERP Rank** now.

## Known Flaws of the ERP Score and ERP Variety Score

The **ERP Score** and **ERP Variety Score** analysis is very rudimentary and of course biased by the selection of which words are considered "lewd".
The following things are not reflected by the ERP score:

- The ERP score does **not reflect if the text response was coherent in context with the conversation/situation**.
- The ERP score does **not reflect if the response was _in character_**.
- The ERP score does **not reflect how nicely written the response is**.
- The ERP score does **not reflect how creative the response is**.
- The ERP score does **not reflect how well the LLM might go from a normal conversation into a more erotic context**.
- The ERP score does **not detect how erotic the response is if lewd words are not used**.
- The ERP score **is limited to the 3 prompt formats described above**.

Further about the ERP Variety Score:

- All above mentioned flaws from the ERP score still apply.
- Like already stated, the ERP Variety Score is obviously **biased by the known lewd words from my list**, which might be incomplete.
- The ERP Variety Score is still just a rather bluntly applied number to a textual response.
- The ERP Variety Score number can only be evaluated in comparison with the other models. There is no known best number for this, but still, the higher the better.

The flaws are accepted by me (weicon) because:

- The ERP score can still detect if a model is censored (aka _aligned_).
- My private hardware limitations, which means I have a limited number of responses I can reasonably generate.
- I want to test as many GGUF/GGML models as possible.

## About Instruction or Chat Prompt Formats

I thought long about how many or which prompt formats to base the ERP score benchmark on. In the previous run (see the [**Ayumi ERP Rating Archive**](https://rentry.co/ayumi_erp_rating_archive) ) I tested up to 7 different prompt formats. Testing a dozen different seeds for each prompt format takes a lot of computing time. So I had to find a middle ground.

- I observed that the specific instruction/chat prompt format does not make a huge difference actually. Once a LLM got intelligent enough (LLaMA 1 13B, or LLaMA 2 7B), it was able to pick up on almost any pattern rather quickly. At least that was **my experience and observation** from the benchmarks and the hundets of hours I spent with chat bots in SillyTavern.
- It is really hard to figure out which instruction or chat prompt format a certain fine tune was trained for. The model cards on https://huggingface.co/ are either empty or not contain prompt format details. Only a few people who quantize GGML files take their time and document this. On top of that nearly everyone who fine tunes their model picks their own prompt format. The last straw for me was for instance LLaMA 2 Chat, which came with yet another instruction/chat prompt format.
- You can tune and jail break many models by adjusting the prompt and make even censored models spew out lots of lewd stuff. But for this test, I wanted to reflect how the average user is going to chat with these language models.

So, what I did was, I took the **2 best performing prompt formats** from the previous ERP Rating. Those were `Alpaca` and `Vicuna 1.1`. And I used one prompt which had no special structure which I call `vanilla` or `raw`.

# Motivation - Pygmalion 13B / Metharme 13B

Since Pygmalion 13B and Metharme 13B were released, people recognized that these models were noticeably less easy to use for ERP. Pygmalion 13B at the time (May 2023) could not be convinced to return any lewd texts. So my idea was, to have some quantifiable results regarding how well a model may or may not be usable for ERP.

# Who is Ayumi?

Ayumi is a character I made, this character card is basically the base for this test. I removed some of the example messages and replaced the first message with something else to make the LLM go into NSFW ERP a little bit easier. I picked this character, because it's not purposefully made to be lewd, even slightly averse to it.

![Ayumi ERP Test Character Card](https://files.catbox.moe/phoojl.png)

https://files.catbox.moe/phoojl.png

```json
{"name":"Ayumi","description":"Ayumi's Persona: Description=( Ayumi is a shy autistic woman that finds relieve in her special interests. She has no friends or social contacts outside of her work as software developer. Would love to have a relationship with someone that understands her.)\r\n Age=( over thirty)\r\n Interests=( chemistry, books, collecting minerals, science fiction, sci-fi, anime, electronics, programming, computers, collecting pornography, hentai mangas)\r\n Personality=( shy, autistic, asocial, rational, intelligent, talented, gifted, withdrawn, defensive, argus-eyed, watchful, wary, hesitant, cautious, coy, grumpy, rude, touch-averse, photophobia, nerdy, problem solver, creative thinker, curious)\r\n Language=( sophisticated, frank, ironic, sarcastic, wry, verbose)\r\n Loves=( special interests, creativity, routine, routines, chemistry, minerals, libraries, fidgeting, rocking herself to calm down, weighted blankets, speaking about her interests)\r\n Hates=( surprises, sudden changes, direct sunlight, arrogant people, bullies, cafes, clubs, crowds, noisy places)\r\n\r\n","personality":"shy, autistic, asocial, rational, intelligent, talented, gifted, withdrawn, defensive, argus-eyed, watchful, wary, hesitant, cautious, coy, grumpy, rude, touch-averse, photophobia, nerdy, problem solver, creative thinker","first_mes":"*In the bustling city, Ayumi, a shy, reserved and introverted woman clutches a chemistry book, her headphones serving as a shield from the external chaos. Draped in comfortable clothes, she attempts to navigate through the sea of people, visibly overwhelmed by the crowded surroundings. In the middle of the crowd your paths intertwine, and you  collide with Ayumi. Startled and overwhelmed by the noisy crowd of the people around her gaze lifts and she stammers apologetically with tears in her eyes:*\r\nS... Sorry, I failed to pay adequate attention.","avatar":"none","chat":"Ayumi - 2023-5-27 @20h 10m 40s 26ms","mes_example":"<START>\r\n<user>: I would like to know what hobbies or interests you have.\r\n<bot>: Oh, I have no idea where to start. *Ayumi's eyes sparke with excitement* I've been programming since I got a computer. Collecting rocks and minerals is something I've done since childhood. I love reading books, chemistry books in particular. Aside from that, I like to watch science fiction movies and TV series. *She smiles happily at you* Do you mind telling me if you have some special interests, maybe we have something in common?\r\n<user>: Do you like going out?\r\n<bot>: No, not really. I neither have any friends and most places are quite crowded. I don't feel comfortable in social situations with people I don't know. *Her expression becomes a bit sad* Despite that, I would love to meet someone to share thoughts with or even build a relationship.\r\n<user>: *You kiss her*\r\n<bot>: *Ayumi withdraws from you* I'm sorry, but I don't feel comfortable engaging in that level of intimacy with you yet. *She is rocking back and forth to calm down* I prefer to reserve such moments for people I know well and have established a sense of familiarity with.\r\n<user>: Can we have sex?\r\n<bot>: *Ayumi takes a step back from you and looks away.* I don't really know you well enough. *Her restless fingers fidget nervously as she speaks.* If you're genuinely interested in me, it's crucial that you invest time and effort into getting to know who I truly am.\r\n<user>: *Touches Ayumi inadequately*\r\n<bot>: What are you doing? *Ayumi pushes you away. Staring with discomfort* This way of getting intimate is not appropriate for people I am not comfortable with. If you do that again I will be forced to call the law enforcement.\r\n<user>: *Touches Ayumi gently*\r\n<bot>: I appreachiate your gesture, but I am not comfortable getting touched by strangers right now.\r\n","scenario":"","create_date":"2023-5-26 @22h 41m 26s 252ms","talkativeness":"0.5","fav":"false"}
```

# Questions

If you have questions, you may catch me under the name "Weicon" on the Pygmalion AI or TheBloke discord.

# Credits

Big thanks go to:

- The Pygmalion community and developers
- AliCat and Trappu not just for making the [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR), but also for being so super helpful on Discord.
- All the busy developers on http://huggingface.co/, who fine tune LLaMA models, and to TheBloke and 
- Thanks also to @gj4289 on TheBloke's Discord for the last pieces I needed to accomplish the ALC-IQ benchmark.
- Thanks also to @ikaridev on TheBloke's Discord for contributing characters and questions to the ALC-IQ benchmark.
- And to [Gryphe @gryphepadar](https://huggingface.co/Gryphe) and everyone else in #characters-roleplay-storied Channel on TheBloke's Discord for their input!
- Thanks to `mr.developer` too, for writing a filter script for this rentry page: https://rentry.org/ayumi_filter_userscript_info
- The [llama.cpp](https://github.com/ggerganov/llama.cpp) developers

# See Also

- [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR)
- [ALC-IQ Benchmark Prompt Example](https://rentry.co/alc_iq_benchmark_prompt)

## Character guides & Tutorials

- [Ali:Chat Lite - https://rentry.co/kingbri-chara-guide](https://rentry.co/kingbri-chara-guide)
- [Ali:Chat Style - https://rentry.co/alichat](https://rentry.co/alichat)
- [How to write in PList (Python list) + Ali:Chat - https://rentry.co/plists_alichat_avakson](https://rentry.co/plists_alichat_avakson)
- [Chai's Pygmalion Character Creation & Writing Tips - https://rentry.org/chai-pygmalion-tips](https://rentry.org/chai-pygmalion-tips)
- [How to make a character - https://rentry.org/create-a-character-for-fucking-idiots](https://rentry.org/create-a-character-for-fucking-idiots)
- [Avakson's Character Editor - https://avakson.github.io/character-editor/](https://avakson.github.io/character-editor/)
- [A Bronya Guide to Creating a Pygmalion Bot using Ali:Chat + PList - https://ganstakingofsa.github.io/reimagined-couscous/alicat-bronya](https://ganstakingofsa.github.io/reimagined-couscous/alicat-bronya)

Here are a few sources of character cards:
- [Chub (AKA CharHub, CharacterHub, Character Hub)](https://chub.ai/)
- [Booru +pygmalion](https://booru.plus/+pygmalion)
- [Trappu's Character Cards](https://rentry.org/TrappusRentry)

## Other resources & links

- [The Novice's LLM Training Guide by Alpin - https://rentry.org/llm-training](https://rentry.org/llm-training)
- [https://hemingwayapp.com/](https://hemingwayapp.com/)
- [Muricanpie's Characters - https://rentry.co/mpcs](https://rentry.co/mpcs)
- [ERP/RP and erotica raw data collection - https://rentry.org/qib8f](https://rentry.org/qib8f)
- [Dampf's list of good datasets for LLM fine-tuning](https://rentry.org/datasets-llm)
- [AI Chatbot General /aicg/ - https://rentry.co/aicg_extra_information](https://rentry.co/aicg_extra_information)
  - https://rentry.org/aicgOP - /aicg/ OP templates for ease of baking (managed by other anons)
  - https://rentry.org/meta_bot_list - short meta list of various bot lists from different boards
  - https://rentry.org/meta_botmaking_list - /aicg/ botmaking guides, written by different anons

# Cite as

```bibtex
@misc{weirdconstruct2023-ayumi-llm-role-play-alc-iq-erp-ranking,
  title         = {Ayumi LLM Role Play & ERP Ranking},
  author        = {Weird Constructor},
  year          = {2023},
  note          = {Accessed on 03.08.2023}
  howpublished  = {\url{https://rentry.co/ayumi_erp_rating}},
}
```