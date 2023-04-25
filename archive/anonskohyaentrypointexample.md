[Argument List for Kohya "train_network"]

--v2
load Stable Diffusion v2.0 model / Stable Diffusion 2.0のモデルを読み込む
Default: False, Arg Type: flag
False

--v_parameterization
enable v-parameterization training / v-parameterization学習を有効にする
Default: False, Arg Type: flag
False

--pretrained_model_name_or_path
pretrained model to train, directory to Diffusers model or StableDiffusion checkpoint / 学習元モデル、Diffusers形式モデルのディレクトリまたはStableDiffusionのckptファイル
Default: None, Arg Type: normal
../stable-diffusion-webui/models/Stable-diffusion/animefull-final-pruned.ckpt

--tokenizer_cache_dir
directory for caching Tokenizer (for offline training) / Tokenizerをキャッシュするディレクトリ（ネット接続なしでの学習のため）
Default: None, Arg Type: normal
None

--train_data_dir
directory for train images / 学習画像データのディレクトリ
Default: None, Arg Type: normal
../training/dataset/4-oven

--shuffle_caption
shuffle comma-separated caption / コンマで区切られたcaptionの各要素をshuffleする
Default: False, Arg Type: flag
True

--caption_extension
extension of caption files / 読み込むcaptionファイルの拡張子
Default: .caption, Arg Type: normal
.txt

--caption_extention
extension of caption files (backward compatibility) / 読み込むcaptionファイルの拡張子（スペルミスを残してあります）
Default: None, Arg Type: normal
None

--keep_tokens
keep heading N tokens when shuffling caption tokens (token means comma separated strings) / captionのシャッフル時に、先頭からこの個数のトークンをシャッフルしないで残す（トークンはカンマ区切りの各部分を意味する）
Default: 0, Arg Type: normal
1

--color_aug
enable weak color augmentation / 学習時に色合いのaugmentationを有効にする
Default: False, Arg Type: flag
False

--flip_aug
enable horizontal flip augmentation / 学習時に左右反転のaugmentationを有効にする
Default: False, Arg Type: flag
False

--face_crop_aug_range
enable face-centered crop augmentation and its range (e.g. 2.0,4.0) / 学習時に顔を中心とした切り出しaugmentationを有効にするときは倍率を指定する（例：2.0,4.0）
Default: None, Arg Type: normal
None

--random_crop
enable random crop (for style training in face-centered crop augmentation) / ランダムな切り出しを有効にする（顔を中心としたaugmentationを行うときに画風の学習用に指定する）
Default: False, Arg Type: flag
False

--debug_dataset
show images for debugging (do not train) / デバッグ用に学習データを画面表示する（学習は行わない）
Default: False, Arg Type: flag
False

--resolution
resolution in training ('size' or 'width,height') / 学習時の画像解像度（'サイズ'指定、または'幅,高さ'指定）
Default: None, Arg Type: normal
512

--cache_latents
cache latents to reduce memory (augmentations must be disabled) / メモリ削減のためにlatentをcacheする（augmentationは使用不可）
Default: False, Arg Type: flag
True

--vae_batch_size
batch size for caching latents / latentのcache時のバッチサイズ
Default: 1, Arg Type: normal
1

--enable_bucket
enable buckets for multi aspect ratio training / 複数解像度学習のためのbucketを有効にする
Default: False, Arg Type: flag
True

--min_bucket_reso
minimum resolution for buckets / bucketの最小解像度
Default: 256, Arg Type: normal
320

--max_bucket_reso
maximum resolution for buckets / bucketの最大解像度
Default: 1024, Arg Type: normal
960

--bucket_reso_steps
steps of resolution for buckets, divisible by 8 is recommended / bucketの解像度の単位、8で割り切れる値を推奨します
Default: 64, Arg Type: normal
64

--bucket_no_upscale
make bucket for each image without upscaling / 画像を拡大せずbucketを作成します
Default: False, Arg Type: flag
False

--token_warmup_min
start learning at N tags (token means comma separated strinfloatgs) / タグ数をN個から増やしながら学習する
Default: 1, Arg Type: normal
1

