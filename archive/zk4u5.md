# としあきdiffusion

#[Waifuv1-3体験版](https://huggingface.co/spaces/hakurei/waifu-diffusion-demo)
### [NAIの呪文コーナーは移動しました](https://rentry.co/ym3di)

画像から呪文の読める→https://novelai-metadata-viewer.pages.dev/
->**↓ここからテンプレ**<-
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
◇ Stable DiffusionのWebで遊べるもの
https://huggingface.co/spaces/stabilityai/stable-diffusion (txt2img)
https://huggingface.co/spaces/huggingface/diffuse-the-rest (img2img)
◇ Stable DiffusionをローカルまたはGoogle Colabに環境構築
・web UI (AUTOMATIC1111版) ※多機能 https://github.com/AUTOMATIC1111/stable-diffusion-webui
機能の解説はWikiを参照 https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features
・NMKD ※導入が比較的容易 https://nmkd.itch.io/t2i-gui
◇ Stable Diffusionで使えるモデルデータ
・Waifu-Diffusion
・Trinart　 https://huggingface.co/naclbit/trinart_stable_diffusion_v2
◇ Stable Diffusion以外
・ERNIE-ViLG https://huggingface.co/spaces/PaddlePaddle/ERNIE-ViLG
・MidJorney https://www.midjourney.com/home/
・Craiyon https://www.craiyon.com/ (顔を描くのは苦手)
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
->**↑ここまでテンプレ**<-
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
TIPS: キーボードのCtrlとFを同時に押すと文字検索できる画面がでてくるよ！
スレ閲覧時に性癖に来るのがないか探すときや、このクソなが見づらいrentryで目的のワードを探すときに活用しよう！



->**==※ちなみにこのrentryはプログラミングとか詳しくない人が書いてます。間違いがある可能性有※==**<-

->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
### **スレの閲覧時に便利なブックマークレット(匿名としあき22/10/09作)**
適当にブックマークを作成し、そのリンクを以下の文章へ書き替えます。

```
javascript:(()=>{[...document.querySelectorAll('.thre .rtd > a[href$=".png"]:last-of-type')].forEach(async e=>{m=(await(await fetch(e.href)).text()).match(/(?<=Xt(?:parameters|Description|Comment)\0*)([^\0]+)/ug);m&&(e.parentElement.innerHTML+=(m.map(s=>`<pre style="white-space:pre-wrap">${s}</pre>`).join('')))})})()
```

スレ閲覧時にそのブックマークを押すことにより画像に埋め込まれた呪文を確認することができます。
※モザイク処理のためjpgなどに変換されたものでは見れません。
※android端末でのスレ閲覧時にはURLバーを押しブックマークレットの名前を入れ選択することで使用できます。

### **スレの閲覧時に便利なブックマークレット２(匿名としあき22/10/17作)**
やっつけだけどNAIの強調をwebuiの強調に変換するブックマークレット作った
入力ダイアログが出るからそこにNAIのプロンプトをコピペしてOK→変換後のプロンプトがまたダイアログで出るのでコピーする
```
javascript:(()=>{let a=0,b='',d=0,m=0,l=0;for(const c of window.prompt('変換したいNAIのプロンプトを入力してください')){if(c=='{'){a++,m=a;if(a==1){b+='('}}else if(c=='}'){a--;if(a==0){b+=':'+(Math.round(10000*1.05**m)/10000)+')',m=0}}else if(c=='['){d++,l=d;if(d==1){b+='('}}else if(c==']'){d--;if(d==0){b+=':'+(Math.round(10000*(1/1.05)**l)/10000)+')',l=0}}else{b+=c}};window.prompt('変換しました。コピーしてください',b)})()
```
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
##[もっと情報がたくさん！みんなで作るwikiへほとんど移動しました！](https://wikiwiki.jp/sd_toshiaki/)
[TOC2]

->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
### わからない事を質問するとき！
・まずは出てきた言葉で調べてみましょう
・自分の使っているサービス名を書きましょう
・自分の使っているグラボを書きましょう
・もしエラーメッセージのSSが撮れるならそれを添付しましょう(Win+PRTSCで全画面撮影 or Win+Shift+Sで選択領域の撮影もできます。)
・あと再起動をするとなんか解決することもあるよ
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
### モデルが拾えるところ
移行しました⇒https://wikiwiki.jp/sd_toshiaki/%E3%83%A2%E3%83%87%E3%83%AB%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
### NMKDの導入について
RAM4GB以上あるけど、pythonもわからん。Gitもわからん。NAIは同じすぎて嫌だけど画像生成の雰囲気はつかみたいって人向け
https://pajoca.com/stable-diffusion-gui-nmkd-1-3-0/
↑こっちやgoogleして参考にした方がいいかも　※このrentryを書いてるとしあきはAUTOMATIC1111のため。これを書くために入れてみるけど書いたら消す
AUTOMATIC1111とは機能が違いすぎるらしいのでおいてかれるかも
移動しました⇒https://wikiwiki.jp/sd_toshiaki/NMKD%E3%83%AD%E3%83%BC%E3%82%AB%E3%83%AB%E5%B0%8E%E5%85%A5

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
### AUTOMATIC1111関連
### AUTOMATIC1111Colab版導入　(モデル：Stablediffusion v1-4)
移行しました
導入⇒https://wikiwiki.jp/sd_toshiaki/AUTOMATIC1111Colab%E7%89%88%E5%B0%8E%E5%85%A5

ドライブからモデルを読み込む⇒https://wikiwiki.jp/sd_toshiaki/Colab1111%E3%81%A7%E3%83%89%E3%83%A9%E3%82%A4%E3%83%96%E3%81%8B%E3%82%89%E3%83%A2%E3%83%87%E3%83%AB%E3%82%92%E8%AA%AD%E3%81%BF%E8%BE%BC%E3%82%80

#### ==★AUTOMATIC1111のローカル版(自分のPC内だけで動かす奴)について==

移行しました⇒https://wikiwiki.jp/sd_toshiaki/AUTOMATIC1111%E3%83%AD%E3%83%BC%E3%82%AB%E3%83%AB%E5%B0%8E%E5%85%A5

最低4GBのグラボが必要　VRAMが大きいほど？画像生成が早かったり、後述するDBやTIが動く

->**＿＿＿＿＿自分のGPUがわからない人へ＿＿＿＿＿**<-
キーボードの左下とかの「Ctrl」とその2個横くらいの「Alt」そしてEnterの付近にある「Delete」を押します。
青い画面になるので「タスクマネージャー」を押します。
「パフォーマンス」を選びます。　※上の方のプロセスの横です。
すると上から、「CPU」「メモリ」「ディスク0(C:)」みたいな感じで並び最後に「GPU 0」みたいなのがあると思います。
そこをクリックします。　すると、右上らへんに　「NVIDIA GeForce なんとか～～」みたいに出ます。それが搭載されているGPUの名前です。
※もしかしたらCPUの内臓のやつも出るかも　NVIDIAと書いてあるやつを見つけましょう。
->**＿＿＿＿＿＿＿＿＿＿**<-

**★まじで初心者の人はここから**
1.PC(マイコンピューター)を開く
2.空いているところで右クリックして、「プロパティ」を選ぶ
3.「システムの種類」　のところを確認する
例):　64 ビット オペレーティング システム、x64 ベース プロセッサ  ならこの後の処理で64-bitの方を選ぶ
トラブルシューティング⇒https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Troubleshooting#low-vram-video-cards
↑もしなんかあったらDiscordの日本人チャットかスレで聞いてみてね。見てて知ってたら答えます。

**★拡張子表示**
拡張子という言葉を聞いたことがあるかもしれません。
多くの人は何らかの理由で表示しているかもしれませんが、普段ネットサーフィン専用にしか使っていない人だと知らないかもしれません。
「.exe」「.jpeg」「.jpg」「.png」「.gif」などなにか見たことや聞いたことがあるものがあると思います。
画像生成の世界に飛び込むには表示しておいた方がいいので表示するようにしましょう。
また、戻すのも簡単なのであとで躓かないようにいまのうちにしておきましょう
１．フォルダをなにか開く　※本当になんでもいいです。デスクトップに新しいフォルダを作ってそれを開いてもいいです。
２．その画面の上の方に　ファイル｜ホーム｜共有｜表示　と並んでいると思います。　そこで　表示　をクリック
３．ぐにゃっとなんか出てきたと思います。　
　ペイン｜レイアウト｜現在のビュー｜表示/非表示
　とある中の　表示/非表示に注目してみましょう。
　その中に　□ファイル名拡張子　とチェックのついていない項目があると思います。　そこにチェックをいれます。

