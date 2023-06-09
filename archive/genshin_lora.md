# 原神LoRA作成メモ・検証

![Generated by AI](https://i.imgur.com/bXKgmau.jpg)
![久々のマジカルチンポ](https://i.imgur.com/6PTdnlU.jpg)
↑の画像が消えてたらimgurの規約変更が実際に行われたことになる

***

目次の項目をクリックするとその項目へ移動できます。
[TOC]

***

## 概要
kohya-ss氏制作の[sd-scripts](https://github.com/kohya-ss/sd-scripts)で次のキャラのLoRAを作成した。ポップアップ版使用。
- 神里綾華
- レイラ
- 雷電将軍
雷電将軍は元から名前だけで再現できるが、loraで学習するとどうなるか気になったため検証する。
- 凝光(追加検証2)
- 珊瑚宮心海(追加検証2)

作成環境は以下の通り:
> OS: Windows 11 22H2
> CPU: AMD Ryzen 7 5800X(8C16T)
> GPU: NVIDIA GeForce RTX 2070 SUPER(GDDR6 8GB)
> RAM: 32GB(DDR4-3200 16GBx2)
> Storage: NVMe SSD(1TB)

***

## 注意
**この検証あくまでも一例です。**鵜呑みにするのはよくありません。
それぞれの設定の有効性などは他者の検証も参照してください。論より証拠。

## 教師データ
教師画像はいずれのキャラもトリミングや型抜きはしていないが、超巨大な画像を使用すると出るエラー抑止のために画像をXnConvertで長辺1024pxになるようにリサイズしてpngに変換。
WD14Taggerのwd14-convnextでタグテキストを作成。ちなみに、convnext-v2はキャラ名も検出する。おそらく2022年9月以降に登場したキャラは反応しない。
Additional Tagsにそれぞれのキャラの名前を入れる。
全キャラ共通のExclude Tagsは`1girl,solo,virtual_youtuber,blush`。1girlやsoloをタグに入れたままにすると、1girlを入れたときに衣装が固定される。
正則化画像は透明画像をAUTOMATIC1111 SD WebUIのExtensionで最大400枚用意。

#### フォルダ階層
綾華
としあきwikiのマルゼンスキームを参考に以下のようにフォルダ分けした。
※マルゼンスキームとは学習させる特徴(`blunt bangs, light blue hair, sidelocks`など)をひとつのタグに集約すること。これでタグ1つで服を変えられる状態でキャラクターを生成できる。
- ayaka\out *モデル出力先*
- ayaka\train
	- \17_ayaka_alt_cos *課金衣装。トリガータグはayaalt*
	- \17_ayaka_def_cos *デフォルト衣装。トリガータグはayadef*
	- \17_kamisato_ayaka *キャラ画像。トリガータグはkamisato ayaka*
合計39枚。セーラー服が多い。5枚コイカツ！サンシャインの画像を入れた。

レイラ
- layla\out *モデル出力先*
- layla\train *キャラ画像*
	- \28_layla *トリガータグはlayla*
合計25枚。全て同じ衣装。5枚コイカツ！サンシャインの画像を入れた。

雷電将軍
- raiden_shogun\out *モデル出力先*
- raiden_shogun\train *キャラ画像*
	- \33_raiden_shogun *トリガータグはraiden shogun*
合計20枚。デフォルト衣装が多い。

凝光
- ningguang\out *モデル出力先*
- ningguang\train *キャラ画像*
	- \12_ningguang *トリガータグはningguang*
合計25枚。

珊瑚宮心海
- kokomi\out *モデル出力先*
- kokomi\train *キャラ画像*
	- \12_kokomi *トリガータグはsangonomiya kokomi*
合計25枚。心海のみwd14-convnext-2でタグ付けした。wd14taggerの精度すごい。

正則化画像(透明)
- Lora_RegImageA400\1_1girl *画像のみ*


***

## 学習について
デフォルト値でも十分学習できる。

#### 学習前のサンプル画像
NAI + Any4.5の層別マージモデルを使用。
- 神里綾華
![Any+NAI MBW](https://thumbs4.imagebam.com/50/99/6f/MEKAWAE_t.png)
稀にそれらしきものが生成される。

- レイラ
![Any+NAI MBW](https://thumbs4.imagebam.com/0c/9b/5b/MEKAWAG_t.png)
未知のタグなのでよくあるマスピ顔が出てくるだけ。

- 雷電将軍
![Any+NAI MBW](https://thumbs4.imagebam.com/dd/32/be/MEKAWAJ_t.png)
LoRA無しでも十分再現できる。

- 凝光
![Any+NAI MBW](https://thumbs4.imagebam.com/91/90/bb/MEKAWAN_t.png)
Genshin Impactに反応して原神らしきものが出るだけ。

- 珊瑚宮心海
![Any+NAI MBW](https://thumbs4.imagebam.com/a5/65/03/MEKAWB0_t.png)
誰だよ

### 神里綾華
ポップアップの設定
``` text
Load a json?: No
Base Model: NAI Full
Image folder: G:\sd_train\Train\ayaka\train
output folder: G:\sd_train\Train\ayaka\out
Save a json?: No
use regularisation?: Yes
Regularisation folder: G:\sd_train\Train\Lora_RegImageA400
continue from earlier version?: No
batch_size: Cancel(1)
num_epochs: 5
network_dim: Cancel(128)
alpha: Cancel(equal to network_dim)
resolution: Cancel(512)
learning rate: Cancel(1e-4)
text_encoder_lr: Cancel(None)
unet_lr: Cancel(None)
scheduler: Cancel(cosine_with_restarts)
save intermediate epochs?: Yes
save_epoch:Cancel(1)
shuffle captions?: Yes
keep some tokens?:Yes
keep_tokens: Cancel(1)
have a warmup ratio?:No
change the name of output epochs?:Yes
output_name:ayaka_3315
Comment:Cancel(empty)
```

#### 結果
およそ25分かかった。衣装の切り替えができたのでマルゼンスキームは問題ない。
ときどきツインテールになってしまうが、おおむね再現できる。
4000stepsを超えたあたりから過学習状態になってべた塗りになる。

#### サンプル画像
NAI + Any4.5の層別マージモデルを使用。
Negative Prompt:`lowres, bad anatomy, inaccurate limb, low quality, signature, watermark, username, blurry, dress`
`Steps: 20, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: ランダム, Size: 512x512, Model hash: 0791b1e6e9, Clip skip: 2, ENSD: 31337`

Prompt | Image | Description
------ | ------ | ------
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka | ![Generated by AI](https://thumbs4.imagebam.com/a9/45/50/MEKAWB4_t.png) | 簡単召喚
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka, sundress | ![Generated by AI](https://thumbs4.imagebam.com/e3/9a/e1/MEKAWB5_t.png) | 学習データにないけどsundressを着た。sleeveless dressだと括弧で強くしないと着てくれない。kimonoの模様はAI特有の格子状になる。
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka, ayadef | ![Generated by AI](https://thumbs4.imagebam.com/58/3c/a7/MEKAWB8_t.png) | 背景の指定をしないと家紋らしきものやノイズが出る。houseを追加したら日本の家屋っぽいのが出る
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka, ayaalt | ![Generated by AI](https://thumbs4.imagebam.com/17/0c/0f/MEKAWBB_t.png) | かなりの再現度。時々帽子が違うものになる。straw hatを入れたらいいが。
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka, nude | https://www.imagebam.com/view/MEKAX2R | 服を剥いでみる。教師画像にコイカツ！の画像を混ぜたせいかアウトラインが出ている。
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka, brown hair | ![Generated by AI](https://thumbs4.imagebam.com/4b/9c/08/MEKAWBE_t.png) | 髪色を変えてみる。ちゃんと茶髪になっている。

### レイラ
ポップアップの設定
``` text
Load a json?: No
Base Model: NAI Full
Image folder: G:\sd_train\Train\layla\train
output folder: G:\sd_train\Train\layla\out
Save a json?: No
use regularisation?: Yes
Regularisation folder: G:\sd_train\Train\Lora_RegImageA400
continue from earlier version?: No
batch_size: Cancel(1)
num_epochs: 8
network_dim: Cancel(128)
alpha: Cancel(equal to network_dim)
resolution: Cancel(512)
learning rate: Cancel(1e-4)
text_encoder_lr: Cancel(None)
unet_lr: Cancel(None)
scheduler: Cancel(cosine_with_restarts)
save intermediate epochs?: Yes
save_epoch:Cancel(1)
shuffle captions?: Yes
keep some tokens?:Yes
keep_tokens: Cancel(1)
have a warmup ratio?:No
change the name of output epochs?:Yes
output_name:layla_5600
Comment:Cancel(empty)
```

#### 結果
およそ35分かかった(はず)。
おおむね良好な結果。full bodyでも安定してる。
5600stepsでは過学習気味だったので、4200stepsのものを残すことにした。

#### サンプル画像
NAI + Any4.5の層別マージモデルを使用。
Negative Prompt:`lowres, bad anatomy, inaccurate limb, low quality, signature, watermark, username, blurry, dress`
`Steps: 20, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: ランダム, Size: 512x512, Model hash: 0791b1e6e9, Clip skip: 2, ENSD: 31337`

Prompt | Image | Description
------ | ------ | ------
 <lora:layla_4200:1>, 1girl, layla |  ![Generated by AI](https://thumbs4.imagebam.com/e9/d9/ea/MEKAWBH_t.png)  | まあそんなもん？
 <lora:layla_4200:1>, 1girl, layla, red hair |  ![Generated by AI](https://thumbs4.imagebam.com/83/b2/a5/MEKAWBL_t.png)  | 問題なし。フードの色は保っている。
1girl, full body, thigh, <lora:layla_4200:1>, layla, starry |  ![Generated by AI](https://thumbs4.imagebam.com/dd/b6/87/MEKAWBP_t.jpg)  | Hires.fixで384x768→768x1536 UpscalerはLatent。全身完璧に再現してる。フルサイズの画像→https://www.imagebam.com/view/MEKAWBP
<lora:layla_4200:1>, 1girl, layla, ((school uniform)) |  ![Generated by AI](https://thumbs4.imagebam.com/55/59/6b/MEKAWBT_t.png)  | 滅多に制服を着ない。教師画像が全部同じ衣装なせいかも。
<lora:layla_4200:1>, 1girl, layla, bikini |  ![Generated by AI](https://thumbs4.imagebam.com/1c/46/14/MEKAWBX_t.png)  | 水着はすんなり着る。なんで？
<lora:layla_4200:1>, 1girl, layla, nude |  https://www.imagebam.com/view/MEKAX2S  | 服を脱がせてみる。コイカツ！の影響が出て影が消える。

### 雷電将軍
ポップアップの設定
``` text
Load a json?: No
Base Model: NAI Full
Image folder: G:\sd_train\Train\raiden_shogun\train
output folder: G:\sd_train\Train\raiden_shogun\out
Save a json?: No
use regularisation?: Yes
Regularisation folder: G:\sd_train\Train\Lora_RegImageA400
continue from earlier version?: No
batch_size: Cancel(1)
num_epochs: 5
network_dim: Cancel(128)
alpha: Cancel(equal to network_dim)
resolution: Cancel(512)
learning rate: Cancel(1e-4)
text_encoder_lr: Cancel(None)
unet_lr: Cancel(None)
scheduler: Cancel(cosine_with_restarts)
save intermediate epochs?: Yes
save_epoch:Cancel(1)
shuffle captions?: Yes
keep some tokens?:Yes
keep_tokens: Cancel(1)
have a warmup ratio?:No
change the name of output epochs?:Yes
output_name:raiden_shogun_3300
Comment:Cancel(empty)
```

#### 結果
およそ25分かかった。衣装の再現度が向上。
3300stepsでは過学習気味だったので、2640stepsのものを残すことにした。
3000stepsを超えたあたりで過学習になって線が太くなり、構図が固定される。5000steps以上で盛大に過学習状態になる。

#### サンプル画像
NAI + Any4.5の層別マージモデルを使用。
Negative Prompt:`lowres, bad anatomy, inaccurate limb, low quality, signature, watermark, username, blurry, dress`
`Steps: 20, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: ランダム, Size: 512x512, Model hash: 0791b1e6e9, Clip skip: 2, ENSD: 31337`

Prompt | Image | Description
------ | ------ | ------
<lora:raiden_shogun_2640:1>, 1girl, raiden shogun |  ![Generated by AI](https://thumbs4.imagebam.com/94/38/af/MEKAX3E_t.png)  | 同じ構図ばかり出る。2640stepsで過学習気味とは・・・
<lora:raiden_shogun_2640:1>, 1girl, raiden shogun, blonde hair |  ![Generated by AI](https://thumbs4.imagebam.com/25/9c/4f/MEKAX3F_t.png)  | 紫髪、すなわち永遠なり。
<lora:raiden_shogun_2640:1>, 1girl, raiden shogun, full body |  ![Generated by AI](https://thumbs4.imagebam.com/4b/96/7c/MEKAX3G_t.png)  | 衣装は再現できてる。顔が怪しいが・・・
<lora:raiden_shogun_2640:0.8>, 1girl, raiden shogun, (sundress:1.1) |  ![Generated by AI](https://thumbs4.imagebam.com/3c/d6/3a/MEKAX3H_t.png)  | LoRAを弱めてsundressを強めないとワンピースをまともに着ない。LoRA無しでも着ないときがあるので仕方ない。
<lora:raiden_shogun_2640:1>, 1girl, raiden shogun, nude |  https://www.imagebam.com/view/MEKAX2U  | 教師画像の影響でhuge breastsになる。

ちなみに、過学習状態になるとこうなる。6600steps学習したLoRA。かなりblurry。
![過学習サンプル](https://thumbs4.imagebam.com/bb/d6/e7/MEKAX3I_t.png)


## network_dimによる変化
network_dimの値によってどう変化するかを神里綾華で検証した。
dimはそれぞれ128,64,32,16,8,1とする。
学習の設定
ポップアップの設定
``` text
Load a json?: No
Base Model: NAI Full
Image folder: G:\sd_train\Train\ayaka\train
output folder: G:\sd_train\Train\ayaka\out
Save a json?: No
use regularisation?: Yes
Regularisation folder: G:\sd_train\Train\Lora_RegImageA400
continue from earlier version?: No
batch_size: Cancel(1)
num_epochs: 5
network_dim: それぞれ変更する
alpha: Cancel(equal to network_dim)
resolution: Cancel(512)
learning rate: Cancel(1e-4)
text_encoder_lr: Cancel(None)
unet_lr: Cancel(None)
scheduler: Cancel(cosine_with_restarts)
save intermediate epochs?: Yes
save_epoch:Cancel(1)
shuffle captions?: Yes
keep some tokens?:Yes
keep_tokens: Cancel(1)
have a warmup ratio?:No
change the name of output epochs?:Yes
output_name:ayaka_3315_dim数
Comment:Cancel(empty)
```

### 結果
loraモデルをPrompt S/Rで変更する。
NAI + Any4.5の層別マージモデルを使用。
Negative Prompt:` lowres, bad anatomy, inaccurate limb, low quality, signature, blurry`
`Steps: 20, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: ランダム, Size: 512x512, Model hash: 0791b1e6e9, Clip skip: 2, ENSD: 31337`

Prompt | Image | Description
------ | ------ | ------
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka |  ![Generated by AI](https://thumbs4.imagebam.com/f5/31/a7/MEKAX90_t.jpg)https://www.imagebam.com/view/MEKAX90  | dimの減少に伴い衣装が教師画像から離れていく。頭の再現度は変化しない。
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka, ayadef |  ![Generated by AI](https://thumbs4.imagebam.com/7f/bd/5f/MEKAX92_t.jpg)https://www.imagebam.com/view/MEKAX92  | dimの減少に伴い衣装の再現度が低下した。dim128は背景に悪影響を及ぼしている。
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka, ayaalt |  ![Generated by AI](https://thumbs4.imagebam.com/17/7a/2e/MEKAX93_t.jpg)https://www.imagebam.com/view/MEKAX93  | dim32以下は全く再現できてない。
 <lora:ayaka_3315:1>, 1girl, kamisato ayaka, kimono |  ![Generated by AI](https://thumbs4.imagebam.com/d9/be/4c/MEKAX96_t.jpg)https://www.imagebam.com/view/MEKAX96  | dimの減少に合わせてノイズっぽい柄が減った。
<lora:ayaka_3315:1>, 1girl, kamisato ayaka, jacket, thigh |  ![Generated by AI](https://thumbs4.imagebam.com/69/5b/82/MEKAX98_t.jpg)https://www.imagebam.com/view/MEKAX98  | 高dimでは教師画像の衣装が若干混ざっている。

network_dimが小さいとネットワークの情報量が減って再現が難しくなるようだ。
ディメンション数が減るとタグ1つに覚えられる量が減ってしまうのだろう。ファイルサイズを見れば一目瞭然。

- トリガータグ無しでの変化

Prompt | Image | Description
------ | ------ | ------
<lora:ayaka_3315:1>, masterpiece, best quality, 1girl, upper body, coat, snowy mountains, day | ![Generated by AI](https://thumbs4.imagebam.com/df/52/7e/MEKAX8Z_t.jpg)https://www.imagebam.com/view/MEKAX8Z | dim128はほとんど綾華になっている。
<lora:ayaka_3315:1>, masterpiece, best quality, 1girl | ![Generated by AI](https://thumbs4.imagebam.com/4f/d8/62/MEKAXBX_t.jpg)https://www.imagebam.com/view/MEKAXBX | 低dimではマスピ顔で綾華らしさはない。

network_dimが大きいとトリガータグ無しでも教師画像の影響力が増す。

***

## 繰り返し数による変化
雷電将軍を繰り返し33回で学習させたら過学習になってしまった。そこで、繰り返し数による変化を検証する。

### 雷電将軍
学習の設定は3000steps前後、warmup ratioは0.01、正則化画像は教師画像の六割用意した。それ以外はデフォルト。

Prompt | Image | Description
------ | ------ | ------
<lora:raiden_shogun_r33_3300:1>, 1girl, raiden shogun | ![Generated by AI](https://thumbs4.imagebam.com/29/c7/b6/MEKAXDW_t.jpg)https://www.imagebam.com/view/MEKAXDW | 繰り返し数20以上は過学習になっている。

### レイラ
学習の設定は4200steps前後、warmup ratioは0.01、正則化画像は教師画像の六割用意した。それ以外はデフォルト。
layla_4200の繰り返し数は28回。

Prompt | Image | Description
------ | ------ | ------
<lora:layla_r10_4250:1>, 1girl, layla | ![Generated by AI](https://thumbs4.imagebam.com/f2/5e/da/MEKAXDY_t.jpg)https://www.imagebam.com/view/MEKAXDY | 10回繰り返しは再現度が若干下がった気がする。
<lora:layla_r10_4250:1>, 1girl, layla, nude | https://www.imagebam.com/view/MEKAXFR | 繰り返し数10は構図が固定されにくい。

繰り返し数を下げると、構図の固定が減少する。

## AdaFactorで学習
学習時のオプティマイザにAdaFactorが利用できるようになったので、凝光と綾華を学習させた。
AdamW8bitとの違いを比較する。step数は3600で、正則化画像数は透明を120枚。
なお、コマンドラインで直接実行。
``` text
accelerate launch --num_cpu_threads_per_process 16 train_network.py  --pretrained_model_name_or_path=G:\sd_train\Train\nai_full.ckpt --train_data_dir=G:\sd_train\Train\ningguang\train  --output_dir=G:\sd_train\Train\ningguang\out  --reg_data_dir=G:\sd_train\Train\Lora_RegImageA120  --resolution=512,512  --save_model_as=safetensors  --clip_skip=2 --seed=42  --color_aug  --min_bucket_reso=320  --max_bucket_reso=1024  --network_module=networks.lora  --lr_scheduler=cosine_with_restarts  --lr_warmup_steps=500  --keep_tokens=1  --shuffle_caption  --network_dim=128  --network_alpha=128  --enable_bucket  --mixed_precision=fp16  --xformers  --lr_scheduler_num_cycles=4  --caption_extension=.txt   --persistent_data_loader_workers  --bucket_no_upscale  --caption_dropout_rate=0.05  --optimizer_type=AdaFactor  --optimizer_args "relative_step=True" "scale_parameter=True" "warmup_init=True"  --train_batch_size=2  --max_train_epochs=12  --output_name=ningguang_adafactor_1  --learning_rate=1e-4
```

### 凝光
Prompt | Image | Description
------ | ------ | ------
<lora:ningguang_adafactor_1:1>, 1girl, ningguang | ![Generated by AI](https://thumbs4.imagebam.com/ed/5c/76/MEKAXG3_t.jpg)https://www.imagebam.com/view/MEKAXG3 | AdamWのほうは彩度が低い。
<lora:ningguang_adafactor_1:1>, 1girl, ningguang, nude | https://www.imagebam.com/view/MEKAXGT | AdamWのほうは過学習状態で構図が固定されて彩度も下がった。
<lora:ningguang_adafactor_1:1>, 1girl, ningguang, bikini | ![Generated by AI](https://thumbs4.imagebam.com/5e/76/17/MEKAXGQ_t.jpg)https://www.imagebam.com/view/MEKAXGQ | AdamWのほうは過学習状態で構図が固定されて彩度も下がった。
<lora:ningguang_adafactor_1:1>, 1girl, ningguang, school uniform | ![Generated by AI](https://thumbs4.imagebam.com/ad/9c/07/MEKAXG4_t.jpg)https://www.imagebam.com/view/MEKAXG4 | AdamWのほうは彩度が低い。

AdaFactorは36分44秒かかった。AdamW8bitは27分41秒かかった。
AdaFactorは過学習を抑えつつも再現度が高いように思える。

### 神里綾華
繰り返し数が多すぎるので12に変更した。epoch数は8でbatch size1相当で7488steps。
``` text
accelerate launch --num_cpu_threads_per_process 16 train_network.py  --pretrained_model_name_or_path=G:\sd_train\Train\nai_full.ckpt --train_data_dir=G:\sd_train\Train\ayaka\train  --output_dir=G:\sd_train\Train\ayaka\out  --reg_data_dir=G:\sd_train\Train\Lora_RegImageA240  --resolution=512,512  --save_model_as=safetensors  --clip_skip=2 --seed=42  --color_aug  --min_bucket_reso=320  --max_bucket_reso=1024  --network_module=networks.lora  --lr_scheduler=cosine_with_restarts  --lr_warmup_steps=500  --keep_tokens=1  --shuffle_caption  --network_dim=128  --network_alpha=128  --enable_bucket  --mixed_precision=fp16  --xformers  --lr_scheduler_num_cycles=4  --caption_extension=.txt   --persistent_data_loader_workers  --bucket_no_upscale  --caption_dropout_rate=0.05  --optimizer_type=AdaFactor  --optimizer_args "relative_step=True" "scale_parameter=True" "warmup_init=True"  --train_batch_size=2  --max_train_epochs=8  --output_name=ayaka_adafactor  --learning_rate=1e-3
```

Prompt | Image | Description
------ | ------ | ------
<lora:ayaka_adafactor:1>, masterpiece, best quality, 1girl, kamisato ayaka, ayadef | ![Generated by AI](https://thumbs4.imagebam.com/89/5d/c2/MEKAXIK_t.png) | 再現できてない。

- epoch数を増やしてalphaを128にすると？

epoch数は10でbatch size1相当で9360steps。

Prompt | Image | Description
------ | ------ | ------
<lora:ayaka_adafactor_1:1>, masterpiece, best quality, 1girl, kamisato ayaka, ayadef | ![Generated by AI](https://thumbs4.imagebam.com/47/b2/1d/MEKAXI7_t.png) | 再現できてない。

学習しない。設定が悪いのだろうか。

- そもそもAdamW8bitでは？
問題なく学習ができた。


### 珊瑚宮心海
warmup initが有効の場合、大体5000stepまではほとんど学習しないらしいので、無効(=False)にする。
1920steps(batch1相当で3840steps)学習する。

``` text
accelerate launch --num_cpu_threads_per_process 16 train_network.py  --pretrained_model_name_or_path=G:\sd_train\Train\nai_full.ckpt --train_data_dir=G:\sd_train\Train\kokomi\train  --output_dir=G:\sd_train\Train\kokomi\out  --reg_data_dir=G:\sd_train\Train\Lora_RegImageA240  --resolution=512,512  --save_model_as=safetensors  --clip_skip=2  --seed=42  --color_aug  --min_bucket_reso=320  --max_bucket_reso=1024  --network_module=networks.lora  --lr_scheduler=cosine_with_restarts  --lr_warmup_steps=500  --keep_tokens=1  --shuffle_caption  --network_dim=128  --network_alpha=64  --enable_bucket  --mixed_precision=fp16  --xformers  --lr_scheduler_num_cycles=4  --caption_extension=.txt   --persistent_data_loader_workers  --bucket_no_upscale  --caption_dropout_rate=0.05  --optimizer_type=AdaFactor  --optimizer_args "relative_step=True" "scale_parameter=True" "warmup_init=False"  --train_batch_size=2  --max_train_epochs=8  --output_name=kokomi  --learning_rate=1e-3  --save_every_n_epochs=1  --save_precision=fp16
```

Prompt | Image | Description
------ | ------ | ------
 <lora:kokomi:1>1girl, sangonomiya kokomi, vision \(genshin impact\) | ![Generated by AI](https://thumbs4.imagebam.com/f2/82/79/MEKAXI9_t.png) | 再現成功
 <lora:kokomi:1>1girl, sangonomiya kokomi, kimono, sitting | ![Generated by AI](https://thumbs4.imagebam.com/c5/bf/12/MEKAXIB_t.png) | 着せ替えも容易

warmup initは切ったほうがよさそう。

#### step数ごとの変化

![Generated by AI](https://thumbs4.imagebam.com/ac/78/88/MEKAXIC_t.jpg)
https://www.imagebam.com/view/MEKAXIC
思ってたより学習が速いが、服の再現度が低い。AdamWはもっときれいに出る。

***

### AdamW(7488steps) vs AdaFactor(9360steps,16848steps)

![Generated by AI](https://thumbs4.imagebam.com/bd/07/c6/MEKAXID_t.png)
https://www.imagebam.com/view/MEKAXID
16000steps回してようやく覚え始めたが、顔が崩れている。
AdaFactorだとマルチクラス・サブジェクトの学習は難しい。
AdamWなら3000stepもあれば学習できるのに・・・

追記:warmup_initをFalseにすれば3000step程度で学習できたがAdamWほどの精度はなかった。

### 結論:基本的にAdamWでいい
![Generated by AI](https://thumbs4.imagebam.com/cf/7d/ae/MEKAXIH_t.png)
https://www.imagebam.com/view/MEKAXIH
AdaFactorを使えば過学習を抑える効果があるが再現度は低下する。そして遅い。
AdamWは過学習こそ多いが、速くて再現力が高いのが魅力的。

***

## LoConで学習
[LoCon](https://github.com/KohakuBlueleaf/LyCORIS/tree/locon-archive)という新たな学習方法が出てきたので検証する。

通常のLoRAより重かった。
コマンドはこんな感じ。[自作のGUI](https://github.com/RedRayz/Kohya_lora_param_gui)で生成。network_argsはintパースエラーが出るので指定してない。
``` text
accelerate launch --num_cpu_threads_per_process 16 train_network.py  --pretrained_model_name_or_path=G:\sd_train\Train\nai_full.ckpt  --train_data_dir=G:\sd_train\Train\kokomi\train  --output_dir=G:\sd_train\Train\kokomi\out  --reg_data_dir=G:\sd_train\Train\Lora_RegImageA120  --network_module=locon.locon_kohya  --persistent_data_loader_workers  --color_aug  --enable_bucket  --xformers  --save_model_as=safetensors  --lr_scheduler_num_cycles=4  --mixed_precision=fp16  --learning_rate=0.0001  --resolution=512,512  --train_batch_size=2  --max_train_epochs=6  --network_dim=128  --network_alpha=128  --shuffle_caption  --keep_tokens=2  --save_every_n_epochs=1  --optimizer_type=AdamW8bit  --lr_warmup_steps=500  --output_name=kokomi_locon  --clip_skip=2  --seed=42  --save_precision=fp16  --lr_scheduler=cosine_with_restarts  --min_bucket_reso=320  --max_bucket_reso=960  --caption_extension=.txt
```

### 神里綾華

作成したLoConモデルはkohya-ss氏作成の[Addtional Networks](https://github.com/kohya-ss/sd-webui-additional-networks)とKohakuBlueleaf氏作成の[sd-webui-locon](https://github.com/KohakuBlueleaf/a1111-sd-webui-locon)が必要。

![Generated by AI](https://thumbs4.imagebam.com/3b/04/38/MEKAXMG_t.jpg)
https://www.imagebam.com/view/MEKAXMG
4680stepsから再現できている。

### 珊瑚宮心海
![Generated by AI](https://thumbs4.imagebam.com/45/7a/35/MEKAXMI_t.jpg)
https://www.imagebam.com/view/MEKAXMI
4608stepは崩れやすい衣装もきれいに再現してる。

### レイラ
![Generated by AI](https://thumbs4.imagebam.com/b9/65/d1/MEKAXM3_t.jpg)
https://www.imagebam.com/view/MEKAXM3
まあまあ行ける

いい再現度。衣装固定は発生しなかったが、構図は固定気味。
再現度は従来のLoRAよりはいいかも？って程度。
!!! note Alphaは下げろ！
	AlphaはDimの半分にしたほうがいい。dimと同じ値では過学習の影響なのかHighres.fixで崩れやすい。

## LyCORISで学習
また[新しい学習法](https://github.com/KohakuBlueleaf/LyCORIS)が出たので検証。LyCORISはLoConとLoHaをまとめたリポジトリ。
LoHaにすると速度が低下しVRAM使用が増加する。Batch size 2にしたらCUDA OOMで無事死亡。省メモリ設定が必要。

- LyCORISのインストール方法
sd-scriptsのvenvに入ってpipでインストールするだけ。
あるいはリポジトリ内のlycorisフォルダをsd-scriptsにコピーする。
``` doscon
.\venv\Scripts\activate
pip install lycoris_lora
```
作成したLyCORISモデルを使用するにはKohakuBlueleaf氏作成の[sd-webui-locon](https://github.com/KohakuBlueleaf/a1111-sd-webui-locon)が必要。

## 神里綾華
前回と異なる素材を使用。
フォルダ構造
- ayaka\out *モデル出力先*
- ayaka\train_defcos *キャラ画像*
	- \8_ayaka *トリガータグはkamisato ayaka*
合計64枚。全て同じ衣装。2枚MMDモデルの画像を入れた。
正則化画像は透明を240枚用意した。

lohaのdimは8とした。

``` text
accelerate launch --num_cpu_threads_per_process 16 train_network.py  --pretrained_model_name_or_path="G:\sd_train\Train\nai_full.ckpt"  --train_data_dir="G:\sd_train\Train\ayaka\train_defcos"  --output_dir="G:\sd_train\Train\ayaka\out"  --reg_data_dir="G:\sd_train\Train\Lora_RegImageA240"  --network_module=lycoris.kohya  --persistent_data_loader_workers  --color_aug  --enable_bucket  --xformers  --save_model_as=safetensors  --lr_scheduler_num_cycles=4  --mixed_precision=fp16  --learning_rate=0.0001  --resolution=512,512  --train_batch_size=1  --max_train_epochs=3  --network_dim=64  --network_alpha=32  --shuffle_caption  --keep_tokens=1  --optimizer_type=AdamW8bit  --lr_warmup_steps=500  --output_name="ayaka_def_lycoris"  --clip_skip=2  --seed=42  --save_precision=fp16  --lr_scheduler=cosine_with_restarts  --min_bucket_reso=320  --max_bucket_reso=960  --caption_extension=.txt
```

![Generated by AI](https://thumbs4.imagebam.com/8c/cf/7a/MEKAXM7_t.jpg)
https://www.imagebam.com/view/MEKAXM7
LoRAよりは良いがLoConとの違いは分からない。LoHaはdimが小さすぎて再現できてない(頭以外のタグは集約せずにそのままにしているのでそれの影響かも)。
1タグに集約した部位(頭)は変化はないが、それ以外のシャッフルされるタグの再現度が低下した。

プロンプトでもっと細かく指定するとこうなる。
``` text
<lora:ayaka_def_loha:1>masterpiece, best quality, 1girl, kamisato ayaka, armor,  breastplate, hair ornament, tress ribbon, ribbon, hair ribbon, tabi, japanese armor, japanese clothes, armored dress, bridal gauntlets, socks, short sleeves, dress, choker, skirt
```
![Generated by AI](https://thumbs4.imagebam.com/73/36/aa/MEKAXMA_t.jpg)
https://www.imagebam.com/view/MEKAXMA
想像よりは再現度が下がらなかった。

強度を極端に上げるとこうなる。
![Generated by AI](https://thumbs4.imagebam.com/0d/4e/42/MEKAXMD_t.jpg)
https://www.imagebam.com/view/MEKAXMD
loraの強度を4にしてもlohaは原型を保っている(単に低dimだから？)。

頭のタグをkamisato ayaka,衣装のタグをarmored_dressに集約してloha,dim8,alpha1で学習したらこうなった。
![Generated by AI](https://thumbs4.imagebam.com/1f/3c/98/MEKAXRX_t.png)
想像よりは再現度が下がらなかった。



### 珊瑚宮心海

lohaのdimは10とした。

![Generated by AI](https://thumbs4.imagebam.com/03/ea/d2/MEKAXRZ_t.jpg)
https://www.imagebam.com/view/MEKAXRZ
LoRAよりは良いがLoConとの違いは分からない。LoHaはdimが小さすぎて再現できてない(頭以外のタグは集約せずにそのままにしているのでそれの影響かも)。
1タグに集約した部位(頭)は変化なし。

## 学習時と異なるモデルで相性が悪い問題について
NAIで学習したLoRAはAOM(dosmix?)で使用すると画質が低下する場合がある。
これは、1111のSettingsのApply Lora to outputs rather than inputs when possible (experimental)をオンにすると解消することがある。
ただし、デメリットもある。
before:
![Generated by AI](https://thumbs4.imagebam.com/65/c7/67/MEKAXS1_t.png)
after:
![Generated by AI](https://thumbs4.imagebam.com/3b/cb/9b/MEKAXS2_t.png)

!!! warning 注意!
	画風、構図LoRA使用時はオフ推奨。画風や構図の影響力が下がっていまいちな結果になる。
	マルゼン式で複数衣装を学習したキャラLoRAも再現度低下の原因となるためオフ推奨。

追記:相性悪い問題は過学習の可能性あり。教師画像を多めに(50枚~)用意したLoRAでは問題なかった。

***

## 512x512vs768x768
学習解像度によってどう変化するか検証。画像はコピー機回避のために152枚用意。
v3が512x512でv4が768x768
![Generated by AI](https://thumbs4.imagebam.com/d7/b7/24/MEKAXRU_t.jpg)
https://www.imagebam.com/view/MEKAXRU
![Generated by AI](https://thumbs4.imagebam.com/a7/aa/c6/MEKAXTB_t.jpg)
https://www.imagebam.com/view/MEKAXTB
スカートの柄の再現度が上がった**かも**しれないが、他の部分も変化したので多分偶然。
v2が768x768
![Generated by AI](https://thumbs4.imagebam.com/dc/75/d1/MEKAXTD_t.jpg)
https://www.imagebam.com/view/MEKAXTD
調べた結果、わかりませんでした！いかがでしょうか？今後の768x768の活躍に期待ですね。

### 1024x1024で良くなるのか
512,768,1024それぞれの解像度で神里綾華を学習、生成した。
画像はコピー機回避のために152枚用意。繰り返し数は4で正則化は透明240枚。
生成時は自家製マージモデルおよびCounterfeitV2.5で生成。※NSFW注意
学習コマンド(解像度と省メモリ設定以外は共通):
`accelerate launch --num_cpu_threads_per_process 16 train_network.py  --pretrained_model_name_or_path="G:\sd_train\Train\nai_full.ckpt"  --train_data_dir="G:\sd_train\Train\ayaka\train"  --output_dir="G:\sd_train\Train\ayaka\out"  --reg_data_dir="G:\sd_train\Train\Lora_RegImageA240"  --network_module=lycoris.kohya  --network_args "algo=lora" "conv_dim=64" "conv_alpha=32"  --mem_eff_attn  --gradient_checkpointing  --persistent_data_loader_workers  --color_aug  --enable_bucket  --save_model_as="safetensors"  --lr_scheduler_num_cycles=4  --mixed_precision=fp16  --learning_rate=0.0001  --resolution=1024,1024  --train_batch_size=1  --max_train_epochs=3  --network_dim=64  --network_alpha=32  --shuffle_caption  --keep_tokens=1  --optimizer_type="AdamW8bit"  --lr_warmup_steps=500  --output_name="ayaka_1024"  --clip_skip=2  --seed=42  --save_precision="fp16"  --lr_scheduler=cosine_with_restarts  --min_bucket_reso=320  --max_bucket_reso=1536  --caption_extension=".txt"`

生成解像度 | プロンプト | 画像 | 説明 
----- | ------ | ------ | ------
512x512 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, flower | ![Generated by AI](https://thumbs4.imagebam.com/36/27/02/MEKAXTE_t.jpg)https://www.imagebam.com/view/MEKAXTE | 
768x768 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, flower | ![Generated by AI](https://thumbs4.imagebam.com/e2/39/9b/MEKAXTF_t.jpg)https://www.imagebam.com/view/MEKAXTF | 
1024x1024 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, flower | ![Generated by AI](https://thumbs4.imagebam.com/80/b5/8b/MEKAXTG_t.jpg)https://www.imagebam.com/view/MEKAXTG | Nothing better
512x512 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, hand fan, fan, holding fan, cherry blossoms | ![Generated by AI](https://thumbs4.imagebam.com/a4/b0/96/MEKAXTH_t.jpg)https://www.imagebam.com/view/MEKAXTH | 
768x768 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, hand fan, fan, holding fan, cherry blossoms | ![Generated by AI](https://thumbs4.imagebam.com/49/15/4f/MEKAXTI_t.jpg)https://www.imagebam.com/view/MEKAXTI | 
1024x1024 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, hand fan, fan, holding fan, cherry blossoms | ![Generated by AI](https://thumbs4.imagebam.com/5e/2e/0a/MEKAXT7_t.jpg)https://www.imagebam.com/view/MEKAXT7 | 
512x768 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, hand fan, fan, holding fan, cherry blossoms, full body, standing, looking at viewer | ![Generated by AI](https://thumbs4.imagebam.com/e0/2e/a2/MEKAXYN_t.jpg)https://www.imagebam.com/view/MEKAXYN | 
1024x1536(↑のhighres.fix) |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, hand fan, fan, holding fan, cherry blossoms, full body, standing, looking at viewer | ![Generated by AI](https://thumbs4.imagebam.com/7e/3c/e0/MEKAXYO_t.jpg)https://www.imagebam.com/view/MEKAXYO | よくなったようには見えない。
512x768 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, squatting, | ![Generated by AI](https://thumbs4.imagebam.com/42/3d/17/MEKAXYR_t.jpg)https://www.imagebam.com/view/MEKAXYR | 
512x768 |  <lora:ayaka_512:1>1girl, kamisato ayaka, armored dress, (jumping:1.1) | ![Generated by AI](https://thumbs4.imagebam.com/3c/6f/19/MEKAXYL_t.jpg)https://www.imagebam.com/view/MEKAXYL | もっと派手にジャンプしてほしかった。
512x768 |  <lora:ayaka_512:1>1girl, kamisato ayaka, nude, nsfw | https://www.imagebam.com/view/MEKAY1J | 
512x768 |  <lora:ayaka_512:1>1girl, kamisato ayaka, nude, 1boy, sex, pov, penis, cum in pussy, trembling | https://www.imagebam.com/view/MEKAY1H | 教師画像に1枚もエロ画像入れてないし同一衣装だけなのにプロンプトにしっかり応答する。過学習してない証拠？

画素数が倍になってかなり遅くなる。結果が変化するが改善する傾向はない。
他のキャラでは効果があったので効果があるかはデータセットによるかもしれない。

ちなみに、ナヒーダの目は768,1024でも再現できない。civitaiにある再現できてるっぽいやつは5万ステップ(!?)も回してる模様。試しに9000ステップ回したらうっすらと模様が出た。

- 追記
4epoch回したら細部の再現性が512より良くなった。おそらく低stepsでは解像度の差が小さいかも。

***
## (個人的に)安定して学習できる方法
大体これで過学習を抑えつつ満足のいく再現度を得られている。ただしキャラ再現向け。マイナーキャラは知らん。
1.教師画像を64枚集める。教師画像は覚えて欲しい要素以外で共通点のない組み合わせが良い。
*rating:explicit/questionableの画像を少し混ぜておけば生成時に脱がない問題を回避できる。*
2.XnConvertで長辺1024pxにリサイズする。
3.WD14Taggerでタグ付けする。頭のタグだけ集約する。
4.教師画像フォルダの繰り返し数を8にする。
5.透明正則化画像を240枚用意する。フォルダ名は「1_1girl」
6.次の設定で学習する。
- networks.lora
- AdamW
- Dim64,Alpha28
- LR:1e-4
- epochs:4(4096steps)
- conv_dim64,alpha28


## わかったこと

### 素材・対象
- 雷電将軍のような既知のタグは過学習になりやすい可能性がある。
- キャラを学習させるときに同じような衣装ばかりだとnetwork_dimの値にかかわらず生成時に衣装が変えられない。できれば画像ごとに異なる衣装か、生首画像で学習する。
	- 生首を使うと衣装は変えられるが頭だけお面のようになるらしい。
- 過学習を抑えたいなら教師画像の数(多様性)を増やすのが一番いい。
	- **LoRAはデータセットが最重要。パラメータなんて二の次。**

#### 正則化画像について
- 正則化画像は透明のほうがいいかも。NAI系モデルで生成した1girlの画像を使ったら品質が低下した。タグ付でさらに低下する。
- 正則化画像無しでは学習が速いが過学習になりやすい。
	- 正則化画像ありでは教師画像に近づきすぎる(過学習)を防ぐかわりに再現度低下および学習時間の増加につながる。
	- 正則化画像を入れるとそれの画風につられて品質に影響を及ぼす。

### 学習
- キャラ再現、背景、画風は2000～4000stepsが最適。構図、シチュエーションは6000steps以上を推奨。
- 繰り返し数は20以下が良い。繰り返しすぎると過学習になりやすい。
- 雷電将軍の過学習サンプル画像のように線が太いかべた塗りであれば過学習になっている。
- マルゼン式で衣装も学習するならnetwork_dimは128を推奨。
- 教師画像にない衣装に着せ替えしたいなら低dimがいいかもしれない。
- Alphaを1にしたり低dimにしたりすると複数衣装を覚えない。画風の影響も減る。
- 正則化画像は無くてもいい。正直言って透明正則化は雰囲気でやってる。
- LoConで細かい模様の再現度が上がるが劇的によくなることはない。
	- LoHaはファイルサイズ削減目的以外ではおすすめしない。

### オプティマイザ
- AdaFactorは学習力が低い(過学習になりにくい)傾向がある。
- AdaFactor使用時はwarmup_initはFalse推奨。Trueだと学習に6000step以上必要になる。
- 結局AdamWが最強。

### その他
- 学習中のVRAM使用量は6~8GB。アイドル時は400MB前後。消費電力は激しく変動する。dimが小さいと処理が若干早くなる。
- コミットチャージ(仮想メモリ)は60GB以上消費する。が、torch1.13.1,xformers0.0.17では40GB程度だった。
- 物理メモリ使用量はPythonだけで6.5GB。PC全体の使用量は14GBだった。
- Power Limitを70-90%にしてCore clockとMemory clockを盛ると速度低下を抑えつつ省電力化できる。
- 若干遅くなるけどYoutubeやAmazon Prime Videoなどの動画サイトを見ながらでも行ける。
	- 学習中にcivitaiを開いてはいけない。学習速度が大幅に低下する。ブラウザもカクカク。

### タグ付けのヒント
- 覚えたい特徴のタグをキャラ名などの1タグに集約する。
- 意味が重複または矛盾するタグは除去する。*例:holding, holding weapon, holding gun→holding gun*
- ほぼすべての画像につくタグは除去する。*例:1girl*

***

## 参考資料
- https://wikiwiki.jp/sd_toshiaki/LoRA
マルゼンスキーム。トリガータグが逆？と言う人がいるがこの方法で衣装変更ができるので間違っていないと思う。
- https://note.com/kohya_ss/n/nba4eceaa4594
kohya氏の解説。