--token_warmup_step
tag length reaches maximum on N steps (or N*max_train_steps if N<1) / N（N<1ならN*max_train_steps）ステップでタグ長が最大になる。デフォルトは0（最初から最大）
Default: 0, Arg Type: normal
0

--caption_dropout_rate
Rate out dropout caption(0.0~1.0) / captionをdropoutする割合
Default: 0.0, Arg Type: normal
0.0

--caption_dropout_every_n_epochs
Dropout all captions every N epochs / captionを指定エポックごとにdropoutする
Default: 0, Arg Type: normal
0

--caption_tag_dropout_rate
Rate out dropout comma separated tokens(0.0~1.0) / カンマ区切りのタグをdropoutする割合
Default: 0.0, Arg Type: normal
0.0

--reg_data_dir
directory for regularization images / 正則化画像データのディレクトリ
Default: None, Arg Type: normal
None

--in_json
json metadata for dataset / データセットのmetadataのjsonファイル
Default: None, Arg Type: normal
None

--dataset_repeats
repeat dataset when training with captions / キャプションでの学習時にデータセットを繰り返す回数
Default: 1, Arg Type: normal
1

--output_dir
directory to output trained model / 学習後のモデル出力先ディレクトリ
Default: None, Arg Type: normal
../training/output

--output_name
base name of trained model file / 学習後のモデルの拡張子を除くファイル名
Default: None, Arg Type: normal
None

--save_precision
precision in saving / 保存時に精度を変更して保存する
Default: None, Choices: None, float, fp16, bf16, Arg Type: normal
fp16

--save_every_n_epochs
save checkpoint every N epochs / 学習中のモデルを指定エポックごとに保存する
Default: None, Arg Type: normal
1

--save_n_epoch_ratio
save checkpoint N epoch ratio (for example 5 means save at least 5 files total) / 学習中のモデルを指定のエポック割合で保存する（たとえば5を指定すると最低5個のファイルが保存される）
Default: None, Arg Type: normal
None

--save_last_n_epochs
save last N checkpoints / 最大Nエポック保存する
Default: None, Arg Type: normal
None

--save_last_n_epochs_state
save last N checkpoints of state (overrides the value of --save_last_n_epochs)/ 最大Nエポックstateを保存する(--save_last_n_epochsの指定を上書きします)
Default: None, Arg Type: normal
None

--save_state
save training state additionally (including optimizer states etc.) / optimizerなど学習状態も含めたstateを追加で保存する
Default: False, Arg Type: flag
False

--resume
saved state to resume training / 学習再開するモデルのstate
Default: None, Arg Type: normal
None

--train_batch_size
batch size for training / 学習時のバッチサイズ
Default: 1, Arg Type: normal
3

--max_token_length
max token length of text encoder (default for 75, 150 or 225) / text encoderのトークンの最大長（未指定で75、150または225が指定可）
Default: None, Choices: None, 150, 225, Arg Type: normal
150

--mem_eff_attn
use memory efficient attention for CrossAttention / CrossAttentionに省メモリ版attentionを使う
Default: False, Arg Type: flag
False

--xformers
use xformers for CrossAttention / CrossAttentionにxformersを使う
Default: False, Arg Type: flag
True

--vae
path to checkpoint of vae to replace / VAEを入れ替える場合、VAEのcheckpointファイルまたはディレクトリ
Default: None, Arg Type: normal
None

--max_train_steps
training steps / 学習ステップ数
Default: 1600, Arg Type: normal
1600

--max_train_epochs
training epochs (overrides max_train_steps) / 学習エポック数（max_train_stepsを上書きします）
Default: None, Arg Type: normal
6

--max_data_loader_n_workers
max num workers for DataLoader (lower is less main RAM usage, faster epoch start and slower data loading) / DataLoaderの最大プロセス数（小さい値ではメインメモリの使用量が減りエポック間の待ち時間が減りますが、データ読み込みは遅くなります）
Default: 8, Arg Type: normal
8

