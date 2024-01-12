# いろいろLoRA作成記録
![Header Image](https://files.catbox.moe/bbx84c.webp)

[TOC]

## 概要
LoRAの作成記録とか検証とか
[原神LoRA検証](https://rentry.co/genshin_lora)に書き足すのは限界があるので、原神キャラ再現以外を記録する。というかあっちはもう更新するつもりはない。
参考程度に。

## 注意
**NSFW画像があるので閲覧注意。**
この記録は**あくまでも一例**です。これだけで結論を出すべきではありません。ほかの情報も参考にしてください。

## 学習について
特に記載がない限り、AdamW,512x512,animefull,キャプションシャッフル,トークン保持1、正則化無しで学習している。

## スペック
CPU: AMD Ryzen 7 5800X, CO調整済 ※SDXL以降の項目は5700G
GPU: NVIDIA GeForce RTX 2070 SUPER(GDDR6 8GB)
RAM: DDR4-3200 16GBx2 CL16
グラボが弱い。4060にすら負けてる。

## キャプションについて
WD14Tagger(convnext-v2)を用いてDanbooruタグ方式で作成。
プロンプトの応答性を改善するために意味が重複・矛盾するタグは削除する。
また、重複する単語を含むタグは別の文字に変更する。

***

## キャラクター

### アズサ(AdamW vs DAdaptLion)
4096Steps、Dim64Alpha16,Conv2d拡張有効(C3Lier)、AdamWのLRは0.0001。教師画像64枚でWD14Taggerでキャプション作成。
DAdaptLionの設定: `--optimizer_args "betas=0.9,0.999" "weight_decay=0" "d0=1e-06"`

再現度確認の参考に:[Danbooru検索「azusa_(blue_archive)」](https://danbooru.donmai.us/posts?tags=azusa_%28blue_archive%29&z=5)
dwがAdamWでdlがDAdaptLion。
![Image](https://files.catbox.moe/fogqq6.jpg)
袖の再現度が上がった。

### ハルカ(AdamW vs DAdaptLion)
4096Steps、Dim64Alpha16,Conv2d拡張有効(C3Lier)、AdamWのLRは0.0001。教師画像64枚でWD14Taggerでキャプション作成。
再現度確認の参考に:[Danbooru検索「haruka_(blue_archive)」](https://danbooru.donmai.us/posts?tags=haruka_%28blue_archive%29&z=5)
DAdaptLionの設定: `--optimizer_args "betas=0.9,0.999" "weight_decay=0" "d0=1e-06"`
![Image](https://files.catbox.moe/rm55q4.jpg)
衣装の再現度が良くなった。

### アル(AdamW vs DAdaptLion)
4508Steps、Dim64Alpha16,Conv2d拡張有効(C3Lier)、AdamWのLRは0.0001、解像度は768。教師画像161枚でWD14Taggerでキャプション作成。
再現度確認の参考に:[Danbooru検索「aru_(aru_archive)」](https://danbooru.donmai.us/posts?tags=aru_%28blue_archive%29&z=5)
DAdaptLionの設定: `--optimizer_args "betas=0.9,0.999" "weight_decay=0" "d0=1e-06"`
v7がAdamWでv7_dlがDAdaptLion。
![Image](https://files.catbox.moe/jugdnl.jpg)
衣装の再現度が良くなった気がする。

### AdamWとDAdaptLionのstepごとの変化

再現度確認の参考に:[Danbooru検索「mika_(blue_archive)」](https://danbooru.donmai.us/posts?tags=mika_%28blue_archive%29&z=5)
![Image](https://files.catbox.moe/2y8lsd.jpg)
3000stepsで突然背景が変化した。
![Image](https://files.catbox.moe/cf5pi4.jpg)
AdamWは3000から、DAdaptLionは2000から再現できている。

DAdaptLionにしたら少し再現度が上がる。ただしCPUボトルネックがかなり出やすいのか、CPUの1スレッド使い切ってGPU消費電力がフラフラする。

### DAdaptLion vs Prodigy
DAdaptLionとProdigyの設定: `learning_rate 1 --optimizer_args "betas=0.9,0.999" "weight_decay=0" "d0=1e-06"`

v12がDAdaptLionでv12pがProdigy
大体4000steps回した。
![Image](https://files.catbox.moe/viqgqt.jpg)
ん？

再現度確認の参考に:[Danbooru検索「saori_(blue_archive)」](https://danbooru.donmai.us/posts?tags=saori_%28blue_archive%29&z=5)
dlがDAdaptLionでpdがProdigy
大体5000steps回した。
![Image](https://files.catbox.moe/lv81o9.jpg)
えーっと、何が変わったのか、分かりません

steps数ごとの変化
再現度確認の参考に:[Danbooru検索「yuuka_(blue_archive)」](https://danbooru.donmai.us/posts?tags=yuuka_%28blue_archive%29&z=5)
![Image](https://files.catbox.moe/k50kp3.jpg)
![Image](https://files.catbox.moe/kc53e5.jpg)
prodigyは学習が速いっていう人いるけどむしろ遅いような・・・設定の問題なのかな？

ProdigyはDyLoRAを使わないならあまり意味はなさそう。

### キャラは層別でOUT03-06だけでいいかも
![Image](https://files.catbox.moe/s7y1mf.jpg)
![Image](https://files.catbox.moe/bpaxox.jpg)
見ての通り、再現度が一切変わらない。
ほとんどのキャラは問題ないが、目の再現度が低下する場合があるためIN04-07も有効化推奨。
学習速度上昇、VRAM消費削減、ファイルサイズ削減できるのでおすすめ！
キャラの学習にLoConなんていらんかったんや・・・

### DAdaptation系の注意
- LRは1を強く推奨。
- 一部のDAdaptation系OptimizerはUNetとTEのLRを個別に設定できない。
- 一部のDAdaptation系Optimizerは層別学習率で0と1以外は設定できない。

### その他
ノノミを画像23枚、Dim64Alpha32で学習したらHighres時に崩れやすかったり衣装が不自然だったりしたのでAlpha16で学習したら改善した。
画像の枚数が少ないときはAlpha下げたほうがよさそう。

LBWでNIN(IN無効化)使っても再現度はほとんど変わらないので、学習時にINとMIDを切ってもいい。多くのキャラが再現度そのまま画風などの悪影響を減らせる。
ただしすべてのキャラで再現度が維持できるわけではない。ハナコで試したら目の周りが不安定になった。

***

## 小物類

### M4 Carbine
Conv2dオンのLoRA,Dim64/Alpha1で学習。stepsは大体9000。教師画像は94枚、繰り返し数は8。
aimingとaiming at viewerで単語が被って生成時に両者の特徴が混ざってしまうのでaiming at viewerをaavに変更。
Image | Prompt | Description
 ------ | ------ | ------
![Generated by AI](https://thumbs4.imagebam.com/51/75/85/MEKAYAM_t.png) | <lora:m4_carbine:1>1girl, m4 carbine,  holding gun | 相変わらず武器はへたくそ。 画風が変わった。
![Generated by AI](https://thumbs4.imagebam.com/65/ac/4e/MEKAYAP_t.png) | <lora:m4_carbine:0.8:NCNF>1girl, m4 carbine,  holding gun | 強度を下げてLBW有効化。ちょっと良くなった。 
![Generated by AI](https://thumbs4.imagebam.com/4f/60/36/MEKAYAS_t.png) | <lora:m4_carbine:1><lora:aru:1>1girl, aru \(blue archive\), m4 carbine,  holding gun | キャラLoRAと併用する。汚くなった。  
![Generated by AI](https://thumbs4.imagebam.com/b4/15/26/MEKAYAU_t.png) | <lora:m4_carbine:0.8><lora:aru:1>1girl, aru \(blue archive\), m4 carbine,  holding gun | 強度を下げるが効果なし。
![Generated by AI](https://thumbs4.imagebam.com/0c/23/71/MEKAYAW_t.png) | <lora:m4_carbine:0.8:NCNF><lora:aru:1>1girl, aru \(blue archive\), m4 carbine,  holding gun | 顔とキャラ周りの層を切ったら改善した。 

9000step回してようやく反応するようになったが、aiming周りが怪しいのでもっと回す必要あり？
追記:16000steps回してもダメだった。多分SD1.Xの限界。ちなみにSDXLならLoRA無しで崩れずにm4カービンを出せてしまう。SD1.Xでろくに持てなかったものをあっさりと持つ。

### まとめ
手に持つ小物類もかなり回さないと反応しないようだ。
複数のLoRAを使用した時に汚くなる場合は、LoRA Block Weightを使うと良い。

***

## 構図・シチュエーション

### 驚いた時の「^^^」	
networks.lora, Dim32/Alpha2(Conv2d拡張オン、convも同じ値)で学習。教師画像は64枚、繰り返し数は8。
Image | Prompt | Description
 ------ | ------ | ------
![Generated by AI](https://thumbs4.imagebam.com/9a/b4/df/MEKAYB1_t.png) | <lora:SurprisedEffect6K:1>1girl, ^^^, surprised | 6000程度では効果が薄い
![Generated by AI](https://thumbs4.imagebam.com/5b/52/32/MEKAYB5_t.png) | <lora:SurprisedEffect12K:1>1girl, ^^^, surprised | 12000steps回したら効き目が出た。画風への影響は小さい。
![Generated by AI](https://thumbs4.imagebam.com/f4/d3/35/MEKAYA4_t.png) | <lora:SurprisedEffect12K:1><lora:aru:1>1girl, aru \(blue archive), ^^^, surprised | キャラLoRAと併用。相性はキャラLoRAによって異なる。

### パイズリ
NAI含めてほとんどのモデルがパイズリをせずに挿入してしまうので作成した。

networks.lora, Dim64/Alpha16(Conv2d拡張オン、convも同じ値)で学習。教師画像は64枚、繰り返し数は8。
9000stepsでも結果が出るが、キャラLoRAと組み合わせたとたんに何もしなくなるので12288steps回した。
Image | Prompt | Description
 ------ | ------ | ------
![Generated by AI](https://thumbs4.imagebam.com/19/e3/1a/MEKAYKD_t.png) | <lora:BetterPaizuri:1>1girl, paizuri, penis, nude | 画風の影響は控え目
![Generated by AI](https://thumbs4.imagebam.com/d0/9d/50/MEKAYKE_t.png) | <lora:BetterPaizuri:1><lora:mika_n:1>1girl, paizuri, penis, nude, mika \(blue archive\), ejaculation, cum on breasts | キャラLoRAと併用。少し相性が悪い。
![Generated by AI](https://thumbs4.imagebam.com/99/e9/46/MEKAYKF_t.png) | <lora:BetterPaizuri:1:NCNF><lora:mika_n:1>1girl, paizuri, penis, nude, mika \(blue archive\), ejaculation, cum on breasts | LBWでNCNF(塗りと顔の層を無効化)を適用で改善。

### フェラ打率アップ
lycoris_kohya, algo=lora, Dim64/Alpha16(convも同じ値)で学習。教師画像は116枚、繰り返し数は4。
8000ステップ程度ではプロンプトの応答性が悪いので、14000ステップ回した。

- Promptについて
shallowthroatで先舐め、middlethroatで真ん中まで、deepthroatで根本までしゃぶる。licking penisで竿舐め。
nutslickingで玉舐めするはずだが、画像が少な過ぎて反応しない。

Image | Prompt | Description
 ------ | ------ | ------
![Generated by AI](https://thumbs4.imagebam.com/65/b4/ab/MEKAYKG_t.png) | <lora:fellatio3:1>1girl, fellatio, penis,  shallowthroat | 若干画風が変化してる。
![Generated by AI](https://thumbs4.imagebam.com/be/ae/8c/MEKAYKJ_t.png) | <lora:fellatio3:1>1girl, fellatio, penis, middlethroat | Good
![Generated by AI](https://thumbs4.imagebam.com/4f/5a/e2/MEKAYKL_t.png) | <lora:fellatio3:1>1girl, fellatio, penis, deepthroat | いうほどDeepか？
![Generated by AI](https://thumbs4.imagebam.com/67/be/41/MEKAYKO_t.png) | <lora:fellatio3:1>1girl, fellatio, penis, licking penis | 問題なし
![Generated by AI](https://thumbs4.imagebam.com/6e/1f/1d/MEKAYKB_t.png) | <lora:fellatio3:1><lora:yuuka:1>1girl, yuuka \(blue archive\), fellatio, penis, deepthroat, pov | キャラLoRAと併用。問題なし。

14Kステップでも反応が悪い気がする。もっと回すべき？

### ラーメン
なぜかAIはラーメンをてづかみで食べるものと思っているので、指導してやった。
lycoris_kohya, algo=lora, Dim32/Alpha8(convも同じ値)で学習。教師画像は139枚、繰り返し数は4。6400steps回した。

正則化画像は透明240枚。
Image | Prompt | Description
 ------ | ------ | ------
![Generated by AI](https://thumbs4.imagebam.com/f4/58/96/MEKAYMQ_t.png) | 1girl, ramen, chopsticks, eating | LoRA無し。右手に持ってる箸は何のためにあるのか
![Generated by AI](https://thumbs4.imagebam.com/8e/8b/9f/MEKAYMU_t.png) | <lora:ramen_v1.1:1>1girl, ramen, chopsticks, eating | 問題解決。画風の影響も小さい。
![Generated by AI](https://thumbs4.imagebam.com/a4/22/d2/MEKAYMX_t.png) | <lora:ramen_v1.1:1><lora:aru:1>1girl, aru \(blue archive\), ramen, chopsticks, eating | キャラLoRAと併用。問題なし。

### 驚いた時の白目
networks.lora, Dim32/Alpha1(Conv2d拡張オン、convも同じ値)で学習。教師画像は45枚、繰り返し数は10。
warmup_stepsは未指定。

Image | Prompt | Description
 ------ | ------ | ------
![Generated by AI](https://thumbs4.imagebam.com/e8/e9/59/MEKAYN0_t.png) | <lora:SurprisedBlankEyes:1>1girl, blank eyes, surprised | Good
![Generated by AI](https://thumbs4.imagebam.com/8a/a4/87/MEKAYN3_t.png) | <lora:SurprisedBlankEyes:1>1girl, blank eyes, blonde hair, surprised, school uniform, 4koma | 謎の4コマ
![Generated by AI](https://thumbs4.imagebam.com/59/47/18/MEKAYN5_t.png) | <lora:SurprisedBlankEyes:1><lora:aru:1>1girl, aru \(blue archive\), blank eyes, surprised | キャラLoRAと併用。問題なし。
![Generated by AI](https://thumbs4.imagebam.com/56/9b/02/MEKAYN7_t.png)https://www.imagebam.com/view/MEKAYN7 | <lora:SurprisedBlankEyes4:1><lora:aru:1>1girl, aru \(blue archive\), blank eyes, surprised, explosion, standing | Dim16にして8100steps回した。白目にならない確率が下がって、プロンプトの応答性とHighres時の安定性が改善した。ファイルサイズ的にもこっちでいいかな

### まとめ
シチュエーションはかなり回さないとプロンプトに反応しない。
目安として9000steps以上。
Dimは32-16でよさそう。

***

## 背景
### 桜(写真)
networks.lora, Dim32/Alpha8(convも同じ値)で学習。教師画像は48枚、繰り返し数は10。3840steps回した。
正則化画像は透明16枚。
Image | Prompt | Description
 ------ | ------ | ------
![Generated by AI](https://thumbs4.imagebam.com/59/11/70/MEKAYN8_t.png) | <lora:SakuraScenery_v1.25:1>1girl, cherry blossoms | ド派手なピンク色の桜が上品な色になった。キャラの画風が若干変化した。
![Generated by AI](https://thumbs4.imagebam.com/94/56/28/MEKAYUP_t.png) | <lora:SakuraScenery_v1.25:1>1girl, cherry blossoms | Dim16Alpha8
![Generated by AI](https://thumbs4.imagebam.com/74/c9/82/MEKAYOI_t.png) | <lora:SakuraScenery_v1.3:1:NCNF>1girl, cherry blossoms | LBWでキャラ周りをオフにした。キャラへの影響が減ったが、桜の色が濃くなった。
![Generated by AI](https://thumbs4.imagebam.com/48/d3/25/MEKAYOJ_t.png) | <lora:SakuraScenery_v1.25:1><lora:arona_v4:1>1girl, arona \(blue archive\), cherry blossoms | キャラLoRAと併用。アロナとの相性が悪いのか、髪色が安定しない。
![Generated by AI](https://thumbs4.imagebam.com/18/68/0b/MEKAYOL_t.png) | <lora:SakuraScenery_v1.3:1><lora:arona_v4:1>1girl, arona \(blue archive\), cherry blossoms | Dim16Alpha8。アロナとの相性が悪いのか、髪色が安定しない。

### 竹富島
networks.lora, Dim32/Alpha8(convも同じ値)で学習。教師画像は52枚、繰り返し数は8。5824steps回した。


#### 正則化画像よる変化
透明正則化画像16枚使用。
ngとついてるのが正則化画像なし。数字はステップ数。
![Image](https://files.catbox.moe/8mnisg.jpg)

正則化無しのほうが人物の出現率が高く、汚くなりにくい。

#### 正則化画像よる変化
教師画像に犬が写った写真が1枚あるが、これにdogのタグはつけてない。
5824_ngは水牛車にanimalとcow、犬にanimalとdogをつけた。
![Image](https://files.catbox.moe/ehyu85.jpg)
5824_ngだけ動物が出現してない。やはりタグ付けは重要。
また、画像内の人物関連のタグは消してはいけない。キャラLoRAとの相性が大幅に悪化する。
Conv2d拡張(LoCon)は過学習に似た結果になることがあるようで、通常のLoRAのほうがいいときもある。


### まとめ
背景は低dimで5000steps以下でできるので簡単。dim32以下でよいと思われる。
キャラの出現率が低下するが、強度を下げるかLoRA Block Weightを使用することで改善できる。

***

## 画風
### ねんどろいど
networks.lora, Dim64/Alpha32(convも同じ値)で学習。教師画像は108枚、繰り返し数は5。4088steps回した。
正則化画像は透明240枚。
Image | Prompt | Description
 ------ | ------ | ------
![Generated by AI](https://files.catbox.moe/5ktk3z.png) | <lora:nendoroid_v1.1:1>1girl, nendoroid | いけるやん
![Generated by AI](https://files.catbox.moe/hs3qkw.png) | <lora:nendoroid_v1.1:1>1girl, nendoroid, red hair, bangs, kimono, forest | いけるやん(背景は変化しないが)
![Generated by AI](https://files.catbox.moe/1jdg9e.png) | <lora:nendoroid_v1.1:1><lora:hifumi:1>1girl, nendoroid, hifumi \(blue archive\), serafuku | キャラLoRAと併用。問題なし。


### まとめ？
塗りだけを変化させるLoRAならunetだけの学習でいいかもしれない。TextEncoderを切ると構図の影響が減少する。
UNet=塗りなどの言語化できない概念への影響大。TextEncoder=単語と画像の特徴を紐づけるもの。構図への影響大。

## 検証
### 512,768,1024の違い
原神LoRAメモでは効果が無かったので、別のキャラで再度学習時の解像度による再現性の変化を検証。
コマンドは自作のGUIで生成。解像度と省メモリ設定(gradient_checkpointing, mem_eff_atten)以外は共通。
教師画像は64枚、正則化は透明240枚
Step数は4096
`accelerate launch --num_cpu_threads_per_process 16 train_network.py  --pretrained_model_name_or_path="G:\sd_train\Train\nai_full.ckpt"  --train_data_dir="G:\sd_train\Train\shiroko\train"  --output_dir="G:\sd_train\Train\shiroko\out"  --reg_data_dir="G:\sd_train\Train\Lora_RegImageA240"  --network_module=lycoris.kohya  --network_args "algo=lora" "conv_dim=64" "conv_alpha=32"  --mem_eff_attn  --gradient_checkpointing  --persistent_data_loader_workers  --color_aug  --enable_bucket  --save_model_as="safetensors"  --lr_scheduler_num_cycles=4  --mixed_precision=fp16  --learning_rate=0.0001  --resolution=1024,1024  --train_batch_size=1  --max_train_epochs=4  --network_dim=64  --network_alpha=32  --shuffle_caption  --keep_tokens=1  --optimizer_type="AdamW8bit"  --lr_warmup_steps=100  --output_name="shiroko_1024"  --clip_skip=2  --seed=42  --save_precision="fp16"  --lr_scheduler=cosine_with_restarts  --min_bucket_reso=320  --max_bucket_reso=2048  --caption_extension=".txt"`

画像を右クリックで別ウィンドウで開くと見やすい。
生成解像度 | Prompt | Image | Description
 ------ | ------ | ------ | ------
512x512 | <lora:shiroko_512:1>1girl, shiroko \(blue archive\), school uniform, id card, gloves, blue necktie | ![Generated by AI](https://files.catbox.moe/nao5jf.jpg) | よくなったよね？
768x768  | 〃 | ![Generated by AI](https://files.catbox.moe/8prb1c.jpg) | 
1024x1024 | 〃 | ![Generated by AI](https://files.catbox.moe/or22zq.jpg) | 
512x768 | <lora:shiroko_512:1>1girl, shiroko \(blue archive\), school uniform, id card, gloves, blue necktie, cityscape, looking at viewer | ![Generated by AI](https://files.catbox.moe/vhd5rq.jpg) | 512でもたまに出る
↑のHighes.fix(2倍) | 〃 | ![Generated by AI](https://files.catbox.moe/ar124s.jpg) | 1024が最も再現度が高い
512x768 | <lora:shiroko_512:1>1girl, shiroko \(blue archive\), school uniform, (id card:1.1), gloves, blue necktie, city | ![Generated by AI](https://files.catbox.moe/vjas1q.jpg) | 1024は安定して三角形が出る。ABYDOSの文字と太陽までは出ない

1024はid cardのアビドスの模様が最も正確に出ている。
768でもある程度再現できた。512はほとんど溶けてしまった。
#### まとめ
1024pxで精細な模様の再現性が向上する可能性がある。ただし、かえって品質が低下する場合があるので注意。
前回の検証では効果が出なかったのは文字などの複雑な模様がなかったのが原因かもしれない。
つまり、対象の特徴が単純だと効果が低いかも。

***

## タグについて
### キャラ
Additional Tagsで先頭にキャラ名を追加する。Keep tokenは1。
#### タグを消す理由
キャラを召喚するのに`blonde hair, bangs, blue eyes....`みたいにいちいち特徴の単語を入力するのは面倒くさい。
そこで、特徴の単語を1つにまとめることで1単語で召喚できるようにする。
なお、残したタグは個別に覚えるので脱がせたり部分的にアレンジしたりするといったことができるはず。
1girlは消さないほうがいい。消すと生成時に1girlと指定しても2girlsになったりする場合あり。

#### 消すべきタグ
- 身体的特徴のタグ
	キャラを1プロンプトで召喚したいのでその類のタグは消す。消すことでそれらの特徴を先頭の１タグで覚える。
- 抽象的なタグ(例:virtual youtuber,highres)
	どの画像につくかわからないタグはどうせ覚えないから不要。
- 誤検出タグ
	モデルの記憶と混ざって意図しないものが出てくるかもしれない。

#### 消すべきでないタグ
- 衣装
	着せ替えしたいなら残す。
- 人数のタグ(1girlなど)
	消すと生成時に1girlと指定しても2girlsになったりする場合あり。

#### 例
![IMG](https://files.catbox.moe/j6lflf.png)
上の画像には次のタグがつけられた。
`kayoko (blue archive), 1girl, solo, multicolored hair, black hair, horns, hood, white hair, halo, sitting, skirt, bag, hoodie, two-tone hair, red eyes, blush, long sleeves, black hoodie, red skirt, ponytail, bangs, looking at viewer, closed mouth, miniskirt, collarbone, hair between eyes, feet out of frame, plaid skirt, pleated skirt, sidelocks, hood down, hand up, mole on neck, medium hair, backpack, clothes writing, plaid`

この画像から、次のタグを削除する。するとそれらのタグが`kayoko (blue archive)`に集約される。
`white_hair,horns,black_hair,halo,red_eyes,ponytail,two-tone_hair,bangs,long_hair,hair_between_eyes,wings,sidelocks,blush,multicolored_hair,halo`

### 構図・シチュエーション
Additional Tagsで先頭に構図・シチュエーション名を追加する。Keep tokenは1。
#### 消すべきタグ
- 抽象的なタグ(例:virtual youtuber,highres)
	どの画像につくかわからないタグはどうせ覚えないから不要。
- キャラ名
	生成時に特定のキャラ名を入れると特定の教師画像の影響が強く出る。
- 誤検出タグ
	モデルの記憶と混ざって意図しないものが出てくるかもしれない。


### 画風
キャラなどを覚えるわけではないのでkeep tokenは0。なおShuffle captionは有効。
Optimizerは余計な物まで学習することが少ないAdamW系でいいと思う。
#### 消すべきタグ
無し。すべてそのままでいい。


### オブジェクト(持ち物)
#### 消すべきタグ
- 意味が矛盾、重複するタグ(例:gun,weapon,assault rifle)
	そのままにしておくと複数の概念が混ざり、持ち方を変えるといったことができなくなる。
- 抽象的なタグ(例:virtual youtuber,highres)
	どの画像につくかわからないタグはどうせ覚えないから不要。
- キャラ名
	生成時に特定のキャラ名を入れると特定の教師画像の影響が強く出る。
- 誤検出タグ
	モデルの記憶と混ざって意図しないものが出てくるかもしれない。あるいは既存タグが学習対象で汚染されるともいえる。

***

## 正則化画像の検証
正則化画像の種類でどう変化するか検証。4つのパターンで検証。
ちな正**則**化(Regularization)と正**規**化(Normalization)は別物やで!
- 正則化無し
- Booruサイトの画像64枚
	適当に64枚集めた画像
- NAIの画像64枚
	1girlだけで64枚生成したもの
- 透明64枚

教師画像は128枚。繰り返しは4(1ep=512steps)。総step数は4096(Batch1相当)。学習に用いたモデルはNAI。正則化画像のkeep tokenは0に設定。
コマンド:
`accelerate launch --num_cpu_threads_per_process 16 train_network.py  --pretrained_model_name_or_path="D:\sd_train\Train\nai_full.ckpt"  --train_data_dir="D:\sd_train\Train\mika\train"  --output_dir="D:\sd_train\Train\mika\out"  --network_module="networks.lora"  --network_args "conv_dim=64" "conv_alpha=28"  --xformers  --color_aug  --persistent_data_loader_workers  --max_data_loader_n_workers=1  --enable_bucket  --save_model_as="safetensors"  --lr_scheduler_num_cycles=4  --mixed_precision="fp16"  --learning_rate=0.0001  --resolution=512,512  --train_batch_size=2  --max_train_epochs=8  --network_dim=64  --network_alpha=28  --shuffle_caption  --keep_tokens=1  --optimizer_type="AdamW"  --lr_warmup_steps=500  --output_name="mika_noreg"  --clip_skip=2  --seed=42  --save_precision="fp16"  --lr_scheduler="cosine_with_restarts"  --min_bucket_reso=320  --max_bucket_reso=1536  --caption_extension=".txt"`


### 比較
noregが正則化無し、booru64がbooruサイトの画像64枚、nai64がNAI64枚、trans64が透明64枚。

Prompt: `<lora:mika_noreg:1>1girl, mika \(blue archive\), white capelet`
Negative Prompt(共通): `lowres, bad anatomy, signature`

再現度確認の参考に:[Danbooru検索「mika_(blue_archive)」](https://danbooru.donmai.us/posts?tags=mika_%28blue_archive%29&z=5)

使用モデル: NAI(fp16,pruned)
![Image](https://majinai.art/i/J96n2m0.webp)
使用モデル: 自家製闇鍋マージモデル(NAI+Any4.5 MBW=BaseA, BaseA+Counterfeit2.5 MBW=BaseB, BaseB+NostalgiaClear MBW=完成品)
![Image](https://majinai.art/i/U2ELWxK.webp)
booru64は衣装の再現度が低下した。nai64は全体的に粗くなった。透明64はよくわからない。

Prompt: `<lora:mika_noreg:1>1girl, mika \(blue archive\), town`
使用モデル: 自家製闇鍋マージモデル
![Image](https://majinai.art/i/dIrVUvQ.webp)
booru64は衣装の再現度が低下した。nai64は全体的に粗くなった。透明64はよくわからない。

Prompt:`<lora:mika_noreg:1>1girl, mika \(blue archive\), in the school classroom`
使用モデル: 自家製闇鍋マージモデル
![Image](https://majinai.art/i/4-0XifC.webp)
nai64以外で大きな違いはない。

Prompt:`<lora:mika_noreg:1>1girl, mika \(blue archive\), snowy forest, coat`
使用モデル: 自家製闇鍋マージモデル
![Image](https://majinai.art/i/dN-WOg7.webp)
nai64とbooru64はタグを集約しなかった部分(衣装)がいい感じに変化する。

Prompt:`<lora:mika_noreg:1>1girl, mika \(blue archive\), white capelet, night view`
Negative Prompt: `lowres, bad anatomy, signature, cape`
![Image](https://majinai.art/i/6m6H6Rs.webp)
white capeletと衣装を指定したらすべていい感じに再現した。
ネガのcapeは岬のcapeが出ないようにするためのもの。

### まとめ
- **透明画像は無意味。** あとStable Diffusionはアルファ値は使用しない。そりゃ情報の無い画像を渡しても意味ないよな
- 正則化ありでは衣装のタグがない場合の衣装の再現度が低下した。
- AI製の画像は品質低下の原因となるため、使用してはならない。
- 衣装固定(再現性優先)でいいなら正則化無しでいい。
- 着せ替えしたいならBooruサイトの画像を使うのがよさそう。ただしわずかに品質が低下する？

本来正則化は、あるものを覚えた代わりに別のものを忘れてしまうという問題を回避するためのもの。
例:鳥獣戯画カエルをshs frogで学習すると、frogで普通のカエルが出なくなる。そこで、学習中に正則化画像として普通のカエルの画像を渡すことで問題を改善できる。

つまり、学習対象だけ出てくればいいなら正則化は不要。

***

## 576pxだと学習が速いって本当かな
オカルトでしょ？

学習解像度が576ピクセルだと学習がかなり速く進むという迷信があるらしい。
効果ないだろうけど検証。

OptimizerはAdamW8bit,LRは0.0001,Dim/Aplhaは64/12。バッチサイズ2。画像内で表示しているステップ数はbatch1換算。

画像を右クリックして別タブで開くと見やすい。
![Image](https://files.catbox.moe/mtv0zh.webp)
ええと。。。ちな腕章にJとJusticeという文字が書かれているはずだがうまく出ない。SD1.Xの限界。ヘイローが溶けてるのはいつものこと。
再現度確認の参考に:[Danbooru検索「ichika_(blue_archive)」](https://danbooru.donmai.us/posts?tags=ichika_%28blue_archive%29&z=5)

\-
![Image](https://files.catbox.moe/otyruz.webp)
何が変わったのか、分かりません
再現度確認の参考に:[Danbooru検索「koharu_(blue_archive)」](https://danbooru.donmai.us/posts?tags=koharu_%28blue_archive%29&z=5)

\-
![Image](https://files.catbox.moe/zgd2sp.webp)
エッチなのは駄目！死刑！
再現度確認の参考に:[Danbooru検索「hinata_(blue_archive)」](https://danbooru.donmai.us/posts?tags=hinata_%28blue_archive%29&z=5)


効果はなかった。知ってた。


***

## SDXL
学習はすべてunet_only,cache_latent,cache_textencoderオンで実行。~~TEが二つあるせいでTE込みの学習が激ムズらしい。~~ 実際はそうでもない
現状マルゼン式(タグの集約)は良くない感じ。タグは消さずに残すべし。

### 学習に使うウェイト
~~SDXL base推奨。ほかの物だと汚くなる。~~ 一部のウェイトは汚くなる。Animagine-XL-3.0は問題なし。
Dim16/Alpha4,OpimizerはDAdaptLion,stepsは大体4000-5000。

SDXL Checkpoint | Image | Description
 ------ | ------ | ------
sd_xl_base_1.0 | ![Image](https://files.catbox.moe/esqq7w.jpg) | rentry君画像サイズ調整できないので適当な文章で調整。　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　-
kohakuXL_beta7Pro | ![Image](https://files.catbox.moe/v00k4d.jpg) | 色がおかしい。

### SD1.5との比較

SD Version | Image | Description
 ------ | ------ | ------
1.5 | ![Image](https://files.catbox.moe/2chn95.jpg) | 絵はキレイだけど破綻が多い。ヘイローは見れたもんじゃない。
XL | ![Image](https://files.catbox.moe/tyq8pf.jpg) | ヘイローが全然崩れない。さすがパラメータ数3倍の数の暴力は強い
1.5 | ![Image](https://files.catbox.moe/m1rpco.jpg) | いつも通り破綻だらけ
XL | ![Image](https://files.catbox.moe/oqol6r.jpg)| 腕章の文字が崩れにくいし、相変わらず間違えるけど文字入れの反応も良い。ヘイローも安定。目もadetailer、hires.fixありの1.5より良い。素晴らしい。　　　　　　　　　　　　　　　　　　　　　　　　　-
Animagine-XL-2.0 | ![Image](https://files.catbox.moe/5bb5z9.jpg) | LoRA込み。チェリーピックしてこれなのでLoRAの限界だろう。
Animagine-XL-3.0 | ![Image](https://files.catbox.moe/h67jnl.jpg) | 💯💮👏※LoRA未使用。チェリーピックしてない。


### 画風
ここの検証でよく出てくるキャラのゲームの画風を学習させてみる。OptimizerはAdamW8bit、Dim8Alpha4。
SDXL Checkpoint | Image | Description
 ------ | ------ | ------
kohakuXL | ![Image](https://files.catbox.moe/w5b6gv.jpg) | キャラLoRA使用。checkpointによってヘイローの精度が変化する模様。Animagine-XL-2.0は打率が高い。　　　　　　　　　　　　　　　-
KohakuXL + KohakuXLで学習したLoRA0.85でマージ | ![Image](https://files.catbox.moe/nfhrta.jpg) | キャラLoRA使用。ゴミ。SD1.5のほうが圧倒的にマシ。
KohakuXL + SDXL Base 1.0で学習したLoRA1.0でマージ | ![Image](https://files.catbox.moe/p90uaj.jpg) | キャラLoRA使用。やっぱり学習モデルはSDXL Baseじゃないとダメやね。
AnimagineXL3 + AnimagineXL3で学習したLoRA1.0でマージ | ![Image](https://files.catbox.moe/6cbrtf.jpg) | Animagine-XL-3.0は問題なし。KohakuXLがダメっぽいね。　※キャラLoRA未使用
↑でマージしたウェイトで学習して強度0.85でさらにマージ | ![Image](https://files.catbox.moe/m8bowp.jpg) | SD1.5と違って悪影響が見られない。


余談だが、素の状態だと版権やキャラ名にほとんど反応しない。TextEncoderの学習がまだまだ未熟？
ただしHassakuXLはTEをガッツリ弄ってるらしく、実際にKohakuXLで一切反応しないキャラ名にも多少反応する。

### SDXL 1024 vs 512
SDXLは本来1024pxで学習するが、512pxでやるとどうなるか検証。
Resolution | Image | Description
 ------ | ------ | ------
1024 | ![Image](https://files.catbox.moe/aoraao.jpg) | 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
512 | ![Image](https://files.catbox.moe/ukhkck.jpg) | 髪の描き方が変化した

上記のサンプルでは良いが実際のところ以下のように破綻しやすくなるので低解像度の学習は非推奨。
Resolution | Image | Description
 ------ | ------ | ------
512 | ![Image](https://files.catbox.moe/u3khe8.jpg) | SD1.5かな？　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　-

### TEの有無
Text Encoderの有無でどう変化するか比較。
学習設定:`教師画像数:2383,Batch size:1,Epochs:2,Optimizer:DAdaptLion,LR:1,Dim:8,Alpha:2,Checkpoint:sd_xl_base_1.0`

生成に使用したcheckpointはanimegine-xl-2.0に画風LoRAをマージしたもの。
TE/Unet | Promt | Image | description
 ------ | ------ | ------ | ------
両方学習 | 1girl, solo, mika \(blue archive\), pink hair, yellow eyes, halo, single hair bun, white capelet, wrist scrunchie, outdoors, day, city, smile, looking at viewer | ![image](https://files.catbox.moe/1inhff.webp) | N/A
unet only | 1girl, solo, mika \(blue archive\), pink hair, yellow eyes, halo, single hair bun, white capelet, wrist scrunchie, outdoors, day, city, smile, looking at viewer | ![image](https://files.catbox.moe/6i45eh.webp) | ヘイローの品質下がった？
両方学習 | 1girl, solo, mika \(blue archive\), pink hair, yellow eyes, halo, single hair bun, coat, outdoors, day, autumn leaves, smile, day| ![image](https://files.catbox.moe/y2mq8x.webp) | N/A
unet only | 1girl, solo, mika \(blue archive\), pink hair, yellow eyes, halo, single hair bun, coat, outdoors, day, autumn leaves, smile, day | ![image](https://files.catbox.moe/dlix6h.webp) | ヘイローがSD1.5みたいにあらぬ場所に出現。それでも1.5よりマシだが。元の衣装の影響を受けてる？
両方学習 | masterpiece, 1girl, solo, mika \(blue archive\), pink hair, yellow eyes, halo, single hair bun, bikini, beach, night, starry sky, full body, summer | ![image](https://files.catbox.moe/dttvnk.webp) | ディテールが良い？
unet only | masterpiece, 1girl, solo, mika \(blue archive\), pink hair, yellow eyes, halo, single hair bun, bikini, beach, night, starry sky, full body, summer | ![image](https://files.catbox.moe/dju3zk.webp) | 髪の団子がsingleを無視してdoubleになっている。
両方学習 | masterpiece, 1girl, solo, mika \(blue archive\), pink hair, yellow eyes, halo, single hair bun, tactical clothes, bulletproof vest, blurry background, outdoors, aiming at viewer, grin, firing, glock 17, blood | ![image](https://files.catbox.moe/t2ohm9.webp) | 正しい形状の銃を正しく持てるXLは素晴らしい。
unet only | masterpiece, 1girl, solo, mika \(blue archive\), pink hair, yellow eyes, halo, single hair bun, tactical clothes, bulletproof vest, blurry background, outdoors, aiming at viewer, grin, firing, glock 17, blood| ![image](https://files.catbox.moe/718okk.webp) | hair bunの位置が逆。手がおかしい。銃の部品らしきものが頭に生えた。銃の色がおかしい。

ヘイローの精度があまり高くないのはLoRAの限界かも。1.5とXLの比較の画像を見ればわかるけどLoRA未使用の素のAnimagine-XL 3.0のほうが明らかに良い。　　　　　　　　　　　　　　　　　　　　　　　　　

TE込みは難しいらしいが実際はそうでもなかった。
Unet onlyはプロンプトの応答性と品質がやや低下するように感じる。
VRAM12GB以上のGPUがあるならTE込みで回したほうがよさそう。

### SDXLのPCスペック
余裕はないが推論・学習(unet_only有効)ともにVRAM8GBでできる。TE込みのSDXL LoRA回すなら最低でも3060(12GB)、できれば4060Ti(16GB)、4070(Ti)、4090、4070 Ti SUPER(VRAM16GBで2024年発売予定？)がよさそう。
TE込みだとVRAM8GBでは絶対にあふれて1step44秒、5000stepsで二日半かかる。待てないことはないけど・・・まあ厳しいっすねw
メインメモリはとんでもない消費量。16GBでは不足する。32GB以上必要。
生成はComfyUIかFooocusがAUTOMATIC1111より省メモリで良い。Fooocusは最低4GBのVARMと8GBのRAMでできるらしい。

---

## sd-scriptsでReLoRA?
!!! warning 注意！！
	ここでのReLoRAは本来のものとは異なり、sd-scriptsで手法を真似しただけなのでご了承を。

本来のReLoRAは情報が少なすぎてやり方がわからん。

ReLoRAとは、LoRAを利用してウェイトをファインチューンや事前学習をするもの。
つまり、一般向けのグラボで二次絵SDXLとかNSFW特化モデルが作れる。


手順は以下の通り[（ソース）](https://dskjal.com/deeplearning/lora.html)
1.LoRAで学習する
2.できたLoRAを元のモデルにマージ
3.マージしたモデルでLRを下げてLoRAで学習
4.できたLoRAを先程マージしてできたモデルにマージ
5.納得がいくまで3-4を繰り返す

### 実践

- データセットの準備
教師画像はblue_archiveタグが付いた画像を44417枚用意。合計ファイルサイズは126GiB
画像DL時にartistタグを取り除いたDanbooruタグ方式のキャプションも作成。
キャプションにDanbooruスコアが6点以上のものにhigh quality、18点以上にbest quality、60点以上にmasterpieceを追加。
ちなみに、DLで四時間、リサイズで40分、latentキャッシュで二時間もかかった。

- 学習
学習モデルは秘伝のタレ(非公開モデル)。
学習が終わったら仕上げにメモリアルの画像を学習->マージを二回繰り返す。

学習設定:
`SD1.5, Dim:128, Alpha:24, 解像度:768, バッチサイズ:5, オプティマイザ:Adamw8bit, LRスケジューラ:constant、constant_with_wamupまたはcosine_with_restart, C3Lier(LoCon), cache_latents, gradient_checkpointing`
### 結果
解像度はいずれも640x896。
TurquoiseMix_v0.9が学習元、Turquoise_finalが最終epochでTurqoiseが仕上げ後。
`Prompt: "1girl, solo, yuuka \(blue archive\), outdoors, hands up, upper body, blue sky" Negative prompt: "worst quality, lowres"`
![Image](https://files.catbox.moe/iyjuxq.webp)
指が良くなった・・・？

`Prompt: "1girl, solo, masterpiece, absurdres, forest, looking at viewer, rio \(blue archive\), halo, dress, light rays, upper body" Negative prompt: "worst quality, lowres, no humans"`
![Image](https://files.catbox.moe/gwbyki.webp)

`Prompt: "1girl, solo, absurdres, looking at viewer, haruka \(blue archive\), halo, beach, blue sky, upper body" Negative prompt: "worst quality, lowres, no humans, nude"`
![Image](https://files.catbox.moe/2rkgfx.webp)
マイナーキャラ(データセット内に186枚)なのに意外と反応してる

学習初期は品質が低下するが後期は改善。
...実際には品質がブレまくって扱いづらい。プロンプトを盛らないと安定しない印象がある。

枚数の多いキャラは名前だけで出る。
シャープネスが向上してフィルムグレインが発生するようになった。

#### Checkpointのマージでブレの抑制
品質のブレが激しいため、MBWを用いて別の秘伝のタレを混ぜた。[レシピ](https://files.catbox.moe/whypra.webp)
TurquoiseMix_v1.2がマージ元、Turquoise_finalが最終epochで、Turqoiseが仕上げ後、Turquoise_aがマージ後。
`Prompt: "1girl, masterpiece, absurdres, hoshino \(blue archive\), smile, outdoors, day, halo, heterochromia, looking at viewer" Negative prompt: "worst quality, lowres"`
![Image](https://files.catbox.moe/czk63j.webp)

`Prompt: "1girl, masterpiece, absurdres, karin \(blue archive\), dark-skinned female, yellow eyes, halo, kimono, new year, blurry background, outdoors, looking at viewer" Negative prompt: "worst quality, lowres"`
![Image](https://files.catbox.moe/9yconu.webp)

`Prompt: "1girl, masterpiece, absurdres, asuna \(blue archive\), shirt, summer, blue sky, popsicle, holding, smile, outdoors, cloud" Negative prompt: "worst quality, lowres, nude, sex"`
![Image](https://files.catbox.moe/w27tm5.webp)

キャラの再現度を落とさずに品質が改善した。

### まとめ
LoRA無しで多くのブルアカキャラを出せるようになったが品質が安定せずなんとも言えない微妙な結果になった。NSFWに至ってはグレースケール化連発か破綻で使い物にならない。指も改善した気がする程度。
学習元を変えるかハイパーパラメータを調整するべきかな。

~~学習元がきれい(小並感)~~
おまけ: データセット内で登場頻度の高いキャラTOP20
``` text
ユウカ(2364)
アスナ(2301)
シロコ(1722)
トキ(1637)
コハル(1597)
リオ(1455)
ハナコ(1387)
ホシノ(1258)
ヒナ(1240)
キサキ(1235)
カリン(1162)
イチカ(1135)
ミカ(1129)
アロナ(1122)
アリス(1096)
ミユ(1094)
ハスミ(1059)
プラナ(969)
マリー(937)
ウイ(788)
```

## 次元数(DimまたはRank)の比較
キャラは64でいいなど言っているが、それ未満の値でどうなるか気になったので比較。
個別に学習はさすがに面倒くさいのでresize_lora.pyでリサイズした。通常のLoRA学習でも結果は同様。
SDのバージョンは1.5。

- キャラ
再現度確認の参考に:[Danbooru検索「miyu_(blue_archive)」](https://danbooru.donmai.us/posts?tags=miyu_%28blue_archive%29&z=5)
![Image](https://files.catbox.moe/dn3937.webp)

再現度確認の参考に:[Danbooru検索「miyu_\(swimsuit\)_\(blue_archive\)](https://danbooru.donmai.us/posts?tags=miyu_%28swimsuit%29_%28blue_archive%29+&z=5)
![Image](https://files.catbox.moe/q7nhep.webp)

再現度確認の参考に:[Danbooru検索「noa_(blue_archive)」](https://danbooru.donmai.us/posts?tags=noa_%28blue_archive%29&z=5)
![Image](https://files.catbox.moe/v7cggv.webp)
8以下で劣化？
![Image](https://files.catbox.moe/4ybpnb.webp)
マジか…

- 画風
![Image](https://files.catbox.moe/g7aq0y.webp)

かなり削っても再現度の低下が少ないようだ。キャラも画風もnetwork_dimは16でいいかな
ファイルサイズはdim16,IN04-07,OUT03-06のみで11.9MiBになる。

SDXLは高性能なため16以下で良い。

***

## その他
### キャラLoRAの最適解(SD1.X)
- 学習に使うウェイトはanimefull
- 教師画像はできるだけ多く(50枚以上)
- networks.lora
- 4000-6000steps,Dim16/Alphaはdimの4分の1
- 畳み込み層はほぼ影響ないのでconv_dimとかの指定はいらない
- OptimizerはDAdaptation系(LR=1)
- IN04-07,OUT03-06だけでいい
- キャプションはそのままでもいいし、身体的特徴を消して1タグにまとめてもいい

### キャラLoRAの最適解(SDXL)
- 学習に使うウェイトはsd_xl_base_1.0
- 教師画像はできるだけ多く(50枚以上)
- networks.lora
- 4000-6000steps,Dim8/Alphaはdimの4分の1
- OptimizerはDAdaptation系(LR=1)
- キャプションはそのままで、shuffle captionはオフ
- full_fp16/bf16は絶対に使うな!!オンだとなにも学習しない!(--mixed_precisionではない)
- gradient_checkpointingオンでもVRAMあふれる状況ならオフにしたほうが速い