* Save checkpoint every N steps: 0
	* Generate preview every N steps: 0
	* ON "Don't cache latents"
	* ON "Train Text Encoder"
	* ON "Use 8bit Adam", note on this
	* ON "Gradient Checkpointing"
	* "Mixed Precision: fp16"
	* 
	* 8bit adam doesn't appear to help unless you also add the TORCH_COMMAND line into your launch bat as per the github page:

``` python
set TORCH_COMMAND="pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116"
```

	* Runs at about 1.7it/s with a 9700k., 50% CPU usage, full VRAM usage, approx 10-40% GPU, it goes up and down.
