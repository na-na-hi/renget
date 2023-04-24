``` ps1
# variables related to the pretrained model
$pretrained_model_name_or_path = "C:\SD_models\nai-full.ckpt"
$v2 = 0 # set to 1 for true or 0 for false
$v_model = 0 # set to 1 for true or 0 for false

# variables related to the training dataset and output directory
$train_dir = "G:\kohya_train_dir\lion-test"
$image_folder = "G:\lion_test_dataset"
$output_dir = "G:\kohya_train_dir\output\lion-test"
$kohya_finetune_repo_path = "G:\sd-scripts"
$logging_dir = "G:\kohya_logs\lion-test"
$output_name = "lion-2.5e-6-bs16-test"

# variables related to the training process
$max_resolution = "512,512"
$learning_rate = 2.5e-6 # 8e-6 / 3
$lr_scheduler = "cosine"
$lr_warmup_steps = 0
$dataset_repeats = 1
$train_batch_size = 16
$epochs = 15
$save_every_n_epochs = 10
$mixed_precision = "bf16"
$save_precision = "float" # use fp16 for better compatibility with auto1111 and other repo
$seed = 23
$num_cpu_threads_per_process = 12
$train_text_encoder = 1 # set to 1 to train text encoder otherwise set to 0

$prepare_latents = 0 # set 1 for faster training. set 0 if --random_crop or --color_aug are used


# variables related to the resulting diffuser model. If input is ckpt or tensors then it is not applicable
$convert_to_safetensors = 1 # set to 1 to convert resulting diffuser to ckpt
$convert_to_ckpt = 0 # set to 1 to convert resulting diffuser to ckpt


### You should not need to change things below

# Set variables to useful values using ternary operator
$v_model = ($v_model -eq 0) ? $null : "--v_parameterization"
$v2 = ($v2 -eq 0) ? $null : "--v2"
$train_text_encoder = ($train_text_encoder -eq 0) ? $null : "--train_text_encoder"

# stop script on error
$ErrorActionPreference = "Stop"

# define a list of substrings to search for
$substrings_v2 = "stable-diffusion-2-1-base", "stable-diffusion-2-base"

# check if $v2 and $v_model are empty and if $pretrained_model_name_or_path contains any of the substrings in the v2 list
if ($v2 -eq $null -and $v_model -eq $null -and ($substrings_v2 | Where-Object { $pretrained_model_name_or_path -match $_ }).Count -gt 0) {
    Write-Host("SD v2 model detected. Setting --v2 parameter")
    $v2 = "--v2"
    $v_model = $null
}

# define a list of substrings to search for v-objective
$substrings_v_model = "stable-diffusion-2-1", "stable-diffusion-2"

# check if $v2 and $v_model are empty and if $pretrained_model_name_or_path contains any of the substrings in the v_model list
if ($v2 -eq $null -and $v_model -eq $null -and ($substrings_v_model | Where-Object { $pretrained_model_name_or_path -match $_ }).Count -gt 0) {
    Write-Host("SD v2 v_model detected. Setting --v2 parameter and --v_parameterization")
    $v2 = "--v2"
    $v_model = "--v_parameterization"
}

# activate venv
cd $kohya_finetune_repo_path
.\venv\Scripts\activate

# create caption json file
if (!(Test-Path -Path $train_dir)) {
    New-Item -Path $train_dir -ItemType "directory"
}

# backup old json files
if (Test-Path $train_dir"\meta_cap.json") { Move-Item -Force $train_dir"\meta_cap.json" $train_dir"\meta_cap.json.bak"}
if (Test-Path $train_dir"\meta_lat.json") { Move-Item -Force $train_dir"\meta_lat.json" $train_dir"\meta_lat.json.bak"}

python $kohya_finetune_repo_path\finetune\merge_dd_tags_to_metadata.py `
    $image_folder $train_dir"\meta_cap.json" --caption_extension ".txt"