--persistent_data_loader_workers
persistent DataLoader workers (useful for reduce time gap between epoch, but may use more memory) / DataLoader のワーカーを持続させる (エポック間の時間差を少なくするのに有効だが、より多くのメモリを消費する可能性がある)
Default: False, Arg Type: flag
False

--seed
random seed for training / 学習時の乱数のseed
Default: None, Arg Type: normal
None

--gradient_checkpointing
enable gradient checkpointing / grandient checkpointingを有効にする
Default: False, Arg Type: flag
False

--gradient_accumulation_steps
Number of updates steps to accumulate before performing a backward/update pass / 学習時に逆伝播をする前に勾配を合計するステップ数
Default: 1, Arg Type: normal
1

--mixed_precision
use mixed precision / 混合精度を使う場合、その精度
Default: no, Choices: no, fp16, bf16, Arg Type: normal
fp16

--full_fp16
fp16 training including gradients / 勾配も含めてfp16で学習する
Default: False, Arg Type: flag
False

--clip_skip
use output of nth layer from back of text encoder (n>=1) / text encoderの後ろからn番目の層の出力を用いる（nは1以上）
Default: None, Arg Type: normal
2

--logging_dir
enable logging and output TensorBoard log to this directory / ログ出力を有効にしてこのディレクトリにTensorBoard用のログを出力する
Default: None, Arg Type: normal
None

--log_prefix
add prefix for each log directory / ログディレクトリ名の先頭に追加する文字列
Default: None, Arg Type: normal
None

--noise_offset
enable noise offset with this value (if enabled, around 0.1 is recommended) / Noise offsetを有効にしてこの値を設定する（有効にする場合は0.1程度を推奨）
Default: None, Arg Type: normal
None

--lowram
enable low RAM optimization. e.g. load models to VRAM instead of RAM (for machines which have bigger VRAM than RAM such as Colab and Kaggle) / メインメモリが少ない環境向け最適化を有効にする。たとえばVRAMにモデルを読み込むなど（ColabやKaggleなどRAMに比べてVRAMが多い環境向け）
Default: False, Arg Type: flag
False

--sample_every_n_steps
generate sample images every N steps / 学習中のモデルで指定ステップごとにサンプル出力する
Default: None, Arg Type: normal
None

--sample_every_n_epochs
generate sample images every N epochs (overwrites n_steps) / 学習中のモデルで指定エポックごとにサンプル出力する（ステップ数指定を上書きします）
Default: None, Arg Type: normal
None

--sample_prompts
file for prompts to generate sample images / 学習中モデルのサンプル出力用プロンプトのファイル
Default: None, Arg Type: normal
None

--sample_sampler
sampler (scheduler) type for sample images / サンプル出力時のサンプラー（スケジューラ）の種類
Default: ddim, Choices: ddim, pndm, lms, euler, euler_a, heun, dpm_2, dpm_2_a, dpmsolver, dpmsolver++, dpmsingle, k_lms, k_euler, k_euler_a, k_dpm_2, k_dpm_2_a, Arg Type: normal
ddim

--config_file
using .toml instead of args to pass hyperparameter / ハイパーパラメータを引数ではなく.tomlファイルで渡す
Default: None, Arg Type: normal
None

--output_config
output command line args to given .toml file / 引数を.tomlファイルに出力する
Default: False, Arg Type: flag
False

--prior_loss_weight
loss weight for regularization images / 正則化画像のlossの重み
Default: 1.0, Arg Type: normal
1.0

--optimizer_type
Optimizer to use / オプティマイザの種類: AdamW (default), AdamW8bit, Lion, SGDNesterov, SGDNesterov8bit, DAdaptation, AdaFactor
Default: (Nothing. Specify a single - character to leave blank), Arg Type: normal
-

--use_8bit_adam
use 8bit AdamW optimizer (requires bitsandbytes) / 8bit Adamオプティマイザを使う（bitsandbytesのインストールが必要）
Default: False, Arg Type: flag
True

--use_lion_optimizer
use Lion optimizer (requires lion-pytorch) / Lionオプティマイザを使う（ lion-pytorch のインストールが必要）
Default: False, Arg Type: flag
False

