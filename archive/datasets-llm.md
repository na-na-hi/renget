### Dampf's list of good datasets for LLM fine-tuning

| Dataset Link                                                                                                                 | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Paper Link                                                    |
|------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
| [WizardLM evol instruct V2](https://huggingface.co/datasets/ehartford/WizardLM_evol_instruct_V2_196k_unfiltered_merged_split) | The newest version of the highly acclaimed WizardLM evol instruct dataset. This dataset builds upon its 70k predecessor that led to impressive models like ehartford/WizardLM-13B-Uncensored. The dataset, merged and uncensored by Eric Hartford, offers even more data for fine tuning language models.                                                                   | [Paper by WizardLM](https://arxiv.org/abs/2304.12244)         |
| [Airoboros GPT-4 1.4.1](https://huggingface.co/datasets/jondurbin/airoboros-gpt4-1.4.1)                                    | An excellent synthetic GPT-4 dataset created by Jon Durbin. Its diverse content, spanning coding and scripting tasks, agent and function style prompts, general tasks, riddles, roleplay, and more, aims to enhance the world knowledge and coherence of language models for a wide range of tasks.                    [More information](https://huggingface.co/datasets/jondurbin/airoboros-gpt4-1.4) | - |
| [PygmalionAI PIPPA](https://huggingface.co/datasets/PygmalionAI/PIPPA)                                                                      | This is the latest release by the respected PygmalionAI-Team, known for their good roleplay and instruct models with both NSFW and SFW capabilities. The dataset is collected from sources such as CharacterAI and Claude, providing a unique blend of human-written and AI responses. This is a key advantage of this dataset, as many other roleplay datasets are entirely synthetic. In my personal tests, the dataset's roleplay nature enhances world understanding and logic for instruct tasks as well as correlations between objects, size differences and the world itself are described in more detail, contributing to improved model performance. | [A Partially Synthetic Conversational Dataset](https://arxiv.org/abs/2308.05884)                                                   |
| [Evol Codealpaca v1](https://huggingface.co/datasets/theblackcat102/evol-codealpaca-v1)                                   | A coding dataset by theblackcat102, intended to replicate WizardLM's successful WizardLM coder. Similar to roleplay data, good coding datasets are crucial not only for refining coding skills but also for boosting general capabilities of language models.                                                                                                             | [Paper by WizardLM](https://arxiv.org/abs/2306.08568)     |
| [Starcoderdata](https://huggingface.co/datasets/bigcode/starcoderdata)                                                    | A popular coding dataset, contributing to excellent performance in coding tasks. Fine-tuned models' performance details can be found in this [link](https://levelup.gitconnected.com/starcoder-a-new-ai-model-that-surprised-me-on-coding-assistance-b49e9d334bcf).                                                                                                                                       | -                                                             |
| [OpenOrca](https://huggingface.co/datasets/Open-Orca/OpenOrca) and [Dolphin](https://huggingface.co/datasets/ehartford/dolphin) | Excellent  and innovative datasets from respected LLM community members like Eric Hartford, WingLian, Teknium, NanoBit, etc. These datasets utilize GPT-4 as a parent model, enhancing model capabilities by explaining complex instructions using a step-by-step thought process. This approach improves reasoning and comprehension, as demonstrated by [OpenOrca-Preview2-13B](https://huggingface.co/Open-Orca/OpenOrcaxOpenChat-Preview2-13B). | [Paper by Microsoft](https://arxiv.org/abs/2306.02707)       |
| [TinyStories](https://huggingface.co/datasets/roneneldan/TinyStories)                                                    | A popular and heartwarming dataset in simple language, perfect for training small models to generate coherent language. While primarily used for training smaller models, I think it has potential to enhance larger models' ELI5-task capabilities and produce more direct answers by fine-tuning them with a smaller version of this dataset.                                                                                 | [Paper](https://arxiv.org/abs/2305.07759)                    |
| [LosslessMegaCodeTrainingV2 1m Evol Uncensored](https://huggingface.co/datasets/rombodawg/LosslessMegaCodeTrainingV2_1m_Evol_Uncensored) | A vast, uncensored coding dataset merging Alpaca Evol and Rombodawg's work. This dataset significantly enhances model coding, mathematical, and reasoning abilities, making it a prime choice for uncensored models.                                                                   | -                                                             |
| [OpenAssistant Guanaco](https://huggingface.co/datasets/timdettmers/openassistant-guanaco) and [Guanaco Unchained](https://huggingface.co/datasets/CheshireAI/guanaco-unchained) | High-quality instruct-tuned datasets by Tim Dettmers and uncensored version by CheshireAI. It reuses the name of the first [GuanacoDataset](https://huggingface.co/datasets/JosephusCheung/GuanacoDataset). Tim Dettmer's version is a subsets of the acclaimed OASST1 dataset by OpenAssistant, introducing a vast conversation tree and annotated paths, elevating instruct capabilities and reasoning for complex tasks.                      | [Paper](https://arxiv.org/abs/2304.07327)                    |
| [GPTeacher](https://github.com/teknium1/GPTeacher)                                                                        | A flexible dataset consisting of entirely synthetic instruct and roleplay data by GPT-4. This dataset offers higher quality output compared to GPT-3.5's synthetic datasets, contributing to improved model performance. Do note that there is a possibility this dataset may include small traces of alignment and censorship.                                                                                                         | -                                                             |
| [Open Platypus](https://huggingface.co/datasets/garage-bAInd/Open-Platypus)	| A fresh release by the garage-bAInd community. As you will notice, this already includes some datasets found in this list. It features a variety of logic tasks, enhancing model capabilities. [Stable-Platypus2-13B](https://huggingface.co/garage-bAInd/Stable-Platypus2-13B), one of the best performing models on HF Leaderboard in its class currently, demonstrates the dataset's quality. Please note that there might be alignment and slight traces of censorship as it has not been uncensored. You might want to pick parts of the dataset to fit your needs.	|-|

**Datasets Added by the Community:**

| Dataset Link                                                                                                     | Description                                                                                                               | Paper Link                                   |
|------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|----------------------------------------------|
| [COT Submix Original](https://huggingface.co/datasets/conceptofmind/cot_submix_original)                        | A diverse dataset featuring a wide range of riddles and logic tasks, enhancing logical reasoning capabilities of models. | -                                          |
| [Lima](https://huggingface.co/datasets/GAIR/lima)                                                                | -                                                                                                                         | [Paper](https://arxiv.org/pdf/2305.11206.pdf) |
| [Stack Exchange Instruction](https://huggingface.co/datasets/ArmelR/stack-exchange-instruction)                | A dataset containing numerous questions and answers from Stack Overflow, boosting model coding capabilities.           | -                                          |
| [Open Instruct Uncensored](https://huggingface.co/datasets/ehartford/open-instruct-uncensored)                  | An uncensored version of the open-instruct dataset, including human-written instructions and thought prompts.         | [Paper](https://arxiv.org/abs/2306.04751)     |

That is an overview of the best datasets I'm aware of. A huge thank you to all these dedicated people working on high quality datasets. 

The list will be updated from time to time and I'm open to suggestions!