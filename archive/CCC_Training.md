#CCC Lora Training Settings

==THIS IS IN NO WAY/SHAPE/FORM, THE ULTIMATE TRAINING GUIDE. THERE ARE WAY BETTER PEOPLE AT DOING THIS! I JUST DO IT FOR CHUUBAS THAT NOBODY WOULD TOUCH ANYWAY WITH A FOCUS OF BALANCING FLEXIBILITY ON BAD/LOW ARTWORK DATASETS==
***
!!! note Output example copied from Kohya GUI. I don't use the training script directly. https://github.com/bmaltais/kohya_ss
    These are the settings I use to train characters that are very poor in the number of artworks available for them, relying mostly on model pics and whatever I can grab from here and there. Keep in mind I am using an AMD RX6800XT card to train. Your settings may (and should) vary according to your hardware. 
**These changes would be:**
- batch size (2 in my case)
- optimizer_type (you might be able to use AdamW8bit with bitsandbytes installed)
- --sdpa (if you have nvidia you should use --xformers instead) 
- resolution: increase or lower depending on your hardware. 512,512 should be good enough for SD1.5, I just want an extra kick
- no_half_vae (unsure if this is AMD only, but without it I get NaN after a few epochs)

**The tricks I use to unstiffen the loras: **
- Low learning rate (0.0002). 
- Shuffle captions with keep 5-6 captions, these are usually the characters tags. 
- Low --network_dim and --network_alpha ratio. Instead of the usual, alpha = 1/2 dim i go for 1/4 of dim. This lowers the learning rate even more.
- Training for around 1200-1400 steps (divided by the 2 batch size this is ~600-700 steps. A few under or over is not a big deal.)
- Setting --min_snr_gamma=5 lowers the learning rate a bit as well
- Warmup steps at 5% to avoid the initial learning spike if any
- Scale_weight_norms to avoid overbaking. this will regularize any spiking features that are being overtrained during an epoch to a lower number.
- adding noise_offset=0.05 & adaptive_noise_scale=0.005 for more contrast punch and pixel randomization

***
**SD 1.5 SETTINGS (~1200 steps with batch size 1)**
accelerate launch --num_cpu_threads_per_process=1 "./train_network.py" --enable_bucket                  
                         --min_bucket_reso=320 --max_bucket_reso=768                                                             
                         --pretrained_model_name_or_path="`/path/to/base/NAI/model/animefull-
                         final-pruned-fp16.safetensors`"                                                                          
                         --train_data_dir="`/path/to/your/img/directory/with/a/repeats_name/folder/inside`" --resolution="`576,576`"                                                                        
                         --output_dir="`/path/to/folder/where/lora/should/be/saved`"                                                                                                 
                         --logging_dir="`/path/to/where/tensorboard/logs/should/be/saved`" --network_alpha="8" --save_model_as=safetensors --network_module=networks.lora                   
                         --text_encoder_lr=5e-05 --unet_lr=0.0002 --network_dim=32 --output_name="`name_of_lora`"                   
                         --lr_scheduler_num_cycles="3" --scale_weight_norms="1" --no_half_vae --learning_rate="0.0002"           
                         --lr_scheduler="cosine_with_restarts" --lr_warmup_steps="`this is 5% of the number in max_train_steps`" --train_batch_size="2"                     
                         --max_train_steps="`this is the (number of images * number of repeats * number of epochs) / batch size`" --save_every_n_epochs="2" --mixed_precision="fp16" --save_precision="fp16"      
                         --seed="1555460" --caption_extension=".txt" --cache_latents --cache_latents_to_disk                     
                         --optimizer_type="AdamW" --optimizer_args "weight_decay=0.1" --max_data_loader_n_workers="0"            
                         --max_token_length=225 --keep_tokens="5" --bucket_reso_steps=64 --min_snr_gamma=5 --shuffle_caption     
                         --sdpa --noise_offset=0.05 --adaptive_noise_scale=0.005

***
**SDXL ANIMAGINE SETTINGS (~700 steps with batch size 1)**
accelerate launch --num_cpu_threads_per_process=2 "./sdxl_train_network.py" --enable_bucket --min_bucket_reso=256 --max_bucket_reso=2048 --pretrained_model_name_or_path="`/path/to/SDXL_MODEL.safetensors`" --train_data_dir="`/path/to/your/img/directory/with/a/repeats_name/folder/inside`" --resolution="1024,1024" --output_dir="`/path/to/folder/where/lora/should/be/saved`" --logging_dir="`/path/to/where/tensorboard/logs/should/be/saved`" --network_alpha="4" --training_comment="Trained on AnimagineXL3" --save_model_as=safetensors --network_module=networks.lora --text_encoder_lr=4e-05 --unet_lr=`between 0.0001 and 0.00035` --network_dim=16 --output_name="`name_of_lora`" --lr_scheduler_num_cycles="`this should be equal to number of epochs`" --scale_weight_norms="1" --no_half_vae --learning_rate="`between 0.0001 and 0.00035`" --lr_scheduler="cosine" --train_batch_size="1" --max_train_steps="`this is the (number of images * number of repeats * number of epochs) / batch size`" --save_every_n_epochs="2" --mixed_precision="fp16" --save_precision="fp16" --caption_extension=".txt" --cache_latents --cache_latents_to_disk --optimizer_type="AdamW" --max_grad_norm="1" --max_data_loader_n_workers="0" --max_token_length=225 --bucket_reso_steps=64 --min_snr_gamma=5 --gradient_checkpointing --sdpa --noise_offset=0.05 --adaptive_noise_scale=0.005 --sample_sampler=euler_a --sample_prompts="`/path/to/prompt.txt/if/you/want/to/sample`" --sample_every_n_epochs="1"