#キャラクター学習のタグ付け一例
LoRAでの学習時、キャプションタグを付けて学習させる事が多いと思うが、どのようにつければいいかの例を挙げる
例とするのは以下のイラスト
![瑞鳳](https://imgur.com/OYZKWmn.png)
このキャラを「zuihou」というワードで呼び出したい
1. WD1.4taggerでタグ付け
WD1.4taggerでタグ付けを行うと、次のようにタグが生成された
>zuihou (kancolle), 1girl, solo, school uniform, skirt, long hair, serafuku, pleated skirt, hachimaki, black skirt, headband, brown eyes, high ponytail, neckerchief, brown hair, indoors, window, smile, ponytail, blush, cowboy shot, looking at viewer, long sleeves, sailor collar, red neckerchief, shirt, open mouth, desk, short sleeves, white shirt, alternate costume, hair between eyes, light brown hair, collarbone
2. 学習要素の選別
これを整理していくわけだが、ここで学習させたい要素について考える
- 学習させたいもの(＝zuihouで呼び出したい要素)
髪型
鉢巻き
ヘアバンド
顔つき
- 学習させたくないもの(＝zuihouで呼び出したくない要素)
開いた口や笑顔(閉じた口も出したいし怒り顔とかも出したい)
一人である事(2girlsとかの指定もしたい)
背景(いろんな背景で出したい)
制服、スカート(いろんな服を着せたい)
胸のリボン(常に出ては困る)
3. タグを学習させたいものと学習させたくないものに分ける
- 学習させたいもの(＝zuihouで呼び出したい要素)
>long hair, hachimaki, headband, brown eyes, high ponytail, brown hair, ponytail, hair between eyes, light brown hair,
- 学習させたくないもの(＝zuihouで呼び出したくない要素)
>1girl, solo, school uniform, skirt,  serafuku, pleated skirt,  black skirt,  neckerchief, indoors, window, smile, blush, cowboy shot, looking at viewer, long sleeves, sailor collar, red neckerchief, shirt, open mouth, desk, short sleeves, white shirt, alternate costume,  collarbone
4. タグの完成
ここで注意したいのが、「学習させたい要素」を1つにまとめたワードが「zuihou」となる事
その為、taggerで付けられたものから「zuihou」に含まれるワードを取り除き、zuihouに置き換える
するとこうなる
>zuihou, 1girl, solo, school uniform, skirt,  serafuku, pleated skirt,  black skirt,  neckerchief, indoors, window, smile, blush, cowboy shot, looking at viewer, long sleeves, sailor collar, red neckerchief, shirt, open mouth, desk, short sleeves, white shirt, alternate costume,  collarbone
5. まとめ
つまり、zuihouというワード＋学習させたくないもの、が完成したキャプションになる
言い換えれば、zuihouというワード＋学習させたいワードを削除したもの、になる