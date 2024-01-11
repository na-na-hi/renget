# CDTuner for ComfyUI
## Installation
Copy the code in to a `.py` file in your `ComfyUI/custom_nodes` directory, then restart ComfyUI and refresh the ComfyUI page in your browser.
## Details
- **SaturationTuner** modifies the VAE to increase or decrease latent decoding/encoding color saturation. Higher values = more saturation.
- **DetailTuner** modifies the model to increase or decrease details and contrast in gens. Play around with the values to get a feel for their effect.
- **ColorTuner** modifies the intermediate latent noise predictions during sampling to adjust their color and contrast.
- **LatentColorTuner** modifies latent images to adjust their color and contrast.
## Changelog
- 2024-01-11 - Implemented the detail tuning portion of CDTuner (the part that was already implemented by the existing CDTuner node). Also reversed the directions of the ColorTuner values so that they make more sense.
## Code
```python
import torch
from comfy.sd import VAE

class SaturationTuner:
    @classmethod
    def INPUT_TYPES(s):
        return {"required": {
            "vae": ("VAE",),
            "saturation": ("FLOAT", {"default": 0.0, "min": -20.0, "max": 20.0, "step": 0.1}),
        }}

    RETURN_TYPES = ("VAE",)
    FUNCTION = "patch"
    CATEGORY = "custom_node_experiments"

    VAEKEYS = [
        "decoder.up.1.upsample.conv.weight",
        "decoder.up.0.block.0.nin_shortcut.weight",
    ]

    def patch(self, vae, saturation):
        sd = vae.get_sd()
        for key in self.VAEKEYS:
            sd[key] = sd[key].clone() * (1 + saturation * 0.075)
        new_vae = VAE(sd=sd)
        return (new_vae, )


class DetailTuner:
    @classmethod
    def INPUT_TYPES(s):
        return {"required": {
            "model": ("MODEL",),
            "detail_1": ("FLOAT", {"default": 0.0, "min": -10.0, "max": 10.0, "step": 0.1}),
            "detail_2": ("FLOAT", {"default": 0.0, "min": -10.0, "max": 10.0, "step": 0.1}),
            "contrast": ("FLOAT", {"default": 0.0, "min": -10.0, "max": 10.0, "step": 0.1}),
        }}

    RETURN_TYPES = ("MODEL", )
    FUNCTION = "patch"
    CATEGORY = "custom_node_experiments"

    TO_SCALE = [
        "diffusion_model.input_blocks.0.0.weight",
        "diffusion_model.input_blocks.0.0.bias",
        "diffusion_model.out.0.weight",
        "diffusion_model.out.0.bias",
    ]
    SCALE_COEF = [
        -0.01,
         0.02,
        -0.01,
         0.02,
    ]

    TO_OFFSET = [
        "diffusion_model.out.2.bias",
    ]
    OFFSET_COEF = [
        [0.02, 0, 0, 0]
    ]

    def patch(self, model, detail_1, detail_2, contrast):
        if not any((detail_1, detail_2, contrast)):
            return (model, )
        
        scale_strengths = [detail_1, detail_1, detail_2, detail_2]
        offset_strengths = [contrast]
        
        m = model.clone()
        m.patch_model()
        sd = m.model.state_dict()
        
        patches = {}
        for i, key in enumerate(self.TO_SCALE):
            if scale_strengths[i] != 0:
                patches[key] = (sd[key] * self.SCALE_COEF[i] * scale_strengths[i], )
        for i, key in enumerate(self.TO_OFFSET):
            if offset_strengths[i] != 0:
                patches[key] = (torch.tensor(self.OFFSET_COEF[i]) * offset_strengths[i], )
        m.unpatch_model()
        m.add_patches(patches)
        
        return (m, )


class ColorTuner:
    @classmethod
    def INPUT_TYPES(s):
        return {"required": {
            "model": ("MODEL",),
            "contrast": ("FLOAT", {"default": 0.0, "min": -20.0, "max": 20.0, "step": 0.1}),
            "brightness": ("FLOAT", {"default": 0.0, "min": -20.0, "max": 20.0, "step": 0.1}),
            "cyan_red": ("FLOAT", {"default": 0.0, "min": -20.0, "max": 20.0, "step": 0.1}),
            "magenta_green": ("FLOAT", {"default": 0.0, "min": -20.0, "max": 20.0, "step": 0.1}),
            "yellow_blue": ("FLOAT", {"default": 0.0, "min": -20.0, "max": 20.0, "step": 0.1}),
        }}

    RETURN_TYPES = ("MODEL", )
    FUNCTION = "patch"
    CATEGORY = "custom_node_experiments"
    
    COLORS = [[-1,1/3,2/3],[1,1,0],[0,-1,-1],[1,0,1]]
    
    @staticmethod
    def default_cfg(args):
        return args["uncond"] + (args["cond"] - args["uncond"]) * args["cond_scale"]

    def patch(self, model, contrast, brightness, cyan_red, magenta_green, yellow_blue):
        # color shifting values
        ddratios = [contrast, brightness, cyan_red, magenta_green, yellow_blue]
        # bypass
        if not any(ddratios):
            return (model, )
        ratios = [ddratios[0] * 0.02] + ColorTuner.COLOR_CALC(ddratios[1:])
        
        m = model.clone()

        # we need to have some CFG function to wrap, so we set a default if there isn't one
        cfg_func = None
        if "sampler_cfg_function" in m.model_options:
            cfg_func = m.model_options["sampler_cfg_function"]
        else:
            cfg_func = ColorTuner.default_cfg

        def wrapper(args):
            for i, x in enumerate(ratios):
                args["cond"][:,i,:,:] = args["cond"][:,i,:,:] + x * 20/3
                args["uncond"][:,i,:,:] = args["uncond"][:,i,:,:] + x * 20/3
            return cfg_func(args)

        # set the wrapper
        m.set_model_sampler_cfg_function(wrapper)

        return (m, )

    @classmethod
    def COLOR_CALC(cls, colors):
        outs = [[y * colors[i] * 0.02 for y in x] for i, x in enumerate(cls.COLORS)]
        return [sum(x) for x in zip(*outs)]


class LatentColorTuner:
    @classmethod
    def INPUT_TYPES(s):
        return {"required": {
            "latent": ("LATENT",),
            "contrast": ("FLOAT", {"default": 0.0, "min": -1000.0, "max": 1000.0, "step": 0.1}),
            "brightness": ("FLOAT", {"default": 0.0, "min": -1000.0, "max": 1000.0, "step": 0.1}),
            "cyan_red": ("FLOAT", {"default": 0.0, "min": -1000.0, "max": 1000.0, "step": 0.1}),
            "magenta_green": ("FLOAT", {"default": 0.0, "min": -1000.0, "max": 1000.0, "step": 0.1}),
            "yellow_blue": ("FLOAT", {"default": 0.0, "min": -1000.0, "max": 1000.0, "step": 0.1}),
        }}

    RETURN_TYPES = ("LATENT", )
    FUNCTION = "patch"
    CATEGORY = "custom_node_experiments"

    def patch(self, latent, contrast, brightness, cyan_red, magenta_green, yellow_blue):
        # color shifting values
        ddratios = [contrast, brightness, cyan_red, magenta_green, yellow_blue]
        ratios = [ddratios[0] * 0.02] + ColorTuner.COLOR_CALC(ddratios[1:])

        l = latent.copy()
        l["samples"] = l["samples"].clone()

        for i, x in enumerate(ratios):
            l["samples"][:,i,:,:] = l["samples"][:,i,:,:] - x * 20/3

        return (l, )


NODE_CLASS_MAPPINGS = {
    "SaturationTuner": SaturationTuner,
    "ColorTuner": ColorTuner,
    "DetailTuner": DetailTuner,
    "LatentColorTuner": LatentColorTuner,
}
```