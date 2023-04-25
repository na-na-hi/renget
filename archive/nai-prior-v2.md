```python
from torch import nn
import torch
from modules import devices, shared
import ldm.models.diffusion.ddpm


class VectorAdjustPrior(nn.Module):
    def __init__(self, hidden_size, inter_dim=64):
        super().__init__()
        self.vector_proj = nn.Linear(hidden_size * 2, inter_dim, bias=True)
        self.out_proj = nn.Linear(hidden_size + inter_dim, hidden_size, bias=True)

    def forward(self, z):
        b, s = z.shape[0:2]
        x1 = torch.mean(z, dim=1).repeat(s, 1)
        x2 = z.reshape(b * s, -1)
        x = torch.cat((x1, x2), dim=1)
        x = self.vector_proj(x)
        x = torch.cat((x2, x), dim=1)
        x = self.out_proj(x)
        x = x.reshape(b, s, -1)
        return x

    @classmethod
    def load_model(cls, model_path, hidden_size=768, inter_dim=64):
        model = cls(hidden_size=hidden_size, inter_dim=inter_dim)
        model.load_state_dict(torch.load(model_path)["state_dict"])

        return model


vap = VectorAdjustPrior.load_model('v2.pt').to(devices.device)


def get_learned_conditioning_with_prior(self, c):
    cond = ldm.models.diffusion.ddpm.LatentDiffusion.get_learned_conditioning_original(self, c)

    if shared.opts.use_prior:
        cond = vap(cond)

    return cond


if not hasattr(ldm.models.diffusion.ddpm.LatentDiffusion, 'get_learned_conditioning_original'):
    ldm.models.diffusion.ddpm.LatentDiffusion.get_learned_conditioning_original = ldm.models.diffusion.ddpm.LatentDiffusion.get_learned_conditioning
ldm.models.diffusion.ddpm.LatentDiffusion.get_learned_conditioning = get_learned_conditioning_with_prior

shared.options_templates.update(shared.options_section(('nai', "NAI"), {
    "use_prior": shared.OptionInfo(True, "use v2.pt"),
}))
```