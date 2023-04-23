# AI画像生成

!!!info [TOC2]

サービス|公式サイト|公式SNS|公式Discord|Twitterハッシュタグ
-|-|-|-|-
Stable Diffusion|https://stability.ai|https://twitter.com/stabilityai|https://discord.gg/stablediffusion|[#stablediffusion](https://twitter.com/hashtag/stablediffusion)
DALL·E 2|https://openai.com/dall-e-2|https://www.instagram.com/openaidalle||[#dalle2](https://twitter.com/hashtag/dalle2)
Midjourney|https://www.midjourney.com|https://twitter.com/midjourney|https://discord.gg/midjourney|[#midjourney](https://twitter.com/hashtag/midjourney)
Craiyon(旧DALL-E mini)|https://www.craiyon.com|https://twitter.com/craiyonai||[#craiyon](https://twitter.com/hashtag/craiyon)

!!!info [Emad Mostaque(Stability AI)による3つの主要サービスについて](https://twitter.com/EMostaque/status/1561349836980584455)
- Stable Diffusion、DALL·E 2、MidJourneyは全て異なるものだ
- この分野は、昨年(2021年1月)にOpenAIがCLIPを公開したことで革命が起こり、これにより画像生成のガイドが可能になった
- DALL·E 2
	- モデルかつサービス
	- インペインティングは最高の機能だが、現状ランダムなのでアイデア出しや企業的な用途に最も適している
    - 来年にはコストが10分の1以下になり、APIも公開されると思われる
    - トレーニングデータは著作権のあるイメージなので、オープンソースにはならないと思う
- Midjourney
	- ベンチャーキャピタルの資金提供を受けたベンチャー、ではなく研究所
    - 非常に独特な絵画のようなスタイルを持っている
    - 現在は競合サービスと同じオープンソースのモデルを利用しているが、出力の一貫性の保持に膨大な労力が費やされている
	- 出力のランダム性が強いが、ある程度コントロールは可能
    - オープンソースにされている部分とそうでない部分がある
- Stable Diffusion
    - アートからプロダクトまで、あらゆるタイプのイメージに対応する一般的な基礎モデル
    - 公式のプロシューマー向けサービス「DreamStudio」
    - ベータ版のテスト出力はプリプロもポスプロも行っていないが、これらを使うことで格段に仕上がりが良くなり、きめ細かな調整が可能になる
    - オープンソースのモデルなので、誰でも使うことができる
	- コードが公開されているので、誰もがこのモデルを改良し、構築することができる

!!!note 英語スキルはあるといいですが、別に今時なくても何とかなります
- [Google翻訳](https://translate.google.co.jp)
- [DeepL翻訳](https://www.deepl.com/ja/translator)
- [みらい翻訳](https://miraitranslate.com/trial)

***

## [Stable Diffusion web UI AUTOMATIC1111版](https://github.com/AUTOMATIC1111/stable-diffusion-webui)のローカル環境構築手順

1. https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Dependencies で指定されているものをインストールおよびDLする
2. インストールしたいディレクトリに移動し `git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui` を実行する
3. DLしたモデルファイルを`models/stable-diffusion`フォルダに入れる
4. `webui-user.bat` を非管理者として実行する
5. `Running on local URL:  http://127.0.0.1:7860`と出たらそのURLをブラウザで開く
6. アップデートのため、定期的にインストールフォルダで`git pull`を実行する。
- 以下はオプション
	- GFPGAN(顔補正)
	https://github.com/TencentARC/GFPGAN/releases/download/v1.4.0/GFPGANv1.4.pth からDLした`GFPGANv1.4.pth`を`webui.py`と同じフォルダに置く
	- 省メモリ化オプション(VRAM 4GBくらいの人向け)
	`webui-user.bat`ファイルを別名でコピーして `set COMMANDLINE_ARGS=` の所に追記して `set COMMANDLINE_ARGS=--medvram` にしてそのファイルから起動する
	`--lowvram` もある。詳しくは以下
	https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Troubleshooting#low-vram-video-cards
    - 日本語化
	Settings->Localizationで`ja_JP`を選んで再起動。

### FAQ
- Q. Batch countの上限を増やすには?
- A. webui.batと同じディレクトリにある「ui-config.json」をテキストエディタで開く。9行目の「"txt2img/Batch count/maximum": 16,」の数値を増やして保存しStable Diffusionを再起動する

***

## Stable Diffusion TIPS

### セキュリティ
  - モデル（ckpt)や、Texutual Inversionのbinファイルには、任意のプログラムコードを仕込むことが簡単にできます(詳細はpickleの脆弱性などで検索）。信頼できるソースからのモデルや評判のあるモデル以外の怪しいファイルは読み込まないように注意が必要です。（もしくはDockerなどセキュリティ的に閉じた環境での利用など対策を取る必要があります）

### 性能など
  - 高解像度にしたい → AUTOMATIC1111版の「Highres Fix」使用である程度解消 ~~学習データが512x512なので、1024x512など片方は512以下にしないとおかしくなる。RealESRGAN等で高解像度化したほうがよい。~~ StableDiffusion V2(時期不明)では1024x1024学習になる予定(2022/9/20現在）
  - 画像生成時間は、解像度、step数、サンプラで違う。他のパラメータは多分あまり影響はない
  - Windows/WSL2/Docker上でのStableDiffusionは、素のWindowsでのStableDiffusionと同等の性能。
  - サンプラの差は大きい。k_euler_aとk_heunでは2倍差
  - *早い* ← k_euler_, k_euler, DDIM, PLMS > l_lms > k_dpm_2_a, k_dpm2, k_heun → *遅い*

![SAMPLER COMPARISON](https://i.ibb.co/vm4fm7L/1661440027115223.jpg)

### ハード

  - K80(24GB)めっちゃ安いんだけどあり？ → 古いからStableDiffusionが使ってるPytorch動かない
  - 複数GPUにすれば高解像度にできる？ → Geforceでは無理。複数GPU並行実行すればその分高速にはできる
  - ローカル動作性能(出典: https://rentry.org/voldy)
  	- 9xx(Maxwell)　動くが遅い
  	- 10xx(Pascal)　動くがそこそこに遅い
  	- 16xx(Turing without Tensor)　グリーンスクリーンバグ
  	- 20xx(Turing)　動く
  	- 30xx(Ampere)　動くし速い
  	- 40xx(Ada Lovelace)　最適化が進んでおらず遅い?(Reddit等での報告)

![RENDER TIME BY GPU (50 steps)](https://i.ibb.co/yd7SZ32/chartthin.png)

***

## リンク集

### Stable Diffusionの派生

- ローカル環境
[CompVis/stable-diffusion - 公式(フィルタ有)](https://github.com/CompVis/stable-diffusion)
[AUTOMATIC1111/stable-diffusion-webui - AUTOMATIC1111版(一番人気、他の改善をほとんど取り込んでいる)](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
[sd-webui/stable-diffusion-webui - hlky版(更新が停滞)](https://github.com/Sygil-Dev/sygil-webui)
[basujindal/stable-diffusion - basujindal版(初期の最適化実装。もはや時代遅れ)](https://github.com/basujindal/stable-diffusion)
[invoke-ai/InvokeAI - lstein版(M1対応)](https://github.com/invoke-ai/InvokeAI)
- プラグイン
[stable-diffusion-krita-plugin - Kritaプラグイン](https://github.com/sddebz/stable-diffusion-krita-plugin)
[Stable Diffusion for Krita - Kritaプラグイン](https://www.flyingdog.de/sd/en/)
[internationalTD defuser - Krita/Photoshopプラグイン](https://github.com/internationalTD/defuser)
[IvyPhotoshopDiffusion - Photoshopプラグイン](https://github.com/Invary/IvyPhotoshopDiffusion)
- ローカルデスクトップアプリケーション
[artmamedov/artroom-stable-diffusion - Artroom版(GTX16XXでも動く)](https://github.com/artmamedov/artroom-stable-diffusion)
[NMKD Stable Diffusion GUI - NMKD版](https://nmkd.itch.io/t2i-gui)
[Stable Diffusion GRisk GUI - GRisk版(img2imgなし)](https://grisk.itch.io/stable-diffusion-gui)
- Google Colab
[Stable Diffusion with 🧨 diffusers - 公式](https://colab.research.google.com/github/huggingface/notebooks/blob/main/diffusers/stable_diffusion.ipynb)
[camenduru/stable-diffusion-webui-colab - AUTOMATIC1111版](https://github.com/camenduru/stable-diffusion-webui-colab)
[ddPn08/automatic1111-colab - AUTOMATIC1111版](https://github.com/ddPn08/automatic1111-colab)
[fast_stable_diffusion_AUTOMATIC1111.ipynb - AUTOMATIC1111版](https://colab.research.google.com/drive/1kw3egmSn-KgWsikYvOMjJkVDsPLjEMzl)
[StableDiffusionUI-Voldemort V1.2.ipynb - AUTOMATIC1111版](https://colab.research.google.com/drive/1kw3egmSn-KgWsikYvOMjJkVDsPLjEMzl)
[StableDiffusionUI-Voldemort.ipynb - AUTOMATIC1111版 (非推奨)](https://colab.research.google.com/drive/1Iy-xW9t1-OQWhb0hNxueGij8phCyluOh)
[Neo Hidamari Diffusion.ipynb - hlky版](https://colab.research.google.com/drive/1AfAmwLMd_Vx33O9IwY2TmO9wKZ8ABRRa)
[Stable Diffusion WebUi - hlky版](https://colab.research.google.com/github/altryne/sd-webui-colab/blob/main/Stable_Diffusion_WebUi_Altryne.ipynb)
- ウェブサービス
[DreamStudio - 公式サービス](http://beta.dreamstudio.ai)
[Dezgo - 無料のtxt2img](https://dezgo.com)
[Inpainting with Stable Diffusion & Replicate - 無料のインペインティング](https://inpainter.vercel.app/paint)
[Spaces - Hugging Face](https://huggingface.co/spaces)
	- txt2img
    [Stable Diffusion](https://huggingface.co/spaces/stabilityai/stable-diffusion)
    [ERNIE-ViLG](https://huggingface.co/spaces/PaddlePaddle/ERNIE-ViLG)
    [Waifu Diffusion Demo](https://huggingface.co/spaces/hakurei/waifu-diffusion-demo)
	[Stable Diffusion v1-5](https://huggingface.co/spaces/runwayml/stable-diffusion-v1-5)
	[Finetuned Diffusion](https://huggingface.co/spaces/anzorq/finetuned_diffusion)
    [Composable Diffusion](https://huggingface.co/spaces/Shuang59/Composable-Diffusion)
    [Text to Pokémon](https://huggingface.co/spaces/lambdalabs/text-to-pokemon)
    [Chinese Stable Diffusion](https://huggingface.co/spaces/PaddlePaddle/chinese-stable-diffusion)
    [Japanese Stable Diffusion](https://huggingface.co/spaces/rinna/japanese-stable-diffusion)
    [Stable Diffusion CPU](https://huggingface.co/spaces/fffiloni/Stable-Diffusion-CPU)
    - img2img
    [Diffuse The Rest](https://huggingface.co/spaces/huggingface-projects/diffuse-the-rest)
    [Stable Diffusion Img2img CPU](https://huggingface.co/spaces/fffiloni/stable-diffusion-img2img)
    [Stable Diffusion Image Variations](https://huggingface.co/spaces/lambdalabs/stable-diffusion-image-variations)
    - インペインティング
    [Stable Diffusion Inpainting](https://huggingface.co/spaces/multimodalart/stable-diffusion-inpainting)
    [Runway Inpainting](https://huggingface.co/spaces/runwayml/stable-diffusion-inpainting)
    [InPainting Stable Diffusion CPU](https://huggingface.co/spaces/fffiloni/stable-diffusion-inpainting)
    - アウトペインティング
    [Stablediffusion Infinity](https://huggingface.co/spaces/lnyan/stablediffusion-infinity)
    [Stable Diffusion Mat Outpainting Primer](https://huggingface.co/spaces/Rothfeld/stable-diffusion-mat-outpainting-primer)
    - txt2txt
    [MagicPrompt Stable Diffusion](https://huggingface.co/spaces/Gustavosta/MagicPrompt-Stable-Diffusion)
    - img2txt
    [BLIP](https://huggingface.co/spaces/Salesforce/BLIP)
    [CLIP Interrogator](https://huggingface.co/spaces/pharma/CLIP-Interrogator)
    [DeepDanbooru](https://huggingface.co/spaces/hysts/DeepDanbooru)
- ファインチューンモデル
[hakurei/waifu-diffusion-v1-3 - Danbooruモデル](https://huggingface.co/hakurei/waifu-diffusion)
[hakurei/waifu-diffusion - Danbooruモデル](https://huggingface.co/hakurei/waifu-diffusion)
[naclbit/trinart_stable_diffusion_v2 - とりんさまAIモデル](https://huggingface.co/naclbit/trinart_stable_diffusion_v2)
[naclbit/trinart_stable_diffusion - とりんさまAIモデル(旧)](https://huggingface.co/naclbit/trinart_stable_diffusion)
[Stable Diffusion Models - モデル集](https://rentry.org/sdmodels)
- Textual Inversion ファインチューニング
[sd-concepts-library  - Stable Diffusionコンセプトライブラリ](https://huggingface.co/sd-concepts-library)
[list of Textual Inversion embeddings for SD - Textual Inversionリスト](https://rentry.org/embeddings)

### Stable Diffusionのガイドいろいろ

- 日本語
[画像生成AI「Stable Diffusion」の実行環境を無料でWindows上に構築できる「Stable Diffusion web UI」の導入方法まとめ](https://gigazine.net/news/20220904-stable-diffusion-webui)
[としあきdiffusion](https://rentry.co/zk4u5)
- 英語
[--FINAL GUI RETARD GUIDE-- - AUTOMATIC1111版](https://rentry.org/voldy)
[--CPU RETARD GUIDE (GUI)-- - CPU](https://rentry.org/cputard)
[SD RESOURCE GOLDMINE - ニュースとリンク集](https://rentry.org/sdupdates)
[Stable Diffusion AMD guide - AMD (docker)](https://rentry.org/sdamd)
[This is for Arch Linux/Manjaro - AMD(Arch)](https://rentry.org/amddockerarch)
[AyyMD Stable Diffuse v1.4 for Wangblows 10 (by anon) - AMD (onnx)](https://rentry.org/ayymd-stable-diffustion-v1_4-guide)
[Getting Started on Paperspace for Retards <3 - Paperspace](https://rentry.org/865dy)
[Inpainging & Outpainting - インペインティング&アウトペインティング](https://rentry.org/drfar)
[Larger resolutions with Stable Diffusion - SDアップスケール](https://rentry.org/sdupscale)
[--RETARD'S GUIDE TO TEXTUAL INVERSION-- - Textual Inversion ファインチューニング](https://rentry.org/textard)
[TLDR: - モデルトレーニング](https://rentry.org/informal-training-guide)
[This Anime Does Not Exist - アニメキャプ偽造](https://rentry.org/animedoesnotexist)

### SD&MJプロンプト関連

- プロンプト参考文献
[list of artists for SD v1.4 - SDアーティスト集(v1.4)](https://rentry.org/artists_sd-v1-4)
[Stable Diffusion Artist Style Studies - SDアーティスト集](https://proximacentaurib.notion.site/e28a4f8d97724f14a784a538b8589e7d)
[Comparison of top 500 Artists in Stable Diffusion - SDアーティスト集](https://www.urania.ai/top-sd-artists)
[SD Artist Collection - SDアーティスト集(v1.3)](https://sgreens.notion.site/sgreens/4ca6f4e229e24da6845b6d49e6b08ae7)
[Stable Diffusion Modifier Studies - SDモディファイア集](https://proximacentaurib.notion.site/2b07d3195d5948c6a7e5836f9d535592)
[The Ai Art - MJ・SDキーワード集](https://www.the-ai-art.com/modifiers)
[Lexica - SD公式Discordから採取されたプロンプト集](https://lexica.art)
[KREA - SD公式Discordから採取されたプロンプト集](https://www.krea.ai)
[willwulfken/Midjourney-Styles-and-Keywords-Reference - MJスタイル・キーワード集](https://github.com/willwulfken/Midjourney-Styles-and-Keywords-Reference)
[Stable Diffusion でうまくいった prompt を載せていくやつ - SD日本語解説記事](https://note.com/6uclz1/n/nbc3d87d3e5b1)
[Stable Diffusion Prompt （呪文）攻略 - SD日本語解説記事](https://note.com/siba_dot/n/n0a8691208632)
[Prompt 呪文詠唱 完全入門 ~ Midjourney , StableDiffusion ~ - MJ・SD日本語解説記事](https://zenn.dev/silverbirder/scraps/7fa03e90779cdd)
- プロンプト生成補助ツール
[promptoMANIA:: Stable Diffusion prompt builder](https://promptomania.com/stable-diffusion-prompt-builder)
[画像生成AI用Promptジェネレーター](https://samezi-but.com/toaru-ai-no-prompt-generater-for-midjourney)
- 画像からプロンプト生成
[methexis-inc/img2prompt](https://replicate.com/methexis-inc/img2prompt)
[clip-interrogator.ipynb](https://colab.research.google.com/github/pharmapsychotic/clip-interrogator/blob/main/clip_interrogator.ipynb)
[画像からStableDiffusionのプロンプトを探索 (CLIP Interrogator) - 日本語解説記事](https://zenn.dev/knok/articles/cef8ee0697a040)
- モデル解析
[Clip front](https://rom1504.github.io/clip-retrieval)
[LAION-Aesthetics](https://laion-aesthetic.datasette.io/)

### その他

- リンク集
[Ai generative art tools - AI生成アートリンク集](https://pharmapsychotic.com/tools.html)
[Maks-s/sd-akashic - SDリンク集](https://github.com/Maks-s/sd-akashic)
- wiki記事
[Stable Diffusion - InstallGentoo Wiki - 4chan /g/ (技術板) wiki](https://wiki.installgentoo.com/wiki/Stable_Diffusion)
- 解説
[How to get images that don't suck: a Beginner/Intermediate Guide to Getting Cool Images from Stable Diffusion - SD各生成パラメータについて解説](https://www.reddit.com/r/StableDiffusion/comments/x41n87/how_to_get_images_that_dont_suck_a)

***

!!!note 過去スレ
	[【StableDiffusion】AI画像生成技術13【Midjourney】](https://mevius.5ch.net/test/read.cgi/cg/1673148116/)
	[【StableDiffusion】AI画像生成技術12【Midjourney】](https://mevius.5ch.net/test/read.cgi/cg/1670898879)
	[【StableDiffusion】AI画像生成技術11【Midjourney】](https://mevius.5ch.net/test/read.cgi/cg/1669278997)
	[【StableDiffusion】AI画像生成技術10【Midjourney】](https://mevius.5ch.net/test/read.cgi/cg/1667401816)
	[【StableDiffusion】AI画像生成技術9【Midjourney】](https://mevius.5ch.net/test/read.cgi/cg/1666139334)
	[【StableDiffusion】AI画像生成技術8【Midjourney】](https://mevius.5ch.net/test/read.cgi/cg/1665387634)
	[【StableDiffusion】AI画像生成技術7【Midjourney】](https://mevius.5ch.net/test/read.cgi/cg/1664695948)
	[【Midjourney】AI画像生成技術6【StableDiffusion】](https://mevius.5ch.net/test/read.cgi/cg/1663560800)
	[【Midjourney】AI画像生成技術5【StableDiffusion】](https://mevius.5ch.net/test/read.cgi/cg/1662940688)
	[Midjourney】AI画像生成技術交換4【StableDiffusion](https://mevius.5ch.net/test/read.cgi/cg/1662332320)
	[Midjourney】AI画像生成技術交換3【StableDiffusion](https://mevius.5ch.net/test/read.cgi/cg/1661762186)
	[Midjourney】AI画像生成技術交換2【StableDiffusion](https://mevius.5ch.net/test/read.cgi/cg/1661146705)
	[【Midjourney】 AI画像生成 【DALLE】](https://mevius.5ch.net/test/read.cgi/cg/1659786388)

ここは既存のAI画像生成サービスの==具体的な==技術や動向について語り合うスレです
AI画像生成の未来や、イラストレーターの権利といった一般的な話題は以下のスレッドでお願いします
[【Midjourney】AI関連総合10【StableDiffusion】](https://mevius.5ch.net/test/read.cgi/cg/1665312817)
[AIイラスト　愚痴、アンチ、賛美スレ part4](https://mevius.5ch.net/test/read.cgi/illustrator/1663855443)
