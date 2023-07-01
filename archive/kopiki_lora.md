# コピー機LoRA学習法
※cweb-pixが死んで画像がリンク切れしてたのでmajinaiに上げて修正しました

## はじめに
コピー機LoRA学習法とは、過学習させたLoRAを基に別のLoRAを作成する手法。アウトラインの調整などの細かい変化をさせるLoRAを作成できる。
LoRAの「モデルと教師画像の差分を学習する」という仕組みを利用したもの。
このメモでは作成手順の紹介と作成の記録をする。

## 手順および作成記録

### 1.元となるモデルで画像を出力する
なんでもいいから適当に出力する。出力した画像は「元画像」とする。
![Image](https://majinai.art/i/b-qDB4Y.png)


### 2.元モデルで元画像を学習させる
過学習で完璧なコピー機LoRAにする。ここで作成したLoRAは「コピー機LoRA」とする。

#### 学習時の設定
繰り返し数512、epochs6(3072steps)、LR0.0001、解像度は元画像と同一(512)、Dim64Alpha32、AdamW、networks.lora
Shuffle captionsはTrue、Keep tokensは0、Warmup steps500、正則化無し

WD14Taggerでキャプションを作成。

### 3.コピー機LoRAを元モデルにマージする
sd-scriptsにあるmerge_lora.pyでマージする。
コマンドの例(venvに入った後):`python .\networks\merge_lora.py --sd_model="D:\sd_train\Train\nai_full.ckpt" --models="G:\sd\models\lora\kagakusyuu.safetensors" --save_to="G:\sd\models\Stable-diffusion\copying_machine.safetensors" --ratios=1 --precision="float" --save_precision="float"`
ここで作成したモデルは「コピー機モデル」とする。

こんな感じに全く同じ画像しか出ない。プロンプト関係なしにこれになる。
![Image](https://majinai.art/i/eGbXv6y.png)


### 4.元画像を加工する
ここで作成した画像は「加工画像」とする。

記録では5つのLoRAを作成。その時の加工画像:
アウトライン
![Image](https://thumbs4.imagebam.com/be/ab/a9/MEKU75W_t.png)
フラット化
![Image](https://thumbs4.imagebam.com/59/bc/45/MEKU75X_t.png)
高コントラスト
![Image](https://thumbs4.imagebam.com/e5/44/ec/MEKU75Y_t.png)
ポスタリゼーション
![Image](https://thumbs4.imagebam.com/6b/e5/24/MEKU75Z_t.png)
jpegノイズ
![Image](https://thumbs4.imagebam.com/a4/28/50/MEKU761_t.jpg)

### 5.コピー機モデルで加工画像を学習させる
ここで作成したLoRAは「加工LoRA」とする。**ここで完成としてもいい。**
記録では学習パラメータはdim64/alpha32,4096stepsにした。

### 6.ステップ2から5を別の元画像で繰り返す※
※このステップは任意とします。画像1枚だけでもできました

### 7.作成した複数の加工LoRAをマージする※
※このステップは任意とします。画像1枚だけでもできました
sd-scriptsにあるmerge_lora.pyでマージする。
元モデルに複数の加工LoRAをマージさせて加工モデルを作る。

### 8.元モデルと加工モデルでモデル差分からLoRAを作成して完成※
※このステップは任意とします。画像1枚だけでもできました

### 9.Dimのリサイズ※
※このステップは任意とします。
低dimで学習させるより、高dimで学習してから、dimのリサイズをしたほうがいい結果になることがある。
sd-scriptsのresize_lora.pyでリサイズできる。
コマンドの例(venvに入った後):`python .\networks\resize_lora.py --model "G:\1111\models\lora\sample.safetensors" --save_to "G:\1111\models\lora\sample1.safetensors" ---new_rank 8 --save_precision "fp16"`

記録ではすべてdim8にリサイズした。
後にdim4に変更したが十分効果があったのでdim8以下でよさそう

## 成果
学習に使ったものとは違うのモデルで出力。1枚の画像で学習。


### アウトライン
![Image](https://majinai.art/i/ySEn4qy.webp)
強度を上げたら線が太くなった。予想通りの結果になった。

### フラット化
![Image](https://majinai.art/i/PONo1rD.webp)
効き目が悪かったのでdim128,alpha64,5120stepsで学習。
flatニキのと同様の効果が表れた。しかしflatほどの派手な効果はない。

### 高コントラスト
![Image](https://majinai.art/i/u7qInyd.webp)
地味な効果。マイナスにすると若干コントラストが低下した。

### ポスタリゼーション
![Image](https://majinai.art/i/m6dDozB.webp)
マイナスにしたらflatの塗りだけを変化させるバージョンになった。

### jpegノイズ
![Image](https://majinai.art/i/s4PEzUK.webp)
効き目が悪かったのでdim128,alpha64,5120stepsで学習。
マイナス適用で若干精細になって背景の描き込みが増えた。

## 差分抽出法
元画像を過学習させたLoRAに元画像を加筆修正した画像を過学習させたLoRAをsvd_merge.pyを用いてマージすることで、元画像と加筆画像の差分を抽出できる。

## 手順および実例
アウトラインでやってみた。
### 1.元となるモデルで画像を出力する
なんでもいいから適当に出力する。出力した画像は「元画像」とする。
![Image](https://majinai.art/i/eGbXv6y.png)

### 2.元モデルで元画像を学習させる
過学習で完璧なコピー機LoRAにする。ここで作成したLoRAは「コピー機LoRA」とする。
4096steps回した。
一応Taggerでキャプションを作成。学習時はKeep tokensは0にした。

### 3.元画像を加工する
ここで作成した画像は「加工画像」とする。

その時の加工画像:
![Image](https://thumbs4.imagebam.com/be/ab/a9/MEKU75W_t.png)

### 4.加工画像を学習する
過学習で完璧なコピー機LoRAにする。ここで作成したLoRAは「加工画像LoRA」とする。

### 5.svdマージで差分抽出
svd_merge_lora.pyを用いて差分抽出する。
コマンドの例:
`python .\networks\svd_merge_lora.py  --save_precision "fp16"  --precision "float"  --save_to "G:\sd\models\lora\outline_svd.safetensors"  --models "A.safetensors" "B.safetensors"  --ratios 1 -1  --new_rank 8 --device "cuda"`

### 6.完成
![Image](https://majinai.art/i/eMNsmND.webp)
プラスの強度でアウトラインが消えた。
コピー機学習法より効き目が強かったり画風の変化が大きい。強度を上げたら教師画像が出てきてしまった。

## Tips(LoRA全般)
ゲームのスクショから何かを学習させるときに画風まで学習してほしくないなら、先にゲームのスクショで画風LoRAを作成し、モデルにマージする。
そのモデルを学習モデルとして利用すると画風の変化を大幅に低減できる。
!!! note Note
	コピー機ではなく、通常の学習法でやる(=大量の画像で学習)

実例(上がNAIそのままで学習、下がNAIにコイカツ画風LoRAをマージしたモデルで学習):
![Image](https://majinai.art/i/11n4L9E.webp)