これで拡張子が表示されるようになりました。いままでダウンロードした画像などを見てみるとファイル名の後ろになんかついてると思います。
※※ここで注意
※いままでと同じ感覚で今後ファイル名の変更をしようとすると不用意に拡張子部分を消してしまう可能性があるので、名前を変更する際はよく見て注意しましょう※
※簡単にいうと　「ファイル名.拡張子」を名前変更しようとすると「拡張子」の部分も書き換えられるけど、そこを書き換えるとやばいから気を付けようという話です。


#### ==★AUTOMATIC1111ローカル導入方法==
https://github.com/AUTOMATIC1111/stable-diffusion-webui#automatic-installation-on-windows
簡単な流れ
1.モデルデータをダウンロードしてくる。なんのモデルをダウンロードしてきても良い。
2.python3.10.6をダウンロードしてインストール　※この時必ずAdd Python to PATHに☑を入れておく(インストーラーの最初の画面に項目あり)
　https://www.python.org/downloads/windows/
　Note that Python 3.10.6 cannot be used on Windows 7 or earlier.でDownload Windows installer (XX-bit)を選ぶ。
　XXは自分に対応した数字を選ぶ
　他のバージョンや新しいバージョンもあり動く可能性もあるが、バージョン指定されているので一応同じものをいれておこう。
3.Gitをインストール(画面にしたがってぽちぽち押していく)
　https://git-scm.com/download/win
　Standalone Installerで自分のOSのbitを選ぶ
4.Gitインストール完了後、webuiをインストールしたいフォルダで空いてるとこで右クリックし、Git bash hereを押す
　※※このときOSがwindows11だと「その他のオプション」⇒「Git bash here」かも※※
　※※もし出なかったら再起動してみるといいかも※※
5.コマンドプロンプト画面(なんか黒いよくハッカーとかが見てそうな画面)のようなものが起動するので、
```
　git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
```
と入力してEnterを押す
6.しばらくすると「stable-diffusion-webui」フォルダが作成される
7.最初にダウンロードしたモデルデータを「models→Stable-diffusion」内に移動する。なんのモデルをダウンロードしてきても良い。
8.「stable-diffusion-webui」内の「webui-user.bat」を実行(ダブルクリック)する　(ながーい時間がかかる)
9.**初回はとても長い時間がかかる(1時間かかる場合もあり？人によって3時間とかいう情報もあり)**
10.「Running on local URL: http://127.0.0.1:7860 」　「To create a public link, set 'share=True'in'launch()'.」と出たら
ブラウザで「http://localhost:7860/」へアクセス　これで初回起動まで完了
※次回以降は8のwebui-user.batをクリックして起動するからまた行うことになる。接続する先は変わらないのでブックマークしてもよいかも
※この時ブラウザで上手く開けない人は違うブラウザを使う事によって解決する場合があります。理由はわかりません。

※
もし違う場所にPYTHONをいれたりなんなりするなら
webui-user.batをメモ帳などで開き、以下の様にpython.exeの場所を指定する。
```
@echo off

set PYTHON=C:\Users\toshiaki1111\AppData\Local\Programs\Python\Python310\python.exe
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=

call webui.bat

```
↑こんな感じ
しないと↓
```
Couldn't launch python

exit code: 9009

stderr:
Python was not found but can be installed from the Microsoft Store: https://go.microsoft.com/fwlink?linkID=2082640
Launch unsuccessful. Exiting.
続行するには何かキーを押してください . . .
```
みたいなの出ると思う。



#### ==★AUTOMATIC1111ローカル更新方法==
1.「stable-diffusion-webui」のフォルダを開き、空いてるとこで右クリックgit bash hereを押す
2.「git pull https://github.com/AUTOMATIC1111/stable-diffusion-webui.git」と入力してEnterを押す
3.すぐに更新が完了する


＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
#### 「webui-user.bat」を編集する
webui-user.batは起動時に使うファイルです。
これを編集することによりオプションを付け加えることができます。

移行しました⇒https://wikiwiki.jp/sd_toshiaki/%E3%80%8Cwebui-user.bat%E3%80%8D%E3%82%92%E7%B7%A8%E9%9B%86%E3%81%99%E3%82%8B

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
#### Batch countの指定
デフォルトでは16のBatch count
寝てる間や出かけてる間歯を磨いている間に生成したいからもっと多くしたいというとしあきもいると思います。
起動に使う「webui-user.bat」と同じ場所にある「ui-config.json」を編集します。
```
    "txt2img/Batch count/maximum": 16,
```
があると思うので、そこを任意の数字に変更しましょう。

※なお、増やしすぎると10ぐらいで生成したい時とかに調整難しくなるから注意　とのこと
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
#### Xformersによる高速化について(グラボにより導入難易度高めかもしれません。)
xformersを導入することにより使用するメモリ減＆高速化してくれます。
しかし、デメリットとして若干生成される画像が変わります。
人によっては誤差と言っていいレベルとのことなので導入を見てわかる方であれば導入したほうが快適に生成できるようになるかもしれません。

移行しました⇒https://wikiwiki.jp/sd_toshiaki/%E9%AB%98%E9%80%9F%E5%8C%96%E3%81%A7%E3%81%8D%E3%82%8BXformers%E3%82%92%E5%B0%8E%E5%85%A5%E3%81%97%E3%82%88%E3%81%86

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
#### ==★匿名な特殊なファイルの追加について==
2022/10/07
https://rentry.org/sdg_FAQ　※ダウンロードにはtorrentが必要
１．AUTOMATIC1111のバージョンを最新にする
２．stable-diffusion-webui⇒modelsにhypernetworksフォルダを作成する
３．stable-diffusion-webui⇒models⇒Stable-diffusionフォルダへ入手したモデルを任意の名前にして移動する　例）animefinal.ckpt
４．匿名入手の「animevae.pt」(784MBくらいある)を「モデルにつけた名前.vae.pt」に名前変更をする　　　例)animefinal.vae.pt
５．名前変更した４のファイルを３と同じフォルダへしまう
６．同じく「config.yaml」をckptと同じ名前にして３と同じフォルダへしまう　　　例)animefinal.yaml
７．匿名入手したmodulesフォルダの中身を１で作成したフォルダへ移動する。

ファイル階層イメージ
```
stable-diffusion-webui
　┣models
　┃　┗Stable-diffusion
　┃　　┣animefinal.ckpt
　┃　　┣animefinal.vae.pt
　┃ 		 ┗animefinal.yaml
　┗hypernetworks
  　┗anime.pt
```
って感じ

#### AUTOMATIC1111上でほぼ同じ画像を生成する

NSFW(Full)の場合元ファイル名「animefull-final-pruned.ckpt」と　「animefull-final-pruned.vae.pt」　「config.yaml」を使用する
SFW(Curated)の場合「animesfw-final-pruned」関連を全て使う
１．★匿名な特殊なファイルの追加についてを参照しその全てを同じ場所にしまう
２．「Settings」を開き、中央下の方「Stable Diffusion」の11行目くらいにある「Stop At last layers of CLIP model」を2にする。
３．ロードするモデルはもちろん「animefull-final-pruned.ckpt」が元の名前のモデル　※名前は自由に変えてよい
４．一番上まで戻り「Apply settings」

===※当初はyamlが必要と言われていましたが、不要になりました。===
xformersはON
(こちらの環境では--force-enable-xformers)のが似てました
これで設定を全て同じにすると似た感じになるらしい。
ただし、promptは75制限？
hypernetworksについてはNONE(使用しない)です。　　※使用すると違う画像になるため

NAIの{}はx1.05なのでautomatic1111版だと(…:1.05)
逆に言うと(…)はx1.1なのでNAI換算ではほぼ{{…}}=x1.1025　とのこと

##### Euler aを再現する
CLIP skip 2・モデル・vaeなどは同じものを使う
Settings⇒右列一番下「Sampler parameters」の一番下
「Eta noise seed delta」へ「31337」を入れる
()がある場合\(\)にする

NAI再現設定
Stable Diffusion checkpoint:
animefull-final-pruned [925997e9]

Stop At last layers of CLIP model: 2

eta (noise multiplier) for ancestral samplers: 0.67
Eta noise seed delta: 31337


例のサイトの
デフォのCFG scale 「11」
Add Quality Tags がONの場合先頭に「masterpiece, best quality, 」
デフォのネガティブprompt「lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry」

4chan民による再現挑戦設定
CLIP skip 2　　　　　　　　　※SettingのNSFTにチェックすると設定バーが生えるらしい

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
#### Textual Inversion on AUTOMATIC1111 web ui
公式⇒　https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Textual-Inversion

こちらへ情報以降中⇒https://wikiwiki.jp/sd_toshiaki/Textual%20Inversion%20on%20AUTOMATIC1111

