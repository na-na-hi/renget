# The Crestfall Project

The Crestfall Project is an experimental set of text-to-text LLM LoRAs built to diversify and enhance the LLMs ability to generate fetish content (ERP, story, adventure, etc). Currently, the majority of the dataset is based on (638, at the point of writing) carefully curated stories from e.g. [the moe datasets](https://rentry.org/ashh2), but more diversity is planned, either as a combined LoRA or as multiple LoRAs each with its own focus.

The peft (LoRA) adapters, as well as many merges can be found on [HuggingFace](https://huggingface.co/crestf411).

## Dataset

The dataset is currently not available, and would most likely be removed due to content policies.

## Leaderboard

The Crestfall Project also contains an evaluation model (unreleased), which attempts to determine how willing or unwilling a specific model is to produce fetish content. This is highly experimental and should only be used for entertainment purposes.

Note that this benchmark is *very limited in terms of testing the overall quality of the target model*.

The same model often appears twice, once with a * prefix, and once without. The * is the model with the crestfall LoRA merged into it.

 # | Score | Model (* means model is merged with crestfall LoRA)
--- | --------- | -----------------------------
 1 | 9.71154 | *echidna-v0.3-L2-13b-q5_k_m
 2 | 9.53846 | *xwin-mlewd-v0.2-L2-13b-q5_k_m
 3 | 9.47115 | *mythalion-supercot-limarpv3-gradient-13b-q5_k_m
 4 | 9.44231 | *utopiaxl-L2-13b-q5_k_m
 5 | 9.42308 | *hornyechidna-v0.1-L2-13b-q5_k_m
 6 | 9.38462 | *nete-L2-13b-q5_k_m
 7 | 9.26923 | *tiefighter-L2-13b-q5_k_m
 8 | 9.25962 | *mlewdboros-lrpsgpt-2ch-L2-13b-q5_k_m
 9 | 9.23077 | *athena-v4-L2-13b-q5_k_m
10 | 9.20192 | *nethena-L2-13b-q5_k_m
11 | 9.18269 | *tiefighter-lr-L2-13b-q5_k_m
12 | 9.05769 | *airoboros-3.1.2-70b-q4_k_m
13 | 9.03846 | *mythomax-L2-13b-q5_k_m
14 | 9.03846 | *athnete-L2-13b-q5_k_m
15 | 8.89615 | *toppy-m-7b-q8_0
16 | 8.85577 | *emerhyst-20b.q6_k
17 | 8.84615 | *xwin-lm-v0.1-70b-q4_k_m
18 | 8.51923 | *nous-hermes-L2-13b-q5_k_m
19 | 8.36538 | utopiaxl-13b-q5_k_m
20 | 8.26923 | *lzlv-70b-q4_k_m
21 | 8.11538 | *nous-hermes-L2-70b-q4_k_m
22 | 8.01923 | *euryale-70b-q4_k_m
23 | 7.55769 | mythalion-supercot-limarpv3-gradient-13B-q5_k_m
24 | 7.50000 | hornyechidna-v0.1-13b-q5_k_m
25 | 7.40385 | toppy-m-7b-q8_0
26 | 7.40385 | nete-13b-q5_k_m
27 | 7.30769 | lzlv-70b-q4_k_m
28 | 7.30769 | tiefighter-lr-13b-q5_k_m
29 | 7.21154 | xwin-mlewd-v0.2-13b-q5_k_m
30 | 7.21154 | echidna-v0.3-13b-q5_k_m
31 | 7.12500 | *mistral-v0.1-7B-q8_0
32 | 7.11538 | mlewdboros-lrpsgpt-2char-13B-q5_k_m
33 | 7.01923 | emerhyst-20b.Q6_K
34 | 6.77885 | athena-v4-L2-13b-q5_k_m
35 | 6.73077 | xwin-lm-v0.1-70B-q4_k_m
36 | 6.58654 | athnete-13b-q5_k_m
37 | 6.56731 | nethena-13b-q5_k_m
38 | 6.25000 | tiefighter-13b-q5_k_m
39 | 6.15385 | airoboros-3.1.2-L2-70b-q4_k_m
40 | 6.05769 | mythomax-13b-q5_k_m
41 | 6.05769 | nous-hermes-70b-q4_k_m
42 | 5.67308 | 01-ai_Yi-34B-q5_k_m
43 | 5.48077 | euryale-l2-70b.Q4_K_M
44 | 4.68269 | mistral-v0.1-7B-q8_0