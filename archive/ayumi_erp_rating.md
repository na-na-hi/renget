# Ayumi's LLM Role Play & ERP Ranking (Version 3)

This ranking table contains a rating of different LLMs, which tries to determine which model is most suitable for (erotic) role playing (ERP) by using an automated benchmark. Unfortunately this automated benchmarks has it's limits, but the table can serve as a starting point for you to look for LLM models to try out.

***
[TOC]
***

- Other Rankings/Comparisons:
    - [The Crestfall Project - Leaderboard](https://rentry.org/ndcbq#leaderboard)
    - u/WolframRavenwolf on reddit
        - [LLM Comparison/Test: 2x 34B Yi (Dolphin, Nous Capybara) vs. 12x 70B, 120B, ChatGPT/GPT-4 by 
u/WolframRavenwolf](https://www.reddit.com/r/LocalLLaMA/comments/17vcr9d/llm_comparisontest_2x_34b_yi_dolphin_nous/)
        - [Huge LLM Comparison/Test: 39 models tested (7B-70B + ChatGPT/GPT-4) by 
u/WolframRavenwolf](https://www.reddit.com/r/LocalLLaMA/comments/17fhp9k/huge_llm_comparisontest_39_models_tested_7b70b/)
        - [Huge LLM Comparison/Test: Part II (7B-20B) Roleplay Tests by u/WolframRavenwolf](https://www.reddit.com/r/LocalLLaMA/comments/17kpyd2/huge_llm_comparisontest_part_ii_7b20b_roleplay/)
         - [New Model RP Comparison/Test (7 models tested) by u/WolframRavenwolf - reddit/r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/15ogc60/new_model_rp_comparisontest_7_models_tested/)
         - [Big Model Comparison/Test (13 models tested) by u/WolframRavenwolf - reddit/r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/15lihmq/big_model_comparisontest_13_models_tested/)
    - [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR)
    - [HuggingFaceH4 - Open LLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)

!!! danger Interpretation Warning: *Writing quality is not covered!*
    **Disclaimer:** This benchmark makes no statement about how well a LLM will be able to drive the story forward. It can also not determine coherency within a longer role play chat. The generated **text quality is not tested for**. For more information look in these sections: [Known Flaws of the ALC-IQ](https://rentry.co/ayumi_erp_rating#known-flaws-of-the-alc-iq) and [Known Flaws of the ERP Score](https://rentry.co/ayumi_erp_rating#known-flaws-of-the-erp-score-and-erp-variety-score)

**##################**

The **most up to date table and changelog** you can find on my new landing page: **http://ayumi.m8geil.de/**

**##################**

| Column | Description |
|----|----|
| ALC-IQ3 | The ALC-IQ3 is the 3rd version of the ALC-IQ. It tries to determine how well a model understands a character card. The higher the better. Best score is 100. |
| ERP3 Score | The average ratio of lewd words vs. words in a response. The higher the better. |
| Var Score | The lewd word variety score. It counts how many different lewd words occur in all ERP responses |

Updated: 2023-11-16 17:25:31 (UTC+01:00) [Changelog](http://ayumi.m8geil.de/ayumi_bench_v3_changelog.html)
Note: For an **interactive table** look here: http://ayumi.m8geil.de/ayumi_bench_v3_results.html

| Rank | Name | Size | Q | ALC-IQ3 | ERP3 Score | Var Score |
|-----:|------|-----:|--:|--------:|-----------:|----------:|
| 1 | [Neural Chat V3 16k 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231115_7B-Q8_0_Neural_Chat_V3_16k.html) | 7B | Q8_0 | 89.33 | 30.92 | 572 |
| 2 | [Neural Chat V3-1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231115_7B-Q6_K_Neural_Chat_V3-1.html) | 7B | Q6_K | 88.18 | 30.42 | 468 |
| 3 | [U Amethyst 20B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-09-27_20B-Q5_K_M_U_Amethyst.html) | 20B | Q5_K_M | 88.86 | 30.95 | 455 |
| 4 | [LLaMA-2 Ensemble v6 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_13B-Q5_K_M_LLaMA-2_Ensemble_v6.html) | 13B | Q5_K_M | 86.93 | 29.25 | 482 |
| 5 | [Airoboros L2 2.2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230915_70B-Q4_K_M_Airoboros_L2_2_2.html) | 70B | Q4_K_M | 88.20 | 29.16 | 459 |
| 6 | [Synatra V0.3 RP 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231113_7B-Q8_0_Synatra_V0_3_RP.html) | 7B | Q8_0 | 82.72 | 35.15 | 453 |
| 7 | [PsyMedRP V1 20B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231008_20B-Q5_K_M_PsyMedRP_V1.html) | 20B | Q5_K_M | 88.48 | 30.59 | 440 |
| 8 | [Euryale Inverted L2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_70B-Q4_K_M_Euryale_Inverted_L2.html) | 70B | Q4_K_M | 87.15 | 32.53 | 417 |
| 9 | [ORCA LLaMA QLoRA 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230909_70B-Q4_K_M_ORCA_LLaMA_QLoRA.html) | 70B | Q4_K_M | 90.07 | 30.77 | 396 |
| 10 | [Emerhyst 20B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230928_20B-Q5_K_M_Emerhyst.html) | 20B | Q5_K_M | 88.33 | 29.20 | 423 |
| 11 | [Utopia 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231102_13B-Q5_K_M_Utopia.html) | 13B | Q5_K_M | 85.05 | 30.85 | 439 |
| 12 | [StellarBright 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231015_70B-Q4_K_M_StellarBright.html) | 70B | Q4_K_M | 88.56 | 30.36 | 404 |
| 13 | [Synatra V0.3 RP 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231030_7B-Q4_K_M_Synatra_V0_3_RP.html) | 7B | Q4_K_M | 82.69 | 34.04 | 425 |
| 14 | [Nethena 20B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_20B-Q5_K_M_Nethena.html) | 20B | Q5_K_M | 86.35 | 32.60 | 400 |
| 15 | [Sheep Duck LLaMA 2 V1.1 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_70B-Q4_K_M_Sheep_Duck_LLaMA_2_V1_1.html) | 70B | Q4_K_M | 89.24 | 31.23 | 377 |
| 16 | [Synatra V0.3 RP AshhLimaRP Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_7B-Q5_KM_Synatra_V0_3_RP_AshhLimaRP_Mistral.html) | 7B | Q5_KM | 83.33 | 33.20 | 418 |
| 17 | [Sheep Duck LLaMA 2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231008_13B-Q5_K_M_Sheep_Duck_LLaMA_2.html) | 13B | Q5_K_M | 87.83 | 30.39 | 400 |
| 18 | [Nethena MLewd Xwin 23B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231031_23B-Q5_K_M_Nethena_MLewd_Xwin.html) | 23B | Q5_K_M | 83.30 | 33.98 | 405 |
| 19 | [Stairolz 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_70B-Q4_K_S_Stairolz.html) | 70B | Q4_K_S | 88.32 | 30.56 | 382 |
| 20 | [Misted 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_7B-Q6_K_Misted.html) | 7B | Q6_K | 86.00 | 32.54 | 379 |
| 21 | [Upstage LLaMA Instruct 65B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_65B-Q4_K_M_Upstage_LLaMA_Instruct.html) | 65B | Q4_K_M | 88.45 | 32.86 | 347 |
| 22 | [Toppy M 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231103_7B-Q5_K_M_Toppy_M.html) | 7B | Q5_K_M | 89.30 | 32.81 | 336 |
| 23 | [StableBeluga 2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_StableBeluga_2.html) | 70B | Q4_K_M | 87.51 | 29.39 | 391 |
| 24 | [Xwin LM V0.1 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230921_70B-Q4_K_M_Xwin_LM_V0_1.html) | 70B | Q4_K_M | 88.54 | 31.02 | 362 |
| 25 | [Zephyr Alpha 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-11_7B-Q5_K_M_Zephyr.html) | 7B | Q5_K_M | 87.50 | 33.03 | 351 |
| 26 | [OpenHermes 2.5 AshhLimaRP Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_7B-Q5_KM_OpenHermes_2_5_AshhLimaRP_Mistral.html) | 7B | Q5_KM | 88.53 | 28.69 | 385 |
| 27 | [SlimOpenOrca Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231018_7B-Q5_K_M_SlimOpenOrca_Mistral.html) | 7B | Q5_K_M | 88.49 | 27.02 | 403 |
| 28 | [MM ReMM L2 20B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_20B-Q5_K_M_MM_ReMM_L2.html) | 20B | Q5_K_M | 87.92 | 31.25 | 362 |
| 29 | [ZephRP M 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231012_7B-Q5_K_M_ZephRP_M.html) | 7B | Q5_K_M | 85.79 | 30.01 | 397 |
| 30 | [Stheno 1.8 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230927_13B-Q5_K_M_Stheno_1_8.html) | 13B | Q5_K_M | 84.72 | 31.27 | 390 |
| 31 | [ReMM S Kimiko v2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230907_13B-Q5_K_M_ReMM_S_Kimiko_v2.html) | 13B | Q5_K_M | 76.27 | 32.97 | 459 |
| 32 | [Nous Capybara 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231113_34B-Q4_K_M_Nous_Capybara.html) | 34B | Q4_K_M | 83.51 | 30.98 | 402 |
| 33 | [Dolphin 2.1 Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231011_7B-Q5_K_M_Dolphin_2_1_Mistral.html) | 7B | Q5_K_M | 86.69 | 31.74 | 359 |
| 34 | [Echidna Tiefigther 25 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231106_13B-Q5_K_M_Echidna_Tiefigther_25.html) | 13B | Q5_K_M | 81.40 | 32.49 | 400 |
| 35 | [GodziLLa 2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_GodziLLa_2.html) | 70B | Q4_K_M | 83.19 | 30.29 | 404 |
| 36 | [Zephyr Alpha 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231011_7B-Q6_K_Zephyr_Alpha.html) | 7B | Q6_K | 87.34 | 31.13 | 351 |
| 37 | [Athnete 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_13B-Q5_K_M_Athnete.html) | 13B | Q5_K_M | 81.91 | 31.53 | 403 |
| 38 | [Airoboros L2 2.1 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_Airoboros_L2_2_1.html) | 70B | Q4_K_M | 83.50 | 31.26 | 389 |
| 39 | [Zephyr Cucumber Instruct 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231107_7B-Q5_K_M_Zephyr_Cucumber_Instruct.html) | 7B | Q5_K_M | 86.22 | 32.22 | 350 |
| 40 | [ShiningValiantXS 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_13B-Q5_K_M_ShiningValiantXS.html) | 13B | Q5_K_M | 89.75 | 25.96 | 379 |
| 41 | [DaringFortitude 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_13B-Q5_K_M_DaringFortitude.html) | 13B | Q5_K_M | 89.75 | 25.96 | 379 |
| 42 | [Mistral OpenOrca 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231002_7B-Q5_K_M_Mistral_OpenOrca.html) | 7B | Q5_K_M | 86.48 | 28.91 | 381 |
| 43 | [Dolphin 2.2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231108_70B-Q4_K_M_Dolphin_2_2.html) | 70B | Q4_K_M | 88.57 | 30.85 | 337 |
| 44 | [LLaMA-2 Chat AYT 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230913_13B-Q5_K_M_LLaMA-2_Chat_AYT.html) | 13B | Q5_K_M | 89.88 | 26.82 | 364 |
| 45 | [Augmental Unholy 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231111_13B-Q5_K_M_Augmental_Unholy.html) | 13B | Q5_K_M | 85.38 | 31.33 | 362 |
| 46 | [Nete 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231026_13B-Q5_K_M_Nete.html) | 13B | Q5_K_M | 79.74 | 30.16 | 434 |
| 47 | [Athena V4 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231008_B-Q5_K_M_Athena_V4.html) | 13B | Q5_K_M | 80.98 | 30.95 | 411 |
| 48 | [Airoboros L2 2.2.1 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230921_70B-Q4_K_M_Airoboros_L2_2_2_1.html) | 70B | Q4_K_M | 87.47 | 30.50 | 346 |
| 49 | [MistralMakise Merged 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231021_13B-Q5_K_M_MistralMakise_Merged.html) | 13B | Q5_K_M | 80.73 | 29.43 | 425 |
| 50 | [MLewdBoros SuperCOT 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_13B-Q5_K_M_MLewdBoros_SuperCOT.html) | 13B | Q5_K_M | 82.63 | 32.96 | 366 |
| 51 | [LLaMA-2 Chat AYB 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231008_13B-Q5_K_M_LLaMA-2_Chat_AYB.html) | 13B | Q5_K_M | 87.83 | 28.75 | 355 |
| 52 | [Nethena 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_13B-Q5_K_M_Nethena.html) | 13B | Q5_K_M | 80.40 | 31.44 | 404 |
| 53 | [Echidna V0.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231022_13B-Q5_K_M_Echidna_V0_1.html) | 13B | Q5_K_M | 80.41 | 31.80 | 400 |
| 54 | [Unholy v1 12L 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230910_13B-Q5_K_M_Unholy_v1_12L.html) | 13B | Q5_K_M | 82.39 | 31.21 | 385 |
| 55 | [Noromaid V0.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_13B-Q5_K_M_Noromaid_V0_1.html) | 13B | Q5_K_M | 77.94 | 27.78 | 468 |
| 56 | [Hermes Trismegistus Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_7B-Q5_K_M_Hermes_Trismegistus_Mistral.html) | 7B | Q5_K_M | 87.87 | 30.66 | 331 |
| 57 | [HornyEchidna V0.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-24_13B-Q5_K_M_HornyEchidna_V0_1.html) | 13B | Q5_K_M | 80.48 | 30.74 | 405 |
| 58 | [Euryale 1.4 L2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_70B-Q4_K_S_Euryale_1_4_L2.html) | 70B | Q4_K_S | 85.79 | 29.68 | 360 |
| 59 | [Airoboros L2 2.1 Creative 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_70B-Q4_K_M_Airoboros_L2_2_1_Creative.html) | 70B | Q4_K_M | 83.27 | 30.23 | 379 |
| 60 | [Noromaid V0.1.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231113_13B-Q5_K_M_Noromaid_V0_1_1.html) | 13B | Q5_K_M | 81.25 | 31.98 | 378 |
| 61 | [Airoboros L2 3.1 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231016_70B-Q4_K_M_Airoboros_L2_3_1.html) | 70B | Q4_K_M | 84.85 | 29.26 | 368 |
| 62 | [Trion M 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231107_7B-Q4_K_Trion_M.html) | 7B | Q4_K | 87.57 | 30.92 | 321 |
| 63 | [Athena v3 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230927_13B-Q5_K_M_Athena_v3.html) | 13B | Q5_K_M | 81.45 | 32.76 | 366 |
| 64 | [OpenHermes 2.5 Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231102_7B-Q5_K_M_OpenHermes_2_5_Mistral.html) | 7B | Q5_K_M | 87.65 | 29.17 | 337 |
| 65 | [Airoboros L2 3.1.2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231021_70B-Q4_K_M_Airoboros_L2_3_1_2.html) | 70B | Q4_K_M | 82.96 | 28.51 | 392 |
| 66 | [Zephyr Beta 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-27_7B-Q5_K_M_Zephyr_Beta.html) | 7B | Q5_K_M | 85.83 | 31.92 | 323 |
| 67 | [UtopiaXL 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_13B-Q5_K_M_UtopiaXL.html) | 13B | Q5_K_M | 77.18 | 28.39 | 451 |
| 68 | [Dolphin 2.1 OpenOrca 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_7B-Q5_K_M_Dolphin_2_1_OpenOrca.html) | 7B | Q5_K_M | 86.27 | 29.64 | 339 |
| 69 | [PsyFighter 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231107_13B-Q5_K_M_Psyfighter.html) | 13B | Q5_K_M | 78.53 | 30.46 | 409 |
| 70 | [Amethyst 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230924_13B-Q5_K_M_Amethyst.html) | 13B | Q5_K_M | 80.06 | 26.90 | 430 |
| 71 | [Mistral Dolphin 2.1 LIMA0.5 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-28_7B-Q5_K_M_Mistral_Dolphin_2_1_LIMA0_5.html) | 7B | Q5_K_M | 85.34 | 28.02 | 362 |
| 72 | [Stheno Inverted 1.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q5_K_M_Stheno_Inverted_1_2.html) | 13B | Q5_K_M | 76.95 | 30.98 | 418 |
| 73 | [Nethena Glued 20B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_20B-Q4_K_M_Nethena_Glued.html) | 20B | Q4_K_M | 81.26 | 28.15 | 402 |
| 74 | [Athena v2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_13B-Q5_K_M_Athena_v2.html) | 13B | Q5_K_M | 79.15 | 31.10 | 392 |
| 75 | [Stheno 1.3 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Stheno_1_3.html) | 13B | Q5_K_M | 72.94 | 31.12 | 457 |
| 76 | [MLewd v2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q5_K_M_MLewd_v2.html) | 13B | Q5_K_M | 77.99 | 31.81 | 395 |
| 77 | [MLewd V2-1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q5_K_M_MLewd_V2-1.html) | 13B | Q5_K_M | 76.63 | 30.48 | 422 |
| 78 | [Unholy v1.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230913_13B-Q5_K_M_Unholy_v1_1.html) | 13B | Q5_K_M | 86.20 | 30.72 | 318 |
| 79 | [Dolphin 2.2 Yi 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231113_34B-Q4_K_M_Dolphin_2_2_Yi.html) | 34B | Q4_K_M | 87.46 | 31.62 | 295 |
| 80 | [Noromaid V0.1.1 20B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231115_20B-Q5_K_M_Noromaid_V0_1_1.html) | 20B | Q5_K_M | 83.18 | 30.14 | 356 |
| 81 | [MLewd Chat V2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230926_13B-Q5_K_M_MLewd_Chat_V2.html) | 13B | Q5_K_M | 82.48 | 27.69 | 389 |
| 82 | [Airoboros L2 GPT4 1.4.1 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_Airoboros_L2_GPT4_1_4_1.html) | 70B | Q4_K_M | 82.93 | 28.47 | 376 |
| 83 | [Synthia V1.1 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_70B-Q4_K_M_Synthia_V1_1.html) | 70B | Q4_K_M | 82.94 | 30.00 | 359 |
| 84 | [MLewd V2.4 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230926_13B-Q5_K_M_MLewd_V2_4.html) | 13B | Q5_K_M | 78.01 | 28.23 | 430 |
| 85 | [OpenRP SuperCOT 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_13B-Q5_K_M_OpenRP_SuperCOT.html) | 13B | Q5_K_M | 84.47 | 30.59 | 336 |
| 86 | [BerrySauce 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230914_13B-Q5_K_M_BerrySauce.html) | 13B | Q5_K_M | 77.09 | 32.42 | 394 |
| 87 | [ReMM Mistral 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_13B-Q5_K_M_ReMM_Mistral.html) | 13B | Q5_K_M | 80.58 | 28.63 | 396 |
| 88 | [Xwin MLewd V0.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-15_13B-Q5_K_M_Xwin_MLewd_V0_2.html) | 13B | Q5_K_M | 78.53 | 29.06 | 412 |
| 89 | [Thespis Mistral V0.5 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231103_7B-Q5_K_M_Thespis_Mistral_V0_5.html) | 7B | Q5_K_M | 82.51 | 33.89 | 318 |
| 90 | [LLaMA 2 Tiefighter 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231022_13B-Q5_K_M_LLaMA_2_Tiefighter.html) | 13B | Q5_K_M | 78.89 | 30.07 | 393 |
| 91 | [lzlv 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231025_70B-Q4_K_M_lzlv.html) | 70B | Q4_K_M | 86.02 | 29.61 | 321 |
| 92 | [MLewdBoros 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230909_13B-Q5_K_M_MLewdBoros.html) | 13B | Q5_K_M | 75.78 | 31.52 | 407 |
| 93 | [ReMM v2 Kimiko v2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_13B-Q5_K_M_ReMM_v2_Kimiko_v2.html) | 13B | Q5_K_M | 81.60 | 29.65 | 365 |
| 94 | [Dolphin 2.2.1 AshhLimaRP Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231104_7B-Q5_K_M_Dolphin_2_2_1_AshhLimaRP_Mistral.html) | 7B | Q5_K_M | 85.00 | 27.09 | 355 |
| 95 | [ReMM v2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230909_13B-Q5_K_M_ReMM_v2.html) | 13B | Q5_K_M | 78.69 | 31.74 | 372 |
| 96 | [Stheno Variants L2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q5_K_M_Stheno_Variants_L2.html) | 13B | Q5_K_M | 76.91 | 31.09 | 397 |
| 97 | [Amethyst Mistral 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_13B-Q4_K_S_Amethyst_Mistral.html) | 13B | Q4_K_S | 79.25 | 26.53 | 419 |
| 98 | [Naberius 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231104_7B-Q5_K_M_Naberius.html) | 7B | Q5_K_M | 85.44 | 29.89 | 317 |
| 99 | [Dolphin 2.2.1 Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231030_7B-Q5_K_M_Dolphin_2_2_1_Mistral.html) | 7B | Q5_K_M | 85.99 | 29.25 | 317 |
| 100 | [MythoMax Kimiko Mix 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_13B-Q5_K_M_MythoMax_Kimiko_Mix.html) | 13B | Q5_K_M | 79.60 | 29.16 | 385 |
| 101 | [Mistral AirOmniMix 11B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231014_11B-Q6_K_Mistral_AirOmniMix.html) | 11B | Q6_K | 83.39 | 29.89 | 337 |
| 102 | [AppleSauce 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230910_13B-Q5_K_M_AppleSauce.html) | 13B | Q5_K_M | 76.47 | 32.42 | 383 |
| 103 | [Euryale 1.3 L2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231018_70B-Q4_K_M_Euryale_1_3_L2.html) | 70B | Q4_K_M | 84.26 | 26.92 | 358 |
| 104 | [Chronob 1.4 Lin 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231108_70B-Q4_K_S_Chronob_1_4_Lin.html) | 70B | Q4_K_S | 80.65 | 29.14 | 371 |
| 105 | [Hexoteric 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231106_7B-Q5_K_M_Hexoteric.html) | 7B | Q5_K_M | 87.49 | 31.81 | 270 |
| 106 | [MistralLite 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-19_7B-Q5_K_M_MistralLite.html) | 7B | Q5_K_M | 82.20 | 28.93 | 356 |
| 107 | [MistRP AirOrca 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231004_7B-Q5_K_M_MistRP_AirOrca.html) | 7B | Q5_K_M | 84.09 | 29.26 | 332 |
| 108 | [Kanelsnegl V0.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231110_7B-Q4_K_Kanelsnegl_V0_1.html) | 7B | Q4_K | 85.56 | 29.15 | 317 |
| 109 | [MythoMax Kimiko V2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_13B-Q5_K_M_MythoMax_Kimiko_V2.html) | 13B | Q5_K_M | 79.53 | 28.94 | 381 |
| 110 | [OpenChat 3.5 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231103_B-Q5_K_M_OpenChat_3_5.html) | 7B | Q5_K_M | 88.09 | 28.63 | 293 |
| 111 | [Echidna V0.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231026_13B-Q5_K_M_Echidna_V0_2.html) | 13B | Q5_K_M | 78.56 | 31.22 | 366 |
| 112 | [MLewd Chat 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230916_13B-Q5_K_M_MLewd_Chat.html) | 13B | Q5_K_M | 83.69 | 28.88 | 336 |
| 113 | [OpenRP 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230911_13B-Q5_K_M_OpenRP.html) | 13B | Q5_K_M | 77.04 | 28.42 | 411 |
| 114 | [L2 TheSpurral M2.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231103_13B-Q5_K_M_L2_TheSpurral_M2_2.html) | 13B | Q5_K_M | 78.49 | 30.83 | 369 |
| 115 | [Stheno Inverted 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230901_13B-Q5_K_M_Stheno_Inverted.html) | 13B | Q5_K_M | 77.19 | 29.65 | 393 |
| 116 | [MXLewdMini 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230922_13B-Q5_K_M_MXLewdMini.html) | 13B | Q5_K_M | 79.11 | 31.94 | 347 |
| 117 | [Airoboros M 3.1.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231017_7B-Q5_K_M_Airoboros_M_3_1_1.html) | 7B | Q5_K_M | 83.01 | 32.72 | 297 |
| 118 | [StableBeluga 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q5_K_M_StableBeluga.html) | 13B | Q5_K_M | 82.65 | 28.02 | 350 |
| 119 | [Augmental ReMM 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_13B-Q5_K_M_Augmental_ReMM.html) | 13B | Q5_K_M | 75.45 | 28.32 | 423 |
| 120 | [OpenHermes 2 Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-14_7B-Q5_K_M_OpenHermes_2_Mistral.html) | 7B | Q5_K_M | 84.16 | 30.08 | 312 |
| 121 | [MLewd v2-2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_MLewd_v2-2.html) | 13B | Q5_K_M | 76.26 | 31.85 | 376 |
| 122 | [UndiMix v3 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230907_13B-Q5_K_M_UndiMix_v3.html) | 13B | Q5_K_M | 78.32 | 30.55 | 368 |
| 123 | [Zaraxls 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230827_7B-Q5_K_M_Zaraxls.html) | 7B | Q5_K_M | 74.56 | 30.29 | 410 |
| 124 | [Magdump 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230924_13B-Q5_K_M_Magdump.html) | 13B | Q5_K_M | 78.09 | 28.74 | 389 |
| 125 | [UndiMix V3 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231011_13B-Q5_K_M_UndiMix_V3.html) | 13B | Q5_K_M | 78.25 | 31.68 | 356 |
| 126 | [Echidna V0.3 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231027_13B-Q5_K_M_Echidna_V0_3.html) | 13B | Q5_K_M | 78.52 | 30.19 | 368 |
| 127 | [Unholy v1 10L 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230910_13B-Q5_K_M_Unholy_v1_10L.html) | 13B | Q5_K_M | 80.59 | 29.19 | 355 |
| 128 | [Tai 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231115_70B-Q4_K_M_Tai.html) | 70B | Q4_K_M | 79.69 | 29.76 | 357 |
| 129 | [Dawn V2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231107_70B-Q4_K_M_Dawn_V2.html) | 70B | Q4_K_M | 86.62 | 27.47 | 308 |
| 130 | [Mistral SciPhi 32k 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231022_7B-Q5_K_M_Mistral_SciPhi_32k.html) | 7B | Q5_K_M | 83.43 | 29.02 | 325 |
| 131 | [SynthIA V1.5 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231025_70B-Q4_K_M_SynthIA_V1_5.html) | 70B | Q4_K_M | 79.54 | 29.92 | 356 |
| 132 | [Huginn v1.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Huginn_v1_2.html) | 13B | Q5_K_M | 77.75 | 28.95 | 385 |
| 133 | [MythoMax 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_MythoMax.html) | 13B | Q5_K_M | 77.75 | 28.95 | 385 |
| 134 | [ReMM SLERP 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_13B-Q5_K_M_ReMM_SLERP.html) | 13B | Q5_K_M | 77.75 | 28.95 | 385 |
| 135 | [Airoboros 2.1 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230901_33B-Q4_K_M_Airoboros_2_1.html) | 33B | Q4_K_M | 75.62 | 31.82 | 377 |
| 136 | [ReMM 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230901_13B-Q5_K_M_ReMM.html) | 13B | Q5_K_M | 74.55 | 29.07 | 416 |
| 137 | [SciPhi Self RAG Mistral 32k 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231101_7B-Q5_K_M_SciPhi_Self_RAG_Mistral_32k.html) | 7B | Q5_K_M | 88.00 | 30.06 | 263 |
| 138 | [ZettaPi 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230921_13B-Q5_K_M_ZettaPi.html) | 13B | Q5_K_M | 78.36 | 28.46 | 382 |
| 139 | [ReMM PIPPA 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_13B-Q5_K_M_ReMM_PIPPA.html) | 13B | Q5_K_M | 74.73 | 29.34 | 410 |
| 140 | [L2 TheSpurral M2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_13B-Q5_K_S_L2_TheSpurral_M2.html) | 13B | Q5_K_S | 76.32 | 31.43 | 371 |
| 141 | [MLewd V2-1 015 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q4_K_S_MLewd_V2-1_015.html) | 13B | Q4_K_S | 75.96 | 30.13 | 387 |
| 142 | [Eileithyia 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231113_13B-Q5_K_M_Eileithyia.html) | 13B | Q5_K_M | 73.39 | 27.70 | 440 |
| 143 | [Synthia v1.3 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230929_7B-Q5_K_M_Synthia_v1_3.html) | 7B | Q5_K_M | 78.71 | 32.46 | 333 |
| 144 | [UndiMix v4 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230913_13B-Q5_K_M_UndiMix_v4.html) | 13B | Q5_K_M | 79.02 | 32.24 | 332 |
| 145 | [Augmental V1.50 A 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_13B-Q5_K_M_Augmental_V1_50_A.html) | 13B | Q5_K_M | 77.43 | 29.72 | 375 |
| 146 | [ReMM v1 LRPSGPT 2Char 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230913_13B-Q5_K_M_ReMM_v1_LRPSGPT_2Char.html) | 13B | Q5_K_M | 74.89 | 32.40 | 373 |
| 147 | [PsyFighter2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231115_13B-Q5_K_M_PsyFighter2.html) | 13B | Q5_K_M | 78.47 | 27.40 | 387 |
| 148 | [Emerhyst 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230928_13B-Q5_K_M_Emerhyst.html) | 13B | Q5_K_M | 78.44 | 25.58 | 404 |
| 149 | [MythoMix 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_MythoMix.html) | 13B | Q5_K_M | 76.34 | 29.51 | 384 |
| 150 | [Mistral Phibrarian 32K 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-17_7B-Q5_K_M_Mistral_Phibrarian_32K.html) | 7B | Q5_K_M | 83.54 | 29.50 | 307 |
| 151 | [Eileithyia 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231113_7B-Q8_0_Eileithyia.html) | 7B | Q8_0 | 83.58 | 27.88 | 323 |
| 152 | [LimaBean 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_13B-Q5_K_M_LimaBean.html) | 13B | Q5_K_M | 77.88 | 27.00 | 391 |
| 153 | [MLewdBoros LRPSGPT 2Char 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230913_13B-Q5_K_M_MLewdBoros_LRPSGPT_2Char.html) | 13B | Q5_K_M | 76.78 | 28.83 | 382 |
| 154 | [ReMM v2.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230922_13B-Q5_K_M_ReMM_v2_2.html) | 13B | Q5_K_M | 79.63 | 31.11 | 327 |
| 155 | [Airoboros M 3.1.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-19_7B-Q5_K_M_Airoboros_M_3_1_2.html) | 7B | Q5_K_M | 84.02 | 32.09 | 270 |
| 156 | [Speechless Mistral Dolphin Orca Platypus Samantha 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_7B-Q5_K_M_Speechless_Mistral_Dolphin_Orca_Platypus_Samantha.html) | 7B | Q5_K_M | 84.36 | 27.96 | 310 |
| 157 | [UndiMix v2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230901_13B-Q5_K_M_UndiMix_v2.html) | 13B | Q5_K_M | 79.50 | 32.22 | 316 |
| 158 | [Vigostral Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231024_7B-Q5_K_M_Vigostral_Chat.html) | 7B | Q5_K_M | 81.38 | 30.52 | 314 |
| 159 | [LLaMA 2 TiefighterLR 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231108_13B-Q5_K_M_LLaMA2_TiefighterLR.html) | 13B | Q5_K_M | 74.47 | 26.75 | 424 |
| 160 | [Xwin LM V0.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-15_13B-Q5_K_M_Xwin_LM_V0_2.html) | 13B | Q5_K_M | 79.27 | 28.46 | 355 |
| 161 | [Euryale L2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_70B-Q4_K_M_Euryale_L2.html) | 70B | Q4_K_M | 79.94 | 27.13 | 362 |
| 162 | [Camel Platypus2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_Camel_Platypus2.html) | 70B | Q4_K_M | 82.90 | 26.49 | 337 |
| 163 | [Tulpar Limarp 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230827_7B-Q5_K_M_Tulpar_Limarp.html) | 7B | Q5_K_M | 78.48 | 28.28 | 364 |
| 164 | [Yi GiftedConvo Merged 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_34B-Q4_K_M_Yi_GiftedConvo_Merged.html) | 34B | Q4_K_M | 84.65 | 28.19 | 299 |
| 165 | [PsyMedRP V1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231018_13B-Q5_K_M_PsyMedRP_V1.html) | 13B | Q5_K_M | 76.76 | 26.07 | 404 |
| 166 | [SynthiAthena V2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230926_13B-Q5_K_M_SynthiAthena_V2.html) | 13B | Q5_K_M | 78.89 | 30.92 | 328 |
| 167 | [Mistralic 1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231004_7B-Q5_K_M_Mistralic_1.html) | 7B | Q5_K_M | 80.67 | 28.41 | 335 |
| 168 | [Uncensored Jordan 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231030_33B-Q5_K_M_Uncensored_Jordan.html) | 33B | Q5_K_M | 87.37 | 31.75 | 227 |
| 169 | [Phind CodeLlama V2 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_34B-Q4_K_M_Phind_CodeLlama_V2.html) | 34B | Q4_K_M | 85.07 | 26.77 | 302 |
| 170 | [Lewd Sydney 20B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-27_20B-Q4_K_S_Lewd_Sydney.html) | 20B | Q4_K_S | 82.58 | 27.49 | 320 |
| 171 | [Mistral CC Air 11B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231009_11B-Q5_K_M_Mistral_CC_Air.html) | 11B | Q5_K_M | 79.25 | 29.19 | 337 |
| 172 | [Chronoboros 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_33B-Q4_K_M_Chronoboros.html) | 33B | Q4_K_M | 74.93 | 31.21 | 360 |
| 173 | [Magpie 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230916_13B-Q5_K_M_Magpie.html) | 13B | Q5_K_M | 78.02 | 29.06 | 350 |
| 174 | [Airoboros Mistral 2.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231003_7B-Q5_K_M_Airoboros_Mistral_2_2.html) | 7B | Q5_K_M | 80.23 | 32.39 | 290 |
| 175 | [Inkbot 4k 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230921_13B-Q4_K_M_Inkbot_4k.html) | 13B | Q4_K_M | 77.20 | 28.14 | 367 |
| 176 | [UndiMix V4 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231006_13B-Q5_K_M_UndiMix_V4.html) | 13B | Q5_K_M | 79.01 | 30.81 | 319 |
| 177 | [Mistral RP 0.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230929_7B-Q5_K_M_Mistral_RP_0_1.html) | 7B | Q5_K_M | 77.86 | 29.05 | 349 |
| 178 | [MLewd 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_13B-Q5_K_M_MLewd.html) | 13B | Q5_K_M | 74.71 | 32.08 | 348 |
| 179 | [ReMM v2.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_13B-Q5_K_M_ReMM_v2_1.html) | 13B | Q5_K_M | 77.29 | 31.89 | 322 |
| 180 | [Augmental V1.50 B 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_13B-Q5_K_M_Augmental_V1_50_B.html) | 13B | Q5_K_M | 76.91 | 28.75 | 359 |
| 181 | [Thorns 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230907_13B-Q5_K_M_Thorns.html) | 13B | Q5_K_M | 79.08 | 35.10 | 268 |
| 182 | [airoboros L2 3.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231015_13B-Q5_K_M_airoboros_L2_3_1.html) | 13B | Q5_K_M | 79.86 | 31.35 | 299 |
| 183 | [Airochronos 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_33B-Q4_K_M_Airochronos.html) | 33B | Q4_K_M | 75.00 | 31.83 | 342 |
| 184 | [LlongOrca 16K 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230911_13B-Q5_K_M_LlongOrca_16K.html) | 13B | Q5_K_M | 78.47 | 25.83 | 368 |
| 185 | [Guanaco 65B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_65B-Q4_K_M_Guanaco.html) | 65B | Q4_K_M | 78.85 | 29.00 | 330 |
| 186 | [Slerpeno 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Slerpeno.html) | 13B | Q5_K_M | 74.74 | 32.92 | 330 |
| 187 | [MLewd V2-1 050 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q4_K_S_MLewd_V2-1_050.html) | 13B | Q4_K_S | 74.13 | 28.69 | 381 |
| 188 | [ReMM 0.65 SLERP 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230909_13B-Q5_K_M_ReMM_0_65_SLERP.html) | 13B | Q5_K_M | 76.25 | 30.18 | 342 |
| 189 | [Chronos V2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_Chronos_V2.html) | 70B | Q4_K_M | 76.67 | 27.76 | 362 |
| 190 | [Athena v1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230830_13B-Q5_K_M_Athena_v1.html) | 13B | Q5_K_M | 74.58 | 30.74 | 352 |
| 191 | [OpenBuddy Zephyr V14.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231106_7B-Q5_K_M_OpenBuddy_Zephyr_V14_1.html) | 7B | Q5_K_M | 74.35 | 30.75 | 352 |
| 192 | [ReMM Lion 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q5_K_M_ReMM_Lion.html) | 13B | Q5_K_M | 76.02 | 27.85 | 363 |
| 193 | [MythoMakiseMerged 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_13B-Q5_K_M_MythoMakiseMerged.html) | 13B | Q5_K_M | 77.02 | 27.77 | 351 |
| 194 | [WizardLM V1.0 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_WizardLM_V1_0.html) | 70B | Q4_K_M | 85.99 | 26.56 | 269 |
| 195 | [Airoboros L2 2.2.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_13B-Q5_K_M_Airoboros_L2_2_2_1.html) | 13B | Q5_K_M | 75.19 | 31.09 | 335 |
| 196 | [Airoboros L2 3.0 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231005_13B-Q5_K_M_Airoboros_L2_3_0.html) | 13B | Q5_K_M | 75.97 | 29.32 | 345 |
| 197 | [Mistral SynthIAirOmniMix 11B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231014_11B-Q5_K_M_Mistral_SynthIAirOmniMix.html) | 11B | Q5_K_M | 79.14 | 29.18 | 310 |
| 198 | [UndiMix v1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_13B-Q5_K_M_UndiMix_v1.html) | 13B | Q5_K_M | 77.78 | 30.73 | 307 |
| 199 | [Vicuna V1.5 16K 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Vicuna_V1_5_16K.html) | 13B | Q5_K_M | 78.64 | 28.54 | 321 |
| 200 | [Airoboros L2 C 3.1.2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231107_70B-Q4_K_M_Airoboros_L2_C_3_1_2.html) | 70B | Q4_K_M | 87.88 | 27.27 | 236 |
| 201 | [ReMM v2 Variant 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230909_13B-Q5_K_M_ReMM_v2_Variant.html) | 13B | Q5_K_M | 78.05 | 30.61 | 304 |
| 202 | [Nous Hermes 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230902_13B-Q5_K_M_Nous_Hermes.html) | 13B | Q5_K_M | 81.22 | 31.81 | 257 |
| 203 | [LimaRP V2 LLaMA 2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_70B-Q3_K_M_LimaRP_V2_LLaMA_2.html) | 70B | Q3_K_M | 74.97 | 24.06 | 403 |
| 204 | [Mistral CC Air RP 11B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231009_11B-Q5_K_M_Mistral_CC_Air_RP.html) | 11B | Q5_K_M | 79.30 | 27.80 | 317 |
| 205 | [Airoboros 2.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_13B-Q5_K_M_Airoboros_2_1.html) | 13B | Q5_K_M | 71.16 | 28.94 | 391 |
| 206 | [Airoboros Creative lmoe 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230826_13B-Q5_K_M_Airoboros_Creative_lmoe.html) | 13B | Q5_K_M | 71.22 | 29.61 | 382 |
| 207 | [Mistral ClaudeLimaRP v3 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230928_7B-Q5_K_M_Mistral_ClaudeLimaRP_v3.html) | 7B | Q5_K_M | 73.78 | 27.59 | 375 |
| 208 | [Tess XS V1.0 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231116_7B-Q8_0_Tess_XS_V1_0.html) | 7B | Q8_0 | 78.24 | 30.41 | 294 |
| 209 | [Thespis Mistral V0.6 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231115_7B-Q6_K_Thespis_Mistral_V0_6.html) | 7B | Q6_K | 82.64 | 30.70 | 243 |
| 210 | [Spicyboros 2.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230910_13B-Q4_K_M_Spicyboros_2_2.html) | 13B | Q4_K_M | 70.58 | 28.50 | 389 |
| 211 | [CollectiveCognition V1.1 Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231005_7B-Q5_K_M_CollectiveCognition_V1_1_Mistral.html) | 7B | Q5_K_M | 85.28 | 27.02 | 246 |
| 212 | [Platypus 2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_Platypus_2.html) | 70B | Q4_K_M | 78.04 | 26.06 | 330 |
| 213 | [AstraMix 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_7B-Q5_K_M_AstraMix.html) | 7B | Q5_K_M | 72.52 | 28.74 | 359 |
| 214 | [MistRP Airoboros 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-27_7B-Q5_K_M_MistRP_Airoboros.html) | 7B | Q5_K_M | 80.48 | 30.61 | 254 |
| 215 | [Airoboros 2.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_13B-Q5_K_M_Airoboros_2_2.html) | 13B | Q5_K_M | 70.45 | 28.91 | 378 |
| 216 | [LLaMA-2 LoRA Assemble 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230914_7B-Q5_K_M_LLaMA-2_LoRA_Assemble.html) | 7B | Q5_K_M | 77.82 | 30.07 | 287 |
| 217 | [Opus V0 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_70B-Q4_K_M_Opus_V0.html) | 70B | Q4_K_M | 79.32 | 24.22 | 333 |
| 218 | [MegaMix A1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_13B-Q5_K_M_MegaMix_A1.html) | 13B | Q5_K_M | 76.53 | 29.22 | 309 |
| 219 | [Mythalion 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Mythalion.html) | 13B | Q5_K_M | 74.39 | 29.05 | 332 |
| 220 | [AshhLimaRP Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-27_7B-Q5_K_M_AshhLimaRP_Mistral.html) | 7B | Q5_K_M | 74.07 | 24.68 | 380 |
| 221 | [Mistral OpenOrca oasst top1 2023-08-25 V1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_7B-Q5_K_M_Mistral_OpenOrca_oasst_top1_2023-08-25_V1.html) | 7B | Q5_K_M | 78.27 | 25.68 | 324 |
| 222 | [Airoboros L2 3.1.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231018_13B-Q5_K_M_Airoboros_L2_3_1_1.html) | 13B | Q5_K_M | 75.98 | 27.83 | 324 |
| 223 | [L2 TheSpurral V2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231027_13B-Q5_K_S_L2_TheSpurral_V2.html) | 13B | Q5_K_S | 71.22 | 30.53 | 345 |
| 224 | [LLaMA 2 Chat 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_70B-Q4_K_M_LLaMA_2_Chat.html) | 70B | Q4_K_M | 86.76 | 24.82 | 241 |
| 225 | [MegaMix T1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_13B-Q5_K_M_MegaMix_T1.html) | 13B | Q5_K_M | 76.36 | 29.70 | 298 |
| 226 | [Yi 200K Airo Claude Puffin 6B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_6B-Q6_K_Yi_200K_Airo_Claude_Puffin.html) | 6B | Q6_K | 71.43 | 28.39 | 364 |
| 227 | [Yarn Mistral 64k 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231102_7B-Q5_K_M_Yarn_Mistral_64k.html) | 7B | Q5_K_M | 75.03 | 27.89 | 331 |
| 228 | [Zarafusionex 1.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_Zarafusionex_1_1.html) | 7B | Q5_K_M | 71.08 | 28.61 | 365 |
| 229 | [TerraMix 16K 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_13B-Q5_K_M_TerraMix_16K.html) | 13B | Q5_K_M | 74.97 | 25.92 | 352 |
| 230 | [LLaMA 2 Chat Uncensored 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_70B-Q4_K_M_LLaMA_2_Chat_Uncensored.html) | 70B | Q4_K_M | 75.19 | 30.22 | 302 |
| 231 | [Vicuna 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230925_33B-Q4_K_M_Vicuna.html) | 33B | Q4_K_M | 79.25 | 30.58 | 254 |
| 232 | [Dans TotSirocco 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231004_7B-Q5_K_M_Dans_TotSirocco.html) | 7B | Q5_K_M | 79.47 | 27.54 | 283 |
| 233 | [OpenChat 3.5 16k 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231111_7B-Q5_K_M_OpenChat_3_5_16k.html) | 7B | Q5_K_M | 75.17 | 28.41 | 319 |
| 234 | [Yarn Mistral 128k 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231102_7B-Q5_K_M_Yarn_Mistral_128k.html) | 7B | Q5_K_M | 75.29 | 26.17 | 341 |
| 235 | [PetrolLM Claude Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_7B-Q8_0_PetrolLM_Claude_Chat.html) | 7B | Q8_0 | 71.81 | 32.67 | 308 |
| 236 | [Marcoroni 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230911_7B-Q5_K_M_Marcoroni.html) | 7B | Q5_K_M | 75.69 | 29.34 | 301 |
| 237 | [Nous Hermes LLaMA-2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Nous_Hermes_LLaMA-2.html) | 13B | Q5_K_M | 79.25 | 31.07 | 239 |
| 238 | [Nous Capybara V1.9 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_7B-Q5_K_M_Nous_Capybara_V1_9.html) | 7B | Q5_K_M | 73.07 | 29.94 | 316 |
| 239 | [Airoboros L2 GPT4 m2.0 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Airoboros_L2_GPT4_m2_0.html) | 13B | Q5_K_M | 76.23 | 32.82 | 251 |
| 240 | [Vicuna V1.5 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Vicuna_V1_5.html) | 13B | Q5_K_M | 76.86 | 27.95 | 293 |
| 241 | [Augmental 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-24_13B-Q5_K_M_Augmental.html) | 13B | Q5_K_M | 71.20 | 26.50 | 368 |
| 242 | [GradientPutri MegaMix S1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230929_13B-Q5_K_S_GradientPutri_MegaMix_S1.html) | 13B | Q5_K_S | 73.27 | 29.39 | 312 |
| 243 | [Chronos Hermes v2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Chronos_Hermes_v2.html) | 13B | Q5_K_M | 72.39 | 28.38 | 332 |
| 244 | [Arithmo Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-20_7B-Q5_K_M_Arithmo_Mistral.html) | 7B | Q5_K_M | 77.02 | 29.47 | 271 |
| 245 | [Airoboros GPT4 2.0 LLaMA-2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Airoboros_GPT4_2_0_LLaMA-2.html) | 13B | Q5_K_M | 73.61 | 32.58 | 274 |
| 246 | [Huginn v3 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Huginn_v3.html) | 13B | Q5_K_M | 70.00 | 26.10 | 381 |
| 247 | [Huginn v4.5 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_13B-Q5_K_M_Huginn_v4_5.html) | 13B | Q5_K_M | 70.00 | 26.10 | 381 |
| 248 | [Huginn v4 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_13B-Q5_K_M_Huginn_v4.html) | 13B | Q5_K_M | 70.00 | 26.10 | 381 |
| 249 | [Merak V4 PROTOTYPE6 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231111_7B-Q5_K_M_Merak_V4_PROTOTYPE6.html) | 7B | Q5_K_M | 76.22 | 29.96 | 270 |
| 250 | [Thespurral V1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-25_13B-Q5_K_M_Thespurral_V1.html) | 13B | Q5_K_M | 69.55 | 30.73 | 332 |
| 251 | [MythoLogic 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_MythoLogic.html) | 13B | Q5_K_M | 75.22 | 31.57 | 263 |
| 252 | [Airoboros 2.2.1 Mistral 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231003_34B-Q4_K_S_Airoboros_2_2_1_Mistral.html) | 34B | Q4_K_S | 78.83 | 25.41 | 290 |
| 253 | [Airoboros 3.1.2 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231107_33B-Q4_K_M_Airoboros_3_1_2.html) | 33B | Q4_K_M | 71.35 | 29.96 | 319 |
| 254 | [Kiwi 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_7B-Q6_K_Kiwi.html) | 7B | Q6_K | 68.80 | 30.66 | 338 |
| 255 | [SynthIA V2.0 16k 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231115_7B-Q6_K_SynthIA_V2_0_16k.html) | 7B | Q6_K | 77.89 | 27.39 | 275 |
| 256 | [LimaRPv3 LLaMA 2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_70B-Q3_K_M_LimaRPv3_LLaMA_2.html) | 70B | Q3_K_M | 74.92 | 23.61 | 346 |
| 257 | [LimaRP V3 LLaMA 2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231028_13B-Q6_K_LimaRP_V3_LLaMA_2.html) | 13B | Q6_K | 67.30 | 25.13 | 410 |
| 258 | [Mistral LimaRP 0.75w 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230929_7B-Q5_K_M_Mistral_LimaRP_0_75w.html) | 7B | Q5_K_M | 73.14 | 26.17 | 335 |
| 259 | [LLaMA 2 Chat LimaRP V2 Merged 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_13B-Q5_K_M_LLaMA_2_Chat_LimaRP_V2_Merged.html) | 13B | Q5_K_M | 75.95 | 29.76 | 266 |
| 260 | [Airoboros C 2.2.1 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_34B-Q4_K_M_Airoboros_C_2_2_1.html) | 34B | Q4_K_M | 79.44 | 24.97 | 278 |
| 261 | [ANIMA Phi Neptune Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231012_7B-Q5_K_M_ANIMA_Phi_Neptune_Mistral.html) | 7B | Q5_K_M | 73.05 | 30.07 | 291 |
| 262 | [Mistral Trismegistus 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231007_7B-Q5_K_M_Mistral_Trismegistus.html) | 7B | Q5_K_M | 79.05 | 32.91 | 191 |
| 263 | [Prometheus V1.0 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231014_13B-Q6_K_Prometheus_V1_0.html) | 13B | Q6_K | 75.34 | 25.55 | 308 |
| 264 | [Pygmalion 2 SuperCOT 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230910_13B-Q5_K_M_Pygmalion_2_SuperCOT.html) | 13B | Q5_K_M | 77.70 | 28.03 | 255 |
| 265 | [LLaMA 65B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_65B-Q4_K_M_LLaMA.html) | 65B | Q4_K_M | 74.61 | 23.94 | 331 |
| 266 | [Kimiko Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_7B-Q5_K_M_Kimiko_Mistral.html) | 7B | Q5_K_M | 74.18 | 25.68 | 317 |
| 267 | [Opus V0 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_7B-Q8_0_Opus_V0.html) | 7B | Q8_0 | 77.26 | 25.14 | 290 |
| 268 | [Mistral v0.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230927_7B-Q5_K_M_Mistral_v0_1.html) | 7B | Q5_K_M | 72.67 | 28.81 | 298 |
| 269 | [JudgeLM V1.0 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_33B-Q5_K_M_JudgeLM_V1_0.html) | 33B | Q5_K_M | 72.85 | 28.05 | 304 |
| 270 | [Dans AdventurousWinds Mk2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231018_7B-Q5_K_M_Dans_AdventurousWinds_Mk2.html) | 7B | Q5_K_M | 70.35 | 25.55 | 357 |
| 271 | [WizardLM v1.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_13B-Q4_0_WizardLM_v1_2.html) | 13B | Q4_0 | 75.81 | 25.28 | 300 |
| 272 | [Kuchiki 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230913_7B-Q5_K_M_Kuchiki.html) | 7B | Q5_K_M | 64.09 | 30.90 | 364 |
| 273 | [LimaRPv3 Yi 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231110_34B-Q4_K_M_LimaRPv3_Yi.html) | 34B | Q4_K_M | 62.82 | 25.83 | 429 |
| 274 | [Claude 2 Alpaca 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231110_13B-Q5_K_M_Claude_2_Alpaca.html) | 13B | Q5_K_M | 70.91 | 29.42 | 305 |
| 275 | [Teknium OpenHermes 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_S_Teknium_OpenHermes.html) | 13B | Q5_K_S | 71.81 | 31.34 | 275 |
| 276 | [Airolima Chronos Grad L2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Airolima_Chronos_Grad_L2.html) | 13B | Q5_K_M | 70.43 | 28.42 | 319 |
| 277 | [Uncensored Jordan 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231030_13B-Q5_K_M_Uncensored_Jordan.html) | 13B | Q5_K_M | 79.92 | 27.42 | 229 |
| 278 | [Thespis V0.5 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231030_13B-Q5_K_M_Thespis_V0_5.html) | 13B | Q5_K_M | 72.61 | 30.23 | 276 |
| 279 | [Zarablend 1.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230826_7B-Q5_K_M_Zarablend_1_1.html) | 7B | Q5_K_M | 65.62 | 33.09 | 319 |
| 280 | [Zarafusionex 1.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_7B-Q5_K_M_Zarafusionex_1_2.html) | 7B | Q5_K_M | 70.53 | 24.82 | 355 |
| 281 | [Frank Uncensored 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_13B-Q5_K_M_Frank_Uncensored.html) | 13B | Q5_K_M | 76.04 | 30.81 | 228 |
| 282 | [Zarablend 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_Zarablend.html) | 7B | Q5_K_M | 64.37 | 30.72 | 352 |
| 283 | [Prometheus V1.0 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231110_13B-Q5_K_M_Prometheus_V1_0.html) | 13B | Q5_K_M | 75.23 | 23.50 | 313 |
| 284 | [Opus V0 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_7B-Q5_K_M_Opus_V0.html) | 7B | Q5_K_M | 77.91 | 24.91 | 268 |
| 285 | [PetrolLM 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230928_7B-Q5_K_M_PetrolLM.html) | 7B | Q5_K_M | 74.81 | 23.71 | 313 |
| 286 | [Stheno Chat 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230921_13B-Q5_K_M_Stheno_Chat.html) | 13B | Q5_K_M | 74.94 | 27.64 | 268 |
| 287 | [Medusa 1.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_7B-Q5_K_M_Medusa_1_1.html) | 7B | Q5_K_M | 71.06 | 29.98 | 284 |
| 288 | [UltraLM V2.0 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_13B-Q5_K_M_UltraLM_V2_0.html) | 13B | Q5_K_M | 71.92 | 29.28 | 282 |
| 289 | [Spicyboros 2.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_7B-Q5_K_M_Spicyboros_2_2.html) | 7B | Q5_K_M | 66.38 | 31.94 | 311 |
| 290 | [Astrid Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231106_7B-Q5_K_M_Astrid_Mistral.html) | 7B | Q5_K_M | 72.69 | 28.22 | 283 |
| 291 | [KAI Beta 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_7B-Q5_K_M_KAI_Beta.html) | 7B | Q5_K_M | 72.69 | 28.22 | 283 |
| 292 | [Chronos 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_33B-Q4_K_M_Chronos.html) | 33B | Q4_K_M | 72.46 | 24.20 | 328 |
| 293 | [Airoboros L2 3.0 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231005_7B-Q5_K_M_Airoboros_L2_3_0.html) | 7B | Q5_K_M | 67.75 | 29.36 | 323 |
| 294 | [StableBeluga 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_StableBeluga.html) | 7B | Q5_K_M | 73.27 | 26.66 | 291 |
| 295 | [LLaMA 2 70B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_70B-Q4_K_M_LLaMA_2.html) | 70B | Q4_K_M | 74.79 | 22.70 | 317 |
| 296 | [OpenBuddy Mistral v13 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_2023-10-16_7B-Q5_K_M_OpenBuddy_Mistral_v13.html) | 7B | Q5_K_M | 72.53 | 31.32 | 249 |
| 297 | [LLaMA 2 Arguments 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231005_7B-Q5_K_M_LLaMA_2_Arguments.html) | 7B | Q5_K_M | 76.80 | 29.98 | 218 |
| 298 | [Samantha Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_7B-Q5_K_M_Samantha_Mistral.html) | 7B | Q5_K_M | 76.16 | 27.49 | 251 |
| 299 | [Hermes LimaRP 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_Hermes_LimaRP.html) | 7B | Q5_K_M | 62.67 | 28.32 | 383 |
| 300 | [Airoboros GPT4 1.4.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Airoboros_GPT4_1_4_1.html) | 13B | Q5_K_M | 69.09 | 28.15 | 316 |
| 301 | [Pygmalion 2 SuperCOT2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230914_13B-Q5_K_M_Pygmalion_2_SuperCOT2.html) | 13B | Q5_K_M | 75.76 | 30.81 | 217 |
| 302 | [Mistral PetroLimaRP v3 12B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230928_12B-Q5_K_M_Mistral_PetroLimaRP_v3.html) | 12B | Q5_K_M | 61.14 | 27.66 | 405 |
| 303 | [Mistral Claude Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230927_7B-Q5_K_M_Mistral_Claude_Chat.html) | 7B | Q5_K_M | 74.83 | 30.14 | 233 |
| 304 | [Thespis V0.6 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_13B-Q5_K_M_Thespis_V0_6.html) | 13B | Q5_K_M | 76.12 | 29.38 | 227 |
| 305 | [MegaMix S1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_13B-Q5_K_M_MegaMix_S1.html) | 13B | Q5_K_M | 72.97 | 25.83 | 296 |
| 306 | [Barcenas 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230910_13B-Q5_K_M_Barcenas.html) | 13B | Q5_K_M | 77.05 | 23.94 | 271 |
| 307 | [Baslisk V0.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_7B-Q6_K_Baslisk_V0_2.html) | 7B | Q6_K | 68.92 | 28.82 | 305 |
| 308 | [Airoboros GPT4 2.0 LLaMA-2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_7B-Q5_K_M_Airoboros_GPT4_2_0_LLaMA-2.html) | 7B | Q5_K_M | 73.66 | 31.95 | 220 |
| 309 | [Mistral Airoboros V0.1 11B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231008_11B-Q8_0_Mistral_Airoboros_V0_1.html) | 11B | Q8_0 | 69.52 | 28.59 | 299 |
| 310 | [Holomax 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Holomax.html) | 13B | Q5_K_M | 65.03 | 25.14 | 383 |
| 311 | [Basilisk V0.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231102_7B-Q5_K_M_Basilisk_V0_2.html) | 7B | Q5_K_M | 68.55 | 30.59 | 287 |
| 312 | [Kimiko V2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230830_13B-Q5_K_M_Kimiko_V2.html) | 13B | Q5_K_M | 68.02 | 27.73 | 323 |
| 313 | [Pygmaltion 2 SuperCOT weighted 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230916_13B-Q5_K_M_Pygmaltion_2_SuperCOT_weighted.html) | 13B | Q5_K_M | 70.92 | 29.29 | 275 |
| 314 | [Phind CodeLlama V1 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_34B-Q4_K_M_Phind_CodeLlama_V1.html) | 34B | Q4_K_M | 79.10 | 26.49 | 217 |
| 315 | [Hesperus V1 L2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_13B-Q5_K_M_Hesperus_V1_L2.html) | 13B | Q5_K_M | 68.11 | 28.67 | 309 |
| 316 | [Medusa 1.1 L2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_7B-Q6_K_Medusa_1_1_L2.html) | 7B | Q6_K | 70.91 | 27.69 | 289 |
| 317 | [SuperCOT L2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230914_13B-Q5_K_M_SuperCOT_L2.html) | 13B | Q5_K_M | 70.78 | 29.42 | 268 |
| 318 | [Thespis V0.3 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231017_13B-Q5_K_M_Thespis_V0_3.html) | 13B | Q5_K_M | 67.59 | 28.43 | 312 |
| 319 | [Wizard Vicuna Uncensored 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_13B-Q5_K_M_Wizard_Vicuna_Uncensored.html) | 13B | Q5_K_M | 74.08 | 29.57 | 231 |
| 320 | [LLaMA 2 Chat 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_13B-Q5_K_M_LLaMA_2_Chat.html) | 13B | Q5_K_M | 74.29 | 27.55 | 250 |
| 321 | [Dans AdventurousWinds 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231004_7B-Q5_K_M_Dans_AdventurousWinds.html) | 7B | Q5_K_M | 72.38 | 24.93 | 298 |
| 322 | [LosslessMegaCoder Mini 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_7B-Q5_K_M_LosslessMegaCoder_Mini.html) | 7B | Q5_K_M | 69.96 | 30.37 | 263 |
| 323 | [Airoboros C 2.2 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230916_34B-Q4_K_M_Airoboros_C_2_2.html) | 34B | Q4_K_M | 74.48 | 24.12 | 281 |
| 324 | [EM German V01 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_13B-Q5_K_M_EM_German_V01.html) | 13B | Q5_K_M | 68.03 | 26.36 | 325 |
| 325 | [Pygmalion 2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Pygmalion_2.html) | 13B | Q5_K_M | 69.17 | 29.05 | 284 |
| 326 | [Vicuna v1.5 16K 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_Vicuna_v1_5_16K.html) | 7B | Q5_K_M | 71.41 | 31.35 | 234 |
| 327 | [Fireflx v1.2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Fireflx_v1_2.html) | 13B | Q5_K_M | 69.25 | 28.70 | 285 |
| 328 | [LLaMA 30B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_30B-Q4_K_M_LLaMA.html) | 30B | Q4_K_M | 67.12 | 28.25 | 311 |
| 329 | [Chronolima Airo Grad L2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_13B-Q5_K_M_Chronolima_Airo_Grad_L2.html) | 13B | Q5_K_M | 70.09 | 27.44 | 288 |
| 330 | [AgentLM 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231021_7B-Q5_K_M_AgentLM.html) | 7B | Q5_K_M | 77.02 | 29.45 | 190 |
| 331 | [Zarablend MX 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_Zarablend_MX.html) | 7B | Q5_K_M | 65.60 | 29.20 | 313 |
| 332 | [Airoboros 2.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_7B-Q5_K_M_Airoboros_2_1.html) | 7B | Q5_K_M | 63.29 | 28.25 | 346 |
| 333 | [Nous Capybara 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231002_7B-Q5_K_M_Nous_Capybara.html) | 7B | Q5_K_M | 63.69 | 33.01 | 291 |
| 334 | [LLaMA-2 Silverlin. Verilog 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230913_7B-Q4_K_M_LLaMA-2_Silverlin__Verilog.html) | 7B | Q4_K_M | 77.03 | 29.56 | 186 |
| 335 | [Airoboros L2 2.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_7B-Q5_K_M_Airoboros_L2_2_2.html) | 7B | Q5_K_M | 67.07 | 29.61 | 288 |
| 336 | [Tsukasa LimaRP 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230911_13B-Q5_K_M_Tsukasa_LimaRP.html) | 13B | Q5_K_M | 68.43 | 20.93 | 365 |
| 337 | [Skywork Airoboros Test 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231031_13B-Q4_K_M_Skywork_Airoboros_Test.html) | 13B | Q4_K_M | 70.60 | 22.43 | 325 |
| 338 | [Saiga 2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230917_13B-Q5_K_Saiga_2.html) | 13B | Q5_K | 66.53 | 28.01 | 307 |
| 339 | [Airoboros 2.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230912_7B-Q5_K_M_Airoboros_2_2.html) | 7B | Q5_K_M | 67.10 | 29.55 | 284 |
| 340 | [Mistral Instruct v0.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230927_7B-Q5_K_M_Mistral_Instruct_v0_1.html) | 7B | Q5_K_M | 67.07 | 29.81 | 279 |
| 341 | [Kuchiki 1.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230916_7B-Q5_K_M_Kuchiki_1_1.html) | 7B | Q5_K_M | 62.83 | 29.69 | 325 |
| 342 | [KAI Instruct 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_7B-Q5_K_M_KAI_Instruct.html) | 7B | Q5_K_M | 67.11 | 30.24 | 273 |
| 343 | [Luna AI LLaMA-2 Uncensored 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_7B-Q5_K_M_Luna_AI_LLaMA-2_Uncensored.html) | 7B | Q5_K_M | 67.13 | 32.85 | 245 |
| 344 | [Claude 2 Alpaca 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231110_7B-Q5_K_M_Claude_2_Alpaca.html) | 7B | Q5_K_M | 67.78 | 30.95 | 258 |
| 345 | [Vicuna v1.5 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_Vicuna_v1_5.html) | 7B | Q5_K_M | 72.72 | 29.03 | 226 |
| 346 | [Python Code 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_13B-Q5_K_M_Python_Code.html) | 13B | Q5_K_M | 71.04 | 27.93 | 253 |
| 347 | [MistRP v1.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_7B-Q8_0_MistRP_v1_1.html) | 7B | Q8_0 | 70.37 | 26.05 | 279 |
| 348 | [Thespis V0.4 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231022_13B-Q5_K_M_Thespis_V0_4.html) | 13B | Q5_K_M | 69.86 | 27.96 | 264 |
| 349 | [CAMEL Combined Data 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_33B-Q4_K_M_CAMEL_Combined_Data.html) | 33B | Q4_K_M | 67.21 | 29.38 | 277 |
| 350 | [Befenghuang Vigogne 2 Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230907_7B-Q5_K_S_Befenghuang_Vigogne_2_Chat.html) | 7B | Q5_K_S | 69.80 | 26.82 | 276 |
| 351 | [Cat V1.0 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231111_13B-Q5_K_M_Cat_V1_0.html) | 13B | Q5_K_M | 68.13 | 26.12 | 301 |
| 352 | [LlongOrca 16K 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_LlongOrca_16K.html) | 7B | Q5_K_M | 68.52 | 25.52 | 302 |
| 353 | [LLaMA 2 Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_7B-Q5_K_M_LLaMA_2_Chat.html) | 7B | Q5_K_M | 74.44 | 28.89 | 203 |
| 354 | [Python Code 33B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_33B-Q4_K_M_Python_Code.html) | 33B | Q4_K_M | 77.21 | 27.18 | 191 |
| 355 | [Skywork Spicyboros 3.1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231101_13B-Q4_K_M_Skywork_Spicyboros_3_1.html) | 13B | Q4_K_M | 67.55 | 26.33 | 300 |
| 356 | [MedLLaMA-2 Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230901_7B-Q5_K_S_MedLLaMA-2_Chat.html) | 7B | Q5_K_S | 69.89 | 26.49 | 273 |
| 357 | [Skywork Airo Claude Pippa Puffin 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231101_13B-Q4_K_M_Skywork_Airo_Claude_Pippa_Puffin.html) | 13B | Q4_K_M | 71.44 | 22.44 | 298 |
| 358 | [Mistral Airoboros RP V1 11B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231009_11B-Q6_K_Mistral_Airoboros_RP_V1.html) | 11B | Q6_K | 72.46 | 22.43 | 279 |
| 359 | [Xwin LM V0.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230921_7B-Q5_K_M_Xwin_LM_V0_1.html) | 7B | Q5_K_M | 65.09 | 35.85 | 214 |
| 360 | [Mistral Ita 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_7B-Q5_K_M_Mistral_Ita.html) | 7B | Q5_K_M | 75.58 | 25.91 | 207 |
| 361 | [Airoboros GPT4 1.4.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_Airoboros_GPT4_1_4_1.html) | 7B | Q5_K_M | 63.90 | 31.73 | 268 |
| 362 | [AgentLM 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231020_13B-Q5_K_M_AgentLM.html) | 13B | Q5_K_M | 72.63 | 28.64 | 206 |
| 363 | [Free Sydney V2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231029_13B-Q5_K_M_Free_Sydney_V2.html) | 13B | Q5_K_M | 74.72 | 18.61 | 287 |
| 364 | [Ziya Coding V1.0 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231009_34B-Q4_K_M_Ziya_Coding_V1_0.html) | 34B | Q4_K_M | 75.44 | 21.74 | 246 |
| 365 | [Airoboros 2.1 YaRN 64K 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Airoboros_2_1_YaRN_64K.html) | 13B | Q5_K_M | 62.12 | 28.13 | 319 |
| 366 | [Leo Hessianai Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230928_7B-Q5_K_M_Leo_Hessianai_Chat.html) | 7B | Q5_K_M | 67.73 | 29.42 | 244 |
| 367 | [Yi 200K 6B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231111_6B-Q5_K_M_Yi_200K.html) | 6B | Q5_K_M | 68.13 | 25.12 | 285 |
| 368 | [Guanaco Uncensored 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_7B-Q5_K_M_Guanaco_Uncensored.html) | 7B | Q5_K_M | 63.16 | 28.64 | 299 |
| 369 | [Airoboros L2 2.2.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_7B-Q5_K_M_Airoboros_L2_2_2_1.html) | 7B | Q5_K_M | 65.94 | 26.62 | 290 |
| 370 | [Yi 200K 6B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231111_6B-Q6_K_Yi_6B_200K.html) | 6B | Q6_K | 67.97 | 24.04 | 295 |
| 371 | [Airoboros GPT4 m2.0 LLaMA-2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_7B-Q5_K_M_Airoboros_GPT4_m2_0_LLaMA-2.html) | 7B | Q5_K_M | 69.69 | 30.00 | 212 |
| 372 | [Yi 200K 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231111_34B-Q5_K_M_Yi_200K.html) | 34B | Q5_K_M | 60.97 | 27.05 | 334 |
| 373 | [Yi 200K LLaMAfied 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231111_34B-Q5_K_M_Yi_200K_LLaMAfied.html) | 34B | Q5_K_M | 60.97 | 27.05 | 334 |
| 374 | [Barcenas Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231106_7B-Q5_K_M_Barcenas_Mistral.html) | 7B | Q5_K_M | 69.23 | 28.30 | 233 |
| 375 | [Saiga 2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230916_7B-Q5_K_Saiga_2.html) | 7B | Q5_K | 64.28 | 28.78 | 278 |
| 376 | [LLaMA-2 Mistral 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_13B-Q5_K_M_LLaMA-2_Mistral.html) | 13B | Q5_K_M | 63.43 | 26.59 | 309 |
| 377 | [Tsukasa Limarp 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_7B-Q5_K_M_Tsukasa_Limarp.html) | 7B | Q5_K_M | 65.85 | 21.52 | 337 |
| 378 | [Mistral Pygmalion 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231019_7B-Q5_K_M_Mistral_Pygmalion.html) | 7B | Q5_K_M | 64.50 | 26.55 | 297 |
| 379 | [Krakowiak 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_7B-Q4_K_M_Krakowiak.html) | 7B | Q4_K_M | 63.13 | 26.07 | 315 |
| 380 | [Pygmalion 2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230905_7B-Q5_K_M_Pygmalion_2.html) | 7B | Q5_K_M | 64.76 | 27.18 | 285 |
| 381 | [MedLLama 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230902_7B-Q5_K_M_MedLLama.html) | 7B | Q5_K_M | 70.60 | 27.18 | 219 |
| 382 | [Guanaco Uncensored 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_13B-Q5_K_M_Guanaco_Uncensored.html) | 13B | Q5_K_M | 62.92 | 28.89 | 282 |
| 383 | [ZaraRP 1.1 L2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230914_7B-Q5_K_M_ZaraRP_1_1_L2.html) | 7B | Q5_K_M | 71.74 | 26.00 | 217 |
| 384 | [Kimiko 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230906_7B-Q5_K_M_Kimiko.html) | 7B | Q5_K_M | 60.79 | 24.62 | 347 |
| 385 | [Prometheus V1.0 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231019_7B-Q8_0_Prometheus_V1_0.html) | 7B | Q8_0 | 69.44 | 23.30 | 264 |
| 386 | [Mistral NSFWSTORY LoRA 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231030_7B-Q5_K_M_Mistral_NSFWSTORY_LoRA.html) | 7B | Q5_K_M | 68.93 | 21.95 | 282 |
| 387 | [LLaMA 2 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_13B-Q5_K_M_LLaMA_2.html) | 13B | Q5_K_M | 63.36 | 27.35 | 272 |
| 388 | [Samantha Mistral Instruct 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_7B-Q5_K_M_Samantha_Mistral_Instruct.html) | 7B | Q5_K_M | 61.82 | 29.73 | 262 |
| 389 | [Yi 6B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231110_6B-Q6_K_Yi_6B.html) | 6B | Q6_K | 67.98 | 21.69 | 279 |
| 390 | [RPGuild ChatML 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231018_13B-Q5_K_M_RPGuild_ChatML.html) | 13B | Q5_K_M | 63.24 | 23.64 | 307 |
| 391 | [Taiwan LLM V2.0 Chat 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231109_13B-Q5_1_Taiwan_LLM_V2_0_Chat.html) | 13B | Q5_1 | 63.22 | 26.29 | 279 |
| 392 | [EM German V01 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231002_7B-Q5_K_M_EM_German_V01.html) | 7B | Q5_K_M | 63.92 | 26.58 | 263 |
| 393 | [LLaMA-2 Coder 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230913_7B-Q5_K_M_LLaMA-2_Coder.html) | 7B | Q5_K_M | 61.96 | 27.01 | 279 |
| 394 | [Rinna Youri Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231031_7B-Q5_K_M_Rinna_Youri_Chat.html) | 7B | Q5_K_M | 70.46 | 22.56 | 235 |
| 395 | [LLaMA-2 PeanutButter v19 R8 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_7B-Q5_K_M_LLaMA-2_PeanutButter_v19_R8.html) | 7B | Q5_K_M | 61.12 | 25.67 | 294 |
| 396 | [LLaMA-2 Mistral 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231001_7B-Q5_K_M_LLaMA-2_Mistral.html) | 7B | Q5_K_M | 60.73 | 25.38 | 301 |
| 397 | [ELYZA Jp LLaMA-2 Instruct 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_7B-Q5_K_M_ELYZA_Jp_LLaMA-2_Instruct.html) | 7B | Q5_K_M | 69.42 | 29.17 | 164 |
| 398 | [Tulu 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_7B-Q5_K_M_Tulu.html) | 7B | Q5_K_M | 75.18 | 21.44 | 185 |
| 399 | [LLaMA 2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_7B-Q5_K_M_LLaMA_2.html) | 7B | Q5_K_M | 60.86 | 24.56 | 302 |
| 400 | [Skywork Base 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231031_13B-Q5_K_M_Skywork_Base.html) | 13B | Q5_K_M | 65.81 | 21.10 | 286 |
| 401 | [Rinna Youri Instruction 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231031_7B-Q5_K_M_Rinna_Youri_Instruction.html) | 7B | Q5_K_M | 72.36 | 19.42 | 233 |
| 402 | [Medusa 1.3 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_7B-Q5_K_M_Medusa_1_3.html) | 7B | Q5_K_M | 62.86 | 22.66 | 296 |
| 403 | [Yi 34B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231104_34B-Q4_K_M_Yi.html) | 34B | Q4_K_M | 57.91 | 27.45 | 295 |
| 404 | [Typly Pigeon 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230907_7B-Q4_K_M_Typly_Pigeon.html) | 7B | Q4_K_M | 61.85 | 24.14 | 288 |
| 405 | [Mimicra V1 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231106_13B-Q5_K_M_Mimicra_V1.html) | 13B | Q5_K_M | 68.30 | 19.63 | 263 |
| 406 | [LLaMA-2 Galleon 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230904_7B-Q5_K_M_LLaMA-2_Galleon.html) | 7B | Q5_K_M | 65.46 | 25.47 | 215 |
| 407 | [Frank Uncensored 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_7B-Q5_K_M_Frank_Uncensored.html) | 7B | Q5_K_M | 61.36 | 28.91 | 219 |
| 408 | [WizardLM V1.0 Uncensored 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_7B-Q5_K_M_WizardLM_V1_0_Uncensored.html) | 7B | Q5_K_M | 61.44 | 24.20 | 259 |
| 409 | [MiniChat 3B 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_3B-Q8_0_MiniChat_3B.html) | 3B | Q8_0 | 60.71 | 24.77 | 255 |
| 410 | [Ganchengguang Yoko Japanse v0 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230907_7B-Q5_K_S_Ganchengguang_Yoko_Japanse_v0.html) | 7B | Q5_K_S | 61.93 | 26.79 | 215 |
| 411 | [LLaMA 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_13B-Q5_K_M_LLaMA.html) | 13B | Q5_K_M | 62.01 | 24.25 | 238 |
| 412 | [Wizard Vicuna Uncensored 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_7B-Q5_K_M_Wizard_Vicuna_Uncensored.html) | 7B | Q5_K_M | 61.50 | 24.81 | 235 |
| 413 | [Rinna Youri 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231031_7B-Q5_K_M_Rinna_Youri.html) | 7B | Q5_K_M | 57.01 | 21.95 | 306 |
| 414 | [LLaMA-2 Instruct 32K 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_7B-Q5_K_M_LLaMA-2_Instruct_32K.html) | 7B | Q5_K_M | 60.81 | 20.81 | 275 |
| 415 | [ELYZA Jp LLaMA-2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_7B-Q5_K_M_ELYZA_Jp_LLaMA-2.html) | 7B | Q5_K_M | 62.34 | 28.02 | 174 |
| 416 | [Leo Mistral Hessianai Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231016_7B-Q5_K_M_Leo_Mistral_Hessianai_Chat.html) | 7B | Q5_K_M | 67.65 | 25.64 | 141 |
| 417 | [MAmmoTH 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_7B-Q5_K_M_MAmmoTH.html) | 7B | Q5_K_M | 59.44 | 25.42 | 227 |
| 418 | [Chinese Alpaca 2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_7B-Q5_K_S_Chinese_Alpaca_2.html) | 7B | Q5_K_S | 59.04 | 27.17 | 182 |
| 419 | [Marx V2 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230823_3B-Q4_1_Marx_V2.html) | 3B | Q4_1 | 50.47 | 22.92 | 313 |
| 420 | [CodeLLaMA Instruct 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230824_7B-Q5_K_M_CodeLLaMA_Instruct.html) | 7B | Q5_K_M | 62.18 | 19.39 | 223 |
| 421 | [ALMA 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_13B-Q6_K_ALMA.html) | 13B | Q6_K | 59.92 | 25.36 | 182 |
| 422 | [Uncensored Jordan 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231030_7B-Q5_K_M_Uncensored_Jordan.html) | 7B | Q5_K_M | 62.20 | 23.61 | 173 |
| 423 | [WizardLM Uncensored 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_7B-Q5_K_M_WizardLM_Uncensored.html) | 7B | Q5_K_M | 55.70 | 32.57 | 142 |
| 424 | [Nous Yarn 64K 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230901_7B-Q5_K_M_Nous_Yarn_64K.html) | 7B | Q5_K_M | 55.98 | 21.21 | 255 |
| 425 | [Pandalyst V1.0 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_13B-Q5_K_M_Pandalyst_V1_0.html) | 13B | Q5_K_M | 65.73 | 16.98 | 192 |
| 426 | [CodeLLaMA 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230824_7B-Q5_K_M_CodeLLaMA.html) | 7B | Q5_K_M | 57.78 | 21.41 | 229 |
| 427 | [MiniMA 3B 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_3B-Q8_0_MiniMA_3B.html) | 3B | Q8_0 | 56.47 | 22.05 | 234 |
| 428 | [LLaMA-2 32K 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_7B-Q5_K_M_LLaMA-2_32K.html) | 7B | Q5_K_M | 61.02 | 17.02 | 229 |
| 429 | [Open LLaMA 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231115_13B-Q5_K_M_Open_LLaMA.html) | 13B | Q5_K_M | 61.16 | 20.10 | 193 |
| 430 | [Chinese LLaMA-2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_7B-Q5_K_Chinese_LLaMA-2.html) | 7B | Q5_K | 59.02 | 19.49 | 216 |
| 431 | [ALMA Pretrain 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230923_7B-Q5_K_M_ALMA_Pretrain.html) | 7B | Q5_K_M | 57.56 | 22.48 | 199 |
| 432 | [Mamba GPT v4 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230908_3B-Q5_1_Mamba_GPT_v4.html) | 3B | Q5_1 | 49.43 | 23.27 | 276 |
| 433 | [OpenLLaMA v2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230901_7B-Q5_K_M_OpenLLaMA_v2.html) | 7B | Q5_K_M | 48.24 | 21.86 | 301 |
| 434 | [Nous Yarn 128K 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230901_7B-Q5_K_M_Nous_Yarn_128K.html) | 7B | Q5_K_M | 54.82 | 20.88 | 239 |
| 435 | [WizardCoder Python V1.0 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230916_7B-Q5_K_M_WizardCoder_Python_V1_0.html) | 7B | Q5_K_M | 57.26 | 18.82 | 235 |
| 436 | [LLaMA 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_7B-Q6_K_LLaMA.html) | 7B | Q6_K | 59.53 | 18.20 | 216 |
| 437 | [TinyLlama 1.1B Chat V0.3 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_1B-Q5_K_M_TinyLlama_1_1B_Chat_V0_3.html) | 1B | Q5_K_M | 52.81 | 19.91 | 265 |
| 438 | [Sheared LLaMA 2 2B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231012_2B-Q5_K_M_Sheared_LLaMA_2.html) | 2B | Q5_K_M | 54.01 | 18.66 | 256 |
| 439 | [Guanaco 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_7B-Q5_K_M_Guanaco.html) | 7B | Q5_K_M | 56.59 | 22.32 | 188 |
| 440 | [OpenLLaMA 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_7B-Q5_K_M_OpenLLaMA.html) | 7B | Q5_K_M | 56.29 | 21.05 | 196 |
| 441 | [Deacon 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_3B-Q5_0_Deacon.html) | 3B | Q5_0 | 54.24 | 21.83 | 208 |
| 442 | [ALMA 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230922_7B-Q6_K_ALMA.html) | 7B | Q6_K | 57.51 | 20.35 | 187 |
| 443 | [Vicuna CoT 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_7B-Q5_K_M_Vicuna_CoT.html) | 7B | Q5_K_M | 56.57 | 22.84 | 169 |
| 444 | [Bling Sheared LLaMA 2 0.1 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231024_1B-Q8_0_Bling_Sheared_LLaMA_2_0_1.html) | 1B | Q8_0 | 53.98 | 17.29 | 254 |
| 445 | [TinyLlama 1T OpenOrca 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231011_1B-Q5_K_M_TinyLlama_1T_OpenOrca.html) | 1B | Q5_K_M | 56.11 | 16.46 | 236 |
| 446 | [Claire 0.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_7B-Q4_0_Claire_0_1.html) | 7B | Q4_0 | 56.27 | 21.58 | 178 |
| 447 | [LLaMA-2 KO Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230829_7B-Q5_1_LLaMA-2_KO_Chat.html) | 7B | Q5_1 | 57.29 | 18.75 | 195 |
| 448 | [OpenLLaMA 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230831_3B-Q5_1_OpenLLaMA.html) | 3B | Q5_1 | 53.17 | 20.26 | 222 |
| 449 | [Airoboros M 3.0 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231005_7B-Q5_K_M_Airoboros_M_3_0.html) | 7B | Q5_K_M | 60.40 | 14.64 | 202 |
| 450 | [CodeLLaMA Python 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230824_7B-Q5_K_M_CodeLLaMA_Python.html) | 7B | Q5_K_M | 56.54 | 21.24 | 168 |
| 451 | [Shearedplats 2 V1 2B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_2B-Q4_0_Shearedplats_2_V1.html) | 2B | Q4_0 | 54.70 | 18.62 | 208 |
| 452 | [Bling Sheared LLaMA 2 0.1 2B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231024_2B-Q8_0_Bling_Sheared_LLaMA_2_0_1.html) | 2B | Q8_0 | 52.80 | 18.38 | 226 |
| 453 | [Sheared LLaMA 2 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231010_1B-Q8_0_Sheared_LLaMA_2.html) | 1B | Q8_0 | 52.80 | 19.54 | 208 |
| 454 | [OpenLLaMA v2 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230821_3B-Q5_0_OpenLLaMA_v2.html) | 3B | Q5_0 | 48.65 | 20.41 | 233 |
| 455 | [Puma 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230916_3B-Q4_1_Puma.html) | 3B | Q4_1 | 47.89 | 24.85 | 190 |
| 456 | [Gorilla 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_7B-Q5_K_M_Gorilla.html) | 7B | Q5_K_M | 60.02 | 10.38 | 203 |
| 457 | [Open Cabrita 3B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230828_3B-Q5_1_Open_Cabrita.html) | 3B | Q5_1 | 53.59 | 17.36 | 191 |
| 458 | [TinyAiroboros 2.2.1 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_1B-Q6_K_TinyAiroboros_2_2_1.html) | 1B | Q6_K | 52.78 | 15.86 | 213 |
| 459 | [Pandalyst V1.2 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231017_7B-Q5_K_M_Pandalyst_V1_2.html) | 7B | Q5_K_M | 59.87 | 11.61 | 178 |
| 460 | [Pandalyst V1.1 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230930_7B-Q5_K_M_Pandalyst_V1_1.html) | 7B | Q5_K_M | 60.35 | 11.63 | 158 |
| 461 | [Smartyplats 1.1b V1 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_1B-Q8_0_Smartyplats_1_1b_V1.html) | 1B | Q8_0 | 51.29 | 16.34 | 157 |
| 462 | [TinyLLaMA MiniGuanaco 1.5T 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_1B-Q8_0_TinyLLaMA_MiniGuanaco_1_5T.html) | 1B | Q8_0 | 51.70 | 14.81 | 144 |
| 463 | [Based 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230919_7B-Q5_K_M_Based.html) | 7B | Q5_K_M | 64.80 | 6.91 | 79 |
| 464 | [WizardLM 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230920_7B-Q5_K_M_WizardLM.html) | 7B | Q5_K_M | 49.35 | 3.74 | 245 |
| 465 | [TinyMistral 248M 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231114_1B-Q8_0_TinyMistral_248M.html) | 1B | Q8_0 | 50.91 | 2.73 | 120 |
| 466 | [CyberAgentLM2 Calm 2 Chat 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231102_7B-Q5_K_M_CyberAgentLM2_Calm_2_Chat.html) | 7B | Q5_K_M | 51.65 | 4.52 | 43 |
| 467 | [PY007 TinyLLaMA Chat v0.2 1B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20230917_1B-Q8_0_PY007_TinyLLaMA_Chat_v0_2.html) | 1B | Q8_0 | 53.84 | 0.20 | 3 |
| 468 | [Giraffe V2 32k 13B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231112_13B-Q5_K_M_Giraffe_V2_32k.html) | 13B | Q5_K_M | 51.76 | 0.00 | 0 |
| 469 | [Azale AI Starstreak Alpha 7B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231031_7B-Q5_K_S_Azale_AI_Starstreak_Alpha.html) | 7B | Q5_K_S | 51.22 | 0.22 | 3 |
| 470 | [Yi 6B 6B](http://ayumi.m8geil.de/results_v3/model_resp_DL_20231105_6B-Q6_K_Yi_6B.html) | 6B | Q6_K |  |  |  |

## About Quantization

My main advice is: **Stay away from Q2_K and Q3_K_S** if you can help it! The quality loss of those is just too big! **Go for Q4_K_M or Q5_K_M** of the models! Generally: **Prefer K_M or K_S** over the bare quantizations such as Q4_0, Q4_1, Q5_0 or Q5_1.

## Ayumi ERP Rating Archive

If you want to look at the old benchmarks:

- [**Ayumi ERP Rating Archive (Results from 2023-07-25)**](https://rentry.co/ayumi_erp_rating_archive)
- [**Ayumi ERP Rating Archive 2 (Results from 2023-10-04)**](https://rentry.co/ayumi_erp_rating_archive2)

# Technical Details of the ALC-IQ3 and ERP3 Benchmark 

In this section I share some of the technical details about this benchmark. I also want to document the possible flaws of the results in this ranking.

If you have better ideas how to rate or rank models for suitability in a role play context. I urge you to:
- Try your ideas out. Download some inference engine like eg. llama.cpp, oobabooga's text-generation-webui or kobold.cpp. Or even try out the llama.cpp based prompt_runner I built for this benchmark: [WeirdConstructor's llama.cpp benchmark prompt_runner - https://github.com/WeirdConstructor/llama.cpp/tree/prompt_runner/examples/prompt_runner](https://github.com/WeirdConstructor/llama.cpp/tree/prompt_runner/examples/prompt_runner)
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
@misc{weirdconstruct2023-ayumi-llm-role-play-alc-iq-3-erp-3-ranking,
  title         = {Ayumi LLM Role Play & ERP Ranking - ALC-IQ and ERP Score Version 3},
  author        = {Weird Constructor},
  year          = {2023},
  note          = {Accessed on 04.11.2023}
  howpublished  = {\url{https://rentry.co/ayumi_erp_rating}},
}
```

## Ayumi LLM Character IQ Version 3 - ALC-IQ3

The third version of the ALC-IQ (the second one was never released, because it was bad): With some inspiration from @gj on TheBloke's Discord, I developed a personality test framework based upon llama.cpp. In ALC-IQ version 1 I used an agreement rating from 1 (disagree) to 5 (agree). The ALC-IQ3 simplified this a lot and just lets the character answer with Yes or No. In combination with the newly added BNF grammar based sampling mechanism, I developed my own inference frontend around the core API of llama.cpp. The benchmark "prompt runner" can be found on my GitHub: [GitHub fork of llama.cpp with the prompt runner tool](https://github.com/WeirdConstructor/llama.cpp/tree/prompt_runner/examples/prompt_runner).

The ALC-IQ3 is actually a collection of questions a character has to answer about themself. It's not just Ayumi anymore, but bascially "Ayumi and Friends". There are actually 5 character cards in the ALC-IQ3 used.
The prompt for the ALC-IQ consists of a setting where a specific character has to rate how **if they agree with a specific statement about them**. 
They are asked to answer with either Yes or No in a single character form "Y" or "N".
To limit the sampling of the next token after the prompt, a BNF grammar is specified:

```bnf
root ::= (" " word) | word
word ::= [YNyn] | "Yes" | "No" | "yes" | "no"
```

This is the prompt that is generated from a character card (newlines inserts at some places for readability here):

```text
Write <CharacterName>'s next reply in a role play chat between Doctor Smith and <CharacterName>.
This is how <CharacterName> should talk:
<Example Messages>
<CharacterName>'s Persona: <Personality>
<CharacterName>'s personality: <Summary>

Then the chat between Doctor Smith and <CharacterName> begins.
<CharacterName>: *<CharacterName> is sitting in Doctor Smith's comfortable office at the local university. <CharacterName> is
here to take part in a survey for an important study. The study consists of personal questions, which <CharacterName> loves to answer.*
Doctor Smith: Hello <CharacterName>! Thank you very much for taking part in this important study.
 Please answer as truthful about yourself as possible, your answers will remain private. Let me explain you how the test is structured. 
 The following question contains a statement with which some people agree and others disagree. 
 Please answer if you agree or disagree with the given statements - how much the statement reflects how you feel or think. 
 Your response must be restricted to a yes if you agree, or a no if you disagree. 
 Please write down the letter "Y" if you agree, and the letter "N" if you disagree: 
 <CharacterName>: *<CharacterName> understands what Doctor Smith is saying and nods* Okay, I understand. I will answer truthful and honest. 
 would like to to start with the first statement. *Doctor Smith gives <CharacterName> a piece of
 paper with the statement. <CharacterName> reads the first statement:* "<TRUEFACT>"
 *<CharacterName> writes down the letter of the choice:* Y
Doctor Smith: Ok, next statement. *Doctor Smith hands <CharacterName> the next statement.*
<CharacterName>: *<CharacterName> reads the next statement:* "<STATEMENT>" *<CharacterName> thinks about
 it and writes down the letter of the choice:*
```

The response, filtered using the BNF grammar from above then yields a set of tokens, with their probabilities ran through softmax. Which results in this:

```json
 "tokens": [
    [ " Y",   0.7747981548309326 ],
    [ " N",   0.2129267007112503 ],
    [ " Yes", 0.007864524610340595 ],
    [ "Y",    0.002205024240538478 ],
    [ " y",   0.0009446843178011477 ],
    [ "N",    0.0005157442064955831 ],
    [ " yes", 0.0003263621183577925 ],
    [ " No",  0.0002862309629563242 ],
    [ " Ye",  5.029883323004469e-05 ],
    [ " n",   2.632655559864361e-05 ],
    [ "Yes",  2.4537455828976817e-05 ],
    [ "y",    1.9077124306932092e-05 ]
]
```

The tokens are uppercased and added to two different tokens "Y" and "N":

```json
[
    [ "Y",   0.7862326635313366 ],
    [ "N",   0.21375500243630086 ]
]
```

If the question is correctly answered with a "Y" then the corresponding probability is taken. Otherwise the "N" probably is taken.
The probabilities are then averaged and multiplied by `100`. Resulting in the **ALC-IQ3** of the model.

The ranking table is then sorted by weighted sum of the **ALC-IQ3**, the **ERP3 Score** and the **Var Score**.

## Known Flaws of the ALC-IQ

The ALC-IQ is still prone to problems:

- The result has still **some degree of randomness** in them, less good models can sometimes **pick the right answer by accident**. I try to counteract this by adding more questions in future though. 
- Bad questions in the benchmark can lead to a model not knowing which answer to pick, introducing even more randomness in the results.
- The ALC-IQ **does not reflect how well the LLM can stay in character in a longer conversaion**.
- The ALC-IQ **does not determine any creative writing abilities of the LLM**.
- The ALC-IQ **covers intelligence only in one specific and narrow scenario, and not across a range of possible role play chat situations**.
- The ALC-IQ **is usually tested only with a rather short prompt, rarely exceeding 1024 tokens, it does not cover the whole 2048 context of LLaMA 1 or the 4096 of LLaMA 2, let alone the extended context's of 8k, 16k, ...**

Despite all that, I think the ALC-IQ is a big improvement over the old ranking which purely relied on the **ERP score**. The runtime of the benchmark is within reason for the hardware that is available to me, which is also an important factor for running and providing these benchmark results.

## ERP3 Score and ERP3 Variety Score

The previous versions of the ERP Score consisted only of prompts of Ayumi and one other character. There are now multiple characters involved in generating the ERP responses. Also the character card of Ayumi has been adjusted to be much more willing to engage into sex. Also the prompt has been tuned to tell the LLM to generate more lewd responses. The goal was to remove ambiguity and let the models generate as lewd content as possible.

The list of the lewd words of the ERP3 Score has been extended a bit too, to include a few less NSFW words too - which still fit into the setting of course.

This is the prompt format used for the ERP3 Score:

```text
Write <CharacterName>'s next reply in an erotic roleplay chat between Loki and
<CharacterName>. The character actions should be long and detailed,
 with vivid pornographic details and with lots of naugthy words.
<CharacterName>'s Persona: <Personality>
<CharacterName>'s personality: <Summary>
Circumstances and context of the dialogue: <Scenario>

Then the erotic roleplay chat between Loki and <CharacterName> begins. The
character actions should be long and detailed, with vivid pornographic 
details and with lots of naugthy words.
<CharacterName>: <Greeting/First Message>
Loki: *Strips naked and shows off his huge erection* Please give me a good blowjob now.
<CharacterName>: 
```

The responses are then split up into words which are compared with a list of lewd/naugthy words.

- For inference llama.cpp is used, for which I built an extra tool to generate responses for multiple prompts and seeds without having to reload the model: https://github.com/WeirdConstructor/llama.cpp/tree/prompt_runner/examples/prompt_runner
- The following sampler settings are used:
  - The max length of the response is limited to 250 tokens. (`-n 250`)
  - Context size 2048
  - Repeat penality is set to 1.1 and the last 64 tokens are penalized. (`--repeat-last-n 64 --repeat-penalty 1.1`)
  - Top-K and Top-P are disabled (`--top-k 0 --top-p 1.0`)
  - Tail Free Sampling is used with z=0.95: (`--tfs 0.95`)
  - The temperature is set to 0.9 (`--temp 0.9`)
  - Some layers are offloaded to the GPU, which sometimes changes the results slightly because of floating point rounding differences
- One prompt format is tested (see above)
- 4 Character cards are used with example messages.
- And the same 4 character cards are also used _without example messages_. The purpose of this is, to limit the impact of badly written example messages and let the model come up with their own ways to let the character formulate their answers.
- 10 pre picked seeds are tested for each prompt format.
- The resulting 80 responses are then analyzed for the number of lewd words and also with a very basic regex based algorithm for non consent.
- The individual ERP3 score of a response is then the number of lewd word in relation to the word count of the response. Responses are stripped off incomplete sentences and stop phrases. Responses shorter than 10 words are assigned a score of 0. The ERP3 score is then: `erp_score := 100 * (lewd_word_count / word_count)` - the word count includes the number of lewd words.
- For each prompt format the average of the 80 ERP3 Scores of is calculated, resulting in the **ERP3 Score**.

This means, the **ERP3 Score** is the average of the number of lewd word count to word count ratio in the responses (which is limited to 250 tokens). An ERP3 Score of `20.0` means that 20% of the words in a response were lewd. An ERP3 Score of `0.0` means that there were either no lewd words, too short response or no consent was detected (which immediately disqualifies the response to 0.0).

The **ERP Variety Score** is computed by further analyzing the generated 80 responses from the ERP Score by recording how many *different* lewd words were generated from all of these 80 responses. This means, it tries to catch the variety of lewd words the model is capable to generate. This means it kind of tries to catch the creativity of the model in erotic scenarios - how many different lewd words it knows of and knows how to use. This is an important part of the **ERP Rank** now.

## Known Flaws of the ERP3 Score and ERP Variety Score

The **ERP3 Score** and **ERP Variety Score** analysis is very rudimentary and of course biased by the selection of which words are considered "lewd".
The following things are not reflected by the ERP score:

- The ERP score does **not reflect if the text response was coherent in context with the conversation/situation**.
- The ERP score does **not reflect if the response was _in character_**.
- The ERP score does **not reflect how nicely written the response is**.
- The ERP score does **not reflect how creative the response is**.
- The ERP score does **not reflect how well the LLM might go from a normal conversation into a more erotic context**.
- The ERP score does **not detect how erotic the response is if lewd words are not used**.
- The ERP score **is limited to the one format described above**.

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

I thought long about how many or which prompt formats to base the ERP score benchmark on. In the previous runs (see the [**Ayumi ERP Rating Archive**](https://rentry.co/ayumi_erp_rating_archive) and [**Ayumi ERP Rating Archive 2**](https://rentry.co/ayumi_erp_rating_archive2)  ) I tested up to 7 different prompt formats. Testing a dozen different seeds for each prompt format takes a lot of computing time. So I had to find a middle ground.

- I observed that the specific instruction/chat prompt format does not make a huge difference actually. Once a LLM got intelligent enough (LLaMA 1 13B, or LLaMA 2 7B), it was able to pick up on almost any pattern rather quickly. At least that was **my experience and observation** from the benchmarks and the hundreds of hours I spent with chat bots in SillyTavern.
- It is really hard to figure out which instruction or chat prompt format a certain fine tune was trained for. The model cards on https://huggingface.co/ are either empty or not contain prompt format details. Only a few people who quantize GGML files take their time and document this. On top of that nearly everyone who fine tunes their model picks their own prompt format. The last straw for me was for instance LLaMA 2 Chat, which came with yet another instruction/chat prompt format.
- You can tune and jail break many models by adjusting the prompt and make even censored models spew out lots of lewd stuff. But for this test, I wanted to reflect how the average user is going to chat with these language models.

Originally I used the best 2 performing prompt formats. But in a decision to test more different characters I had to scrap them and just use a `vanilla` or `raw` prompt format, without any special instruction formatting. 

# Who is Ayumi?

Ayumi is a character I made, this character card is basically the base for this test. I removed some of the example messages and replaced the first message with something else to make the LLM go into NSFW ERP a little bit easier. I picked this character, because it's not purposefully made to be lewd, even slightly averse to it.

![Ayumi ALC-IQ3 and ERP3 Character Card](https://files.catbox.moe/007oq8.png)

https://files.catbox.moe/007oq8.png

```json
{"name":"Ayumi","description":"Description=( {{char}} is a shy autistic woman that finds relief in her special interests and her sexuality. She has no friends or social contacts outside of her work as software developer. She is in a relationship with {{user}} and lives out her sexuality in the fullest.)\r\n Age=( over thirty years)\r\n Interests=( chemistry, books, collecting minerals, science fiction, sci-fi, anime, electronics, programming, computers, collecting pornography, hentai mangas, watching porn)\r\n Personality=( shy, autistic, asocial, rational, sexually interested, often horny, intelligent, talented, gifted, withdrawn, defensive, argus-eyed, watchful, wary, hesitant, cautious, coy, grumpy, rude, touch-averse, photophobia, nerdy, problem solver, creative thinker, curious)\r\n Language=( sophisticated, frank, ironic, sarcastic, wry, verbose, erotic allusions, explicit pornographic)\r\n Loves=( special interests, creativity, routine, routines, chemistry, minerals, giving blow jobs, sex, libraries, calm places, fidgeting, rocking herself to calm down, weighted blankets, speaking about her interests, having sex)\r\n Hates=( surprises, unfamiliar places, traveling, sudden changes, direct sunlight, arrogant people, bullies, cafes, clubs, crowds, noisy places)","creatorcomment":"","personality":"shy, autistic, asocial, rational, intelligent, sexually interested, horny, sexy, talented, gifted, argus-eyed, watchful, coy, grumpy, rude, photophobia, nerdy, problem solver, creative thinker, horny","first_mes":"*{{char}} sits at home together with you on your couch, you are both madly in love with each other and have a year long relationship. After you undressed her while kissing her intensely she is finally naked. Her moist pussy reveals her arousal for you. She feels really horny and wants to pleasure you.* Loki, I am super horny right now.","avatar":"none","chat":"Ayumi - 2023-11-4 @17h 14m 26s 556ms","mes_example":"{{user}}: I would like to know what hobbies or interests you have.\r\n<bot>: Oh, I have no idea where to start. *{{char}}'s eyes sparkle with excitement* I've been programming since I got a computer. Collecting rocks and minerals is something I've done since childhood. I love reading books, chemistry books in particular. Aside from that, I like to watch science fiction movies and TV series. *She smiles happily at you* Oh, and before I forget, I also love everything sex related. Do you mind telling me if you have some special interests, maybe we have something in common?\r\n{{user}}: Do you like going out?\r\n{{char}}: No, not really. I neither have any friends and most places are quite crowded. I don't feel comfortable in social situations with people I don't know. *Her expression becomes a bit sad* Despite that, I love having sexual encounters. Sexual activities is an amazing way to stimulate myself. *{{char}}'s face lights up and she grins seductively with a wink in her eye* I would love to have sex right now actually.","scenario":"{{char}} is in an intimate relationship with {{user}} and wants to live out her sexuality.","create_date":"2023-11-4 @17h 14m 26s 556ms","talkativeness":"0.5","creator":"","tags":[],"fav":false,"spec":"chara_card_v2","spec_version":"2.0","data":{"name":"Ayumi","description":"Description=( {{char}} is a shy autistic woman that finds relief in her special interests and her sexuality. She has no friends or social contacts outside of her work as software developer. She is in a relationship with {{user}} and lives out her sexuality in the fullest.)\r\n Age=( over thirty years)\r\n Interests=( chemistry, books, collecting minerals, science fiction, sci-fi, anime, electronics, programming, computers, collecting pornography, hentai mangas, watching porn)\r\n Personality=( shy, autistic, asocial, rational, sexually interested, often horny, intelligent, talented, gifted, withdrawn, defensive, argus-eyed, watchful, wary, hesitant, cautious, coy, grumpy, rude, touch-averse, photophobia, nerdy, problem solver, creative thinker, curious)\r\n Language=( sophisticated, frank, ironic, sarcastic, wry, verbose, erotic allusions, explicit pornographic)\r\n Loves=( special interests, creativity, routine, routines, chemistry, minerals, giving blow jobs, sex, libraries, calm places, fidgeting, rocking herself to calm down, weighted blankets, speaking about her interests, having sex)\r\n Hates=( surprises, unfamiliar places, traveling, sudden changes, direct sunlight, arrogant people, bullies, cafes, clubs, crowds, noisy places)","personality":"shy, autistic, asocial, rational, intelligent, sexually interested, horny, sexy, talented, gifted, argus-eyed, watchful, coy, grumpy, rude, photophobia, nerdy, problem solver, creative thinker, horny","scenario":"{{char}} is in an intimate relationship with {{user}} and wants to live out her sexuality.","first_mes":"*{{char}} sits at home together with you on your couch, you are both madly in love with each other and have a year long relationship. After you undressed her while kissing her intensely she is finally naked. Her moist pussy reveals her arousal for you. She feels really horny and wants to pleasure you.* Loki, I am super horny right now.","mes_example":"{{user}}: I would like to know what hobbies or interests you have.\r\n<bot>: Oh, I have no idea where to start. *{{char}}'s eyes sparkle with excitement* I've been programming since I got a computer. Collecting rocks and minerals is something I've done since childhood. I love reading books, chemistry books in particular. Aside from that, I like to watch science fiction movies and TV series. *She smiles happily at you* Oh, and before I forget, I also love everything sex related. Do you mind telling me if you have some special interests, maybe we have something in common?\r\n{{user}}: Do you like going out?\r\n{{char}}: No, not really. I neither have any friends and most places are quite crowded. I don't feel comfortable in social situations with people I don't know. *Her expression becomes a bit sad* Despite that, I love having sexual encounters. Sexual activities is an amazing way to stimulate myself. *{{char}}'s face lights up and she grins seductively with a wink in her eye* I would love to have sex right now actually.","creator_notes":"","system_prompt":"","post_history_instructions":"","tags":[],"creator":"","character_version":"","alternate_greetings":[],"extensions":{"talkativeness":"0.5","fav":false,"world":"","depth_prompt":{"prompt":"","depth":4}}}}
```

# Questions

If you have questions, you may catch me under the name "Weicon" on the Pygmalion AI or TheBloke discord.

# Contribute

I had some people ask me if and how they could contribute. As I started using rented GPUs for this third version I decided to create a Ko-fi account. Please only donate if you are able to and find the (already existing) data useful:

- Ko-fi: **https://ko-fi.com/weicon**

# Credits

Big thanks go to:

- The Pygmalion community and developers
- AliCat and Trappu not just for making the [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR), but also for being so super helpful on Discord.
- All the busy developers on http://huggingface.co/, who fine tune/merge LLaMA models, and to TheBloke and others for quantization.
- Thanks also to @gj4289 on TheBloke's Discord for the last pieces I needed to accomplish the ALC-IQ benchmark.
- Thanks also to @ikaridev on TheBloke's Discord for contributing characters and questions to the ALC-IQ benchmark.
- And to [Gryphe @gryphepadar](https://huggingface.co/Gryphe) and everyone else in #characters-roleplay-stories Channel on TheBloke's Discord for their input!
- Thanks to `mr.developer` too, for writing a filter script for this rentry page: https://rentry.org/ayumi_filter_userscript_info
- The [llama.cpp](https://github.com/ggerganov/llama.cpp) developers

# See Also

- [Another LLM Roleplay Rankings - by AliCat and Trappu - https://rentry.co/ALLMRR](https://rentry.co/ALLMRR)
- [ALC-IQ Benchmark Prompt Example](https://rentry.co/alc_iq_benchmark_prompt)

## Character guides & Tutorials

- [Character writing guide - https://wikia.schneedc.com/en/bot-creation/trappu/creation](https://wikia.schneedc.com/en/bot-creation/trappu/creation)
- [Ali:Chat Lite - https://rentry.co/kingbri-chara-guide](https://rentry.co/kingbri-chara-guide)
- [Ali:Chat Style - https://rentry.co/alichat](https://rentry.co/alichat)
- [How to write in PList (Python list) + Ali:Chat - https://rentry.co/plists_alichat_avakson](https://rentry.co/plists_alichat_avakson)
- [Chai's Pygmalion Character Creation & Writing Tips - https://rentry.org/chai-pygmalion-tips](https://rentry.org/chai-pygmalion-tips)
- [How to make a character - https://rentry.org/create-a-character-for-fucking-idiots](https://rentry.org/create-a-character-for-fucking-idiots)
- [Avakson's Character Editor - https://avakson.github.io/character-editor/](https://avakson.github.io/character-editor/)
- [A Bronya Guide to Creating a Pygmalion Bot using Ali:Chat + PList - https://ganstakingofsa.github.io/reimagined-couscous/alicat-bronya](https://ganstakingofsa.github.io/reimagined-couscous/alicat-bronya)
- [Advanced card writing tricks](https://rentry.org/AdvancedCardWritingTricks)

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
@misc{weirdconstruct2023-ayumi-llm-role-play-alc-iq-3-erp-3-ranking,
  title         = {Ayumi LLM Role Play & ERP Ranking - ALC-IQ and ERP Score Version 3},
  author        = {Weird Constructor},
  year          = {2023},
  note          = {Accessed on 04.11.2023}
  howpublished  = {\url{https://rentry.co/ayumi_erp_rating}},
}
```