<# 
Write-Host("Cleaning tags.. ")
python $kohya_finetune_repo_path\finetune\clean_captions_and_tags.py `
    $train_dir"\meta_cap.json" $train_dir"\meta_cap.json" --debug
 #>

# create image buckets
if (!($prepare_latents -eq 0)) {
python $kohya_finetune_repo_path\finetune\prepare_buckets_latents.py `
    $image_folder `
    $train_dir"\meta_cap.json" `
    $train_dir"\meta_lat.json" `
    $pretrained_model_name_or_path `
    --max_resolution $max_resolution --mixed_precision $mixed_precision --min_bucket_reso 320 --max_bucket_reso 960 `
    --batch_size 8 --max_data_loader_n_workers 4 --skip_existing
}

$json = ($prepare_latents -eq 0) ? "meta_cap.json" : "meta_lat.json"


accelerate launch --num_cpu_threads_per_process $num_cpu_threads_per_process $kohya_finetune_repo_path\fine_tune.py `
    $v2 `
    $v_model `
    --pretrained_model_name_or_path=$pretrained_model_name_or_path `
    --in_json $train_dir\$json `
    --train_data_dir="$image_folder" `
    --output_dir=$output_dir `
    --train_batch_size=$train_batch_size `
    --dataset_repeats=$dataset_repeats `
    --learning_rate=$learning_rate `
    --lr_scheduler=$lr_scheduler `
    --lr_warmup_steps=$lr_warmup_steps `
    --max_train_epochs=$epochs `
    --use_lion_optimizer --xformers --gradient_checkpointing `
    --enable_bucket --resolution $max_resolution --min_bucket_reso 320 --max_bucket_reso 960 --random_crop --max_data_loader_n_workers 8 `
    --mixed_precision=$mixed_precision `
    --save_every_n_epochs=$save_every_n_epochs `
    --seed=$seed --clip_skip 2 --max_token_length 225 --shuffle_caption `
    $train_text_encoder --logging_dir $logging_dir `
    --save_precision=$save_precision --use_safetensors --output_name $output_name

# --cache_latents --random_crop --color_aug --flip_aug --max_data_loader_n_workers 8 --noise_offset 0.03 --caption_tag_dropout_rate 0.05 --save_state --resume "G:\kohya_train_dir\output\hll4\hll4-000003-state" --keep_tokens 1

# check if $output_dir\last is a directory... therefore it is a diffuser model
if (Test-Path "$output_dir\last" -PathType Container) {
    if ($convert_to_ckpt) {
        Write-Host("Converting diffuser model $output_dir\last to $output_dir\last.ckpt")
        python "$kohya_finetune_repo_path\tools\convert_diffusers20_original_sd.py" `
            $output_dir\last `
            $output_dir\last.ckpt `
            --$save_precision
    }
    if ($convert_to_safetensors) {
        Write-Host("Converting diffuser model $output_dir\last to $output_dir\last.safetensors")
        python "$kohya_finetune_repo_path\tools\convert_diffusers20_original_sd.py" `
            $output_dir\last `
            $output_dir\last.safetensors `
            --$save_precision
    }
}

# define a list of substrings to search for inference file
$substrings_sd_model = ".ckpt", ".safetensors"
$matching_extension = foreach ($ext in $substrings_sd_model) {
    Get-ChildItem $output_dir -File | Where-Object { $_.Extension -contains $ext }
}

if ($matching_extension.Count -gt 0) {
    # copy the file named "v2-inference.yaml" from the "v2_inference" folder to $output_dir as last.yaml
    if ( $v2 -ne $null -and $v_model -ne $null) {
        Write-Host("Saving v2-inference-v.yaml as $output_dir\last.yaml")
        Copy-Item -Path "$kohya_finetune_repo_path\v2_inference\v2-inference-v.yaml" -Destination "$output_dir\last.yaml"
    }
    elseif ( $v2 -ne $null ) {
        Write-Host("Saving v2-inference.yaml as $output_dir\last.yaml")
        Copy-Item -Path "$kohya_finetune_repo_path\v2_inference\v2-inference.yaml" -Destination "$output_dir\last.yaml"
    }
}
```
