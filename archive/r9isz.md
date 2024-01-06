# CDTuner for ComfyUI
```python
import torch
from comfy.sd import VAE
from comfy.samplers import KSampler

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
    
    DEFAULT_CFG = lambda args: args["uncond"] + (args["cond"] - args["uncond"]) * args["cond_scale"]
    COLORS = [[-1,1/3,2/3],[1,1,0],[0,-1,-1],[1,0,1]]

    def patch(self, model, contrast, brightness, cyan_red, magenta_green, yellow_blue):
        # color shifting values
        ddratios = [contrast, brightness, cyan_red, magenta_green, yellow_blue]
        ratios = [ddratios[0] * 0.02] + ColorTuner.COLOR_CALC(ddratios[1:])
        
        m = model.clone()

        # we need to have some CFG function to wrap, so we set a default if there isn't one
        cfg_func = None
        if "sampler_cfg_function" in m.model_options:
            cfg_func = m.model_options["sampler_cfg_function"]
        else:
            cfg_func = self.DEFAULT_CFG

        def wrapper(args):
            for i, x in enumerate(ratios):
                args["cond"][:,i,:,:] = args["cond"][:,i,:,:] - x * 20/3
                args["uncond"][:,i,:,:] = args["uncond"][:,i,:,:] - x * 20/3
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
    "LatentColorTuner": LatentColorTuner,
}
```