--learning_rate
learning rate / 学習率
Default: 2e-06, Arg Type: normal
0.00024

--max_grad_norm
Max gradient norm, 0 for no clipping / 勾配正規化の最大norm、0でclippingを行わない
Default: 1.0, Arg Type: normal
1.0

--optimizer_args
additional arguments for optimizer (like "weight_decay=0.01 betas=0.9,0.999 ...") / オプティマイザの追加引数（例： "weight_decay=0.01 betas=0.9,0.999 ..."）
Default: (Nothing. Specify a space delimited list, or a single - character to leave blank), Arg Type: list
-

--lr_scheduler_type
custom scheduler module / 使用するスケジューラ
Default: (Nothing. Specify a single - character to leave blank), Arg Type: normal
-

--lr_scheduler_args
additional arguments for scheduler (like "T_max=100") / スケジューラの追加引数（例： "T_max100"）
Default: (Nothing. Specify a space delimited list, or a single - character to leave blank), Arg Type: list
-

--lr_scheduler
scheduler to use for learning rate / 学習率のスケジューラ: linear, cosine, cosine_with_restarts, polynomial, constant (default), constant_with_warmup, adafactor
Default: constant, Arg Type: normal
cosine

--lr_warmup_steps
Number of steps for the warmup in the lr scheduler (default is 0) / 学習率のスケジューラをウォームアップするステップ数（デフォルト0）
Default: 0, Arg Type: normal
0

--lr_scheduler_num_cycles
Number of restarts for cosine scheduler with restarts / cosine with restartsスケジューラでのリスタート回数
Default: 1, Arg Type: normal
1

--lr_scheduler_power
Polynomial power for polynomial scheduler / polynomialスケジューラでのpolynomial power
Default: 1, Arg Type: normal
1

--dataset_config
config file for detail settings / 詳細な設定用の設定ファイル
Default: None, Arg Type: normal
None

--min_snr_gamma
gamma for reducing the weight of high loss timesteps. Lower numbers have stronger effect. 5 is recommended by paper. / 低いタイムステップでの高いlossに対して重みを減らすためのgamma値、低いほど効果が強く、論文では5が推奨
Default: None, Arg Type: normal
None

--no_metadata
do not save metadata in output model / メタデータを出力先モデルに保存しない
Default: False, Arg Type: flag
False

--save_model_as
format to save the model (default is .safetensors) / モデル保存時の形式（デフォルトはsafetensors）
Default: safetensors, Choices: None, ckpt, pt, safetensors, Arg Type: normal
safetensors

--unet_lr
learning rate for U-Net / U-Netの学習率
Default: None, Arg Type: normal
0.00024

--text_encoder_lr
learning rate for Text Encoder / Text Encoderの学習率
Default: None, Arg Type: normal
0.000045

--network_weights
pretrained weights for network / 学習するネットワークの初期重み
Default: None, Arg Type: normal
None

--network_module
network module to train / 学習対象のネットワークのモジュール
Default: None, Arg Type: normal
networks.lora

--network_dim
network dimensions (depends on each network) / モジュールの次元数（ネットワークにより定義は異なります）
Default: None, Arg Type: normal
128

--network_alpha
alpha for LoRA weight scaling, default 1 (same as network_dim for same behavior as old version) / LoRaの重み調整のalpha値、デフォルト1（旧バージョンと同じ動作をするにはnetwork_dimと同じ値を指定）
Default: 1, Arg Type: normal
128

--network_args
additional argmuments for network (key=value) / ネットワークへの追加の引数
Default: (Nothing. Specify a space delimited list, or a single - character to leave blank), Arg Type: list
-

--network_train_unet_only
only training U-Net part / U-Net関連部分のみ学習する
Default: False, Arg Type: flag
False

--network_train_text_encoder_only
only training Text Encoder part / Text Encoder関連部分のみ学習する
Default: False, Arg Type: flag
False

--training_comment
arbitrary comment string stored in metadata / メタデータに記録する任意のコメント文字列
Default: None, Arg Type: normal
None