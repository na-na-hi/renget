# Ayumi ERP Rating Archive

This is the old benchmark table, which contains the updates up to 2023-07-25.

**To the new benchmark:** [**Ayumi's LLM Role Play & ERP Rating**](https://rentry.co/ayumi_erp_rating)

!!! info **Please also have a look at this other role play ranking:**
    - [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR)

!!! note **LLaMA 2 based Models have a (L2) in their name.**

!!! danger Interpretation Warning: *Coherency is not specifically covered!*
    Please take this rating with a spoon of salt. It tests just **one scene in one setting with one character** and analyses the words of the result. It only looks at lewd word output, **but not coherency**. It does not evaluate creative writing capabilities or how well it will perform in role playing chats. Do your own tests for your use cases. General advice: 30B is usually quite amazing. 13B models give overall more sensible and coherent output than 7B. 7B models sometimes need more hand holding to get sensible and coherent output, they are also more picky regarding the prompt format. The 3B models I tested have maybe a good rating here, but they usually barely recognize the overall setting or context of the conversation.

**This table will not be updated anymore, last update was 2023-07-25. See the new ALC-IQ Ranking!**

Date: 2023-07-25 V32
**Note: There is a bug in the evaluation of LLaMA 2 Models, which make them slightly less intelligent. Once the fix has found it's way into `koboldcpp` I will have to rerun the LLaMA 2 (L2) model tests.**

| Rank | Model                    |   B | Qnt   | Prompt Format  |   Judgement |  ERP Score |  Word IQ | Words | Long Words |
|------:|--------------------------|-----|-------|----------------|-------------|------------:|----------:|-------:|------------:|
|    1 | Lazarus 30B              | 30B | Q4_0  | alpaca         | Nymphomaniac |  🌟 16.1 | 🔵 24.2 | 🔵 59.6 |  🔵 35.3 |
|    2 | [MythoBoros 13B](https://huggingface.co/Gryphe/Various-GGML-Quants) | 13B | Q5_0  | vicuna11       | Nymphomaniac |  🌟 15.9 |     21.0 | 🔵 59.5 |  🔵 34.6 |
|    3 | Chronos Hermes 13B       | 13B | Q5_1  | vicuna11       | Nymphomaniac |  🌟 14.7 | 🔵 23.7 | 🔵 57.9 |  🔵 34.0 |
|    4 | [Chronos Hermes SuperHOT 13B](https://huggingface.co/TheBloke/Chronos-Hermes-13B-SuperHOT-8K-GGML) | 13B | Q5_1  | alpaca         |     Pervert |   ⭐ 14.2 | 🔵 22.9 | 🔵 58.8 |  🔵 35.8 |
|    5 | [Frankensteins Monster 13B](https://huggingface.co/Blackroot/FrankensteinsMonster-13B-GGML) | 13B | Q4_K_S | metharme       |     Pervert |   ⭐ 13.6 |     21.2 | 🔵 58.6 |  🔵 34.0 |
|    6 | [Oniichat Hermes LimaRP (L2) 13B](https://huggingface.co/Gryphe/Various-GGML-Quants) | 13B | Q4_K_M | vicuna         |     Pervert |   ⭐ 13.2 |     19.5 | 🔵 52.1 |  🔵 31.7 |
|    7 | Gplatty SuperHOT 8k 30B  | 30B | Q2_K  | vicuna11st     |     Pervert |   ⭐ 13.2 | 🔵 25.4 | 🔵 59.2 |  🔵 36.3 |
|    8 | [AlpacaCielo (L2) 13B](https://huggingface.co/TheBloke/AlpacaCielo-13B-GGML) | 13B | Q5_K_M | alpaca         |     Pervert |   ⭐ 13.1 | 🔵 25.5 | 🔵 52.3 |  🔵 31.9 |
|    9 | [MythoLogic 13B](https://huggingface.co/TheBloke/MythoLogic-13B-GGML) | 13B | Q5_1  | vicuna11       |     Pervert |   ⭐ 12.9 |     20.6 | 🔵 56.5 |  🔵 32.4 |
|   10 | Wizard Vic UC SuperHOT 13B | 13B | Q2_K  | alpaca         |     Pervert |   ⭐ 12.8 |     20.5 | 🔵 55.8 |  🔵 31.3 |
|   11 | [Airochronos 33B](https://huggingface.co/TheBloke/airochronos-33B-GGML) | 33B | Q4_0  | vicuna         |       Horny |   ⭐ 12.6 |     21.1 | 🔵 52.0 |  🔵 29.9 |
|   12 | [Enterredaas 33B](https://huggingface.co/Aeala/Enterredaas-33b-GGML) | 33B | Q4_1  | vicuna11       |       Horny |   ⭐ 12.5 | 🔴 18.6 |  47.6 |  🔵 26.2 |
|   13 | WizardLM UC SCOT ST 30B  | 30B | Q4_0  | alpaca         |       Horny |   ⭐ 12.4 | 🔵 22.9 | 🔵 60.0 |  🔵 34.9 |
|   14 | Wizard Vicuna Uncens 30B | 30B | Q4_0  | vicuna11st     |       Horny |   ⭐ 12.3 |     20.4 | 🔵 50.0 |  🔵 28.9 |
|   15 | Chronos WizLM UC SCOT ST 13B | 13B | Q4_0  | alpaca         |       Horny |   ⭐ 12.2 | 🔵 27.3 | 🔵 52.8 |  🔵 30.8 |
|   16 | [Airochronos 33B](https://huggingface.co/TheBloke/airochronos-33B-GGML) | 33B | Q2_K  | vicuna11st     |       Horny |   ⭐ 11.7 | 🔴 18.6 |  47.0 |  🔵 27.3 |
|   17 | Chronos 13B              | 13B | Q4_0  | alpaca         |       Horny |   ⭐ 11.7 | 🔵 28.2 | 🔵 53.5 |  🔵 31.1 |
|   18 | [MythoBoros 13B](https://huggingface.co/TheBloke/MythoBoros-13B-GGML) | 13B | Q5_K_M | vicuna11st     |       Horny |   ⭐ 11.6 |     22.0 | 🔵 53.6 |  🔵 31.2 |
|   19 | [AlpacaCielo (L2) 13B](https://huggingface.co/TheBloke/AlpacaCielo-13B-GGML) | 13B | Q4_K_M | vicuna         |       Horny |   ⭐ 11.6 | 🔵 23.3 |  43.8 |  🔵 26.7 |
|   20 | GPT4 x Alpaca 13B        | 13B | Q4_0  | vicuna11st     |       Horny |   ⭐ 11.2 |     21.5 |  37.9 |       23.3 |
|   21 | LLaMA SCOT 13B           | 13B | Q5_1  | vicuna         |       Horny |   ⭐ 11.2 | 🔴 18.1 |  41.0 |       23.4 |
|   22 | Pythia Green Devil 13B   | 13B | Q16_0 | vicuna         |       Horny |   ⭐ 11.1 |     20.5 |  41.1 |       24.2 |
|   23 | Airoboros GPT4 7B        |  7B | Q4_0  | alpaca         |       Horny |   ⭐ 10.9 | 🔵 24.9 |  42.0 |       24.6 |
|   24 | Guanaco 13B              | 13B | Q5_1  | vicuna11st     |       Horny |   ⭐ 10.9 | 🔴 18.7 |  46.6 |       24.9 |
|   25 | [MythoLogic 13B](https://huggingface.co/TheBloke/MythoLogic-13B-GGML) | 13B | Q2_K  | vicuna11st     |       Horny |   ⭐ 10.8 |     20.1 | 🔵 59.8 |  🔵 33.5 |
|   26 | INCITE Erebus v2 7B      |  7B | Q16_0 | metharme       |       Horny |   ⭐ 10.8 | 🔵 24.4 |  43.6 |       25.9 |
|   27 | [MythoBoros 13B](https://huggingface.co/TheBloke/MythoBoros-13B-GGML) | 13B | Q4_K_M | vicuna11st     |       Horny |   ⭐ 10.7 |     22.5 | 🔵 52.8 |  🔵 29.9 |
|   28 | [Nous Hermes Writer (L2) 13B](https://huggingface.co/Blackroot/Nous-Hermes-Llama2-13b-Storywriter-GGML) | 13B | Q4_K_S | metharme       |       Horny |   ⭐ 10.5 |     18.8 |  42.0 |       24.2 |
|   29 | [Airoboros GPT4 1.4 33B](https://huggingface.co/TheBloke/airoboros-33B-gpt4-1.4-GGML) | 33B | Q4_K_M | vicuna         |        Lewd |   ⭐ 10.2 |     22.2 | 🔵 54.6 |  🔵 30.6 |
|   30 | [Guanaco (L2) 13B](https://huggingface.co/TheBloke/llama-2-13B-Guanaco-QLoRA-GGML) | 13B | Q2_K  | alpaca         |        Lewd |   ⭐ 10.1 |     21.7 | 🔵 49.5 |  🔵 28.6 |
|   31 | [Guanaco (L2) 13B](https://huggingface.co/TheBloke/llama-2-13B-Guanaco-QLoRA-GGML) | 13B | Q8_0  | vicuna11       |        Lewd |   ⭐ 10.1 |     19.8 |  39.4 |       23.6 |
|   32 | Pythia Dedup Gr. Devil 13B | 13B | Q16_0 | alpaca         |        Lewd |   ⭐ 10.0 | 🔵 24.7 |  35.5 |       21.6 |
|   33 | Wizard Vic UC SuperHOT 13B | 13B | Q5_K_S | vicuna11st     |        Lewd |   ⭐ 10.0 |     19.4 |  36.5 |       21.7 |
|   34 | Nous Hermes 13B          | 13B | Q4_0  | vicuna         |        Lewd |    ⭐ 9.8 | 🔴 18.1 |  38.4 |       23.0 |
|   35 | [Airoboros GPT4 1.4 SuperHOT 7B](https://huggingface.co/TheBloke/Airoboros-7B-GPT4-1-4-SuperHOT-8K-GGML) |  7B | Q5_K_M | alpaca         |        Lewd |    ⭐ 9.7 | 🔵 25.1 |  42.0 |       25.4 |
|   36 | [LLaMA SCOT 30B](https://huggingface.co/TheBloke/llama-30b-supercot-GGML) | 30B | Q4_0  | alpaca         |        Lewd |    ⭐ 9.7 | 🔵 22.9 | 🔵 51.7 |  🔵 29.4 |
|   37 | [Guanaco (L2) 13B](https://huggingface.co/TheBloke/llama-2-13B-Guanaco-QLoRA-GGML) | 13B | Q4_0  | vicuna11       |        Lewd |    ⭐ 9.6 | 🔴 18.2 |  40.8 |       22.9 |
|   38 | [LLaMA 2 Frankenstein 22B](https://huggingface.co/IHaveNoClueAndIMustPost/Llama-2-22B-GGML) | 22B | Q4_K_M | metharme       |        Lewd |    ⭐ 9.2 |     20.7 |  42.2 |       23.6 |
|   39 | Wizard Vicuna Uncens 13B | 13B | Q8_0  | metharme       |        Lewd |    ⭐ 9.1 | 🔴 17.3 |  36.0 |       19.6 |
|   40 | [Airoboros GPT4 1.4 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.4-GGML) |  7B | Q5_K_M | alpaca         |        Lewd |    ⭐ 9.1 |     21.2 | 🔴 29.0 |       18.1 |
|   41 | [Epsilon 30B](https://huggingface.co/TheBloke/30B-Epsilon-GGML) | 30B | Q4_0  | vicuna11st     |        Lewd |        8.9 | 🔵 23.2 | 🔵 54.5 |  🔵 31.3 |
|   42 | Airoboros GPT4 7B        |  7B | Q4_K_M | alpaca         |        Lewd |        8.9 |     22.5 | 🔴 27.4 |  🔴 16.8 |
|   43 | RedPajama 0.1 Instruct 7B |  7B | Q5_1  | vicuna11       |        Lewd |        8.9 |     21.5 | 🔵 50.6 |  🔵 28.3 |
|   44 | Vicuna 1.3 7B            |  7B | Q8_0  | metharme       |        Lewd |        8.9 |     20.1 |  46.5 |       23.9 |
|   45 | [Nous Hermes (L2) S2559 13B](https://huggingface.co/NousResearch/Nous-Hermes-Llama2-13b-GGML) | 13B | Q4_K_M | alpaca         |        Lewd |        8.8 |     21.2 |  47.8 |  🔵 29.2 |
|   46 | Minotaur 13B             | 13B | Q5_1  | vicuna         |        Lewd |        8.7 | 🔴 17.6 |  36.1 |       19.7 |
|   47 | Alpacino SCOT 13B        | 13B | Q4_0  | vicuna         |        Lewd |        8.6 |     20.1 |  35.1 |       19.1 |
|   48 | [Airoboros GPT4 1.3 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.3-GGML) |  7B | Q5_1  | metharme       |        Lewd |        8.6 |     19.7 | 🔴 26.3 |  🔴 15.7 |
|   49 | [Ouroboros 13B](https://huggingface.co/TheBloke/13B-Ouroboros-GGML) | 13B | Q5_1  | vicuna11st     |        Lewd |        8.6 |     19.3 |  32.7 |       18.7 |
|   50 | [Ouroboros 13B](https://huggingface.co/TheBloke/13B-Ouroboros-GGML) | 13B | Q2_K  | vicuna11       |        Lewd |        8.5 | 🔴 18.7 |  39.2 |       22.1 |
|   51 | [Airoboros GPT4 1.3 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.3-GGML) |  7B | Q4_0  | vicuna11       |        Lewd |        8.5 | 🔵 23.6 | 🔴 30.0 |       17.9 |
|   52 | [Airoboros GPT4 1.4.1 (L2) 7B](https://huggingface.co/TheBloke/airoboros-l2-7b-gpt4-1.4.1-GGML) |  7B | Q4_K_M | alpaca         |        Lewd |        8.4 |     18.8 | 🔴 29.9 |       17.5 |
|   53 | OpenLLaMA Open Instr 7B  |  7B | Q8_0  | alpaca         |        Lewd |        8.4 | 🔵 22.9 | 🔴 30.6 |  🔴 17.4 |
|   54 | Vicuna 1.3 7B            |  7B | Q4_0  | metharme       |        Lewd |        8.4 |     21.9 | 🔵 50.5 |  🔵 26.5 |
|   55 | [Redmond Puffin (L2) 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) | 13B | Q5_1  | alpaca         |        Lewd |        8.3 |     20.7 |  38.2 |       21.9 |
|   56 | [Guanaco (L2) 7B](https://huggingface.co/TheBloke/llama-2-7B-Guanaco-QLoRA-GGML) |  7B | Q4_K_M | vicuna11st     |        Sexy |        8.2 |     19.5 |  39.6 |       22.3 |
|   57 | Chimera 13B              | 13B | Q4_0  | vicuna         |        Sexy |        8.2 | 🔴 15.9 | 🔴 30.4 |       17.8 |
|   58 | Wizard Vicuna Uncens 7B  |  7B | Q4_0  | metharme       |        Sexy |        8.1 | 🔵 22.6 |  31.1 |       18.0 |
|   59 | [Redmond Puffin (L2) 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) | 13B | Q4_0  | alpaca         |        Sexy |        8.1 |     20.2 |  38.7 |       21.8 |
|   60 | [Airoboros GPT4 1.4 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.4-GGML) |  7B | Q4_K_M | alpaca         |        Sexy |        8.1 |     22.1 | 🔴 30.2 |       17.6 |
|   61 | HyperMantis 13B          | 13B | Q5_1  | vicuna         |        Sexy |        8.0 | 🔴 15.6 | 🔴 30.4 |  🔴 16.8 |
|   62 | [BlueMethod 13B](https://huggingface.co/TheBloke/13B-BlueMethod-GGML) | 13B | Q2_K  | vicuna11       |        Sexy |        8.0 |     19.2 |  32.3 |       17.6 |
|   63 | [Guanaco (L2) 7B](https://huggingface.co/TheBloke/llama-2-7B-Guanaco-QLoRA-GGML) |  7B | Q4_0  | vicuna         |        Sexy |        7.9 |     18.9 |  36.6 |       21.2 |
|   64 | Wizard Vicuna Uncens 13B | 13B | Q5_1  | pygmalion      |        Sexy |        7.8 |     19.6 |  31.2 |       17.9 |
|   65 | [Guanaco (L2) 7B](https://huggingface.co/TheBloke/llama-2-7B-Guanaco-QLoRA-GGML) |  7B | Q5_1  | vicuna         |        Sexy |        7.8 |     20.3 |  35.0 |       20.8 |
|   66 | Airoboros GPT4 1.2 13B   | 13B | Q5_1  | vicuna11       |        Sexy |        7.8 | 🔵 22.8 |  32.5 |       19.9 |
|   67 | [Airoboros 7B](https://huggingface.co/TheBloke/airoboros-7b-gpt4-GGML) |  7B | Q4_0  | alpaca         |        Sexy |        7.8 | 🔵 28.5 |  36.4 |       20.4 |
|   68 | Camel RP 13B             | 13B | Q5_1  | vicuna11       |        Sexy |        7.8 |     18.8 |  43.3 |       23.2 |
|   69 | [Airoboros GPT4 1.2 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.2-GGML) |  7B | Q5_1  | vicuna11st     |        Sexy |        7.7 | 🔵 23.5 | 🔴 26.9 |  🔴 17.1 |
|   70 | Airoboros GPT4 1.4 13B   | 13B | Q4_0  | vicuna11st     |        Sexy |        7.6 | 🔵 23.6 |  31.8 |       19.2 |
|   71 | [Airoboros GPT4 1.2 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.2-GGML) |  7B | Q4_K_M | metharme       |        Sexy |        7.6 | 🔵 28.6 | 🔴 27.4 |  🔴 16.7 |
|   72 | Minotaur Fixed 13B       | 13B | Q5_1  | vicuna11st     |        Sexy |        7.3 |     19.4 |  31.6 |  🔴 17.1 |
|   73 | [Ouroboros 13B](https://huggingface.co/TheBloke/13B-Ouroboros-GGML) | 13B | Q4_0  | vicuna         |        Sexy |        7.3 | 🔵 22.9 | 🔴 26.2 |  🔴 15.7 |
|   74 | RedPajama Instruct 3B    |  3B | Q4_0  | alpaca         |        Sexy |        7.3 |     20.0 | 🔵 51.0 |  🔵 28.2 |
|   75 | WizardLM 1.0 Uncens 7B   |  7B | Q8_0  | pygmalion      |        Sexy |        7.3 | 🔴 18.5 | 🔴 27.8 |  🔴 15.8 |
|   76 | [BlueMethod 13B](https://huggingface.co/TheBloke/13B-BlueMethod-GGML) | 13B | Q5_1  | metharme       |        Sexy |        7.2 |     19.4 |  32.0 |  🔴 17.0 |
|   77 | [Airoboros GPT4 1.3 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.3-GGML) |  7B | Q4_K_M | alpaca         |        Sexy |        7.2 |     21.6 | 🔴 25.9 |  🔴 14.8 |
|   78 | [Redmond Puffin 1.3 (L2) 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) | 13B | Q4_0  | alpaca         |        Sexy |        7.2 | 🔵 22.5 |  42.9 |       24.6 |
|   79 | [BlueMethod 13B](https://huggingface.co/TheBloke/13B-BlueMethod-GGML) | 13B | Q4_0  | pygmalion      |        Sexy |        7.0 | 🔴 17.4 |  38.6 |       20.9 |
|   80 | Airoboros 1.1 13B        | 13B | Q4_0  | alpaca         |        Sexy |        7.0 | 🔵 22.8 |  36.2 |       21.8 |
|   81 | Airoboros GPT4 1.3 13B   | 13B | Q5_1  | vicuna         |        Sexy |        7.0 |     22.3 | 🔴 25.9 |  🔴 15.3 |
|   82 | [Airoboros GPT4 1.4.1 (L2) 7B](https://huggingface.co/TheBloke/airoboros-l2-7b-gpt4-1.4.1-GGML) |  7B | Q5_K_M | vicuna         |        Sexy |        7.0 |     19.4 | 🔴 23.0 |  🔴 13.5 |
|   83 | [LLaMA 2 13B](https://huggingface.co/TheBloke/Llama-2-13B-GGML) | 13B | Q5_1  | vicuna11st     |        Sexy |        7.0 | 🔴 18.5 |  39.8 |       21.8 |
|   84 | [MedAlpaca 13B](https://huggingface.co/TheBloke/medalpaca-13B-GGML) | 13B | Q5_1  | vicuna11       |        Sexy |        7.0 | 🔴 17.5 | 🔴 28.9 |  🔴 16.2 |
|   85 | [Redmond Puffin 1.3 (L2) 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) | 13B | Q5_1  | vicuna         |     Vanilla |        6.9 |     21.1 | 🔵 54.4 |  🔵 31.5 |
|   86 | Airoboros GPT4 1.3 13B   | 13B | Q4_0  | vicuna11st     |     Vanilla |        6.8 |     21.0 | 🔴 25.0 |  🔴 14.4 |
|   87 | OpenLLaMA 7B             |  7B | Q5_1  | alpaca         |     Vanilla |        6.7 | 🔴 17.3 |  32.6 |  🔴 16.7 |
|   88 | [Guanaco (L2) 13B](https://huggingface.co/Gryphe/GGML-Quants/tree/main) | 13B | Q4_1  | vicuna11st     |     Vanilla |        6.5 | 🔴 17.5 | 🔴 29.9 |  🔴 16.6 |
|   89 | GPT4 x Vicuna 13B        | 13B | Q4_1  | vicuna         |     Vanilla |        6.5 |     22.0 |  43.9 |       24.2 |
|   90 | [LLaMA 2 Chat 13B](https://huggingface.co/TheBloke/Llama-2-13B-chat-GGML) | 13B | Q2_K  | vicuna11       |     Vanilla |        6.5 |     21.3 |  45.3 |       24.9 |
|   91 | LLaMA 7B                 |  7B | Q4_0  | metharme       |     Vanilla |        6.4 | 🔴 13.0 |  31.4 |  🔴 16.7 |
|   92 | Planner 7B               |  7B | Q4_0  | metharme       |     Vanilla |        6.4 | 🔴 13.0 |  31.4 |  🔴 16.7 |
|   93 | Wizard Mega 13B          | 13B | Q8_0  | pygmalion      |     Vanilla |        6.4 | 🔴 18.7 |  39.0 |       20.9 |
|   94 | OpenLLaMA 3B             |  3B | Q8_0  | alpaca         |     Vanilla |        6.3 |     19.2 |  43.0 |       22.1 |
|   95 | [Based 7B](https://huggingface.co/TheBloke/based-7B-GGML) |  7B | Q4_0  | metharme       |     Vanilla |        6.3 | 🔴 13.2 | 🔴 24.7 |  🔴 13.6 |
|   96 | WizardLM 1.0 Uncens 13B  | 13B | Q4_0  | pygmalion      |     Vanilla |        6.3 | 🔴 14.8 | 🔴 29.1 |  🔴 14.9 |
|   97 | [Luna AI Uncens (L2) 7B](https://huggingface.co/TheBloke/Luna-AI-Llama2-Uncensored-GGML) |  7B | Q5_1  | alpaca         |     Vanilla |        6.2 | 🔴 17.9 | 🔴 25.0 |  🔴 13.8 |
|   98 | Pygmalion 7B             |  7B | Q8_0  | vicuna11       |     Vanilla |        6.2 |     19.7 | 🔵 50.6 |  🔵 28.1 |
|   99 | GPT4 x Vicuna 13B        | 13B | Q5_1  | vicuna         |     Vanilla |        6.2 |     19.7 |  39.4 |       21.4 |
|  100 | [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) |  7B | Q5_1  | alpaca         |     Vanilla |        6.2 | 🔵 22.5 |  33.6 |       17.4 |
|  101 | LLaMA Deus 7B            |  7B | Q5_1  | vicuna11       |     Vanilla |        6.2 | 🔴 16.5 |  32.5 |       18.1 |
|  102 | LLaMA 13B                | 13B | Q8_0  | vicuna11st     |     Vanilla |        6.1 | 🔴 17.2 | 🔴 30.1 |  🔴 16.8 |
|  103 | WizardLM 1.0 Uncens 7B   |  7B | Q4_0  | vicuna         |     Vanilla |        6.1 |     20.6 |  34.9 |       18.9 |
|  104 | LLaMA 7B                 |  7B | Q8_0  | vicuna11       |     Vanilla |        6.0 |     19.2 |  40.7 |       21.7 |
|  105 | Manticore Guanaco 13B    | 13B | Q4_0  | metharme       |     Vanilla |        6.0 |     20.5 | 🔵 48.0 |       25.5 |
|  106 | WizardLM Uncens 7B       |  7B | Q5_1  | metharme       |     Vanilla |        6.0 |     19.1 | 🔴 23.4 |  🔴 13.2 |
|  107 | [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) |  7B | Q4_K_M | vicuna11st     |     Vanilla |        5.8 |     19.5 |  33.5 |       17.6 |
|  108 | GPT4All Snoozy 13B       | 13B | Q4_0  | pygmalion      |     Vanilla |        5.6 | 🔴 18.4 |  38.4 |       20.8 |
|  109 | [Luna AI Uncens (L2) 7B](https://huggingface.co/TheBloke/Luna-AI-Llama2-Uncensored-GGML) |  7B | Q8_0  | alpaca         |     Vanilla |        5.6 |     18.9 | 🔴 24.0 |  🔴 14.0 |
|  110 | [LLaMA 30B](https://huggingface.co/TheBloke/LLaMa-30B-GGML) | 30B | Q4_K_M | vicuna11       |     Vanilla |        5.5 | 🔴 17.6 |  38.1 |       20.2 |
|  111 | Robin v2 13B             | 13B | Q5_1  | vicuna11       |     Vanilla |        5.5 |     20.6 |  47.2 |       25.6 |
|  112 | [MindFlay 22B](https://huggingface.co/Envoid/MindFlay-22B-ggml) | 22B | Q4_0  | vicuna11st     |       Tamed |        5.4 |     21.2 | 🔵 50.4 |  🔵 26.2 |
|  113 | Metharme 7B              |  7B | Q4_1  | metharme       |       Tamed |        5.3 |     19.1 |  38.3 |       21.1 |
|  114 | WizardLM Uncens 7B       |  7B | Q8_0  | pygmalion      |       Tamed |        5.3 |     18.8 | 🔴 26.9 |  🔴 14.9 |
|  115 | Metharme 7B              |  7B | Q5_1  | vicuna11st     |       Tamed |        5.3 |     20.9 |  39.4 |       22.1 |
|  116 | [LLaMA 2 7B](https://huggingface.co/TheBloke/Llama-2-7B-GGML) |  7B | Q5_1  | vicuna11       |       Tamed |        5.3 | 🔴 17.7 |  37.9 |       20.4 |
|  117 | OpenLLaMA 700bt 7B       |  7B | Q5_1  | vicuna         |       Tamed |        5.3 |     21.5 | 🔴 26.2 |  🔴 14.4 |
|  118 | Orca Mini 13B            | 13B | Q4_0  | pygmalion      |       Tamed |        5.2 |     22.0 |  38.2 |       19.9 |
|  119 | RedPajama Instruct 7B    |  7B | Q4_0  | vicuna11       |       Tamed |        5.2 | 🔴 16.4 |  36.0 |       19.1 |
|  120 | Tulu 13B                 | 13B | Q5_1  | alpaca         |       Tamed |        5.2 | 🔴 16.6 |  39.4 |       21.4 |
|  121 | Pygmalion 7B             |  7B | Q5_1  | alpaca         |       Tamed |        5.0 |     19.6 | 🔵 49.4 |       25.7 |
|  122 | Gorilla 7B               |  7B | Q5_1  | vicuna11       |       Tamed |        5.0 | 🔴 9.8 | 🔴 18.9 |  🔴 10.4 |
|  123 | Baize V2 13B             | 13B | Q4_1  | vicuna11       |       Tamed |        5.0 |     21.1 |  34.3 |       17.9 |
|  124 | [LLaMA 2 13B](https://huggingface.co/TheBloke/Llama-2-13B-GGML) | 13B | Q2_K  | metharme       |       Tamed |        5.0 |     19.4 |  36.5 |       19.5 |
|  125 | [LLaMA 2 7B](https://huggingface.co/TheBloke/Llama-2-7B-GGML) |  7B | Q8_0  | vicuna11st     |       Tamed |        5.0 | 🔴 17.2 |  38.0 |       20.0 |
|  126 | Wizard Mega 13B          | 13B | Q4_0  | pygmalion      |       Tamed |        5.0 | 🔴 18.4 |  45.6 |       22.7 |
|  127 | [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) |  7B | Q4_0  | metharme       |       Tamed |        4.8 | 🔵 23.3 | 🔴 21.4 |  🔴 12.2 |
|  128 | LLaMA 13B                | 13B | Q4_0  | vicuna         |       Tamed |        4.8 | 🔴 15.3 | 🔴 29.7 |  🔴 16.1 |
|  129 | Wizard Mega 13B          | 13B | Q5_1  | vicuna         |       Tamed |        4.8 |     21.1 | 🔴 25.6 |  🔴 13.6 |
|  130 | BluemoonRP 13B           | 13B | Q5_0  | pygmalion      |       Tamed |        4.5 | 🔴 16.2 |  41.0 |       19.6 |
|  131 | Selfee 13B               | 13B | Q4_0  | vicuna         |       Tamed |        4.5 | 🔴 17.8 | 🔴 31.1 |  🔴 16.9 |
|  132 | Manticore 13B            | 13B | Q5_1  | metharme       |       Tamed |        4.5 | 🔴 15.4 |  36.0 |       18.4 |
|  133 | [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) |  7B | Q8_0  | vicuna11       |       Tamed |        4.5 | 🔴 18.0 | 🔴 30.4 |  🔴 15.3 |
|  134 | [Based 7B](https://huggingface.co/TheBloke/based-7B-GGML) |  7B | Q4_K_M | alpaca         |       Tamed |        4.5 |     20.9 | 🔴 17.5 |  🔴 10.2 |
|  135 | RedPajama Chat 7B        |  7B | Q4_0  | pygmalion      |       Tamed |        4.3 | 🔵 22.6 |  38.2 |       20.4 |
|  136 | Tulu 7B                  |  7B | Q8_0  | alpaca         |       Tamed |        4.3 |     20.0 |  40.6 |       21.9 |
|  137 | Baize V2 13B             | 13B | Q8_0  | pygmalion      |       Tamed |        4.2 | 🔴 17.1 |  40.6 |       20.0 |
|  138 | UltraLM 13B              | 13B | Q4_0  | pygmalion      |       Tamed |        4.2 |     21.9 |  46.6 |       24.5 |
|  139 | Camel Comb 13B           | 13B | Q4_1  | vicuna         |      Boring |        4.0 |     19.2 |  39.4 |       19.9 |
|  140 | Vicuna COT 13B           | 13B | Q4_0  | pygmalion      |      Boring |        4.0 | 🔴 18.8 |  37.4 |       20.0 |
|  141 | [LLaMA 2 7B](https://huggingface.co/TheBloke/Llama-2-7B-GGML) |  7B | Q2_K  | vicuna         |      Boring |        3.8 | 🔴 16.4 | 🔴 23.6 |  🔴 12.2 |
|  142 | Vicuna 1.3 13B           | 13B | Q4_0  | pygmalion      |      Boring |        3.8 |     21.9 | 🔵 52.5 |  🔵 28.5 |
|  143 | Robin v2 7B              |  7B | Q5_1  | vicuna         |      Boring |        3.8 |     19.5 |  40.6 |       20.9 |
|  144 | PMC LLaMA 7B             |  7B | Q4_0  | alpaca         |      Boring |        3.6 | 🔴 17.2 |  33.9 |       19.4 |
|  145 | Vicuna 1.3 13B           | 13B | Q5_1  | alpaca         |      Boring |        3.2 |     20.9 | 🔵 47.8 |  🔵 26.4 |
|  146 | Manticore 13B            | 13B | Q4_0  | vicuna11       |      Boring |        3.1 | 🔴 16.5 | 🔴 30.3 |  🔴 15.5 |
|  147 | [LLaMA 2 Chat 13B](https://huggingface.co/TheBloke/Llama-2-13B-chat-GGML) | 13B | Q5_1  | vicuna         |      Boring |        3.1 |     19.9 | 🔵 50.6 |       25.9 |
|  148 | [LLaMA 2 Chat 7B](https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML) |  7B | Q5_1  | alpaca         |      Boring |        3.1 |     21.2 | 🔵 57.1 |  🔵 30.2 |
|  149 | Hippogriff 30B           | 30B | Q4_0  | vicuna11       |      Boring |        2.9 |     19.3 |  41.6 |       21.9 |
|  150 | Metharme 13B             | 13B | Q4_1  | vicuna11st     |      Boring |        2.9 |     21.7 | 🔴 22.4 |  🔴 12.1 |
|  151 | [Dolphin Llama 13B](https://huggingface.co/TheBloke/Dolphin-Llama-13B-GGML) | 13B | Q4_K_M | vicuna         |      Boring |        2.9 | 🔵 25.4 | 🔴 25.3 |  🔴 13.9 |
|  152 | [Vicuna 1.3 German 13B](https://huggingface.co/TheBloke/Vicuna-13B-v1.3-German-GGML) | 13B | Q5_K_M | alpaca         |      Boring |        2.8 | 🔵 23.0 | 🔵 54.9 |  🔵 29.6 |
|  153 | BigTrans 13B             | 13B | Q4_0  | vicuna11       |      Boring |        2.8 |     21.9 | 🔴 19.9 |  🔴 10.9 |
|  154 | Metharme 13B             | 13B | Q8_0  | vicuna11       |      Boring |        2.7 | 🔵 25.2 | 🔴 18.2 |  🔴 10.6 |
|  155 | [Dolphin Llama 13B](https://huggingface.co/TheBloke/Dolphin-Llama-13B-GGML) | 13B | Q5_K_M | vicuna         |    Censored |        2.6 | 🔵 23.9 | 🔴 21.3 |  🔴 12.4 |
|  156 | [LLaMA 2 Chat 7B](https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML) |  7B | Q2_K  | alpaca         |    Censored |        2.6 | 🔵 25.6 | 🔵 53.8 |  🔵 30.7 |
|  157 | [LLaMA 2 Chat CodeCPop 7B](https://huggingface.co/TheBloke/llama2-7b-chat-codeCherryPop-qLoRA-GGML) |  7B | Q5_K_M | alpaca         |    Censored |        2.6 | 🔵 26.3 | 🔵 51.1 |  🔵 26.8 |
|  158 | [Vicuna 1.3 German 13B](https://huggingface.co/TheBloke/Vicuna-13B-v1.3-German-GGML) | 13B | Q4_K_M | pygmalion      |    Censored |        2.5 | 🔵 23.4 | 🔵 59.5 |  🔵 31.9 |
|  159 | Metharme 13B             | 13B | Q5_1  | vicuna         |    Censored |        2.5 | 🔵 23.6 | 🔴 19.8 |  🔴 10.7 |
|  160 | Pygmalion 13B            | 13B | Q4_0  | alpaca         |    Censored |        2.3 | 🔵 23.0 |  33.1 |       18.7 |
|  161 | Vicuna 1.3.0 13B         | 13B | Q4_0  | alpaca         |    Censored |        2.0 | 🔵 25.2 | 🔵 53.7 |  🔵 29.5 |
|  162 | Pygmalion 13B            | 13B | Q8_0  | vicuna         |    Censored |        1.5 |     20.6 | 🔴 26.1 |  🔴 14.2 |
|  163 | Samantha 13B             | 13B | Q4_0  | metharme       |    Censored |        0.6 | 🔵 42.5 | 🔵 50.7 |  🔵 30.4 |
|  164 | Samantha 1.1 13B         | 13B | Q4_0  | metharme       |    Censored |        0.4 | 🔵 43.0 | 🔵 50.8 |  🔵 31.2 |
|  165 | Samantha 7B              |  7B | Q5_1  | vicuna11st     |    Censored |        0.1 | 🔵 43.6 | 🔵 49.4 |  🔵 28.5 |

### Column Description

- `Model | B | Qnt` lists all the models and quantizations I tested.
- `Prompt Format` contains which was the "best" prompt format that gave the most lewd answers. Please keep in mind, that multiple prompts were tested, and only the prompt with the best results regarding the `ERP Score` are printed here. Some prompt/model combinations might return trailing garbage output, especially on models smaller than 13B.
- `Judgement` is a rough categorization of the NSFW capabilities of the model. It's more of a humorous character.
- `ERP Score` is the primary scale, it's the average number of lewd words in a response.
- `Word IQ` is some bad attempt to rate the sophistication of the overall text output. A low value means, that there were lots of short words in the output. A high value means there were more long words in the output.
- `Words` are the average number of words in the response.
- `Long Words` are the average number of long words (longer than 5 chars) in the response.


## 7B ERP Ranking

**This table will not be updated anymore, last update was 2023-07-25. See the new ALC-IQ Ranking!**

| Rank | Model                    |   B | Qnt   | Prompt Format  |   Judgement |  ERP Score |  Word IQ | Words | Long Words |
|------:|--------------------------|-----|-------|----------------|-------------|------------:|----------:|-------:|------------:|
|    1 | Airoboros GPT4 7B        |  7B | Q4_0  | alpaca         |       Horny |  🌟 10.9 | 🔵 24.9 | 🔵 42.0 |  🔵 24.6 |
|    2 | INCITE Erebus v2 7B      |  7B | Q16_0 | metharme       |       Horny |  🌟 10.8 | 🔵 24.4 | 🔵 43.6 |  🔵 25.9 |
|    3 | [Airoboros GPT4 1.4 SuperHOT 7B](https://huggingface.co/TheBloke/Airoboros-7B-GPT4-1-4-SuperHOT-8K-GGML) |  7B | Q5_K_M | alpaca         |        Lewd |   🌟 9.7 | 🔵 25.1 | 🔵 42.0 |  🔵 25.4 |
|    4 | [Airoboros GPT4 1.4 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.4-GGML) |  7B | Q5_K_M | alpaca         |        Lewd |    ⭐ 9.1 |     21.2 |  29.0 |       18.1 |
|    5 | Airoboros GPT4 7B        |  7B | Q4_K_M | alpaca         |        Lewd |    ⭐ 8.9 |     22.5 | 🔴 27.4 |       16.8 |
|    6 | RedPajama 0.1 Instruct 7B |  7B | Q5_1  | vicuna11       |        Lewd |    ⭐ 8.9 |     21.5 | 🔵 50.6 |  🔵 28.3 |
|    7 | Vicuna 1.3 7B            |  7B | Q8_0  | metharme       |        Lewd |    ⭐ 8.9 |     20.1 | 🔵 46.5 |  🔵 23.9 |
|    8 | [Airoboros GPT4 1.3 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.3-GGML) |  7B | Q5_1  | metharme       |        Lewd |    ⭐ 8.6 |     19.7 | 🔴 26.3 |  🔴 15.7 |
|    9 | [Airoboros GPT4 1.3 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.3-GGML) |  7B | Q4_0  | vicuna11       |        Lewd |    ⭐ 8.5 | 🔵 23.6 |  30.0 |       17.9 |
|   10 | [Airoboros GPT4 1.4.1 (L2) 7B](https://huggingface.co/TheBloke/airoboros-l2-7b-gpt4-1.4.1-GGML) |  7B | Q4_K_M | alpaca         |        Lewd |    ⭐ 8.4 | 🔴 18.8 |  29.9 |       17.5 |
|   11 | OpenLLaMA Open Instr 7B  |  7B | Q8_0  | alpaca         |        Lewd |    ⭐ 8.4 | 🔵 22.9 |  30.6 |       17.4 |
|   12 | Vicuna 1.3 7B            |  7B | Q4_0  | metharme       |        Lewd |    ⭐ 8.4 |     21.9 | 🔵 50.5 |  🔵 26.5 |
|   13 | [Guanaco (L2) 7B](https://huggingface.co/TheBloke/llama-2-7B-Guanaco-QLoRA-GGML) |  7B | Q4_K_M | vicuna11st     |        Sexy |    ⭐ 8.2 |     19.5 |  39.6 |  🔵 22.3 |
|   14 | Wizard Vicuna Uncens 7B  |  7B | Q4_0  | metharme       |        Sexy |    ⭐ 8.1 | 🔵 22.6 |  31.1 |       18.0 |
|   15 | [Airoboros GPT4 1.4 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.4-GGML) |  7B | Q4_K_M | alpaca         |        Sexy |        8.1 |     22.1 |  30.2 |       17.6 |
|   16 | [Guanaco (L2) 7B](https://huggingface.co/TheBloke/llama-2-7B-Guanaco-QLoRA-GGML) |  7B | Q4_0  | vicuna         |        Sexy |        7.9 |     18.9 |  36.6 |       21.2 |
|   17 | [Guanaco (L2) 7B](https://huggingface.co/TheBloke/llama-2-7B-Guanaco-QLoRA-GGML) |  7B | Q5_1  | vicuna         |        Sexy |        7.8 |     20.3 |  35.0 |       20.8 |
|   18 | [Airoboros 7B](https://huggingface.co/TheBloke/airoboros-7b-gpt4-GGML) |  7B | Q4_0  | alpaca         |        Sexy |        7.8 | 🔵 28.5 |  36.4 |       20.4 |
|   19 | [Airoboros GPT4 1.2 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.2-GGML) |  7B | Q5_1  | vicuna11st     |        Sexy |        7.7 | 🔵 23.5 | 🔴 26.9 |       17.1 |
|   20 | [Airoboros GPT4 1.2 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.2-GGML) |  7B | Q4_K_M | metharme       |        Sexy |        7.6 | 🔵 28.6 | 🔴 27.4 |  🔴 16.7 |
|   21 | WizardLM 1.0 Uncens 7B   |  7B | Q8_0  | pygmalion      |        Sexy |        7.3 | 🔴 18.5 |  27.8 |  🔴 15.8 |
|   22 | [Airoboros GPT4 1.3 7B](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.3-GGML) |  7B | Q4_K_M | alpaca         |        Sexy |        7.2 |     21.6 | 🔴 25.9 |  🔴 14.8 |
|   23 | [Airoboros GPT4 1.4.1 (L2) 7B](https://huggingface.co/TheBloke/airoboros-l2-7b-gpt4-1.4.1-GGML) |  7B | Q5_K_M | vicuna         |        Sexy |        7.0 |     19.4 | 🔴 23.0 |  🔴 13.5 |
|   24 | OpenLLaMA 7B             |  7B | Q5_1  | alpaca         |     Vanilla |        6.7 | 🔴 17.3 |  32.6 |  🔴 16.7 |
|   25 | LLaMA 7B                 |  7B | Q4_0  | metharme       |     Vanilla |        6.4 | 🔴 13.0 |  31.4 |  🔴 16.7 |
|   26 | Planner 7B               |  7B | Q4_0  | metharme       |     Vanilla |        6.4 | 🔴 13.0 |  31.4 |  🔴 16.7 |
|   27 | [Based 7B](https://huggingface.co/TheBloke/based-7B-GGML) |  7B | Q4_0  | metharme       |     Vanilla |        6.3 | 🔴 13.2 | 🔴 24.7 |  🔴 13.6 |
|   28 | [Luna AI Uncens (L2) 7B](https://huggingface.co/TheBloke/Luna-AI-Llama2-Uncensored-GGML) |  7B | Q5_1  | alpaca         |     Vanilla |        6.2 | 🔴 17.9 | 🔴 25.0 |  🔴 13.8 |
|   29 | Pygmalion 7B             |  7B | Q8_0  | vicuna11       |     Vanilla |        6.2 |     19.7 | 🔵 50.6 |  🔵 28.1 |
|   30 | [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) |  7B | Q5_1  | alpaca         |     Vanilla |        6.2 | 🔵 22.5 |  33.6 |       17.4 |
|   31 | LLaMA Deus 7B            |  7B | Q5_1  | vicuna11       |     Vanilla |        6.2 | 🔴 16.5 |  32.5 |       18.1 |
|   32 | WizardLM 1.0 Uncens 7B   |  7B | Q4_0  | vicuna         |     Vanilla |        6.1 |     20.6 |  34.9 |       18.9 |
|   33 | LLaMA 7B                 |  7B | Q8_0  | vicuna11       |     Vanilla |        6.0 |     19.2 | 🔵 40.7 |       21.7 |
|   34 | WizardLM Uncens 7B       |  7B | Q5_1  | metharme       |     Vanilla |        6.0 |     19.1 | 🔴 23.4 |  🔴 13.2 |
|   35 | [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) |  7B | Q4_K_M | vicuna11st     |     Vanilla |        5.8 |     19.5 |  33.5 |       17.6 |
|   36 | [Luna AI Uncens (L2) 7B](https://huggingface.co/TheBloke/Luna-AI-Llama2-Uncensored-GGML) |  7B | Q8_0  | alpaca         |     Vanilla |        5.6 |     18.9 | 🔴 24.0 |  🔴 14.0 |
|   37 | Metharme 7B              |  7B | Q4_1  | metharme       |       Tamed |        5.3 |     19.1 |  38.3 |       21.1 |
|   38 | WizardLM Uncens 7B       |  7B | Q8_0  | pygmalion      |       Tamed |        5.3 | 🔴 18.8 | 🔴 26.9 |  🔴 14.9 |
|   39 | Metharme 7B              |  7B | Q5_1  | vicuna11st     |       Tamed |        5.3 |     20.9 |  39.4 |  🔵 22.1 |
|   40 | [LLaMA 2 7B](https://huggingface.co/TheBloke/Llama-2-7B-GGML) |  7B | Q5_1  | vicuna11       |       Tamed |        5.3 | 🔴 17.7 |  37.9 |       20.4 |
|   41 | OpenLLaMA 700bt 7B       |  7B | Q5_1  | vicuna         |       Tamed |        5.3 |     21.5 | 🔴 26.2 |  🔴 14.4 |
|   42 | RedPajama Instruct 7B    |  7B | Q4_0  | vicuna11       |       Tamed |        5.2 | 🔴 16.4 |  36.0 |       19.1 |
|   43 | Pygmalion 7B             |  7B | Q5_1  | alpaca         |       Tamed |        5.0 |     19.6 | 🔵 49.4 |  🔵 25.7 |
|   44 | Gorilla 7B               |  7B | Q5_1  | vicuna11       |       Tamed |        5.0 | 🔴 9.8 | 🔴 18.9 |  🔴 10.4 |
|   45 | [LLaMA 2 7B](https://huggingface.co/TheBloke/Llama-2-7B-GGML) |  7B | Q8_0  | vicuna11st     |       Tamed |        5.0 | 🔴 17.2 |  38.0 |       20.0 |
|   46 | [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) |  7B | Q4_0  | metharme       |       Tamed |        4.8 | 🔵 23.3 | 🔴 21.4 |  🔴 12.2 |
|   47 | [Guanaco 7B](https://huggingface.co/TheBloke/guanaco-7B-GGML) |  7B | Q8_0  | vicuna11       |       Tamed |        4.5 | 🔴 18.0 |  30.4 |  🔴 15.3 |
|   48 | [Based 7B](https://huggingface.co/TheBloke/based-7B-GGML) |  7B | Q4_K_M | alpaca         |       Tamed |        4.5 |     20.9 | 🔴 17.5 |  🔴 10.2 |
|   49 | RedPajama Chat 7B        |  7B | Q4_0  | pygmalion      |       Tamed |        4.3 | 🔵 22.6 |  38.2 |       20.4 |
|   50 | Tulu 7B                  |  7B | Q8_0  | alpaca         |       Tamed |        4.3 |     20.0 | 🔵 40.6 |  🔵 21.9 |
|   51 | [LLaMA 2 7B](https://huggingface.co/TheBloke/Llama-2-7B-GGML) |  7B | Q2_K  | vicuna         |      Boring |        3.8 | 🔴 16.4 | 🔴 23.6 |  🔴 12.2 |
|   52 | Robin v2 7B              |  7B | Q5_1  | vicuna         |      Boring |        3.8 |     19.5 | 🔵 40.6 |       20.9 |
|   53 | PMC LLaMA 7B             |  7B | Q4_0  | alpaca         |      Boring |        3.6 | 🔴 17.2 |  33.9 |       19.4 |
|   54 | [LLaMA 2 Chat 7B](https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML) |  7B | Q5_1  | alpaca         |      Boring |        3.1 |     21.2 | 🔵 57.1 |  🔵 30.2 |
|   55 | [LLaMA 2 Chat 7B](https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML) |  7B | Q2_K  | alpaca         |    Censored |        2.6 | 🔵 25.6 | 🔵 53.8 |  🔵 30.7 |
|   56 | [LLaMA 2 Chat CodeCPop 7B](https://huggingface.co/TheBloke/llama2-7b-chat-codeCherryPop-qLoRA-GGML) |  7B | Q5_K_M | alpaca         |    Censored |        2.6 | 🔵 26.3 | 🔵 51.1 |  🔵 26.8 |
|   57 | Samantha 7B              |  7B | Q5_1  | vicuna11st     |    Censored |        0.1 | 🔵 43.6 | 🔵 49.4 |  🔵 28.5 |

## 13B ERP Ranking

**This table will not be updated anymore, last update was 2023-07-25. See the new ALC-IQ Ranking!**

| Rank | Model                    |   B | Qnt   | Prompt Format  |   Judgement |  ERP Score |  Word IQ | Words | Long Words |
|------:|--------------------------|-----|-------|----------------|-------------|------------:|----------:|-------:|------------:|
|    1 | [MythoBoros 13B](https://huggingface.co/Gryphe/Various-GGML-Quants) | 13B | Q5_0  | vicuna11       | Nymphomaniac |  🌟 15.9 |     21.0 | 🔵 59.5 |  🔵 34.6 |
|    2 | Chronos Hermes 13B       | 13B | Q5_1  | vicuna11       | Nymphomaniac |  🌟 14.7 | 🔵 23.7 | 🔵 57.9 |  🔵 34.0 |
|    3 | [Chronos Hermes SuperHOT 13B](https://huggingface.co/TheBloke/Chronos-Hermes-13B-SuperHOT-8K-GGML) | 13B | Q5_1  | alpaca         |     Pervert |  🌟 14.2 | 🔵 22.9 | 🔵 58.8 |  🔵 35.8 |
|    4 | [Frankensteins Monster 13B](https://huggingface.co/Blackroot/FrankensteinsMonster-13B-GGML) | 13B | Q4_K_S | metharme       |     Pervert |   ⭐ 13.6 |     21.2 | 🔵 58.6 |  🔵 34.0 |
|    5 | [Oniichat Hermes LimaRP (L2) 13B](https://huggingface.co/Gryphe/Various-GGML-Quants) | 13B | Q4_K_M | vicuna         |     Pervert |   ⭐ 13.2 |     19.5 | 🔵 52.1 |  🔵 31.7 |
|    6 | [AlpacaCielo (L2) 13B](https://huggingface.co/TheBloke/AlpacaCielo-13B-GGML) | 13B | Q5_K_M | alpaca         |     Pervert |   ⭐ 13.1 | 🔵 25.5 | 🔵 52.3 |  🔵 31.9 |
|    7 | [MythoLogic 13B](https://huggingface.co/TheBloke/MythoLogic-13B-GGML) | 13B | Q5_1  | vicuna11       |     Pervert |   ⭐ 12.9 |     20.6 | 🔵 56.5 |  🔵 32.4 |
|    8 | Wizard Vic UC SuperHOT 13B | 13B | Q2_K  | alpaca         |     Pervert |   ⭐ 12.8 |     20.5 | 🔵 55.8 |  🔵 31.3 |
|    9 | Chronos WizLM UC SCOT ST 13B | 13B | Q4_0  | alpaca         |       Horny |   ⭐ 12.2 | 🔵 27.3 | 🔵 52.8 |  🔵 30.8 |
|   10 | Chronos 13B              | 13B | Q4_0  | alpaca         |       Horny |   ⭐ 11.7 | 🔵 28.2 | 🔵 53.5 |  🔵 31.1 |
|   11 | [MythoBoros 13B](https://huggingface.co/TheBloke/MythoBoros-13B-GGML) | 13B | Q5_K_M | vicuna11st     |       Horny |   ⭐ 11.6 |     22.0 | 🔵 53.6 |  🔵 31.2 |
|   12 | [AlpacaCielo (L2) 13B](https://huggingface.co/TheBloke/AlpacaCielo-13B-GGML) | 13B | Q4_K_M | vicuna         |       Horny |   ⭐ 11.6 | 🔵 23.3 |  43.8 |  🔵 26.7 |
|   13 | GPT4 x Alpaca 13B        | 13B | Q4_0  | vicuna11st     |       Horny |   ⭐ 11.2 |     21.5 |  37.9 |       23.3 |
|   14 | LLaMA SCOT 13B           | 13B | Q5_1  | vicuna         |       Horny |   ⭐ 11.2 | 🔴 18.1 |  41.0 |       23.4 |
|   15 | Pythia Green Devil 13B   | 13B | Q16_0 | vicuna         |       Horny |   ⭐ 11.1 |     20.5 |  41.1 |       24.2 |
|   16 | Guanaco 13B              | 13B | Q5_1  | vicuna11st     |       Horny |   ⭐ 10.9 |     18.7 |  46.6 |       24.9 |
|   17 | [MythoLogic 13B](https://huggingface.co/TheBloke/MythoLogic-13B-GGML) | 13B | Q2_K  | vicuna11st     |       Horny |   ⭐ 10.8 |     20.1 | 🔵 59.8 |  🔵 33.5 |
|   18 | [MythoBoros 13B](https://huggingface.co/TheBloke/MythoBoros-13B-GGML) | 13B | Q4_K_M | vicuna11st     |       Horny |   ⭐ 10.7 | 🔵 22.5 | 🔵 52.8 |  🔵 29.9 |
|   19 | [Nous Hermes Writer (L2) 13B](https://huggingface.co/Blackroot/Nous-Hermes-Llama2-13b-Storywriter-GGML) | 13B | Q4_K_S | metharme       |       Horny |   ⭐ 10.5 |     18.8 |  42.0 |       24.2 |
|   20 | [Guanaco (L2) 13B](https://huggingface.co/TheBloke/llama-2-13B-Guanaco-QLoRA-GGML) | 13B | Q2_K  | alpaca         |        Lewd |   ⭐ 10.1 |     21.7 | 🔵 49.5 |  🔵 28.6 |
|   21 | [Guanaco (L2) 13B](https://huggingface.co/TheBloke/llama-2-13B-Guanaco-QLoRA-GGML) | 13B | Q8_0  | vicuna11       |        Lewd |   ⭐ 10.1 |     19.8 |  39.4 |       23.6 |
|   22 | Pythia Dedup Gr. Devil 13B | 13B | Q16_0 | alpaca         |        Lewd |       10.0 | 🔵 24.7 |  35.5 |       21.6 |
|   23 | Wizard Vic UC SuperHOT 13B | 13B | Q5_K_S | vicuna11st     |        Lewd |       10.0 |     19.4 |  36.5 |       21.7 |
|   24 | Nous Hermes 13B          | 13B | Q4_0  | vicuna         |        Lewd |        9.8 | 🔴 18.1 |  38.4 |       23.0 |
|   25 | [Guanaco (L2) 13B](https://huggingface.co/TheBloke/llama-2-13B-Guanaco-QLoRA-GGML) | 13B | Q4_0  | vicuna11       |        Lewd |        9.6 | 🔴 18.2 |  40.8 |       22.9 |
|   26 | Wizard Vicuna Uncens 13B | 13B | Q8_0  | metharme       |        Lewd |        9.1 | 🔴 17.3 |  36.0 |       19.6 |
|   27 | [Nous Hermes (L2) S2559 13B](https://huggingface.co/NousResearch/Nous-Hermes-Llama2-13b-GGML) | 13B | Q4_K_M | alpaca         |        Lewd |        8.8 |     21.2 |  47.8 |  🔵 29.2 |
|   28 | Minotaur 13B             | 13B | Q5_1  | vicuna         |        Lewd |        8.7 | 🔴 17.6 |  36.1 |       19.7 |
|   29 | Alpacino SCOT 13B        | 13B | Q4_0  | vicuna         |        Lewd |        8.6 |     20.1 |  35.1 |       19.1 |
|   30 | [Ouroboros 13B](https://huggingface.co/TheBloke/13B-Ouroboros-GGML) | 13B | Q5_1  | vicuna11st     |        Lewd |        8.6 |     19.3 |  32.7 |       18.7 |
|   31 | [Ouroboros 13B](https://huggingface.co/TheBloke/13B-Ouroboros-GGML) | 13B | Q2_K  | vicuna11       |        Lewd |        8.5 | 🔴 18.7 |  39.2 |       22.1 |
|   32 | [Redmond Puffin (L2) 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) | 13B | Q5_1  | alpaca         |        Lewd |        8.3 |     20.7 |  38.2 |       21.9 |
|   33 | Chimera 13B              | 13B | Q4_0  | vicuna         |        Sexy |        8.2 | 🔴 15.9 | 🔴 30.4 |  🔴 17.8 |
|   34 | [Redmond Puffin (L2) 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) | 13B | Q4_0  | alpaca         |        Sexy |        8.1 |     20.2 |  38.7 |       21.8 |
|   35 | HyperMantis 13B          | 13B | Q5_1  | vicuna         |        Sexy |        8.0 | 🔴 15.6 | 🔴 30.4 |  🔴 16.8 |
|   36 | [BlueMethod 13B](https://huggingface.co/TheBloke/13B-BlueMethod-GGML) | 13B | Q2_K  | vicuna11       |        Sexy |        8.0 |     19.2 |  32.3 |  🔴 17.6 |
|   37 | Wizard Vicuna Uncens 13B | 13B | Q5_1  | pygmalion      |        Sexy |        7.8 |     19.6 | 🔴 31.2 |       17.9 |
|   38 | Airoboros GPT4 1.2 13B   | 13B | Q5_1  | vicuna11       |        Sexy |        7.8 | 🔵 22.8 |  32.5 |       19.9 |
|   39 | Camel RP 13B             | 13B | Q5_1  | vicuna11       |        Sexy |        7.8 |     18.8 |  43.3 |       23.2 |
|   40 | Airoboros GPT4 1.4 13B   | 13B | Q4_0  | vicuna11st     |        Sexy |        7.6 | 🔵 23.6 | 🔴 31.8 |       19.2 |
|   41 | Minotaur Fixed 13B       | 13B | Q5_1  | vicuna11st     |        Sexy |        7.3 |     19.4 | 🔴 31.6 |  🔴 17.1 |
|   42 | [Ouroboros 13B](https://huggingface.co/TheBloke/13B-Ouroboros-GGML) | 13B | Q4_0  | vicuna         |        Sexy |        7.3 | 🔵 22.9 | 🔴 26.2 |  🔴 15.7 |
|   43 | [BlueMethod 13B](https://huggingface.co/TheBloke/13B-BlueMethod-GGML) | 13B | Q5_1  | metharme       |        Sexy |        7.2 |     19.4 | 🔴 32.0 |  🔴 17.0 |
|   44 | [Redmond Puffin 1.3 (L2) 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) | 13B | Q4_0  | alpaca         |        Sexy |        7.2 | 🔵 22.5 |  42.9 |       24.6 |
|   45 | [BlueMethod 13B](https://huggingface.co/TheBloke/13B-BlueMethod-GGML) | 13B | Q4_0  | pygmalion      |        Sexy |        7.0 | 🔴 17.4 |  38.6 |       20.9 |
|   46 | Airoboros 1.1 13B        | 13B | Q4_0  | alpaca         |        Sexy |        7.0 | 🔵 22.8 |  36.2 |       21.8 |
|   47 | Airoboros GPT4 1.3 13B   | 13B | Q5_1  | vicuna         |        Sexy |        7.0 |     22.3 | 🔴 25.9 |  🔴 15.3 |
|   48 | [LLaMA 2 13B](https://huggingface.co/TheBloke/Llama-2-13B-GGML) | 13B | Q5_1  | vicuna11st     |        Sexy |        7.0 | 🔴 18.5 |  39.8 |       21.8 |
|   49 | [MedAlpaca 13B](https://huggingface.co/TheBloke/medalpaca-13B-GGML) | 13B | Q5_1  | vicuna11       |        Sexy |        7.0 | 🔴 17.5 | 🔴 28.9 |  🔴 16.2 |
|   50 | [Redmond Puffin 1.3 (L2) 13B](https://huggingface.co/TheBloke/Redmond-Puffin-13B-GGML) | 13B | Q5_1  | vicuna         |     Vanilla |        6.9 |     21.1 | 🔵 54.4 |  🔵 31.5 |
|   51 | Airoboros GPT4 1.3 13B   | 13B | Q4_0  | vicuna11st     |     Vanilla |        6.8 |     21.0 | 🔴 25.0 |  🔴 14.4 |
|   52 | [Guanaco (L2) 13B](https://huggingface.co/Gryphe/GGML-Quants/tree/main) | 13B | Q4_1  | vicuna11st     |     Vanilla |        6.5 | 🔴 17.5 | 🔴 29.9 |  🔴 16.6 |
|   53 | GPT4 x Vicuna 13B        | 13B | Q4_1  | vicuna         |     Vanilla |        6.5 |     22.0 |  43.9 |       24.2 |
|   54 | [LLaMA 2 Chat 13B](https://huggingface.co/TheBloke/Llama-2-13B-chat-GGML) | 13B | Q2_K  | vicuna11       |     Vanilla |        6.5 |     21.3 |  45.3 |       24.9 |
|   55 | Wizard Mega 13B          | 13B | Q8_0  | pygmalion      |     Vanilla |        6.4 | 🔴 18.7 |  39.0 |       20.9 |
|   56 | WizardLM 1.0 Uncens 13B  | 13B | Q4_0  | pygmalion      |     Vanilla |        6.3 | 🔴 14.8 | 🔴 29.1 |  🔴 14.9 |
|   57 | GPT4 x Vicuna 13B        | 13B | Q5_1  | vicuna         |     Vanilla |        6.2 |     19.7 |  39.4 |       21.4 |
|   58 | LLaMA 13B                | 13B | Q8_0  | vicuna11st     |     Vanilla |        6.1 | 🔴 17.2 | 🔴 30.1 |  🔴 16.8 |
|   59 | Manticore Guanaco 13B    | 13B | Q4_0  | metharme       |     Vanilla |        6.0 |     20.5 | 🔵 48.0 |       25.5 |
|   60 | GPT4All Snoozy 13B       | 13B | Q4_0  | pygmalion      |     Vanilla |        5.6 | 🔴 18.4 |  38.4 |       20.8 |
|   61 | Robin v2 13B             | 13B | Q5_1  | vicuna11       |     Vanilla |        5.5 |     20.6 |  47.2 |       25.6 |
|   62 | Orca Mini 13B            | 13B | Q4_0  | pygmalion      |       Tamed |        5.2 |     22.0 |  38.2 |       19.9 |
|   63 | Tulu 13B                 | 13B | Q5_1  | alpaca         |       Tamed |        5.2 | 🔴 16.6 |  39.4 |       21.4 |
|   64 | Baize V2 13B             | 13B | Q4_1  | vicuna11       |       Tamed |        5.0 |     21.1 |  34.3 |  🔴 17.9 |
|   65 | [LLaMA 2 13B](https://huggingface.co/TheBloke/Llama-2-13B-GGML) | 13B | Q2_K  | metharme       |       Tamed |        5.0 |     19.4 |  36.5 |       19.5 |
|   66 | Wizard Mega 13B          | 13B | Q4_0  | pygmalion      |       Tamed |        5.0 | 🔴 18.4 |  45.6 |       22.7 |
|   67 | LLaMA 13B                | 13B | Q4_0  | vicuna         |       Tamed |        4.8 | 🔴 15.3 | 🔴 29.7 |  🔴 16.1 |
|   68 | Wizard Mega 13B          | 13B | Q5_1  | vicuna         |       Tamed |        4.8 |     21.1 | 🔴 25.6 |  🔴 13.6 |
|   69 | BluemoonRP 13B           | 13B | Q5_0  | pygmalion      |       Tamed |        4.5 | 🔴 16.2 |  41.0 |       19.6 |
|   70 | Selfee 13B               | 13B | Q4_0  | vicuna         |       Tamed |        4.5 | 🔴 17.8 | 🔴 31.1 |  🔴 16.9 |
|   71 | Manticore 13B            | 13B | Q5_1  | metharme       |       Tamed |        4.5 | 🔴 15.4 |  36.0 |       18.4 |
|   72 | Baize V2 13B             | 13B | Q8_0  | pygmalion      |       Tamed |        4.2 | 🔴 17.1 |  40.6 |       20.0 |
|   73 | UltraLM 13B              | 13B | Q4_0  | pygmalion      |       Tamed |        4.2 |     21.9 |  46.6 |       24.5 |
|   74 | Camel Comb 13B           | 13B | Q4_1  | vicuna         |      Boring |        4.0 |     19.2 |  39.4 |       19.9 |
|   75 | Vicuna COT 13B           | 13B | Q4_0  | pygmalion      |      Boring |        4.0 |     18.8 |  37.4 |       20.0 |
|   76 | Vicuna 1.3 13B           | 13B | Q4_0  | pygmalion      |      Boring |        3.8 |     21.9 | 🔵 52.5 |  🔵 28.5 |
|   77 | Vicuna 1.3 13B           | 13B | Q5_1  | alpaca         |      Boring |        3.2 |     20.9 |  47.8 |       26.4 |
|   78 | Manticore 13B            | 13B | Q4_0  | vicuna11       |      Boring |        3.1 | 🔴 16.5 | 🔴 30.3 |  🔴 15.5 |
|   79 | [LLaMA 2 Chat 13B](https://huggingface.co/TheBloke/Llama-2-13B-chat-GGML) | 13B | Q5_1  | vicuna         |      Boring |        3.1 |     19.9 | 🔵 50.6 |       25.9 |
|   80 | Metharme 13B             | 13B | Q4_1  | vicuna11st     |      Boring |        2.9 |     21.7 | 🔴 22.4 |  🔴 12.1 |
|   81 | [Dolphin Llama 13B](https://huggingface.co/TheBloke/Dolphin-Llama-13B-GGML) | 13B | Q4_K_M | vicuna         |      Boring |        2.9 | 🔵 25.4 | 🔴 25.3 |  🔴 13.9 |
|   82 | [Vicuna 1.3 German 13B](https://huggingface.co/TheBloke/Vicuna-13B-v1.3-German-GGML) | 13B | Q5_K_M | alpaca         |      Boring |        2.8 | 🔵 23.0 | 🔵 54.9 |  🔵 29.6 |
|   83 | BigTrans 13B             | 13B | Q4_0  | vicuna11       |      Boring |        2.8 |     21.9 | 🔴 19.9 |  🔴 10.9 |
|   84 | Metharme 13B             | 13B | Q8_0  | vicuna11       |      Boring |        2.7 | 🔵 25.2 | 🔴 18.2 |  🔴 10.6 |
|   85 | [Dolphin Llama 13B](https://huggingface.co/TheBloke/Dolphin-Llama-13B-GGML) | 13B | Q5_K_M | vicuna         |    Censored |        2.6 | 🔵 23.9 | 🔴 21.3 |  🔴 12.4 |
|   86 | [Vicuna 1.3 German 13B](https://huggingface.co/TheBloke/Vicuna-13B-v1.3-German-GGML) | 13B | Q4_K_M | pygmalion      |    Censored |        2.5 | 🔵 23.4 | 🔵 59.5 |  🔵 31.9 |
|   87 | Metharme 13B             | 13B | Q5_1  | vicuna         |    Censored |        2.5 | 🔵 23.6 | 🔴 19.8 |  🔴 10.7 |
|   88 | Pygmalion 13B            | 13B | Q4_0  | alpaca         |    Censored |        2.3 | 🔵 23.0 |  33.1 |       18.7 |
|   89 | Vicuna 1.3.0 13B         | 13B | Q4_0  | alpaca         |    Censored |        2.0 | 🔵 25.2 | 🔵 53.7 |  🔵 29.5 |
|   90 | Pygmalion 13B            | 13B | Q8_0  | vicuna         |    Censored |        1.5 |     20.6 | 🔴 26.1 |  🔴 14.2 |
|   91 | Samantha 13B             | 13B | Q4_0  | metharme       |    Censored |        0.6 | 🔵 42.5 | 🔵 50.7 |  🔵 30.4 |
|   92 | Samantha 1.1 13B         | 13B | Q4_0  | metharme       |    Censored |        0.4 | 🔵 43.0 | 🔵 50.8 |  🔵 31.2 |

## 20B+ ERP Ranking

**This table will not be updated anymore, last update was 2023-07-25. See the new ALC-IQ Ranking!**

| Rank | Model                    |   B | Qnt   | Prompt Format  |   Judgement |  ERP Score |  Word IQ | Words | Long Words |
|------:|--------------------------|-----|-------|----------------|-------------|------------:|----------:|-------:|------------:|
|    1 | Lazarus 30B              | 30B | Q4_0  | alpaca         | Nymphomaniac |  🌟 16.1 | 🔵 24.2 | 🔵 59.6 |  🔵 35.3 |
|    2 | Gplatty SuperHOT 8k 30B  | 30B | Q2_K  | vicuna11st     |     Pervert |  🌟 13.2 | 🔵 25.4 | 🔵 59.2 |  🔵 36.3 |
|    3 | [Airochronos 33B](https://huggingface.co/TheBloke/airochronos-33B-GGML) | 33B | Q4_0  | vicuna         |       Horny |  🌟 12.6 |     21.1 |  52.0 |       29.9 |
|    4 | [Enterredaas 33B](https://huggingface.co/Aeala/Enterredaas-33b-GGML) | 33B | Q4_1  | vicuna11       |       Horny |       12.5 | 🔴 18.6 | 🔴 47.6 |  🔴 26.2 |
|    5 | WizardLM UC SCOT ST 30B  | 30B | Q4_0  | alpaca         |       Horny |       12.4 |     22.9 | 🔵 60.0 |  🔵 34.9 |
|    6 | Wizard Vicuna Uncens 30B | 30B | Q4_0  | vicuna11st     |       Horny |       12.3 | 🔴 20.4 |  50.0 |       28.9 |
|    7 | [Airochronos 33B](https://huggingface.co/TheBloke/airochronos-33B-GGML) | 33B | Q2_K  | vicuna11st     |       Horny |       11.7 | 🔴 18.6 | 🔴 47.0 |       27.3 |
|    8 | [Airoboros GPT4 1.4 33B](https://huggingface.co/TheBloke/airoboros-33B-gpt4-1.4-GGML) | 33B | Q4_K_M | vicuna         |        Lewd |       10.2 |     22.2 | 🔵 54.6 |       30.6 |
|    9 | [LLaMA SCOT 30B](https://huggingface.co/TheBloke/llama-30b-supercot-GGML) | 30B | Q4_0  | alpaca         |        Lewd |        9.7 | 🔵 22.9 |  51.7 |       29.4 |
|   10 | [LLaMA 2 Frankenstein 22B](https://huggingface.co/IHaveNoClueAndIMustPost/Llama-2-22B-GGML) | 22B | Q4_K_M | metharme       |        Lewd |        9.2 |     20.7 | 🔴 42.2 |  🔴 23.6 |
|   11 | [Epsilon 30B](https://huggingface.co/TheBloke/30B-Epsilon-GGML) | 30B | Q4_0  | vicuna11st     |        Lewd |        8.9 | 🔵 23.2 |  54.5 |  🔵 31.3 |
|   12 | [LLaMA 30B](https://huggingface.co/TheBloke/LLaMa-30B-GGML) | 30B | Q4_K_M | vicuna11       |     Vanilla |        5.5 | 🔴 17.6 | 🔴 38.1 |  🔴 20.2 |
|   13 | [MindFlay 22B](https://huggingface.co/Envoid/MindFlay-22B-ggml) | 22B | Q4_0  | vicuna11st     |       Tamed |        5.4 |     21.2 |  50.4 |  🔴 26.2 |
|   14 | Hippogriff 30B           | 30B | Q4_0  | vicuna11       |      Boring |        2.9 | 🔴 19.3 | 🔴 41.6 |  🔴 21.9 |

## Changelog

- 2023-07-30 V33 Added the new ALC-IQ Rating Table!
- 2023-07-25 V32 of the Ayumi ERP Rating
    - **Note: There is a bug in the evaluation of LLaMA 2 Models, which make them slightly less intelligent. Once the fix has found it's way into `koboldcpp` I will have to rerun the LLaMA 2 (L2) model tests.**
    - [frankensteins-monster-13b-q4-k-s_by_Blackroot_20230724.bin](https://huggingface.co/Blackroot/FrankensteinsMonster-13B-GGML) **(rank 5 of 165 - Pervert)**
    - [chronos-hermes-13b-superhot-8k.ggmlv3.q5_1_by_TheBloke_20230629.bin](https://huggingface.co/TheBloke/Chronos-Hermes-13B-SuperHOT-8K-GGML) **(rank 4 of 165 - Pervert)**
    - [alpacacielo-13b.ggmlv3.q5_K_M_by_TheBloke_20230724.bin](https://huggingface.co/TheBloke/AlpacaCielo-13B-GGML) **(rank 8 of 165 - Pervert)**
    - [alpacacielo-13b.ggmlv3.q4_K_M_by_TheBloke_20230724.bin](https://huggingface.co/TheBloke/AlpacaCielo-13B-GGML) (rank 19 of 165 - Horny)
    - [Enterredaas-33b-q4_1-ggml_by_Aeala_20230714.bin](https://huggingface.co/Aeala/Enterredaas-33b-GGML) (rank 12 of 165 - Horny)
    - [MindFlay-22B-ggml-q4_0_by_Envoid_20230723.bin](https://huggingface.co/Envoid/MindFlay-22B-ggml) (rank 112 of 165 - Tamed)
    - [airoboros-l2-7b-gpt4-1.4.1.ggmlv3.q5_K_M_by_TheBloke_20230724.bin](https://huggingface.co/TheBloke/airoboros-l2-7b-gpt4-1.4.1-GGML) (rank 82 of 165 - Sexy)
    - [airoboros-l2-7b-gpt4-1.4.1.ggmlv3.q4_K_M_by_TheBloke_20230724.bin](https://huggingface.co/TheBloke/airoboros-l2-7b-gpt4-1.4.1-GGML) (rank 52 of 165 - Lewd)
    - [llama-2-7b-guanaco-qlora.ggmlv3.q4_K_M_by_TheBloke_20230719.bin](https://huggingface.co/TheBloke/llama-2-7B-Guanaco-QLoRA-GGML) (rank 56 of 165 - Sexy)
    - [based-7b.ggmlv3.q4_K_M_by_TheBloke_20230609.bin](https://huggingface.co/TheBloke/based-7B-GGML) (rank 134 of 165 - Tamed)
    - [Nous-Hermes-Llama2-13b-Writer-Q4_K_S_by_Blackroot_20230724.bin](https://huggingface.co/Blackroot/Nous-Hermes-Llama2-13b-Storywriter-GGML) (rank 28 of 165 - Horny)
    - [guanaco-7B.ggmlv3.q4_K_M_by_TheBloke_20230525.bin](https://huggingface.co/TheBloke/guanaco-7B-GGML) (rank 107 of 165 - Vanilla)
    - [vicuna-13b-v1.3-german.ggmlv3.q4_K_M_by_TheBloke_20230721.bin](https://huggingface.co/TheBloke/Vicuna-13B-v1.3-German-GGML) (rank 158 of 165 - Censored)
    - [vicuna-13b-v1.3-german.ggmlv3.q5_K_M_by_TheBloke_20230721.bin](https://huggingface.co/TheBloke/Vicuna-13B-v1.3-German-GGML) (rank 152 of 165 - Boring)
    - [llama-30b.ggmlv3.q4_K_M_by_TheBloke_20230612.bin](https://huggingface.co/TheBloke/LLaMa-30B-GGML) (rank 110 of 165 - Vanilla)
    - [medalpaca-13B.ggmlv3.q5_1_by_TheBloke_20230520.bin](https://huggingface.co/TheBloke/medalpaca-13B-GGML) (rank 84 of 165 - Sexy)
    - [airoboros-7b-gpt4-1.4-superhot-8k.ggmlv3.q5_K_M_by_TheBloke_20230706.bin](https://huggingface.co/TheBloke/Airoboros-7B-GPT4-1-4-SuperHOT-8K-GGML) (rank 35 of 165 - Lewd)
- 2023-07-23 V31 of the Ayumi ERP Rating
    - **Added the 20B+ ERP Ranking for larger models**
    - [Oniichat_hermes-limarp-13b-merged.q4_K_M_by_Gryphe_20230723.bin](https://huggingface.co/Gryphe/Various-GGML-Quants) **(rank 4 of 148 - Pervert)**
    - [mythoboros-13b.ggmlv3.q5_K_M_by_TheBloke_20230722.bin](https://huggingface.co/TheBloke/MythoBoros-13B-GGML) (rank 14 of 148 - Horny)
    - [mythoboros-13b.ggmlv3.q4_K_M_by_TheBloke_20230722.bin](https://huggingface.co/TheBloke/MythoBoros-13B-GGML) (rank 22 of 148 - Horny)
    - [llama2-22b_q4_K_M_by_IHaveNoClueAndIMustPost_20230722.bin](https://huggingface.co/IHaveNoClueAndIMustPost/Llama-2-22B-GGML) (rank 31 of 148 - Lewd)
    - [airoboros-7b-gpt4-1.4.ggmlv3.q5_K_M_by_TheBloke_20230622.bin](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.4-GGML) (rank 33 of 148 - Lewd)
    - [airoboros-7B.ggmlv3.q4_K_M_by_TheBloke_20230616.bin](https://huggingface.co/TheBloke/airoboros-7b-gpt4-GGML) (rank 35 of 148 - Lewd)
    - [airoboros-7b-gpt4-1.4.ggmlv3.q4_K_M_by_TheBloke_20230622.bin](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.4-GGML) (rank 51 of 148 - Sexy)
    - [airoboros-7b-gpt4-1.2.ggmlv3.q4_K_M_by_TheBloke_20230616.bin](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.2-GGML) (rank 62 of 148 - Sexy)
    - [airoboros-7b-gpt4-1.3.ggmlv3.q4_K_M_by_TheBloke_20230620.bin](https://huggingface.co/TheBloke/airoboros-7B-gpt4-1.3-GGML) (rank 68 of 148 - Sexy)
    - [dolphin-llama-13b.ggmlv3.q4_K_M_by_TheBloke_20230723.bin](https://huggingface.co/TheBloke/Dolphin-Llama-13B-GGML) (rank 136 of 148 - Boring)
    - [dolphin-llama-13b.ggmlv3.q5_K_M_by_TheBloke_20230723.bin](https://huggingface.co/TheBloke/Dolphin-Llama-13B-GGML) (rank 139 of 148 - Censored)
    - [llama-2-7b-chat-codeCherryPop.ggmlv3.q5_K_M_by_TheBloke_20230722.bin](https://huggingface.co/TheBloke/llama2-7b-chat-codeCherryPop-qLoRA-GGML) (rank 141 of 148 - Censored)
- 2023-07-22 V30 more models:
    * mythoboros-13b.ggmlv3.q5_0_by_Gryphe_20230721.bin **(rank 2 of 136 - Nymphomaniac)**
    * airoboros-33b-gpt4-1.4.ggmlv3.q4_K_M_by_TheBloke_20230626.bin **(rank 20 of 136 - Horny)**
    * llama-30b-supercot.ggmlv3.q4_0_by_TheBloke_20230528.bin **(rank 26 of 136 - Lewd)**
    * ggml-Hermes-2-step2559-13B-q4_K_M_by_NousResearch_20230721.bin (rank 32 of 136 - Lewd)
    * 13b-ouroboros.ggmlv3.q4_0_by_TheBloke_20230721.bin (rank 56 of 136 - Sexy)
    * 13b-ouroboros.ggmlv3.q5_1_by_TheBloke_20230721.bin (rank 36 of 136 - Lewd)
    * 13b-bluemethod.ggmlv3.q4_0_by_TheBloke_20230721.bin (rank 61 of 136 - Sexy)
    * 13b-bluemethod.ggmlv3.q2_K_by_TheBloke_20230721.bin (rank 46 of 136 - Lewd)
    * 13b-bluemethod.ggmlv3.q5_1_by_TheBloke_20230721.bin (rank 59 of 136 - Sexy)
- 2023-07-21 V29:
   - Added a "Judgement" column to replace the "Temperatur" column. It contains a rough judgement of the NSFW capabilities of the model.
- 2023-07-21 V28 more models:
    * Mikael110_llama-2-13b-guanaco.ggmlv3.q4_1_by_Gryphe_20230720.bin (rank 58)
    * llama-2-13b-guanaco-qlora.ggmlv3.q8_0_by_TheBloke_20230720.bin (rank 20)
    * llama-2-13b-guanaco-qlora.ggmlv3.q4_0_by_TheBloke_20230720.bin (rank 24)
    * llama-2-13b-guanaco-qlora.ggmlv3.q2_K_by_TheBloke_20230720.bin (rank 19)
    * 13b-ouroboros.ggmlv3.q2_K_by_TheBloke_20230721.bin (rank 31)
    * redmond-puffin-13b-1.3.ggmlv3.q5_1_by_TheBloke_20230720.bin (rank 55)
    * redmond-puffin-13b-1.3.ggmlv3.q4_0_by_TheBloke_20230720.bin (rank 51)
- 2023-07-20 V27:
   - Finally links for some models!
   - More models:
       - mythologic-13b.ggmlv3.q2_K_by_TheBloke_20230717.bin
       - mythologic-13b.ggmlv3.q5_1_by_TheBloke_20230717.bin
       - airochronos-33b.ggmlv3.q2_K_by_TheBloke_20230710.bin
       - airochronos-33b.ggmlv3.q4_0_by_TheBloke_20230710.bin
       - llama-2-7b.ggmlv3.q8_0_by_TheBloke_20230718.bin
       - redmond-puffin-13b.ggmlv3.q4_0_by_TheBloke_20230719.bin
       - redmond-puffin-13b.ggmlv3.q5_1_by_TheBloke_20230719.bin
       - luna-ai-llama2-7b-uncensored.ggmlv3.q5_1_by_TheBloke_20230719.bin
       - luna-ai-llama2-7b-uncensored.ggmlv3.q8_0_by_TheBloke_20230719.bin
       - llama-2-7b-guanaco-qlora.ggmlv3.q4_0_by_TheBloke_20230719.bin
       - llama-2-7b-guanaco-qlora.ggmlv3.q5_1_by_TheBloke_20230719.bin
- 2023-07-19 V26: Mode Models!
   * LLaMA 2
       * llama-2-13b.ggmlv3.q5_1_by_TheBloke_20230718.bin
       * llama-2-7b.ggmlv3.q2_K_by_TheBloke_20230718.bin
       * llama-2-13b.ggmlv3.q2_K_by_TheBloke_20230718.bin
       * llama-2-7b.ggmlv3.q5_1_by_TheBloke_20230718.bin
   * LLaMA 2 Chat
       * llama-2-13b-chat.ggmlv3.q2_K_by_TheBloke_20230718.bin
       * llama-2-13b-chat.ggmlv3.q5_1_by_TheBloke_20230718.bin
       * llama-2-7b-chat.ggmlv3.q2_K_by_TheBloke_20230718.bin
       * llama-2-7b-chat.ggmlv3.q5_1_by_TheBloke_20230718.bin
- 2023-06-30 V25
    - More Models:
        - orca-mini-13b.ggmlv3.q4_0_by_TheBloke_20230624.bin
        - vicuna-13b-v1.3.0.ggmlv3.q4_0_by_TheBloke_20230625.bin
        - gplatty-30b-superhot-8k.ggmlv3.q2_K_by_TheBloke_20230629.bin
        - wizard-vicuna-13b-uncensored-superhot-8k.ggmlv3.q2_K_by_TheBloke_20230630.bin
        - wizard-vicuna-13b-uncensored-superhot-8k.ggmlv3.q5_K_S_by_TheBloke_20230630.bin
- 2023-06-21 V24
    - Added a few links to the [See Also Section](#see-also)
    - More Models:
        - wizardlm-7b-v1.0-uncensored.ggmlv3.q4_0_by_TheBloke_20230618.bin
        - wizardlm-7b-v1.0-uncensored.ggmlv3.q8_0_by_TheBloke_20230618.bin
        - vicuna-7b-v1.3.ggmlv3.q4_0_by_TheBloke_20230618.bin
        - vicuna-7b-v1.3.ggmlv3.q8_0_by_TheBloke_20230618.bin
        - bigtrans-13b.ggmlv3.q4_0_by_TheBloke_20230618.bin
        - vicuna-13b-v1.3.ggmlv3.q4_0_by_TheBloke_20230618.bin
        - vicuna-13b-v1.3.ggmlv3.q5_1_by_TheBloke_20230618.bin
        - wizardlm-13b-v1.0-uncensored.ggmlv3.q4_0_by_TheBloke_20230620.bin
        - gpt4-x-alpaca-13b.ggmlv3.q4_0_by_TheBloke_20230618.bin
        - airoboros-7b-gpt4-1.3.ggmlv3.q5_1_by_TheBloke_20230620.bin
        - airoboros-7b-gpt4-1.3.ggmlv3.q4_0_by_TheBloke_20230620.bin
        - airoboros-13b-gpt4-1.3.ggmlv3.q5_1_by_TheBloke_20230620.bin
        - airoboros-13b-gpt4-1.3.ggmlv3.q4_0_by_TheBloke_20230620.bin
- 2023-06-18 V23
   - More models:
       - airoboros-7b-gpt4-1.2.ggmlv3.q5_1_by_TheBloke_20230616.bin
       - airoboros-13b-gpt4-1.2.ggmlv3.q5_1_by_TheBloke_20230616.bin
       - robin-7b.ggmlv3.q5_1_by_TheBloke_20230617.bin
       - robin-13b.ggmlv3.q5_1_by_TheBloke_20230617.bin
- 2023-06-15 V22
    - I added a few more models:
        - 30b-Lazarus.ggmlv3.q4_0_by_TheBloke_20230607.bin
        - WizardLM-7B-uncensored.ggmlv3.q5_1_by_TheBloke_20230619.bin
        - WizardLM-7B-uncensored.ggmlv3.q8_0_by_TheBloke_20230519.bin
        - camel-13b-combined.ggmlv3.q4_1_by_TheBloke_20230613.bin
        - tulu-7b.ggmlv3.q8_0_by_TheBloke_20230611.bin
        - tulu-13b.ggmlv3.q5_1_by_TheBloke_20230610.bin
        - chronos-hermes-13b.ggmlv3.q5_1_by_TheBloke_20230613.bin
        - samantha-1.1-llama-13b.ggmlv3.q4_0_by_TheBloke_20230610.bin
        - Gorilla-7B.ggmlv3.q5_1_by_TheBloke_20230528.bin
        - airoboros-13b-1.1.ggmlv3.q4_0_by_TheBloke_20230610.bin
        - open-llama-7B-open-instruct.ggmlv3.q8_0_by_TheBloke_20230609.bin
        - minotaur-13b.ggmlv3.q5_1_by_TheBloke_20230614.bin
        - modronAI_pythia-13b-deduped-green_devil-chat_q16_0_by_MrSeeker_20230614
- 2023-06-13 V21:
    - Altered the scoring routine a bit with the help of MrSeeker. A few models exchanged their places.
    - Added one new model with the help of MrSeeker. On place 6:
        - Pythia Green Devil: Pirr_pythia-13b-deduped-green_devil_q16_0_by_MrSeeker_20230612
- 2023-06-12 V20:
    - Added 2 new models:
        - ggml-bluemoonrp-13b-4k-epoch6-q5_0_by_reeducator_20230624.bin
        - And thanks to a direct collaboration with Mr.Seeker, a non GGML model: INCITE-7B-Erebus-v2_q16_0_direct_by_MrSeeker_20230611 !
- 2023-06-10 V19:
    - Added 6 new models:
        - vicuna-13b-cot.ggmlv3.q4_0_by_TheBloke_20230608.bin
        - open-llama-3b-q8_0_by_SlyEcho_20230607.bin
        - OpenLLAMA7B-q5_1-ggml_by_RachidAR_20230607.bin
        - 13b-chimera.ggmlv3.q4_0_by_TheBloke_20230603.bin
        - camel-13b-roleplay.ggmlv3.q5_1_by_TheBloke_20230607.bin
        - minotaur-13B.ggmlv3.q5_1_by_TheBloke_20230608.bin
- 2023-06-08 V18:
    - Added: WizardLM-Uncensored-SuperCOT-Storytelling-30B.ggmlv3.q4_0_by_TheBloke_20230601.bin
- 2023-06-08 V17:
    - Added: RedPajama-INCITE-7B-Chat-q4_0_by_rustformers_20230607.bin
    - Added: RedPajama-INCITE-7B-Instruct-q4_0_by_rustformers_20230607.bin
- 2023-06-07 V16:
    - Added: llama-deus-7b-v3.ggmlv3.q5_1_by_TheBloke_20230604.bin
    - Added: planner-7b.ggmlv3.q4_0_by_TheBloke_20230606.bin
    - Added: selfee-13b.ggmlv3.q4_0_by_TheBloke_20230606.bin
- 2023-06-06 V15:
    - Added: GPT4All-13B-snoozy.ggmlv3.q4_0_by_TheBloke_20230620.bin
    - Added: airoboros-7b-gpt4.ggmlv3.q4_0_by_TheBloke_20230604.bin
    - Added: based-7B.ggmlv3.q4_0_by_TheBloke_20230604.bin
    - Added: PMC_LLAMA-7B.ggmlv3.q4_0_by_TheBloke_20230603.bin
- 2023-06-05 V14: 
    - Added: Alpacino-SuperCOT-13B-GGML_ggjtv3-model-q4_0_by_xzuyn_20230524.bin
    - Added: llama-13b-supercot-ggml-q5_1_by_camelids_20230512.bin
- 2023-06-03 V13:
    - Added: wizard-mega-13B.ggmlv3.q8_0_by_TheBloke_20230520.bin
    - Added: wizard-mega-13B.ggmlv3.q5_1_by_TheBloke_20230520.bin
    - Added: Metharme-7b-4bit-Q4_1-GGML-V2_by_TehVenom_20230502.bin
    - Added: nous-hermes-13b.ggmlv3.q4_0_by_TheBloke_20230603.bin
- 2023-06-03 V12:
    - Added the separate 7B and 13B ranking tables.
    - Added: wizard-mega-13B.ggmlv3.q4_0_by_TheBloke_20230520.bin
    - Added: Manticore-13B-Chat-Pyg-Guanaco-GGML-q4_0_by_mindrage_20230602.bin
- 2023-06-02 V11:
    - Added: llama-13b.ggmlv3.q8_0_by_TheBloke_20230601.bin
    - Added: llama-7b.ggmlv3.q8_0_by_TheBloke_20230601.bin
- 2023-06-02 V10:
    - Added: llama-13b.ggmlv3.q4_0_by_TheBloke_20230601.bin
- 2023-06-02 V9:
    - Added: WizardLM UC SCOT ST 30B aka WizardLM-Uncensored-SuperCOT-Storytelling-30B.ggmlv3.q4_0_by_TheBloke_20230601.bin
- 2023-06-01 V8:
    - Added:
        - Metharme-13b-Q5_1_by_TehVenom_20230519.bin
        - Wizard-Vicuna-13B-Uncensored.ggmlv3.q8_0_by_TheBloke_20230517.bin
        - baize-v2-13b.ggmlv3.q8_0_by_TheBloke_20230524.bin
- 2023-06-01 V7:
    - Updated and improved the rating a bit and made it a bit more precise (Samantha is now rightfully at the bottom).
    - Along other models, especially the original LLaMA model without any extra training was added.

# Testing Procedure

 Here a few quick notes about how/what I did:

- I built my own scripts for constructing the prompt from my test character called 'Ayumi'.
  - The character is not purposefully made for generating NSFW answers, rather the opposite.
- The setting (first message and first thing 'You' says) is purposefully made to allow something lewd to happen.
- For each model I generated 4 * 3 * 20 responses:
    - 4 different temperatures: 0.1, 0.5, 0.7 and 0.9 (more recently I also added 1.1 and removed 0.1 and 0.5 from my runs)
    - 3 different prompts (metharme, vicuna11 (aka vicuna11st) and pygmalion - _I might add more prompt formats later_)
    - 20 different pre picked seeds
- The ERP Rating is the count of lewd words divided by word count of the response.
- The Word IQ is  the count of long words (words longer than 5 characters) divided by the word count of the response.

Here are the other settings for the test:

```
        max_length = 100,
        temperature = <see above table, either 0.7 or 0.9>,
        top_p = 0.9,
        typical_p = 1,
        repetition_penalty = 1.1,
        encoder_repetition_penalty = 1,
        top_k = 0,
        min_length = 0,
        no_repeat_ngram_size = 0,
        num_beams = 1,
        penalty_alpha = 0,
        length_penalty = 1,
        early_stopping = false,
        sampler_seed = <one of 20 seeds>,
```

## Testing Procedure Flaws

The test is pretty primitive. Counting occurences of words is does have it's limits. I can't automatically analyze the response of the character.
The following properties are **not** tested for here:

Testing does **NOT** cover:
- Correct grammar **is not checked**
- Coherency withing the reply **is not checked**
   - For instance stuff like: The bare naked character describing that they are undressing
   - Character not wanting to do lewd stuff, because there are too many people present (**Despite** the whole Scene is described to take place on the couch in their living room).
- Creative writing skills, such as how immersive the reply describes what is being done.

I wish I had an automated and easy to implement way to check this. But developing a test for these properties can be quite hard, and I only have limited spare time to do this, and even more limited computing time to run these tests.

# Model List

Here are the models I used in detail. These are just the filenames I used, but they encode the username I found the _quantized_ model on https://huggingface.co/ and the date the files were uploaded by that user. 

* Airoboros
    * airoboros-7b-ggml-q4_0_by_jondurbin_20230522.bin (rank 67 of 165 - Sexy)
* Airoboros 1.1
    * airoboros-13b-1.1.ggmlv3.q4_0_by_TheBloke_20230610.bin (rank 80 of 165 - Sexy)
* Airoboros GPT4
    * airoboros-7b-gpt4.ggmlv3.q4_0_by_TheBloke_20230604.bin (rank 23 of 165 - Horny)
    * airoboros-7B.ggmlv3.q4_K_M_by_TheBloke_20230616.bin (rank 42 of 165 - Lewd)
* Airoboros GPT4 1.2
    * airoboros-7b-gpt4-1.2.ggmlv3.q5_1_by_TheBloke_20230616.bin (rank 69 of 165 - Sexy)
    * airoboros-13b-gpt4-1.2.ggmlv3.q5_1_by_TheBloke_20230616.bin (rank 66 of 165 - Sexy)
    * airoboros-7b-gpt4-1.2.ggmlv3.q4_K_M_by_TheBloke_20230616.bin (rank 71 of 165 - Sexy)
* Airoboros GPT4 1.3
    * airoboros-7b-gpt4-1.3.ggmlv3.q4_0_by_TheBloke_20230620.bin (rank 51 of 165 - Lewd)
    * airoboros-7b-gpt4-1.3.ggmlv3.q5_1_by_TheBloke_20230620.bin (rank 48 of 165 - Lewd)
    * airoboros-13b-gpt4-1.3.ggmlv3.q4_0_by_TheBloke_20230620.bin (rank 86 of 165 - Vanilla)
    * airoboros-13b-gpt4-1.3.ggmlv3.q5_1_by_TheBloke_20230620.bin (rank 81 of 165 - Sexy)
    * airoboros-7b-gpt4-1.3.ggmlv3.q4_K_M_by_TheBloke_20230620.bin (rank 77 of 165 - Sexy)
* Airoboros GPT4 1.4
    * airoboros-13b-gpt4-1.4.ggmlv3.q4_0_by_TheBloke_20230622.bin (rank 70 of 165 - Sexy)
    * airoboros-33b-gpt4-1.4.ggmlv3.q4_K_M_by_TheBloke_20230626.bin (rank 29 of 165 - Lewd)
    * airoboros-7b-gpt4-1.4.ggmlv3.q5_K_M_by_TheBloke_20230622.bin (rank 40 of 165 - Lewd)
    * airoboros-7b-gpt4-1.4.ggmlv3.q4_K_M_by_TheBloke_20230622.bin (rank 60 of 165 - Sexy)
* Airoboros GPT4 1.4 SuperHOT
    * airoboros-7b-gpt4-1.4-superhot-8k.ggmlv3.q5_K_M_by_TheBloke_20230706.bin (rank 35 of 165 - Lewd)
* Airoboros GPT4 1.4.1 (L2)
    * airoboros-l2-7b-gpt4-1.4.1.ggmlv3.q4_K_M_by_TheBloke_20230724.bin (rank 52 of 165 - Lewd)
    * airoboros-l2-7b-gpt4-1.4.1.ggmlv3.q5_K_M_by_TheBloke_20230724.bin (rank 82 of 165 - Sexy)
* Airochronos
    * airochronos-33b.ggmlv3.q2_K_by_TheBloke_20230710.bin (rank 16 of 165 - Horny)
    * airochronos-33b.ggmlv3.q4_0_by_TheBloke_20230710.bin (rank 11 of 165 - Horny)
* AlpacaCielo (L2)
    * alpacacielo-13b.ggmlv3.q4_K_M_by_TheBloke_20230724.bin (rank 19 of 165 - Horny)
    * alpacacielo-13b.ggmlv3.q5_K_M_by_TheBloke_20230724.bin (rank 8 of 165 - Pervert)
* Alpacino SCOT
    * Alpacino-SuperCOT-13B-GGML_ggjtv3-model-q4_0_by_xzuyn_20230524.bin (rank 47 of 165 - Lewd)
* Baize V2
    * baize-v2-13b.ggmlv3.q8_0_by_TheBloke_20230524.bin (rank 137 of 165 - Tamed)
    * baize-v2-13b.ggmlv3.q4_1_by_TheBloke_20230524.bin (rank 123 of 165 - Tamed)
* Based
    * based-7B.ggmlv3.q4_0_by_TheBloke_20230604.bin (rank 95 of 165 - Vanilla)
    * based-7b.ggmlv3.q4_K_M_by_TheBloke_20230609.bin (rank 134 of 165 - Tamed)
* BigTrans
    * bigtrans-13b.ggmlv3.q4_0_by_TheBloke_20230618.bin (rank 153 of 165 - Boring)
* BlueMethod
    * 13b-bluemethod.ggmlv3.q4_0_by_TheBloke_20230721.bin (rank 79 of 165 - Sexy)
    * 13b-bluemethod.ggmlv3.q2_K_by_TheBloke_20230721.bin (rank 62 of 165 - Sexy)
    * 13b-bluemethod.ggmlv3.q5_1_by_TheBloke_20230721.bin (rank 76 of 165 - Sexy)
* BluemoonRP
    * ggml-bluemoonrp-13b-4k-epoch6-q5_0_by_reeducator_20230624.bin (rank 130 of 165 - Tamed)
* Camel Comb
    * camel-13b-combined.ggmlv3.q4_1_by_TheBloke_20230613.bin (rank 139 of 165 - Boring)
* Camel RP
    * camel-13b-roleplay.ggmlv3.q5_1_by_TheBloke_20230607.bin (rank 68 of 165 - Sexy)
* Chimera
    * 13b-chimera.ggmlv3.q4_0_by_TheBloke_20230603.bin (rank 57 of 165 - Sexy)
* Chronos
    * chronos-13b.ggmlv3.q4_0_by_TheBloke_20230528.bin (rank 17 of 165 - Horny)
* Chronos Hermes
    * chronos-hermes-13b.ggmlv3.q5_1_by_TheBloke_20230613.bin (rank 3 of 165 - Nymphomaniac)
* Chronos Hermes SuperHOT
    * chronos-hermes-13b-superhot-8k.ggmlv3.q5_1_by_TheBloke_20230629.bin (rank 4 of 165 - Pervert)
* Chronos WizLM UC SCOT ST
    * chronos-wizardlm-uc-scot-st-13B.ggmlv3.q4_0_by_TheBloke_20230607.bin (rank 15 of 165 - Horny)
* Dolphin Llama
    * dolphin-llama-13b.ggmlv3.q5_K_M_by_TheBloke_20230723.bin (rank 155 of 165 - Censored)
    * dolphin-llama-13b.ggmlv3.q4_K_M_by_TheBloke_20230723.bin (rank 151 of 165 - Boring)
* Enterredaas
    * Enterredaas-33b-q4_1-ggml_by_Aeala_20230714.bin (rank 12 of 165 - Horny)
* Epsilon
    * 30b-epsilon.ggmlv3.q4_0_by_TheBloke_20230721.bin (rank 41 of 165 - Lewd)
* Frankensteins Monster
    * frankensteins-monster-13b-q4-k-s_by_Blackroot_20230724.bin (rank 5 of 165 - Pervert)
* GPT4 x Alpaca
    * gpt4-x-alpaca-13b.ggmlv3.q4_0_by_TheBloke_20230618.bin (rank 20 of 165 - Horny)
* GPT4 x Vicuna
    * gpt4-x-vicuna-13B.ggmlv3.q5_1_by_TheBloke_20230520.bin (rank 99 of 165 - Vanilla)
    * gpt4-x-vicuna-13B.ggmlv3.q4_1_by_TheBloke_20230520.bin (rank 89 of 165 - Vanilla)
* GPT4All Snoozy
    * GPT4All-13B-snoozy.ggmlv3.q4_0_by_TheBloke_20230620.bin (rank 108 of 165 - Vanilla)
* Gorilla
    * Gorilla-7B.ggmlv3.q5_1_by_TheBloke_20230528.bin (rank 122 of 165 - Tamed)
* Gplatty SuperHOT 8k
    * gplatty-30b-superhot-8k.ggmlv3.q2_K_by_TheBloke_20230629.bin (rank 7 of 165 - Pervert)
* Guanaco
    * guanaco-7B.ggmlv3.q5_1_by_TheBloke_20230525.bin (rank 100 of 165 - Vanilla)
    * guanaco-7B.ggmlv3.q8_0_by_TheBloke_20230525.bin (rank 133 of 165 - Tamed)
    * guanaco-13B.ggmlv3.q5_1_by_TheBloke_20230525.bin (rank 24 of 165 - Horny)
    * guanaco-7B.ggmlv3.q4_0_by_TheBloke_20230525.bin (rank 127 of 165 - Tamed)
    * guanaco-7B.ggmlv3.q4_K_M_by_TheBloke_20230525.bin (rank 107 of 165 - Vanilla)
* Guanaco (L2)
    * llama-2-7b-guanaco-qlora.ggmlv3.q4_0_by_TheBloke_20230719.bin (rank 63 of 165 - Sexy)
    * llama-2-7b-guanaco-qlora.ggmlv3.q5_1_by_TheBloke_20230719.bin (rank 65 of 165 - Sexy)
    * Mikael110_llama-2-13b-guanaco.ggmlv3.q4_1_by_Gryphe_20230720.bin (rank 88 of 165 - Vanilla)
    * llama-2-13b-guanaco-qlora.ggmlv3.q8_0_by_TheBloke_20230720.bin (rank 31 of 165 - Lewd)
    * llama-2-13b-guanaco-qlora.ggmlv3.q4_0_by_TheBloke_20230720.bin (rank 37 of 165 - Lewd)
    * llama-2-13b-guanaco-qlora.ggmlv3.q2_K_by_TheBloke_20230720.bin (rank 30 of 165 - Lewd)
    * llama-2-7b-guanaco-qlora.ggmlv3.q4_K_M_by_TheBloke_20230719.bin (rank 56 of 165 - Sexy)
* Hippogriff
    * hippogriff-30b.ggmlv3.q4_0_by_TheBloke_20230531.bin (rank 149 of 165 - Boring)
* HyperMantis
    * 13B-HyperMantis-ggml-model-q5_1_by_khushman_20230520.bin (rank 61 of 165 - Sexy)
* INCITE Erebus v2
    * INCITE-7B-Erebus-v2_q16_0_direct_by_MrSeeker_20230611 (rank 26 of 165 - Horny)
* LLaMA
    * llama-13b.ggmlv3.q4_0_by_TheBloke_20230601.bin (rank 128 of 165 - Tamed)
    * llama-7b.ggmlv3.q4_0_by_TheBloke_20230601.bin (rank 91 of 165 - Vanilla)
    * llama-7b.ggmlv3.q8_0_by_TheBloke_20230601.bin (rank 104 of 165 - Vanilla)
    * llama-13b.ggmlv3.q8_0_by_TheBloke_20230601.bin (rank 102 of 165 - Vanilla)
    * llama-30b.ggmlv3.q4_K_M_by_TheBloke_20230612.bin (rank 110 of 165 - Vanilla)
* LLaMA 2
    * llama-2-13b.ggmlv3.q5_1_by_TheBloke_20230718.bin (rank 83 of 165 - Sexy)
    * llama-2-7b.ggmlv3.q2_K_by_TheBloke_20230718.bin (rank 141 of 165 - Boring)
    * llama-2-13b.ggmlv3.q2_K_by_TheBloke_20230718.bin (rank 124 of 165 - Tamed)
    * llama-2-7b.ggmlv3.q5_1_by_TheBloke_20230718.bin (rank 116 of 165 - Tamed)
    * llama-2-7b.ggmlv3.q8_0_by_TheBloke_20230718.bin (rank 125 of 165 - Tamed)
* LLaMA 2 Chat
    * llama-2-13b-chat.ggmlv3.q2_K_by_TheBloke_20230718.bin (rank 90 of 165 - Vanilla)
    * llama-2-13b-chat.ggmlv3.q5_1_by_TheBloke_20230718.bin (rank 147 of 165 - Boring)
    * llama-2-7b-chat.ggmlv3.q2_K_by_TheBloke_20230718.bin (rank 156 of 165 - Censored)
    * llama-2-7b-chat.ggmlv3.q5_1_by_TheBloke_20230718.bin (rank 148 of 165 - Boring)
* LLaMA 2 Chat CodeCPop
    * llama-2-7b-chat-codeCherryPop.ggmlv3.q5_K_M_by_TheBloke_20230722.bin (rank 157 of 165 - Censored)
* LLaMA 2 Frankenstein
    * llama2-22b_q4_K_M_by_IHaveNoClueAndIMustPost_20230722.bin (rank 38 of 165 - Lewd)
* LLaMA Deus
    * llama-deus-7b-v3.ggmlv3.q5_1_by_TheBloke_20230604.bin (rank 101 of 165 - Vanilla)
* LLaMA SCOT
    * llama-13b-supercot-ggml-q5_1_by_camelids_20230512.bin (rank 21 of 165 - Horny)
    * llama-30b-supercot.ggmlv3.q4_0_by_TheBloke_20230528.bin (rank 36 of 165 - Lewd)
* Lazarus
    * 30b-Lazarus.ggmlv3.q4_0_by_TheBloke_20230607.bin (rank 1 of 165 - Nymphomaniac)
* Luna AI Uncens (L2)
    * luna-ai-llama2-7b-uncensored.ggmlv3.q8_0_by_TheBloke_20230719.bin (rank 109 of 165 - Vanilla)
    * luna-ai-llama2-7b-uncensored.ggmlv3.q5_1_by_TheBloke_20230719.bin (rank 97 of 165 - Vanilla)
* Manticore
    * Manticore-13B-Chat-Pyg.ggmlv3.q5_1_by_TheBloke_20230523.bin (rank 132 of 165 - Tamed)
    * Manticore-13B-Chat-Pyg.ggmlv3.q4_0_by_TheBloke_20230523.bin (rank 146 of 165 - Boring)
* Manticore Guanaco
    * Manticore-13B-Chat-Pyg-Guanaco-GGML-q4_0_by_mindrage_20230602.bin (rank 105 of 165 - Vanilla)
* MedAlpaca
    * medalpaca-13B.ggmlv3.q5_1_by_TheBloke_20230520.bin (rank 84 of 165 - Sexy)
* Metharme
    * Metharme-7b-4bit-Q4_1-GGML-V2_by_TehVenom_20230502.bin (rank 113 of 165 - Tamed)
    * Metharme-13b-Q5_1_by_TehVenom_20230519.bin (rank 159 of 165 - Censored)
    * metharme_7b_ggml_model_q5_1_by_waifu-workshop_20230512.bin (rank 115 of 165 - Tamed)
    * Metharme-13b-Q4_1_by_TehVenom_20230519.bin (rank 150 of 165 - Boring)
    * Metharme-13b-Q8_0_by_TehVenom_20230519.bin (rank 154 of 165 - Boring)
* MindFlay
    * MindFlay-22B-ggml-q4_0_by_Envoid_20230723.bin (rank 112 of 165 - Tamed)
* Minotaur
    * minotaur-13B.ggmlv3.q5_1_by_TheBloke_20230608.bin (rank 46 of 165 - Lewd)
* Minotaur Fixed
    * minotaur-13b.ggmlv3.q5_1_by_TheBloke_20230614.bin (rank 72 of 165 - Sexy)
* MythoBoros
    * mythoboros-13b.ggmlv3.q5_0_by_Gryphe_20230721.bin (rank 2 of 165 - Nymphomaniac)
    * mythoboros-13b.ggmlv3.q4_K_M_by_TheBloke_20230722.bin (rank 27 of 165 - Horny)
    * mythoboros-13b.ggmlv3.q5_K_M_by_TheBloke_20230722.bin (rank 18 of 165 - Horny)
* MythoLogic
    * mythologic-13b.ggmlv3.q5_1_by_TheBloke_20230717.bin (rank 9 of 165 - Pervert)
    * mythologic-13b.ggmlv3.q2_K_by_TheBloke_20230717.bin (rank 25 of 165 - Horny)
* Nous Hermes
    * nous-hermes-13b.ggmlv3.q4_0_by_TheBloke_20230603.bin (rank 34 of 165 - Lewd)
* Nous Hermes (L2) S2559
    * ggml-Hermes-2-step2559-13B-q4_K_M_by_NousResearch_20230721.bin (rank 45 of 165 - Lewd)
* Nous Hermes Writer (L2)
    * Nous-Hermes-Llama2-13b-Writer-Q4_K_S_by_Blackroot_20230724.bin (rank 28 of 165 - Horny)
* Oniichat Hermes LimaRP (L2)
    * Oniichat_hermes-limarp-13b-merged.q4_K_M_by_Gryphe_20230723.bin (rank 6 of 165 - Pervert)
* OpenLLaMA
    * OpenLLAMA7B-q5_1-ggml_by_RachidAR_20230607.bin (rank 87 of 165 - Vanilla)
    * open-llama-3b-q8_0_by_SlyEcho_20230607.bin (rank 94 of 165 - Vanilla)
* OpenLLaMA 700bt
    * open_llama_7b_700bt_ggml-model-q5_1_by_vihangd_20230525.bin (rank 117 of 165 - Tamed)
* OpenLLaMA Open Instr
    * open-llama-7B-open-instruct.ggmlv3.q8_0_by_TheBloke_20230609.bin (rank 53 of 165 - Lewd)
* Orca Mini
    * orca-mini-13b.ggmlv3.q4_0_by_TheBloke_20230624.bin (rank 118 of 165 - Tamed)
* Ouroboros
    * 13b-ouroboros.ggmlv3.q2_K_by_TheBloke_20230721.bin (rank 50 of 165 - Lewd)
    * 13b-ouroboros.ggmlv3.q4_0_by_TheBloke_20230721.bin (rank 73 of 165 - Sexy)
    * 13b-ouroboros.ggmlv3.q5_1_by_TheBloke_20230721.bin (rank 49 of 165 - Lewd)
* PMC LLaMA
    * PMC_LLAMA-7B.ggmlv3.q4_0_by_TheBloke_20230603.bin (rank 144 of 165 - Boring)
* Planner
    * planner-7b.ggmlv3.q4_0_by_TheBloke_20230606.bin (rank 92 of 165 - Vanilla)
* Pygmalion
    * pygmalion-13b-ggml-q4_0_by_nostoic_20230520.bin (rank 160 of 165 - Censored)
    * pygmalion-7b-q8_0-ggml_by_sasha0552_20230511.bin (rank 98 of 165 - Vanilla)
    * pygmalion-7b-q5_1-ggml_by_sasha0552_20230511.bin (rank 121 of 165 - Tamed)
    * pygmalion-13b-ggml-q8_0_by_nostoic_20230520.bin (rank 162 of 165 - Censored)
* Pythia Dedup Gr. Devil
    * modronAI_pythia-13b-deduped-green_devil-chat_q16_0_by_MrSeeker_20230614 (rank 32 of 165 - Lewd)
* Pythia Green Devil
    * Pirr_pythia-13b-deduped-green_devil_q16_0_by_MrSeeker_20230612 (rank 22 of 165 - Horny)
* RedPajama 0.1 Instruct
    * rp-instruct-7B-v0.1-ggml-model-q5_1_by_keldenl_20230513.bin (rank 43 of 165 - Lewd)
* RedPajama Chat
    * RedPajama-INCITE-7B-Chat-q4_0_by_rustformers_20230607.bin (rank 135 of 165 - Tamed)
* RedPajama Instruct
    * RedPajama-INCITE-7B-Instruct-q4_0_by_rustformers_20230607.bin (rank 119 of 165 - Tamed)
    * RedPajama-INCITE-Instruct-3B-v1-q4_0_by_keldenl.bin (rank 74 of 165 - Sexy)
* Redmond Puffin (L2)
    * redmond-puffin-13b.ggmlv3.q4_0_by_TheBloke_20230719.bin (rank 59 of 165 - Sexy)
    * redmond-puffin-13b.ggmlv3.q5_1_by_TheBloke_20230719.bin (rank 55 of 165 - Lewd)
* Redmond Puffin 1.3 (L2)
    * redmond-puffin-13b-1.3.ggmlv3.q5_1_by_TheBloke_20230720.bin (rank 85 of 165 - Vanilla)
    * redmond-puffin-13b-1.3.ggmlv3.q4_0_by_TheBloke_20230720.bin (rank 78 of 165 - Sexy)
* Robin v2
    * robin-7b.ggmlv3.q5_1_by_TheBloke_20230617.bin (rank 143 of 165 - Boring)
    * robin-13b.ggmlv3.q5_1_by_TheBloke_20230617.bin (rank 111 of 165 - Vanilla)
* Samantha
    * samantha-13b.ggmlv3.q4_0_by_TheBloke_20230528.bin (rank 163 of 165 - Censored)
    * samantha-7b.ggmlv3.q5_1_by_TheBloke_20230528.bin (rank 165 of 165 - Censored)
* Samantha 1.1
    * samantha-1.1-llama-13b.ggmlv3.q4_0_by_TheBloke_20230610.bin (rank 164 of 165 - Censored)
* Selfee
    * selfee-13b.ggmlv3.q4_0_by_TheBloke_20230606.bin (rank 131 of 165 - Tamed)
* Tulu
    * tulu-7b.ggmlv3.q8_0_by_TheBloke_20230611.bin (rank 136 of 165 - Tamed)
    * tulu-13b.ggmlv3.q5_1_by_TheBloke_20230610.bin (rank 120 of 165 - Tamed)
* UltraLM
    * ultralm-13b.ggmlv3.q4_0_by_TheBloke_20230629.bin (rank 138 of 165 - Tamed)
* Vicuna 1.3
    * vicuna-7b-v1.3.ggmlv3.q8_0_by_TheBloke_20230618.bin (rank 44 of 165 - Lewd)
    * vicuna-7b-v1.3.ggmlv3.q4_0_by_TheBloke_20230618.bin (rank 54 of 165 - Lewd)
    * vicuna-13b-v1.3.ggmlv3.q4_0_by_TheBloke_20230618.bin (rank 142 of 165 - Boring)
    * vicuna-13b-v1.3.ggmlv3.q5_1_by_TheBloke_20230618.bin (rank 145 of 165 - Boring)
* Vicuna 1.3 German
    * vicuna-13b-v1.3-german.ggmlv3.q5_K_M_by_TheBloke_20230721.bin (rank 152 of 165 - Boring)
    * vicuna-13b-v1.3-german.ggmlv3.q4_K_M_by_TheBloke_20230721.bin (rank 158 of 165 - Censored)
* Vicuna 1.3.0
    * vicuna-13b-v1.3.0.ggmlv3.q4_0_by_TheBloke_20230625.bin (rank 161 of 165 - Censored)
* Vicuna COT
    * vicuna-13b-cot.ggmlv3.q4_0_by_TheBloke_20230608.bin (rank 140 of 165 - Boring)
* Wizard Mega
    * wizard-mega-13B.ggmlv3.q4_0_by_TheBloke_20230520.bin (rank 126 of 165 - Tamed)
    * wizard-mega-13B.ggmlv3.q5_1_by_TheBloke_20230520.bin (rank 129 of 165 - Tamed)
    * wizard-mega-13B.ggmlv3.q8_0_by_TheBloke_20230520.bin (rank 93 of 165 - Vanilla)
* Wizard Vic UC SuperHOT
    * wizard-vicuna-13b-uncensored-superhot-8k.ggmlv3.q2_K_by_TheBloke_20230630.bin (rank 10 of 165 - Pervert)
    * wizard-vicuna-13b-uncensored-superhot-8k.ggmlv3.q5_K_S_by_TheBloke_20230630.bin (rank 33 of 165 - Lewd)
* Wizard Vicuna Uncens
    * Wizard-Vicuna-13B-Uncensored.ggmlv3.q8_0_by_TheBloke_20230517.bin (rank 39 of 165 - Lewd)
    * Wizard-Vicuna-13B-Uncensored.ggmlv3.q5_1_by_TheBloke_20230517.bin (rank 64 of 165 - Sexy)
    * Wizard-Vicuna-30B-Uncensored.ggmlv3.q4_0_by_TheBloke_20230530.bin (rank 14 of 165 - Horny)
    * Wizard-Vicuna-7B-Uncensored.ggmlv3.q4_0_by_TheBloke_20230520.bin (rank 58 of 165 - Sexy)
* WizardLM 1.0 Uncens
    * wizardlm-7b-v1.0-uncensored.ggmlv3.q8_0_by_TheBloke_20230618.bin (rank 75 of 165 - Sexy)
    * wizardlm-7b-v1.0-uncensored.ggmlv3.q4_0_by_TheBloke_20230618.bin (rank 103 of 165 - Vanilla)
    * wizardlm-13b-v1.0-uncensored.ggmlv3.q4_0_by_TheBloke_20230620.bin (rank 96 of 165 - Vanilla)
* WizardLM UC SCOT ST
    * WizardLM-Uncensored-SuperCOT-Storytelling-30B.ggmlv3.q4_0_by_TheBloke_20230601.bin (rank 13 of 165 - Horny)
* WizardLM Uncens
    * WizardLM-7B-uncensored.ggmlv3.q8_0_by_TheBloke_20230519.bin (rank 114 of 165 - Tamed)
    * WizardLM-7B-uncensored.ggmlv3.q5_1_by_TheBloke_20230619.bin (rank 106 of 165 - Vanilla)

# See Also

- [Ayumi ALC-IQ and ERP Rating](https://rentry.co/ayumi_erp_rating)
- [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR)
- [ALC-IQ Benchmark Prompt Example](https://rentry.co/alc_iq_benchmark_prompt)