==TI＆HN時にはvaeは無効にしよう！==
↑そんな情報を見た。
Settingsの真ん中に「Unload VAE and CLIP from VRAM when training」があるからONにしよう

動かすための条件など
8GB以上のVRAMがあればとりあえず動く
精度を高めるにはもっと必要＆編集(--no-half --precision full)が必要
--lowvramandや--medvramを使用している場合は使えない
RTX2070で動かした際は専用GPUメモリ 7.8/8.0GBで張り付いてました。
ちなみにバランス電力モードで10万steps回すのに928m10.84sかかりました。　（約16時間

##### 実際にTextual Inversionをする
※事前にトレーニングに使う画像を集めておきましょう。
※512x512の画像でトレーニングする必要があります。
==！！！！現在読み込んでいるモデルを学習に使うので注意！！！！==
==学習時に使用するモデルは一番小さいのでも十分です。fullは基本数万枚の画像を追加で学習させるときに使いましょう==

Trainタブを開きます。
###### ０．(任意)　Preprocess imagesでトレーニングに使う画像をサイズ変更やキャプション付け(画像の説明をファイル名に追加)する。
　Source directoryへトレーニングに使う未加工の画像をしまっているフォルダの場所を書く
　　例）H:\stable-diffusion-webui\traning\学習素材無加工
　Destination directoryへ加工した画像の保存先のパスを書く　※この時、保存先のフォルダが、未加工のフォルダ内にあるとバグる。注意
　　例）H:\stable-diffusion-webui\traning\学習素材加工済み
　WidthとHeightについては最近追加されたオプションで512x512以外で縮小したい時などに使えます。自由にどうぞ
　　※ただし、その先に書いてある通り１：１の画像だけ？でやれみたいに書いてあるので設定注意
　4つのオプションについては以下の通り、好きなものをONにすること
　- [ ] Create flipped copies
　↑画像を左右反転させたものも保存する　※もともとのTI学習Colabでは反転した画像で自動的に学習するようになっていました。
　　ただ、反転画像を用いると分け目が崩れたりします。AUTOMATIC1111では反転して学習をもとからしないようになっています。
　　どうしても反転させて学習したい場合にはONにしましょう。　基本的にはOFFのが良い結果が得られるかもしれません。
　- [ ] Split oversized images into two
　↑縦長や横長の画像を切って2つにする。　例）立ち絵を読み込ませると頭と下半身で別れたりする。　試した方が早い
　- [ ] Use BLIP caption as filename
　↑画像の説明をファイル名に追加する　※Interrogaterみたいなものです。　なぜ説明を追加するかは、この後の処理に関係があります。
　- [ ] Use deepbooru caption as filename
　↑画像の説明をファイル名に追加する　※deepdanbooruを使用します。　2次元系をやるならこれをONにしよう。おそらくBLIPと共存不可
　「Preprocess」を押すことによって画像の加工が始まります。

階層見本
```
stable-diffusion-webui
　┣embeddings　　　"画像生成の際に実際に使う"ptを保存するフォルダです。
　┃
　┃
　┣traning			これはもともと存在しないので新規で作ったフォルダです。
　┃　┗学習素材未加工
　┃　┃┣ipose1.jpg　　I字の女の子の画像
　┃　┃┗ipose2.jpg　　I字の女の子の画像
　┃　┃
　┃　┗学習素材加工済み　　　ここに保存される。これは作成してなくても名前を指定すれば自動作成されたかも
　┣textual_inversion
　┃┗20XX-MM-DD　　　　　実際にトレーニングを開始するとその日付のフォルダが出来る。
　┃　┗[Name]へ入れた言葉が名前のフォルダ　　　　トレーニング中に作成されるフォルダです。
　┃　　┣embeddings　　　　　　トレーニングしたptデータが保存されます。
　┃　　┗images　　　　　　　　トレーニングの途中の画像がここに出力されます。
　┃
　┃
　┃
　┗textual_inversion_templates　　　　　トレーニングに用いるテンプレがここに保存されています。
　　┣style.txt　　　　　　　　ファイル名を使わないで学習する。　画風用のテンプレート
　　┣style_filewords.txt　　　　ファイル名を使って学習する。　画風用のテンプレート
　　┣subject.txt　　　　　　　ファイル名を使わないで学習する。　モノ（キャラ）用のテンプレート
　　┣subject_filewords.txt　　　ファイル名を使って学習する。　モノ（キャラ）用のテンプレート
　　┣任意で作成した.txt
　　┗任意で作成した.txt

```
###### １．空のptファイルを作る
　一番上「Create a new embedding」の「Name」にその学習ファイルにつける名前を入力します。　　例)Name=あなる先生
　　※AUTOMATIC1111ではこれがそのまま呼び出しワードになります。
　「Initialization text」へは、その覚えさせるものに一番近い概念を入力するらしいです。　※書いてる人もちょっと完全には理解してません。
　「Number of vectors per token」では作成するptファイルのtoken数を決めます。(現在たしか75までしか書けないpromptのアレです。)
　　多いほうが色々な特徴を覚えるようですが、最初は小さい数字から始めるのが良いかもしれません。　ぺこらptは8で作成された様です。
　　絵師さんのイラストptでは1だけでそれなりの完成度を得ることができました。　良い設定が分かれば共有してください。
　「Create」を押すと「embeddings」フォルダ内に空のptが作成されます。　　　　　　例)あなる先生.pt

###### ２．トレーニングの設定を決める。
　★「Train an embedding; must specify a directory with a set of 512x512 images」と書いてあるところに注目します。
　★「Embedding」の「∨」を押すと「embeddings」フォルダ内のptの一覧が表示されるので、先ほど作成した空のptを選択します。
　★「Learning rate」は学習の深度を決める数字です。高くするとptファイルが機能しなかったり、promptに従いにくくなります。(最初はデフォの数値で試しましょう)
　★「Dataset directory」へは先ほどstep0で加工済の画像を保存したフォルダのパスを書きます。　もしくは、任意の学習元画像が入ってるフォルダのパスを書きます。
　　　例）H:\stable-diffusion-webui\traning\学習素材加工済み
　★「Log directory」はなにも弄らなくてよいです。　※弄ると学習途中のデータなどの出力先を変えることが出来ます。
　★「Prompt template file」では、何を学習するかによって使うべきtxtファイルが違います。
　　　ファイル名を使い画風を学習させる　　例）H:\stable-diffusion-webui\textual_inversion_templates\style_filewords.txt
　　　ファイル名を使わず画風を学習させる　例）H:\stable-diffusion-webui\textual_inversion_templates\style.txt
　　　ファイル名を使いモノを学習させる	     	例）H:\stable-diffusion-webui\textual_inversion_templates\subject_filewords.txt
　　　ファイル名を使わずモノを学習させる			例）H:\stable-diffusion-webui\textual_inversion_templates\subject.txt
　
　　　これらのtxtファイルをメモ帳で開くとわかりますが、学習はそのpromptにそって行われます。
　　　そのためこれを独自に編集することによって結果が変わります。
　　　学習させたくないワードを書いておくと良いかもしれないと言われています。
　　　また、緑髪のキャラにピンクの髪とキャプションつけすることによっていい感じに学習できたととしあきの報告もありました。
　★「Width」と「Height」トレーニング用の画像と同じ大きさで設定するのがいいかも？　　最近追加されたのでまだ試してません。
　★「Max steps」は何step学習を回すかです。デフォは10万が入っています。途中で止めることもできるのでそのままでもよいかもしれません。
　★「Save an image to log directory every N steps, 0 to disable」　何stepごとにsampleの画像を出力するか決めます。
　　　デフォのままでもいいですし、寝てる間に回して結果は普通に画像生成して確認するからという人は0でもいいかもしれません。
　　　画像生成するときはもちろん学習は止まるので、あまり頻繁に出力するべきではないかもしれません。
　★「Save a copy of embedding to log directory every N steps, 0 to disable」　何stepごとにptファイルを作成するか決めます。
　　　ここはデフォのままでもよいですし、「100」などの数値にしてもいいです。　ただ、細かくするとそれだけ結果の確認が大変になります。
　★「Preview prompt」
　　　学習中のサンプル出力に任意のpromptで出力できる機能かも？未検証

###### ３．トレーニング開始
　「Train」を押すと学習がスタートします。

###### ４．トレーニングの止め方
　**止めると自動的にembeddingsフォルダ内の指定したptにはそのstepまでの学習結果が記録されます。**

