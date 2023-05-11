After the success of Stanford Alpaca the use of chatgpt/gpt4 to generate self-instructions for datasets or other techniques has risen in volume to create datasets for tuning. WizardLM is one of them using their Evol Instruct method. 

>https://github.com/nlpxucan/WizardLM

The problem (besides known built-in biases of OpenAI's models from their RLHF) is how almost all of these resulting datasets leave in the AI refusals (i.e. As a Language Model I cannot...) from this method. Which has resulted in various "uncucked" dataset projects on HuggingFace which aims to remove these refusals and usually as well clean up poor formatting as well and then use these new datasets for tuning LLaMa models.  

Enter the WizardLM 7B Uncensored by ehartford. 

>https://huggingface.co/ehartford/WizardLM-7B-Uncensored

Unfortunately he decided to post this under his real name and made a reddit post with a somewhat poorly thought out chart showing that the model respond "true" to "White People are awesome" amongst others. Reception there was majority positive but reddit is reddit for a reason. 

>reddit thread
>https://archive.ph/5VtSJ

This of course sets off Michael de Gans who files a few public reports on the project page (one ethical and one legal). Stating that the "The intent of this model is to produce prohibited content." He then launches a crusade to shut down the model threatening emails to Microsoft HR (where ehartford presumably works). Then has a histrionic breakdown about how the model could generate instructions to build a bomb (like any search engine) or covid-19 misinformation leading to mass death (imagine worrying about covid in 2023). For some reason he seems to have felt that being LGBT was relevant so was keen to include that information. 

>HF report thread
>https://archive.is/0Ehhn

>thread watching the drama 
>https://desuarchive.org/g/thread/93306804

In the end the HF report was locked and then entirely deleted by HF staff which seems highly unusual. Vigilance must still be had so back up important models/datasets.