　「Max steps」をまで回ると自動的に学習は止まります。
　textual_inversion⇒学習の日付⇒学習の名前(例：あなる先生)⇒images　を見ると学習途中の画像が表示されます。(出力している場合
　ここで十分によい結果が得られてる気がするな？と思った場合は途中で止めても良いかもしれません。
　「Interrupt」を押すことで学習がストップします。

　※2個Stablediffusionを使える人なら(例：2PCやローカル＋Colab）
　textual_inversion⇒学習の日付⇒学習の名前(例：あなる先生)⇒embeddings　に途中のptが出力されます。(出力している場合
　コピーして別のSDへもっていけば途中でもいろいろ確認することが出来ます。

###### ５．途中からトレーニングを再開する。
　空のptを作成するstepを飛ばし、前回学習に用いたptファイルを「Embedding」で指定するだけです。
　途中から再開する場合には「Learning rate」を落とした方が良い結果が出るかも？といわれていました。わかりません。
　おそらくですが、textual_inversion⇒20XX-MM-DD⇒名前⇒embeddings　フォルダ内に出力された途中のptもstable-diffusion-web-ui⇒「embeddings」へいれればその指定したstepから再開できるかもしれません。
　
メモ
女〇パンツはめちゃくちゃstep回して良い結果が得られていた(過去スレ
Prompt template fileは学習時に使用するpromptが書いてあるファイルを指定(スタイル学習かつ画像ファイルに名前を付けるならデフォのままでいいかも。画風じゃなくキャラを学ばせるならsubjectのほうがよい)　　名前をつけないのであればfilewordsと書いてないtxtを指定したほうが精度がよくなる可能性あり。

memo
厳密には違いますが、"[name]" を使用すると、トレーニング セット (埋め込み名自体) 内のすべての画像に対して同じプロンプトで埋め込みがトレーニングされることを意味します。ファイル名にプロンプトを入れて「[filewords]」を使用すると、個々の画像で何が起こっているかについてより多くの情報が得られます。
たとえば、Foo をトレーニングしていて、Foo が青いドレスを着ているサンプル画像がある場合、ファイルに「Foo wear a blue dress」という名前を付けると、AI が青いドレスの部分が画像は探しているものではなく、残りの部分です。


メモ
他にもいいのあるかもしれないけどXnConvert
リサイズ：長辺512ピクセル・常に拡縮
キャンバスリサイズ：512x512・アルファ値0

メモメモ

>「Use deepbooru for caption」をすると
>画像ファイル名にタグが付かず
>【00000-0-000.png】みたいな画像と
>【00000-0-000.txt】みたいなテキストができてしまう
それを基に学習してくれるから大丈夫だよ

＿＿＿＿
>TI学習の時の画像ってどういう画像使ってる？
>何度か挑戦してみたけどガサガサの意味不明な画像にしかならない
前スレにも書いたけどここ数日NAIでTIしようとしていてSettingのHypernetworkをNoneにしてるとなぜかガサガサになってた
全く理由はわからないけどNoneではなくなにか適当なHNを設定すると学習できるようになった
としあきと同じ原因かはわからないけど参考になるかもしれないので
＿＿＿＿＿＿


＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
### hypernetwork traning on AUTOMATIC1111


移行しましたこちらを参照してね↓
https://wikiwiki.jp/sd_toshiaki/Hyper%20Network%20on%20AUTOMATIC1111
https://rentry.org/hypernetwork4dumdums


hypernetworkは画風を真似るのにいいらしい
とても強力な補正がかかるとのこと


===注意：Learning rateはTIのデフォのままやるとノイズだらよくわからんのになります。よくわからんのになります。===
===下でも書いてますが、Learning rateは0.000005 または 0.0000005 のようなすごく小さい数が必要とのこと===
===ちなみに、画像が悪いのかもしれませんが、0.0000005ではいい結果は得られませんでした。===
===いまからHNやるぜ！って人は絶対にhypernetwork.txtにしないと電気代の無駄になるから注意===

※いままでのTIは
あひる先生という架空の絵師のデータを食わせて、「あひる先生.pt」を作成し、
「あひる先生によって描かれた女の子」と指定してptファイルを呼び出していた。
もし仮に、「触手に弄られて絶頂してる黒髪美少女」とpromptがあった場合、
「触手に弄られて絶頂してる黒髪美少女 あひる先生」
「触手に弄られて絶頂してる黒髪美少女 painted by あひる先生」などの様に
promptを変えないと適用することが出来なかったため、「あひる先生」などのpromptを入れることで絵そのものが大きく変わってしまうものだった。

HNについてはpromptにいれずsettingsで指定をして使用するものなのでpromptに影響がない
HNに正しく特徴を覚えさせることができれば最高のpromptをそのまま画風だけ変えるなんてことができるのかもしれない。
正直原理とか説明できるほどわからんし間違ってるかもしれんので詳しくは調べてください。

なーんて考えてけど、結構呪文も寄せる必要がありそうな感じに現在なっている。
たんに学習規模が小さいからなのか、絶対にそうしかないのか

編集中
==TI＆HN時にはvaeは無効にしよう！==
↑そんな情報を見た。
Settingsの真ん中に「Unload VAE and CLIP from VRAM when training」があるからONにしよう

基本的にはTIと同じ。ただ、ファイルサイズがクソほど違うので頻繁に出力するのは注意だよ

１．空のhypernetworkを作る
　Create a new hypernetworkの「Name」へファイル名を入力します。
　オレンジ色のCreate hypernetworkを押すと、空のハイパーネットワークptファイルが作成されます。
　Modules　□768　□320　□640　□1280　←についてはどれが最適かわかっていません。なので全てONで作成後気に入らなかったら調整かけてください。
２．
Learning rateは0.000005 または 0.0000005 のようなすごく小さい数が必要
※0.000005で最初してみるといいかも
===H:\stable-diffusion-webui\textual_inversion_templates\hypernetwork.txt　　一例　自分の場所を指定してね===
３．実行
一番下　「Train Hypernetwork」を押す


===TI,HN,DBはまだ全然データがないので、Learning rateや使った画像の雰囲気や枚数キャプションのつけ方を共有すると研究が進むかも？===


作成されたHNを検証する。
ハイパーネットワークのフォルダに突っ込んで
Scriptで「X/Y plot」を選びます。
「X type」は「Hypernetwork」。「Y type」は「Seed」を選びます。
「X values」へは「,ahiru-1000,ahiru-2000,ahiru-3000」の様に書きます。　←　なにも無し、ahiru-1000.pt、ahiru-2000.pt、ahiru-3000.ptでやってねという意味です。
「Y values」へは「-1」でランダムシード、気に入っているシードがあるならそれ入れてもいいです。「-1,-1,-1」とかもOK
Draw legendはＯＮ。Keep -1 for seedsはＯＦＦ
ptの名前見せたくない人はDraw legendを切るといいかも
でとりあえず見れると思います。
詳しい人は自分でいろいろ書き換えてね
＿＿＿
HNトレーニングの謎のModulesの数字に関して
>768 is a module that processes inputs,
>320 640 1280 are modules that process intermediate results, the larger than number the closer to the center of the network those modules are placed (as far as I know).
>numerical value is the third dimension of input for cross attention layer
>hypernet is injected into the cross attention layer, and when the context input for the cross attention layer has matching shape (your prompt, has a shape of [x,x,768], while three other sizes are related to self-attention of convolutional layers (i hope i'm not messing the terminology up)).
うんわからん
＿＿
>HNトレーニングの謎のModulesの数字に関して
>うんわからん
まず、DLのモデルに関する最低限の基礎知識ないとな
簡単に言えば、Hypernetworkのサイズを設定してる
NAIのが全部の設定サイズをオンにしてる
でも1111版は全部オンじゃなくても動くように変更してる
当然サイズが小さい奴は影響力も学習可能な情報量も減る
これくらいの認識でいいと思うよ

匿名としあきによるかにテステンプ
1girl solo nude detailed_face standing chibi (anime_style:1.2) spoken_heart_mark puffy_nipples heart_pasties full_body large_areolae little child 10yo curvy cowboy_shot huge_breasts simple_background flom_below loli huge_nipples strong_highlight surprised deformation Temptation smile
negative
lowres, bad anatomy, bad hands, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, monochrome from_behind penis dildo multipul_girls 2girls 3girls 4girls 4boy steam particle glasses muscle fat_legs fat huge_ass
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
https://www.xnview.com/en/xnconvert/
学習用の画像加工はXnConvertが便利
ダウンロードの所に金額とか出てるけど個人利用は無料
日本語化もされてるんでわかりやすい

←こんな感じでアクションを追加していくと画像の長辺に合わせて正方形にしてから512x512にリサイズのアクションができるしフォルダ指定して一括適用もできる
つくったアクションはプリセットに保存もできて便利
＿＿＿＿＿＿＿＿＿＿
>>HN学習回してるけどどうも学習画像数が多いと重みが発散してしまう確率が高い気がする
>>とりあえず30枚につき0.000005くらいで画像数増加とともに反比例的に調整してるんだけどバリエーション豊かな画像を学習させるより同じ画像学習させる方が学習勾配が安定してて学習も安定するとかあるのかな
>ある程度学習進めたらlrはもっと下げていい、さらに2、3桁低くてもいいくらい
>うちでやった実験でみるかぎり、発散だけじゃなくて過学習に陥るような学習でもこれで結構結果でてる
>たぶん、HNが繊細すぎて、本当に小さな重み変更で適切な位置を簡単に通り過ぎるんだと思う
>つまり一回過学習まで回して
>そのあと良い感じに出来たやつでlr下げてやればいいんだな
lrを下げた後は学習率が小さすぎて500stepずつでサンプルみても学習できてるか不安になるくらい差がでなくはなるけど、突然急激によくなるポイントを見つけてきたりする
20Kstepから27Kstepまでほぼ変化なしだったのが、28Kとかで突然変わったりするから、本当に繊細なモデルなんだと思うHN

あーなるほど
物理的な言い方になるけどある程度良い感じの結果が出るようになったらそこがポテンシャルある程度低いってことがわかってるので変にエネルギー障壁ぶっ飛ばして明後日の方向行かないようにlr下げて慎重にモデルの重みを多次元空間上でうろうろさせる感じなのかな
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
##　匿名としあきによる便利になるやつ
https://rentry.org/xow44
WebUIで連続生成する雑改造したら色々捗ったから共有するね
非効率だけどBatch Countを1000とかで生成するとブラウザが無茶苦茶重くなるから嫌だったんだよね

とのこと(こちらでは基本連続生成しないため試していません。)
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
## Promptについて
一番下のリンクを参考にするとよいかもしれません。
※基本的にAUTOMATIC1111を基準に書いてます。

呪文を個人で考える際はDeepL翻訳やGoogle翻訳を使用するとよいでしょう。
「裸の女の子が寝室のベッドに座っている」などの文章をDeepLに投げて、その結果をコピペしてpromptにしてもいいです。
自分の性癖を単純に列挙して「目隠し」「黒髪ロングヘアー」などをそれぞれDeepLに投げて出てきた言葉をスペース開けて配置するだけでも一定の効果が得られます。
そこから何枚も絵を出力して所々性癖と関係ないとこを削っていったり(消したら変な絵になったからとかで)足していったり、そうすることで良いpromptが得られます。
また、Negativepromptについては「複雑な絵を出さないように複雑な絵を描く人を入れるといいらしい」(例）Pablo Picassoなど書きましたが、その方面から攻めるのもありです。
無修正の画像が欲しい場合にpromptにUncensoredと入れるのもよいし、Negativeに「censored」と入れるのも上と同じ理由です。

NAIの{}はx1.05なのでautomatic1111版だと(…:1.05)
逆に言うと(…)はx1.1なのでNAI換算ではほぼ{{…}}=x1.1025　とのこと

### **★呪文の強弱**
(強調したい語句) ＝ (強調したい語句:1.1)
[弱めたい語句] ≒ (弱めたい語句:0.91)
(school uniform:1.2)の様に空白を挟んでいても括弧で括ってる範囲全部効きます。
変換表
(…:1.10) (…)
(…:1.21) ((…))
(…:1.33) (((…)))
(…:1.46) ((((…))))
(…:1.61) (((((…)))))

(…:0.91) […]
(…:0.83) [[…]]
(…:0.75) [[[…]]]
(…:0.68) [[[[…]]]]
(…:0.62) [[[[[…]]]]]

### **★呪文の途中変更(prompt editing)**
→　https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#prompt-editing　の内容です。

★0～1なら全ステップ数に対する割合で指定
・[この語句から:この語句へ:このステップで切り替え]
・[A:B:0.5]
　この場合0→A→50%→B→100%です。
・[A:0.5]
　この場合50%を過ぎた段階からAが有効になります。(それまでは何も無いです。)
　※ちなみにこの呪文は[:A:0.5]と同じ意味を持ちます。　[::数値]が完全な形なのでそこを覚えておくとわかりやすいかもしれません。
・[A::0.5]
　この場合50%を過ぎる段階までAが有効です。

★1以上の整数なら変化するステップ数を直接指定できる
Sampling Stepsが20なら
[A:0.1]=[A:2]
[A:0.5]=[A:10]
Sampling Stepsが100なら
[A:0.1]=[A:10]
[A:0.5]=[A:50]



### **★★呪文の入れ子構造（メッシュやインナーカラー　他には瞳の色などに使えるらしい）**
 [(partially [[blue:green:0.2]:red:0.35] hair:1.2):0.1]
↑の呪文を見ていきましょう
10%を過ぎた段階でこの呪文の読み込みが始まります。(それまでは無)
20%くらいまでpartially blue hairの1.2倍に
20%過ぎたらpartially green hairの1.2倍に
35%以降でpartially red hair の1.2倍に
となっています。
スタート→無→10%→partially blue hair 1.2倍→20%→partially green hair 1.2倍→35%→partially red hair 1.2倍→100%終了


例として
[[red::0.2]:green:0.8] の場合を見ていきましょう
[red::0.2]の部分
20%を過ぎるまでredが有効
[[red::0.2]:green:0.8]の部分
20%を過ぎたらAが消え
そこから次のgreenが80%くらいで入ってくるまで何もなし
0→red→20%→無し→80%→green→100%の流れです


### **★★AND機能について(AUTOMATIC1111専用？)**
2022/10/06より追加された機能
まだ検証途中のため公式リンクのみ
https://energy-based-model.github.io/Compositional-Visual-Generation-with-Composable-Diffusion-Models/
お手軽合成(融合)呪文として一応使えているみたいです。

AND文を使用すると生成に通常より時間がかかります。
本来呪文は75token(AIの認識できる75個の言葉まで)ですが、AND以降はまた文字カウントがリセットになります。


### 複雑なpromptが正常に機能しているかわからなくなったとき
★コピーを取ってから実行してね
    これするともしかしたらgit pull時にerror: Your local changes to the following files would be overwritten by merge:みたいなエラー出るかも↑みて解消
\modules\prompt_parser.pyを開き
60～80行目付近にある
```
    def get_schedule(prompt):
        tree = parser.parse(prompt)
        return [[t, at_step(t, tree)] for t in collect_steps(steps, tree)]

    promptdict = {prompt: get_schedule(prompt) for prompt in set(prompts)}
    return [promptdict[prompt] for prompt in prompts]


ScheduledPromptConditioning = namedtuple("ScheduledPromptConditioning", ["end_at_step", "cond"])
ScheduledPromptBatch = namedtuple("ScheduledPromptBatch", ["shape", "schedules"]
```
を
```
   def get_schedule(prompt):
        tree = parser.parse(prompt)
        return [[t, at_step(t, tree)] for t in collect_steps(steps, tree)]

    res = [get_schedule(prompt) for prompt in prompts]
    for t in res:
        print(t)
    return res

    
ScheduledPromptConditioning = namedtuple("ScheduledPromptConditioning", ["end_at_step", "cond"])
ScheduledPromptBatch = namedtuple("ScheduledPromptBatch", ["shape", "schedules"]
```
に書き換えると

例えば下記のpromptをSampling Steps100で入れた場合
[(partially [[blue:green:0.2]:red:0.35] hair:1.2):0.1]
コマンドプロンプト上に
[[100, '']]
[[10, ''], [20, '(partially blue hair:1.2)'], [35, '(partially green hair:1.2)'], [100, '(partially red hair:1.2)']]
と表示されます。
ここでは
[Sampling step,'プロンプト']の形式で書かれていますので、
つまり
スタート→無→step10→partially blue hair 1.2倍→step20→partially green hair 1.2倍→step35→partially red hair 1.2倍→step100終了

Sampling Stepsが50の場合には
[[50, '']]
[[5, ''], [10, '(partially blue hair:1.2)'], [17, '(partially green hair:1.2)'], [50, '(partially red hair:1.2)']]
と表示されます。
この場合も上記と同じですが、今回は50が最大なので1%=0.5stepとなります。
よって10%=step5,20%=step10,35%=step17,100%=step50となり
そのため
スタート→無→step5→partially blue hair 1.2倍→step10→partially green hair 1.2倍→step17→partially red hair 1.2倍→step50終了
という意味になります。

Sampling Stepsが20の場合には
[[20, '']]
[[2, ''], [4, '(partially blue hair:1.2)'], [7, '(partially green hair:1.2)'], [20, '(partially red hair:1.2)']]
と表示委されます。
この場合最大stepが20で1%=0.2stepのため
10%=step2,20%=step4,35%=step7,100%=step20となります。
スタート→無→step2→partially blue hair 1.2倍→step10→partially green hair 1.2倍→step17→partially red hair 1.2倍→step20終了
という意味になります。

趣味メモ
スカートたくし上げ waifu epoch09panty 「pull skirt lift underwear, lifted_by_self」 「panty pull, skirt lift, plaid skirt, lifted by self, underwear」など
島風「kashima_(kancolle) 1girl :d blue_eyes blush breasts grey_hair large_breasts smile solo twintails wavy_hair AND shimakaze_(kancolle) black_panties crop_top elbow_gloves gloves highleg highleg_panties midriff miniskirt navel panties school_uniform serafuku skirt solo thighhighs underwear white_gloves」
すき「((masterpeace)),(posing sketch), nsfw, 1girl, 1boy, penis, ((handjob)), loli, white hair, nervous, (hair over one eye), cute, kawaii, wet, cum, upper body, grey background, perspective from above, pov
Negative prompt: bad anatomy, bad hands, text, error, missing fingers, missing arm, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, (extra nipple), (extra breast), out of frame, amputee, mutation, deformed, long body, (mutated hands and fingers), lowres,
Steps: 20, Sampler: Euler a, CFG scale: 7.5, Seed: 2034098698, Size: 512x640, Model hash: 925997e9」
すき「人気の触手ックス (tentacles:1.3)(tentacle sex:1.3)」

過去のとしあきTIPS
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
WD1.3での呪文詠唱について
・booruタグ中心の呪文にする
・_は無くす
・1.2のときとは単語ごとの重みが変わっているのでこれまでの感覚で強調を付けずに調整する
あたりを気をつけたらいい感じに制御できた気がする　　とのこと
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
>奇形防止
>Negative : ((part of the head)), ((((mutated hands and fingers)))), deformed, blurry, bad anatomy, disfigured, poorly drawn face, mutation, mutated, extra limb, ugly, poorly drawn hands, missing limb, blurry, floating limbs, disconnected limbs, malformed hands, blur, out of focus, long neck, long body, Octane renderer
>最優先で入れるべき呪文集、意味合いは
>((頭の一部))、((((突然変異した手と指))))、変形、ぼやけ、悪い解剖学、変形、貧弱に描かれた顔、突然変異、突然変異、余分な手足、醜い、貧弱に描かれた手、四肢の欠落 、ぼやけた、浮いている手足、切断された手足、奇形の手、ぼかし、焦点が合っていない、長い首、長い胴体、Octane レンダラー
->＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿<-
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
## TI(Textual Inversion)について(※すごい適当に書いてます。)
TI(Textual Inversion)とは、短縮詠唱みたいなものです。
自分の任意の画像を読み込ませると、その画像内に存在する特徴をモデルが知っている範囲でまとめて学習して一つのファイルにしてくれるものです。
なので、元々のモデルが知らないことは学習できません。
画風の再現などに優れているらしいです。

TIファイルは拡張子が２種類あります。　　「.pt」「.bin」
AUTOMATIC1111(ローカル版)においては「embeddings」フォルダにしまうだけです。※使う場合にはファイル名をpromptに入れると呼び出せます。


TI学習させる方法は
・Colab
・ローカルで環境を構築する
・AUTOMATIC1111(ローカル)
などの方法で学習ができます。

学習に関しての正解は現在研究中のため、良い学習ができた人は共有していただけると研究が捗ります。

**基本的にTIファイルは学習時に使用されたモデルでの機能を想定しています。**
**別モデルで動かした場合でもよい結果が得られる場合もありますが、基本的にはうまくいかないと思ってください**

　過去のとしあきTIPS紹介
　>質問なんだけど　Tiの Initialization textって
　>例えば　オリキャラの名前を書いておいたらそのままでも女性扱いしてくれるのかな
　>なんかテクスチャみたいな感じで表示されやすくなってるんだけど
　>girlとか服装とかタグ入れて置いたらいろいろ良かったりするのかなと
　>画像のはオリキャラの学習中の画像
　自分なりに資料とか読んでの解釈なんで間違ってたら詳しい人訂正入れて欲しいんだけど
　モデルデータには学習した画像の特徴値がタグとセットで格納されてて
　例えばdanbooruでセーラー服、緑髪、ロリとタグのついた画像を学習させたらその画像の特徴を３つのタグとその強さをベクトルとして登録してる
　ちょうど服装、髪色、年齢の軸のグラフに点を打つ感じ
　実際はタグの種類はたくさんあるんで３次元には収まんないんだけど

　で、TIはモデルデータと合わせて画像とタグを指定するけど、それはこれから学習させる絵はそのモデルのなかで指定したタグの点に入るものですよと教えてる
　だから学習時のモデルデータの指定が重要だし、そのモデルデータに存在しないタグを入れるとどこにも引っかからない弱い点になるんで使用は推奨されてない
　そんな認識です

###**TIファイルが拾えるところ**
Stable Diffusion Concepts Library(個人が学習させたものが多く公開されています。エロ系はほぼ無いです。あっても消えるはず)
　https://huggingface.co/sd-concepts-library
list of Textual Inversion embeddings for SD
　https://rentry.org/embeddings
anon's embeddings - エロ・アニメ絵師.
　https://mega.nz/folder/7k0R2arB#5_u6PYfdn-ZS7sRdoecD2A
viper1 - エロ・ケモ・ホロライブ
　https://gitgud.io/viper1/stable-diffusion-embeddings
cattoroboto　ホロライブ
　https://gitlab.com/cattoroboto/waifu-diffusion-embeds
16777216c　絵師
　https://gitlab.com/16777216c/stable-diffusion-embeddings

### **GPUが無い場合のTIファイルを作りかた**
いまは11111webUIのColabでOK

１．Colabノートブックを入手する
匿名としあきがうまく翻訳などしてくれた↓のファイルを入手します。（再配布可と言ってました。）
https://firestorage.jp/download/be0d2a125303a4f1a7a778258c62d86d5b8e3605
https://dec.2chan.net/up2/src/fu1522064.xxx
↑上記リンクはどちらも同じです。　たぶんあぷ小のが早く期限切れる。(2022/10/10書きこみ）

２．Colabノートブックをアップロードする
　https://colab.research.google.com/　へ行きます。
　「アップロード」を選択します。
　『「ファイルを選択」選択されていません』のところへダウンロードしたファイルをドラッグ＆ドロップします。
　しばらく待つとファイルが開かれます。

３．学習させる
　基本的にColabに書いてあるとおりにぽちぽちしていくだけで大丈夫なはずです。
　モデルを学習させる際に使うckptファイルはあらかじめGoogleDriveへアップロードしておきましょう。
　Googleドライブとかあんま使わんし、置いてもckptのファイルのパスがわからんわって場合
　```
　"/content/drive/MyDrive/sd_text_inversion/sd-v1-4.ckpt"
　```
　はドライブ⇒sd_text_inversionの中にckptファイルを入れている＆そのファイルの名前は「sd-v1-4.ckpt」という意味です。
　なので、ドライブまっさらの状態で置いた場合は
　```
　"/content/drive/MyDrive/sd-v1-4.ckpt"
　```
　となります。
　waifuで学習させる方が多いと思いますので、「sd-v1-4.ckpt」を「wd-v1-3-float16.ckpt」や「wd-v1-3-float32.ckpt」などに書き換えましょう。

　※※過去に語られたTIPS※※
　TI学習の話
　>TI進むと左右反転繰り返して学習するせいか非対称の髪の分け目がめっちゃハゲに変わる
　>設定が間違ってる気がするんだけどどこ変えたらいいか分からない…
　yamlで指定してるpersonalized.pyの80行目付近にあるflip_p=1.0で100%反転 0.0で反転しない、
　もしくはpersonalized.py内で「transforms.RandomHorizontalFlip」を検索してp=の値を直接指定

　Ti素材
　ああーやっぱそうだ
　学習用の素材512x512にするとき白埋めでも黒埋めでもアルファ値0にしたら二分割画像とかにならないでちゃんと学ぶんだな…
　割と初歩目のミス…
　逆にパッチワーク的なタイリング的なパターン学習させたいなら必要分以外の箇所をアルファ255で埋めればいいってことだな
　>もしかして白を背景として誤学習しない感じ…？
　左学習して現時点の出力結果が右で今のところ黒背景としては扱われてないけど
　いわゆる白背景の立ち絵に黒塗りしてどうなるかはわからない

　TIファイル名
　>TIの学習用素材ってファイル名もしっかり学習してほしい要素を記した内容にしたほうがいいんです？
　ファイル名がプロンプトの一部になる場合逆効果になるとか聞いた
　かわいい○○を学習させようとすると
　「○○は素では可愛くないんだな！」と勘違いすると
　
>>ファイル名とpreview promptを同じにしててそこにuncensored入れてるんだけど
>>一応学習画像はすべて無修正(というかアレ自体描かれてないのもある)けど駄目なの？
>概念的にはファイル名=画像になるように学習するからもともとの重み的にuncensoredの文字と無修正画像の概念的な結びつき精度が低い場合とか学習画像がuncensoredとは関係ない画像の場合にファイル名にuncensored入ってるとuncensoredの逆を学習しようとしちゃう…かも
一個前のスレでもほぼ同じこと書いたけど
学習時のpromptで生成した画像と教師画像との差異から誤差をとって学習してる
なので、uncensoredを学習promptに入れた場合uncensoredは学習の対象外になりやすいと推測できる
よって、強制的にuncensored化したいのであれば、そのワードは不要
もしくは逆にcensoredを入れることでより強い強制力をもつ学習となる可能性が高くなる
この辺ごっちゃになりやすいかもしれないけど学習時のpromptは教師画像の要素のうち”学習させたくない要素”であるべきなんだよ

＿＿
20000StepsまでDeppdanbooruで機械的にプロンプトを付けた特定絵師データセットでHNを学習させた結果をStep別とStr別で
Strは単純に元のkvへの寄与を表してるらしいけど下げると発散してるHypernetでも思ったより正気を取り戻してる
本格的に発散した16000あたりからはそれもかなり無意味になってる印象
まんぐり返し的なポーズが多いデータセットで学習したんだけどポーズの影響が強く出てるのが気になってデータセットを見返してみたらDeepdanbooruはキャラの特徴タグは拾いがちだけどポーズ関係のタグはあまり拾ってくれないのでその辺が学習結果が強く出てる原因な気がする
究極的には精度よく特定概念を学習させたいとなると自分で学習プロンプト書くべきかな
HNはほとんど画像に基づいてPromptを書き換えているようなものだから画風にもキャラにもシチュにも効くけど特定の概念を学習するのは骨が折れそう

ここから分かるけどキャラだけHNで覚えさせたいなら変なポーズとってる画像は弾いてなるべく素直なポーズだけで学習した方が学習効率と概念としての出来上がりの粒度は良さそう
＿＿＿


＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿￥￥￥
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
## DB(DreamBooth)について(※適当です)
DBとはモデルそのものに新しい概念を学習させることです。
キャラクターそのものを再現させることに優れています。

PC修理から戻ってきて動かせたら書くかもしれません。


https://colab.research.google.com/github/ShivamShrirao/diffusers/blob/main/examples/dreambooth/DreamBooth_Stable_Diffusion.ipynb
https://www.youtube.com/watch?v=mVOfSuUTbSg
を参考にしてもできるはず
↑とりあえず学習目標見つけてそれで出来ました。


覚えさせたいもの見つけてこっちで動かせたら詳細書きます。


としあきによるTIPSメモ
DBは特定のprompt、よく使われるのはsksとかのワードに学習してるものの特徴を入れ込む、そのためにunet、わかりやすくいえば、モデル本体を学習させてる

HNは常に全体に一定の補正をかけるためのもの、特定のpromptとかは存在しないので画風に向いてる
DBと大きな違いはTIと同様にある程度ほかのモデルでも流用可能
目安はモデルごとのpromptの互換性がどの程度あるのかを参考にするとわかりやすいと思う
キャラの精度あげるならDB+TIが多分最強
画風の精度をあげるならDB+HNが最強
なんなら全部盛りしてもいい、というかHNは今テスト中だから試せてないけど、うちは前からDB+TIはかなり多用してる
＿＿＿
>DreamBoothのパラメータの意味とかを紹介しているサイトとかない？
>colabで実行してみました系の記事しか見つからず
>パラメータを変化させると具体的に何が変わるのかがよくわからんのよ
そのレベルなら
instance_prompt = 追加する概念を入れたprompt
class_prompt = 追加する概念を除いたprompt
DBはTI,HNと違ってckpt内にあるモデルを学習させるから、追加概念だけを学習すると元の出力が壊れるので、追加なしのpromptも同時に学習しなおしてる
あと、両者の出力差を誤差計算に使ってる

num_class_images = class promptで出力される正しい画像の枚数
max_train_steps = 最大でいくつstepを回すか

これだけとりあえず理解できればいい
あとは、vramとの関係が書いてある設定はvramサイズと相談して決めればいい

＿＿＿
>これだけとりあえず理解できればいい
>あとは、vramとの関係が書いてある設定はvramサイズと相談して決めればいい
そのへんはある程度分かってて
--with_prior_preservation --prior_loss_weight=1.0
--train_batch_size=1
--learning_rate=5e-6
--sample_batch_size=4
この辺の数値の意味とlossの値は具体的に何を指しているのかって事が良くわからない
適当に数値を変えて結果に何となく差は出ているのは分かるけど
具体的に何を変えたのかがわかってないのでモヤモヤする
＿＿＿＿＿
正直、その辺の細かい数値は前提としてある程度の機械学習の知識あってこそだから、製作者のデフォ設定でいいんだが・・・
とりあえず、知識いらんとこからいくと、
sample batch sizeはclass画像出力時の同時生成枚数
train batch sizeは学習時に同時に学習させる枚数
batchっていうのが1回の生成もしくは学習の同時数って考えればいい
1111版にもBatch sizeって項目あるでしょ？

learning rateは学習時の重み変更する際の係数みたいなもの
priorがついてるのは、追加概念なしのpromptを再学習させるのに関わってる
withのやつはそれが入ってるとクラス画像も学習するよ
lossは、どの程度学習時に影響を持たせるか
だから、そのままが一番いい、いじってどうなるか想定できる人向けの設定
＿＿＿＿＿

＿＿＿＿＿

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
## NovelAIについて(有料)
移行しました⇒https://wikiwiki.jp/sd_toshiaki/Novel%20AI

#### NovelAIの呪文メモ
1111版のprompt強弱に該当するもの　　　強く「(ワード)→{ワード}」　　弱く「[ワード]→(ワード)」
1111でのネガティブに相当する場所→Undesired Content
エッチな画像「NSFW」

コーナー移動しました。⇒https://rentry.co/ym3di

**NovelAIにより作成された画像もAUTOMATIC1111のPNGinfoに投げるとpromptなどの確認が可能です。**
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
## TrinArtとりんさまアートについて(有料)
https://ai-novel.com/art.php

エッチなものはあまり出ないみたいです。
触ってないのでわかりません。

>初心者ガイドにはあまり記載がないけどとりんさまアートってクオリティ的にはどんなもんなんだろう
日本語使えて簡単だけどエロが出せない
小説の方のオマケって感じはある

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
## 呪文(Prompt)の参考になるリンクやその他のリンク
・lexica
https://lexica.art/
・SD Artist Collection
https://sgreens.notion.site/sgreens/4ca6f4e229e24da6845b6d49e6b08ae7?v=fdf861d1c65d456e98904fe3f3670bd3
・Waifu Diffusion で効率的に画像を生成する
https://dskjal.com/others/waifu-diffusion-workflow.html
・AI画像生成　※壺(2ch/5ch)のかな？
https://rentry.co/zqr4r
・ふたばフォレスト(過去ログ ※72時間
http://futabaforest.net/index.htm?sm=1&words=AI%E3%81%AB%E7%B5%B5
・Futafuta (過去ログ　ほぼ全て閲覧可能？　要：無料会員登録？
https://futafuta.site/search/?search_q=AI%E3%81%AB%E7%B5%B5%E3%82%92%E6%8F%8F%E3%81%84%E3%81%A6%E3%82%82%E3%82%89%E3%81%A3%E3%81%A6%E9%81%A9%E5%BD%93%E3%81%AB%E8%B2%BC%E3%81%A3%E3%81%A6%E9%81%A9%E5%BD%93%E3%81%AB%E9%9B%91%E8%AB%87%E3%81%99%E3%82%8B%E3%82%B9%E3%83%AC&bbs=may
・体位を考えるときの参考
https://www.womenshealthmag.com/sex-and-love/a19943165/sex-positions-guide/
・NovelAIでセンシティブ画像を作ろう教室(Author:ブタ小屋の日常)
http://teamkitigai.blog.fc2.com/blog-entry-335.html
・AIBOORU
https://aibooru.online/
・NovelAIManager
https://github.com/riku1227/NovelAIManager
・Stable DiffusionのモデルをU-Netの深さに応じて比率を変えてマージする
https://note.com/kohya_ss/n/n9a485a066d5b
・7eu7d7/APT-stable-diffusion-auto-prompt
https://github.com/7eu7d7/APT-stable-diffusion-auto-prompt

・あああ
https://huggingface.co/hakurei/bloom-1b1-arb-thesis
・ああああ
https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2017
・
https://rentry.org/faces-faces-faces
・
・
・
・
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
## としあきの参考になるその他のリンク
・ckptのmodel hashをまとめて出力するスクリプト（としあき22/10/10(月)05:13:41）
https://rentry.org/zix59

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
最後に
wikiへ移行中
めもめも
heart_pasties heart_maebari micro_sklirt sailor_collar

>https://github.com/ShivamShrirao/diffusers/tree/main/examples/dreambooth
>自分で勉強したいっていう向上心あるとしは応援してる
>
>DiffuserもSDも仕組み的な構造は同じだから、Diffuserのコードが処理の流れ追いやすくて理解しやすい
>SDはyaml読み込みでモデル構築したり、処理があちこちのファイルに書かれてるから、この処理はどこから来てる？　とかがわかりにくいのでStableDiffusionがまずどんな流れで処理が行われるものなのか理解してないと、意味不になる


分類不明メモ
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
完璧に理解したわ
HN学習したやつ使ってると立ち絵とかを学習に使うことが多くて絡み系のpromptのfellatioとかを入力しても無反応だったり変になりがちなので
WD1.3の学習済みHNを適用したやつで出力した後にNAI(HN適用なし)のinpaintで胸周りを適当にマスクして{{{1man}}} {{{{pov hands rub both chest}}}}
これで揉める揉むバリエーションとか増やせたらいい感じになるんじゃないでしょうか
適当な公式イラスト拾ってきて揉ませるとかもできそう胸揉むやつinpaintのMask blur3 Denoising strength
0.75 step40でやってるけどいい設定あったら教えてね…

＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
下のハッシュのモデルは保持してると危ないらしい
ggではないと思う
38c06992f8b79[Redacted]
694d5afbc9f772[Redacted]　　　　
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
1girl 1boy; nsfw; (girl1: cute female, red hair, wearing bikini, struggling against boy); (boy1: excited boy, blue hair, wearing formal suit, {behind girl1} {groping her breast}):50
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
VRAMを軽くする
Unload VAE and CLIP from VRAM when training
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
>X/Yの所もなんか増えてたけどInclude Separate Images
>って何…？scaleとステップいじる時はオフで問題ないか？
UI画面上で出力結果を合成した1枚だけにするか
個別の画像もロードするかの選択肢で
出力自体には関係ないっぽい
UI画面上で1枚1枚比較したいならオン
通常オフでいいと思う（そのほうが軽い）
いざとなったらヒストリーでも個別の画像見れるし
_____________________________＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
>服をぼろぼろにする単語がなかなか見つからない
torn 服の名前
>torn 服の名前
>　wearing shackled collar and [tattered | shred | torn] skirt


＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
同じような騎乗位promptのsquatting spread legsでもanusが入ってないと前かがみ
anusが入ってるとのけぞることを発見した
手の修正はめんどいからやってないです

＿＿＿＿＿＿＿＿＿
他のとしみたいなえっちな絵を生成したいなぁ…
ちなみにRadeon+Windows11ローカル環境の構築は以下を参照しました
https://dolls.tokyo/howto-amd-sd-win/
他のRadeonあきの参考になれば幸いです
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
https://replicate.com/nightmareai/real-esrgan
https://danbooru.donmai.us/posts/86570

https://danbooru.donmai.us/wiki_pages/tag_group%3Alegwear


＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿￥

起動時
```
venv "D:\stable-diffusion-webui\venv\Scripts\Python.exe"
Python 3.10.6 (tags/v3.10.6:9c7b4bd, Aug  1 2022, 21:53:49) [MSC v.1932 64 bit (AMD64)]
Commit hash: 12a97c5368e29402d05d03d5f6e766e4a3889917
Traceback (most recent call last):
  File "D:\stable-diffusion-webui\launch.py", line 205, in <module>
    prepare_enviroment()
  File "D:\stable-diffusion-webui\launch.py", line 179, in prepare_enviroment
    git_clone(stable_diffusion_repo, repo_dir('stable-diffusion'), "Stable Diffusion", stable_diffusion_commit_hash)
  File "D:\stable-diffusion-webui\launch.py", line 76, in git_clone
    current_hash = run(f'"{git}" -C {dir} rev-parse HEAD', None, f"Couldn't determine {name}'s hash: {commithash}").strip()
  File "D:\stable-diffusion-webui\launch.py", line 33, in run
    raise RuntimeError(message)
RuntimeError: Couldn't determine Stable Diffusion's hash: 69ae4b35e0a0f6ee1af8bb9a5d0016ccb27e36dc.
Command: "git" -C repositories\stable-diffusion rev-parse HEAD
Error code: 128
stdout: <empty>
stderr: fatal: detected dubious ownership in repository at 'D:/stable-diffusion-webui/repositories/stable-diffusion'
'D:/stable-diffusion-webui/repositories/stable-diffusion' is owned by:
        'S-1-5-21-366463231-3377431111-783445456-1001'
but the current user is:
        'S-1-5-21-144036736-3746843884-2369916852-1001'
To add an exception for this directory, call:

        git config --global --add safe.directory D:/stable-diffusion-webui/repositories/stable-diffusion


続行するには何かキーを押してください . . .
```

```
Creating venv in directory venv using python "C:\Users\tsj10\AppData\Local\Programs\Python\Python310\python.exe"
venv "D:\stable-diffusion-webui\venv\Scripts\Python.exe"
Python 3.10.6 (tags/v3.10.6:9c7b4bd, Aug  1 2022, 21:53:49) [MSC v.1932 64 bit (AMD64)]
Commit hash: 12a97c5368e29402d05d03d5f6e766e4a3889917
Installing torch and torchvision
Installing gfpgan
Installing clip
Cloning Stable Diffusion into repositories\stable-diffusion...
Cloning Taming Transformers into repositories\taming-transformers...
Cloning K-diffusion into repositories\k-diffusion...
Cloning CodeFormer into repositories\CodeFormer...
Cloning BLIP into repositories\BLIP...
Installing requirements for CodeFormer
Installing requirements for Web UI
Launching Web UI with arguments:
No checkpoints found. When searching for checkpoints, looked at:
 - file D:\stable-diffusion-webui\model.ckpt
 - directory D:\stable-diffusion-webui\models\Stable-diffusion
Can't run without a checkpoint. Find and place a .ckpt file into any of those locations. The program will exit.
続行するには何かキーを押してください . . .

```

```
venv "D:\stable-diffusion-webui\venv\Scripts\Python.exe"
Python 3.10.6 (tags/v3.10.6:9c7b4bd, Aug  1 2022, 21:53:49) [MSC v.1932 64 bit (AMD64)]
Commit hash: 12a97c5368e29402d05d03d5f6e766e4a3889917
Installing requirements for Web UI
Launching Web UI with arguments:
LatentDiffusion: Running in eps-prediction mode
DiffusionWrapper has 859.52 M params.
making attention of type 'vanilla' with 512 in_channels
Working with z of shape (1, 4, 32, 32) = 4096 dimensions.
making attention of type 'vanilla' with 512 in_channels
Downloading: 100%|███████████████████████████████████████████████████████████████████| 939k/939k [00:01<00:00, 892kB/s]
Downloading: 100%|███████████████████████████████████████████████████████████████████| 512k/512k [00:00<00:00, 580kB/s]
Downloading: 100%|█████████████████████████████████████████████████████████████████████| 389/389 [00:00<00:00, 389kB/s]
Downloading: 100%|█████████████████████████████████████████████████████████████████████| 905/905 [00:00<00:00, 901kB/s]
Downloading: 100%|████████████████████████████████████████████████████████████████| 4.41k/4.41k [00:00<00:00, 3.38MB/s]
Downloading: 100%|████████████████████████████████████████████████████████████████| 1.59G/1.59G [01:03<00:00, 27.0MB/s]
Loading weights [e3b0c442] from D:\stable-diffusion-webui\models\Stable-diffusion\nullModelzeros.ckpt
Global Step: 470000
Applying cross attention optimization (Doggettx).
Model loaded.
Loaded a total of 0 textual inversion embeddings.
Embeddings:
Running on local URL:  http://127.0.0.1:7860

To create a public link, set `share=True` in `launch()`.


```

>ちくしょう日本語なら容易に表現できるのに英語だとなんていえばいいのかわからねえ！
>ガニ股ってどう伝えるんだ…？
on the ground, asian squat, wide spread legs, tiptoeing, show off crotch
