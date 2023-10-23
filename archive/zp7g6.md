# The フギミ LoRA Collection - NAI

This Rentry serves as an easier way to preview the [LoRAs I have uploaded to MEGA](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA). Anything linked below can also be found through this main link. ==Only a .safetensors file is needed to use any LoRA==. Extra info can be found in the metadata or other files provided alongside the .safetensors file.

**[Changelog](https://pastebin.com/0nW739JH)** *last updated October 23 2023*

## Rentry Index

**NAI** ← You are here
[Furryrock](https://rentry.org/83o5t)

## Table of Contents

[TOC]

## About the Preview Images

!!! note The preview images do not represent the regular use case, nor the full capability of each model.
	They serve as the "raw" output of the LoRA as they are not affected by the negative prompt when using the *latent* function of regional prompter. When used normally, wanted or unwanted details may be lost. These differences can be observed in the comparison table below.

!!! info
	The following examples all use the [Caramelldansen (Popotan Game Opening)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PJ8yTDrZ) LoRA.

[]() | NAI | Based64 | Counterfeit v3
| :------: | :------: | :------:
**Regular (Basic Prompt)** | ![](https://i.imgur.com/b9kZ7zo.png) | ![](https://i.imgur.com/wcXGKMD.png) | ![](https://i.imgur.com/WMq5fTc.png)
**Latent (Basic Prompt)** | ![](https://i.imgur.com/Y23V6EG.png) | ![](https://i.imgur.com/uiQyxKE.png) | ![](https://i.imgur.com/suVPExN.png)
**Regular (Longer Prompt)** | ![](https://i.imgur.com/c66aFdG.png) | ![](https://i.imgur.com/r8GfTDP.png) | ![](https://i.imgur.com/L6f84Vv.png)
**Latent (Longer Prompt)** | ![](https://i.imgur.com/cIFQZ87.png) | ![](https://i.imgur.com/Rxp0DvZ.png) | ![](https://i.imgur.com/hXBqOZ9.png)

**Latent (Basic Prompt)** outputs what the LoRA looks like while **Regular (Basic Prompt)** is what the checkpoint looks like. **Regular (Longer Prompt)** represents the average use case and provides the best overall result depending on checkpoint used.

!!! info All preview images below use the template of (*Based 64*, *Latent (Basic Prompt)*):

```
masterpiece, best quality, 1girl, solo <lora:ex_lora_unet-1e-3_te-1e-4_dim-8_alpha-8:1> BREAK
Negative prompt: worst quality, nsfw
Steps: 20, Sampler: DPM++ 2M Karras, CFG scale: 7, Seed: 0, Size: 640x960, Model hash: 30b5268da4, Model: Based64mix-V3_ema-560000_fp16, Clip skip: 2, RP Active: True, RP Divide mode: Matrix, RP Matrix submode: Horizontal, RP Mask submode: Mask, RP Prompt submode: Prompt, RP Calc Mode: Latent, RP Ratios: 1, RP Base Ratios: 0.2, RP Use Base: False, RP Use Common: False, RP Use Ncommon: False, RP Change AND: False, RP LoRA Neg Te Ratios: 0, RP LoRA Neg U Ratios: 0, RP threshold: 0.4, Lora hashes: "ex_lora_1024px_1e-3_dim-8_alpha-8: xxx", Version: v1.4.0
```
More info about the comparison table and preview images can be found in the **[Additional Notes](https://rentry.org/zp7g6/#additional-notes)** section at the bottom of the page.

## Style Loras

### A
[Abfurai](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PN8UnIZY) | [Abutomato](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SE9g3K6A)
:------:|:------:
![](https://files.catbox.moe/w7olqe.jpg) | ![](https://files.catbox.moe/9a3ek6.jpg)
[Allcharacters18](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DddAUZoS) | [Ataruman](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mIkl3IpD)
![](https://files.catbox.moe/cohhgv.jpg) | ![](https://files.catbox.moe/fp47k8.jpg)
[Average-Hanzo](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3U8UgKLb) | []()
![](https://files.catbox.moe/qmxoy8.jpg) | ![]()

### B
[Babu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bI1nxJqR) | [BIGxixi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7c1zTQRY)
:------:|:------:
![](https://files.catbox.moe/rhvoci.jpg) | ![](https://files.catbox.moe/86y10y.jpg)
[Bluesechi (Thumbnails)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PRtmkDgZ) | [Bukurote](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DctkWbbA)
![](https://files.catbox.moe/rb4vrl.jpg) | ![](https://files.catbox.moe/pt9374.jpg)

### C
[Caramelldansen (Popotan Game Opening)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PJ8yTDrZ) | [Coro Fae](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/CZ1yDSCS)
:------:|:------:
![](https://files.catbox.moe/ep1ae1.jpg) | ![](https://files.catbox.moe/snr3gr.jpg)

### D
[Dagasi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mR83gKgJ) | [Daido](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jQ1A1QiL)
:------:|:------:
![](https://files.catbox.moe/dypa5e.jpg) | ![](https://files.catbox.moe/hnqw4m.jpg)
[DoKoMoN](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LMcAAD6a) | [Donguri](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SEsQkJjY)
![](https://files.catbox.moe/echeh2.jpg) | ![](https://files.catbox.moe/ldydc5.jpg)
[Dorontabi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/6NUmVBwY) | [Dragonya](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PZlmTTIJ)
![](https://files.catbox.moe/kj1cyc.jpg) | ![](https://files.catbox.moe/nogzzz.jpg)
[Dried Jellyfish (Full-h-hans)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GJMy0RbR) | []()
![](https://files.catbox.moe/8splae.jpg) | ![]()

### E
[Egami](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mM1kUZIS) | [Esearu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/TUkxRJhS)
:------:|:------:
![](https://files.catbox.moe/wbbe6q.jpg) | ![](https://files.catbox.moe/2rjh2r.jpg)

### F
[Fallenshadow](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GN8UAJaD) | [Fishine](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7U1H2ThZ)
:------:|:------:
![](https://files.catbox.moe/twd85d.jpg) | ![](https://files.catbox.moe/boeymq.jpg)
[Fuyukawa](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fV9yharB) | []()
![](https://files.catbox.moe/o9z93u.jpg) | ![]()

### G
[Gedoudan (Gedou Danshaku)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WBkGHAZY) | [Gemba](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rMMylZyJ)
:------:|:------:
![](https://files.catbox.moe/siyriw.jpg) | ![](https://files.catbox.moe/rngfcp.jpg)
[Gin Mitsu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2c8T0LSD) | [Gishiki](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DIkCwA7b)
![](https://files.catbox.moe/m3hge5.jpg) | ![](https://files.catbox.moe/niy2ho.jpg)
[GreatM8](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/HdliTRiL) | [GreatoDoggo](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PE1RnTjI)
![](https://files.catbox.moe/ib81r3.jpg) | ![](https://files.catbox.moe/ays9c5.jpg)
[Guizhencao (Oniharigusa)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/CRsSUSLb) | [Gyari](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zNkDzKAI)
![](https://files.catbox.moe/4526vp.jpg) | ![](https://files.catbox.moe/otha60.jpg)

### H
[Hamada](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fckilSYB) | [Henreader](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jAlhTKia)
:------:|:------:
![](https://files.catbox.moe/4526vp.jpg) | ![](https://files.catbox.moe/d79bgz.jpg)
[Henrybird](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/Oc1TSIhK) | [Highlow](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PdsnhBBY)
![](https://files.catbox.moe/7ra0rl.jpg) | ![](https://files.catbox.moe/k8j6qm.jpg)
[Hiro Hiroki](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2Zk1yT6B) | []()
![](https://files.catbox.moe/rwtq63.jpg) | ![]()

### I
[Imamura Ryou](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3Jl0xQYT) | [Innerkey](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nEklWaSD)
:------:|:------:
![](https://files.catbox.moe/0cmxig.jpg) | ![](https://files.catbox.moe/lwb75y.jpg)

### J
[Jcm2](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WYsCgRQT) | [Jima](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rRlgADQL)
:------:|:------:
![](https://files.catbox.moe/rtfaix.jpg) | ![](https://files.catbox.moe/abdt87.jpg)
[JJ.JJ](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yUdSTZBY) | [John Zhang](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zQsBiTRL)
![](https://files.catbox.moe/urh7tr.jpg)| ![](https://files.catbox.moe/n7kc4l.jpg)
[Jyuiro (e10)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rFtAhRJb) | []()
![](https://files.catbox.moe/p3x4wk.jpg) | ![]()

### K
[Kahlua](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/TU0QyJyI) | [Kaipo](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KJMCnToR)
:------:|:------:
![](https://files.catbox.moe/cped1m.jpg) | ![](https://files.catbox.moe/xgkcbd.jpg)
[Kanzaki Muyu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2MlHhYgC) | [Kareya](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eIkXELAZ)
![](https://files.catbox.moe/jv8eia.jpg) | ![](https://files.catbox.moe/z2gc8w.jpg)
[Kinhasu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DQtRDYLS) | [Kirimia](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mYFwlJAR)
![](https://files.catbox.moe/811rae.jpg) | ![](https://files.catbox.moe/hzsino.jpg)
[Kokaki Mumose](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/CQ03UChK) | [Kokuto](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/OUl0kYJQ)
![](https://files.catbox.moe/gutkir.jpg) | ![](https://files.catbox.moe/mfhayd.jpg)
[Konpeto](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/vFMWSTxI) | [Koyori](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rQk3xJjY)
![](https://files.catbox.moe/8fg1fa.jpg) | ![](https://files.catbox.moe/hhr3sv.jpg)
[Krill](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jclh3RYY) | [Kuroboshi Kouhahu (Takeshi Iizuka)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3Z0jWZYD)
![](https://files.catbox.moe/bj5y6g.jpg) | ![](https://files.catbox.moe/zwkpni.jpg)
[Kuroi Suna](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eZkmyRBS) | []()
![](https://files.catbox.moe/v24p0i.jpg) | []()

### L
[Laserflip](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jAkzHSTb) | []()
:------:|:------:
![](https://files.catbox.moe/s9pscs.jpg) | ![]()

### M
[Maguro27](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nVUjUD4B) | [MaidForge](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GBlmTYoS)
:------:|:------:
![](https://files.catbox.moe/rh2i2m.jpg) | ![](https://files.catbox.moe/f6ap1s.jpg) | 
[Maniacbox](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zU0mWTDI) | [Mannack](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2F8lCDIL)
![](https://files.catbox.moe/0ie3yp.jpg) | ![](https://files.catbox.moe/ko4wgq.jpg)
[Masato Ishio](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zY8BjD7J) | [Matokechi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7IsjmZDR)
![](https://files.catbox.moe/ua6fuy.jpg) | ![](https://files.catbox.moe/6yrlat.jpg)
[Menthako](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7IsQFbIA) | [Meyu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/6M8SRSSD)
![](https://files.catbox.moe/6wjaqy.jpg) | ![](https://files.catbox.moe/24xlmx.jpg)
[Mochikushi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bNsDGboI) | [Moemaru](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SRkwCBYK)
![](https://files.catbox.moe/wka0nx.jpg) | ![](https://files.catbox.moe/38nfpa.jpg)
[Mukuton](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LV9VxZzA) | [Musouduki](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/qJsEhDRR)
![](https://files.catbox.moe/hi9y0k.jpg) | ![](https://files.catbox.moe/stn0qy.jpg)

### N
[Naijiaer (NJER)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/aNtCDIyJ) | [Najucaju](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zJsEiTZS)
:------:|:------:
![](https://files.catbox.moe/cbd766.jpg) | ![](https://files.catbox.moe/hdek3g.jpg)
[Namako (Takorin)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DAVmEBbR) | [Nanameyomi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fQ1l1QwI)
![](https://files.catbox.moe/d05yym.jpg) | ![](https://files.catbox.moe/d05yym.jpg)
[Nanja](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LQkwzbbI) | [Nezumin](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GUtnHBBL)
![](https://files.catbox.moe/9dp0hx.jpg) | ![](https://files.catbox.moe/ysc9e3.jpg)
[Niko (Tama)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eIkCwJwQ) | [NLO (Nanashi)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bd0XmYZZ)
![](https://files.catbox.moe/fix0ok.jpg) | ![](https://files.catbox.moe/fcyis0.jpg)

### O
[ObserverZ (Cloaking19)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GEkUAbKS) | [Ogipote](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LA0W0Rab)
:------:|:------:
![](https://files.catbox.moe/2km72b.jpg) | ![](https://files.catbox.moe/2km72b.jpg)
[Oke Yazawa](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KI023SjZ) | [Onion](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/XI90nBbZ)
![](https://files.catbox.moe/vmsd87.jpg) | ![](https://files.catbox.moe/yo10hf.jpg)
[Opossumachine](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/iB1zTQAI) | [Orenjipiru](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fItRkLLL)
![](https://files.catbox.moe/wclluz.jpg) | ![](https://files.catbox.moe/62qxbu.jpg)

### P
[Padoruu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zBUmXJ4T) | [Pedocchi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LI0lDZ4Q)
:------:|:------:
![](https://files.catbox.moe/qekd37.jpg) | ![](https://files.catbox.moe/8c78bp.jpg)
[Poisonous Biscuit (Himeri)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PFlRkDAI) | [Popotan (Game CG)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rMNSlLxQ)
![](https://files.catbox.moe/9odh4q.jpg) | ![](https://files.catbox.moe/qld2pr.jpg)
[Puchiya (Hoshino Fuuta)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/uMsUwK6K) | []()
![](https://files.catbox.moe/sjcdiu.jpg) | ![]()

### R
[Ririko](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DE11wLCb) | [Rouka](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fZFWyRrS)
:------:|:------:
![](https://files.catbox.moe/43vot6.jpg) | ![](https://files.catbox.moe/yjydrt.jpg)
[Ryota](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yF8RhI4a) | []()
![](https://files.catbox.moe/qsg54g.jpg) | ![]()

### S
[S16xue](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jMUUyDRS) | [Sakamoto Ahiru](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mBkBDLDY)
:------:|:------:
![](https://files.catbox.moe/arrn6f.jpg) | ![](https://files.catbox.moe/hudpfh.jpg)
[Sakuya Tsuitachi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eAtkHB4T) | [Samuneko](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/HMtCXIZC)
![](https://files.catbox.moe/2t1n73.jpg) | ![](https://files.catbox.moe/x0y48w.jpg)
[Sayori (Neko Works)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DUsBHAAa) | [Setmen](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zZ1ymRrQ)
![](https://files.catbox.moe/of0810.jpg) | ![](https://files.catbox.moe/71odco.jpg)
[Shacho (Nagatukiinn)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nF91TSiC) | [Shimejinameko](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rYtVGQbS) 
![](https://files.catbox.moe/j9kgnj.jpg) | ![](https://files.catbox.moe/cfh8yz.jpg)
[Shokuyou Mogura](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rB1iEQhI) | [Sirfy](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WY9ywK7Q)
![](https://files.catbox.moe/uy7vu6.jpg) | ![](https://files.catbox.moe/5menm2.jpg)
[Spaga](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/HMsQTSDC) | [Sy4](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bBkkBBzS)
![](https://files.catbox.moe/52wjww.jpg) | ![](https://files.catbox.moe/l8qdfv.jpg)

### T
[Tamanoi Peromekuri](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WUt12DZR) | [Tamaya](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bFllFYQK)
:------:|:------:
![](https://files.catbox.moe/pjouqp.jpg) | ![](https://files.catbox.moe/jvljtp.jpg)
[Toketou](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SZsxWTRK) | [Tousaki Shiina](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fQ1mhQgZ)
![](https://files.catbox.moe/83r78q.jpg) | ![](https://files.catbox.moe/lvx0as.jpg)
[Tsubasa](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/uRUkgB4Y) | [Tsukushi Akihito](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nJtE2bYb)
![](https://files.catbox.moe/qavl9l.jpg) | ![](https://files.catbox.moe/0cepc5.jpg)

### U
[Uminotaco](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KU8wFJDQ) | [Usitora Tatsumi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eddm2RgA)
:------:|:------:
![](https://files.catbox.moe/moa15v.jpg) | ![](https://files.catbox.moe/clo7zl.jpg)

### V
[Vachelor](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3Q9mmCKJ) | [Vachelor (Color)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rMs13BaD)
:------:|:------:
![](https://files.catbox.moe/ltu4db.jpg) | ![](https://files.catbox.moe/djxugk.jpg)
[Von Franken](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/XM0VnLiQ) | []()
![](https://files.catbox.moe/djxugk.jpg) | ![]()

### W
[Wangyq](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yQ0SyBLB) | [Watanon](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jF0XARCA)
:------:|:------:
![](https://files.catbox.moe/10ceq3.jpg) | ![](https://files.catbox.moe/ufwgd1.jpg)
[Waterkuma](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rUkHjK6C) | [Waymay](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/ucUC3DJI)
![](https://files.catbox.moe/tw6c30.jpg) | ![](https://files.catbox.moe/m086wr.jpg)

### Y
[Yosola PL](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/ydFAQJLD) | [Yousan](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2QlkRDRQ)
:------:|:------:
![](https://files.catbox.moe/fyfbjo.jpg) | ![](https://files.catbox.moe/fyli4h.jpg)

### Z
[z282g](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PM9GSSrS) | []()
:------:|:------:
![](https://files.catbox.moe/yn4ns4.jpg) | ![]()

### \#
[1=2 (oet)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/ac9gBBQA) | []()
:------:|:------:
![](https://files.catbox.moe/0ufqnl.jpg) | ![]()

## Multi (Style+Character) Loras

### A
[Amashiro Natsuki (Nachoneko / Nekoha Shizuku - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zN8SHBKA) | Nachoneko | Nekoha Shizuku
:------:|:------:|:------:
![](https://files.catbox.moe/v307cf.jpg) | ![](https://files.catbox.moe/8vkaki.jpg) | ![](https://files.catbox.moe/e9q2og.jpg)

```
nachoneko, paw print, cat ears, cat tail, double-parted bangs, long hair, grey hair, blue eyes
```
```
nekoha shizuku, cat ears, cat tail, hair ornament, side ponytail, very long hair, blue hair, blue eyes
```

### B
[Boukoku Daitouryou (Sasaki Saku - Nijisanji)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WI1hyCCL) | Sasaki Saku
:------:|:------:
![](https://files.catbox.moe/jpe075.jpg) | ![](https://files.catbox.moe/hmindb.jpg)

```
sasaki saku, open jacket, raglan sleeves, drawstring, dress shirt, pink shirt, bowtie, red bow, miniskirt, plaid skirt, green skirt, single earring, drop earrings, hairclip, hair ornament, ahoge, crossed bangs, single sidelock, hair behind ear, short hair, streaked hair, pink hair, red eyes
```

### F

[FIZ-ROT (Dagger / Zazie - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2AkkwDxA) | Dagger (†) | Zazie
:------:|:------:|:------:
![](https://files.catbox.moe/bs14ta.jpg) | ![](https://files.catbox.moe/gjr89z.jpg) | ![](https://files.catbox.moe/kgqjaj.jpg)

```
dagger \(fizrotart\), loli, flat chest, fangs, spiked collar, cross hair ornament, swept bangs, short twintails, black hair, red eyes
```
```
zazie, loli, dark skin, egyptian, gold, tattoo, facial tattoo, hairclip, hair ornament, blunt bangs, short hair, black hair, yellow eyes
```

### G
[Gulp (Imp - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fJsQGKxZ) | Imp
:------:|:------:
![](https://files.catbox.moe/ctxg6h.jpg) | ![](https://files.catbox.moe/j2tiza.jpg)

```
minigirl, flat chest, demon girl, demon wings, demon tail, oni horns, pointy ears, twintails, black hair, brown eyes, grey skin
```

### H
[Hansharu (Happy Bunny - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rY1E1SLS) | Happy Bunny
:------:|:------:
![](https://files.catbox.moe/g99k8u.jpg) | ![](https://files.catbox.moe/anyrr6.jpg)

```
happy bunny, loli, large hands, oversized forearms, fewer digits, claws, mask, bald, forehead mark, pink bodysuit, white leotard, heart cutout, elbow gloves, white gloves, white thighhighs, red bowtie, rabbit ears, yellow eyes, no pupils
```

### J
[Jungle (Ponpoko - VTuber)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fVk0nJYJ) | Ponpoko
:------:|:------:
![](https://files.catbox.moe/pn06w6.jpg) | ![](https://files.catbox.moe/kcj8l4.jpg)

```
ponpoko \(vtuber\), :3, raccoon girl, raccoon ears, raccoon tail, animal nose, leaf on head, blunt bangs, short hair, grey hair, grey eyes
```

### K
[Kanchiyo (Nagatoro Hayase - Ijiranaide, Nagatoro-san)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LJ0EzSAJ) | Nagatoro Hayase
:------:|:------:
![](https://files.catbox.moe/xkkylj.jpg) | ![](https://files.catbox.moe/4nv6up.jpg)

```
nagatoro hayase, fangs, dark skin, earclip, hairclip, asymmetrical bangs, long hair, black hair, brown eyes
```

[Koahri (Ninomae Ina'nis - Hololive)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SI93iCgK) | Ninomae Ina'nis
:------:|:------:
![](https://files.catbox.moe/crd8pm.jpg) | ![](https://files.catbox.moe/29x49q.jpg)

```
ninomae ina'nis, petite, animal ears, tentacle hair, blunt bangs, very long hair, purple hair, purple eyes
```

### L
[Luicent (Elisia Valfelto - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LA0gza6a) | Elisia Valfelto
:------:|:------:
![](https://files.catbox.moe/z9odck.jpg) | ![](https://files.catbox.moe/7mk8fl.jpg)

```
elisia valfelto, hair intakes, long hair, brown hair, blue eyes
```

### M
[Mery (Chitanda / Oreki - Hyouka)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mRMwSZhR) | Chitanda | Oreki
:------:|:------:|:------:
![](https://files.catbox.moe/muqgv1.jpg) | ![](https://files.catbox.moe/fkp2st.jpg) | ![](https://files.catbox.moe/yewqh8.jpg)

```
1girl, solo, chitanda eru, long hair, black hair, purple eyes
```
```
1boy, solo, oreki houtarou, short hair, brown hair, green eyes
```

[Moritan (Homura / Madoka - Madoka Magica)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KQknkDAI) | Homura | Madoka
:------:|:------:|:------:
![](https://files.catbox.moe/zgb5aj.jpg) | ![](https://files.catbox.moe/5lbu4p.jpg) | ![](https://files.catbox.moe/hipzgj.jpg)

```
akemi homura, hairband, long hair, black hair, purple eyes, looking at viewer
```
```
kaname madoka, hair ribbon, short hair, short twintails, pink hair, pink eyes, looking at viewer
```

### O
[Orukaniumu (Tsukuyomi Ai – Voiceroid)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GRkhwIRZ) | Tsukuyomi Ai
:------:|:------:
![](https://files.catbox.moe/3yqumg.jpg) | ![](https://files.catbox.moe/9uem55.jpg)

```
tsukuyomi ai, loli, blush, sharp teeth, collared dress, pink dress, heart brooch, detached sleeves, sleeves past fingers, bare shoulders, hair bobbles, low twintails, hair between eyes, long hair, brown hair, purple eyes
```

### P
[Porforever (Digitan - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/TZtTFDyI) | Digitan
:------:|:------:
![](https://files.catbox.moe/cuguzr.jpg) | ![](https://files.catbox.moe/vr8cbd.jpg)

```
digitan \(porforever\), loli, fang, wristwatch, dress shirt, collared shirt, pink shirt, bare shoulders, open clothes, off-shoulder, short sleeves, partially unzipped, blue jacket, drawstring, striped socks, shoes, power symbol, electric plug, tail, headphones, lightning bolt symbol, hair between eyes, sidelocks, long hair, white hair, star-shaped pupils, aqua eyes, aqua nails
```

### S
[Seicoh (Usada Pekora - Hololive)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3F03hbwD) | Usada Pekora
:------:|:------:
![](https://files.catbox.moe/kr1e4n.jpg) | ![](https://files.catbox.moe/e416qe.jpg)

```
usada pekora, one-piece swimsuit, rabbit ears, hair bow, carrot hair ornament, twin braids, twintails, long hair, two-tone hair, blue hair, thick eyebrows, multicolored eyes, yellow eyes, bunny-shaped pupils
```

[Shark'd (Gawr Gura - Hololive)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zY1QSAzQ) | Gawr Gura
:------:|:------:
![](https://files.catbox.moe/vvpdxy.jpg) | ![](https://files.catbox.moe/sto72w.jpg)

```
gawr gura, shark tail, blue hoodie, shark hood, hood down, bike shorts, shark hair ornament, sharp teeth, two side up, short hair, streaked hair, white hair, blue eyes
```

[Shennai Misha (Mochizuki Anna - THE iDOLM@ASTER)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/XNsUmDCQ) | Mochizuki Anna
:------:|:------:
![](https://files.catbox.moe/nwm9ii.jpg) | ![](https://files.catbox.moe/6b7wfe.jpg)

```
mochizuki anna, loli, school uniform, ahoge, hair between eyes, long hair, purple hair, green eyes
```

[So-taro (Eiko Carol - Final Fantasy)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/OR12jSyS) | Eiko Carol
:------:|:------:
![](https://files.catbox.moe/36xjuo.jpg) | ![](https://files.catbox.moe/l4zq6g.jpg)

```
eiko carol, loli, red sweater, high collar, puffy long sleeves, red gloves, yellow overalls, breastplate, belt, leg belt, hair bow, yellow bow, mini wings, single horn, short hair, purple hair, green eyes
```

### T
[Trente (Brown Succubus-chan - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nNkgjBwK) | Brown Succubus-chan
:------:|:------:
![](https://files.catbox.moe/wxkqw7.jpg) | ![](https://files.catbox.moe/yrx5v3.jpg)

```
brown succubus-chan \(trente\), loli, open mouth, smile, fang, blush, dark skin, maid bikini, frilled bikini, detached collar, maid headdress, highleg bikini, demon wings, demon tail, head wings, ear piercing, pointy ears, twintails, black hair, yellow eyes
```

### U
[Utsusumi Kio (Makaino Ririmu – Nijisanji)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/HJdEQLIL) | Makaino Ririmu
:------:|:------:
![](https://files.catbox.moe/v1wihd.jpg) | ![](https://files.catbox.moe/4s5601.jpg)

```
makaino ririmu, loli, eyepatch, pink jacket, sailor collar, red neckerchief, white shirt, open jacket, off shoulder, sleeves past wrists, pleated skirt, blue skirt, blue belt, red collar, handbag, red bag, leg tattoo, hair ribbon, black ribbon, two side up, long hair, streaked hair, grey hair, red eyes, pointy ears
```

### Y

[Yumegwagwagwa (Sweets Girl - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bF93yJLA) | Sweets Girl
:------:|:------:
![](https://files.catbox.moe/fpbtya.jpg) | ![](https://files.catbox.moe/gsn7rz.jpg)

```
sweets girl, emaciated, lolita fashion, lolita hairband, white dress, collar, detached sleeves, white gloves, white thighhighs, hime cut, very long hair, black hair, purple eyes
```

### Z
[Zirba (Illya / Chloe - Fate)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yY8QlbAT) | Illya | Chloe
:------:|:------:|:------:
![](https://files.catbox.moe/5oxc9x.jpg) | ![](https://files.catbox.moe/g3l10n.jpg) | ![](https://files.catbox.moe/39yeja.jpg)

```
illyasviel von einzbern, hair between eyes, sidelocks, parted bangs, long hair, blonde hair, red eyes
```
```
chloe von einzbern, dark skin, hairpin, single hair bun, half updo, long hair, pink hair, orange eyes
```

## Character Loras

### A
[Anny - VTuber](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PJk22CwB)  | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/c6k7fCE.png) | ![](https://i.imgur.com/YYwiXhC.png) | ![](https://i.imgur.com/v2FruNJ.png)

```
annytf
```
```
annytf, fox girl, fox tail, animal ear fluff, bikini under clothes, detached sleeves, frills, pink dress, detached collar, white collar, choker, star \(symbol\), star hair ornament, double-parted bangs, two side up, long hair, gradient hair, grey hair, pink hair, purple eyes
```

[Ashley - WarioWare](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mQNW2BoS) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/jlewZEt.png) | ![](https://i.imgur.com/mGjkbsx.png) | ![](https://i.imgur.com/HrhYYZu.png)

```
ashley \(warioware\)
```
```
ashley \(warioware\), loli, red dress, long sleeves, wide sleeves, orange neckerchief, skull, orange hairband, black pantyhose, red footwear, twintails, big hair, long hair, hair between eyes, black hair, red eyes
```

### B
[Bailu - Honkai Star Rail](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fBVw2DBL) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/65WNxby.png) | ![](https://i.imgur.com/wW59YUG.png) | ![](https://i.imgur.com/HarJf4L.png)

```
bailu \(honkai: star rail\)
```
```
bailu \(honkai: star rail\), loli, dragon girl, dress, black undershirt, detached sleeves, wide sleeves, shorts, black footwear, horns, dragon tail, twin braids, crossed bangs, hair between eyes, long hair, ahoge, blue hair, purple hair, gradient hair, blue eyes, green eyes, pointy ears
```

### C
[Chi-Chi - Dragon Ball](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LZc0ybDQ) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/MXyXcix.png) | ![](https://i.imgur.com/7hUOV4W.png) | ![](https://i.imgur.com/NyocscI.png)

```
chi-chi \(dragon ball\)
```
```
chi-chi \(dragon ball\), loli, bikini armor, shoulder armor, pauldrons, blue bikini, spaghetti strap, choker, cape, helmet, pink headwear, pink gloves, boots, pink footwear, blunt bangs, long hair, black hair, black eyes
```

[Chikuwa - VTuber](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fElnUAjD) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/7DI2jFR.png) | ![](https://i.imgur.com/7Gr1BF8.png) | ![](https://i.imgur.com/H8BtIbs.png)

```
chikuwa \(vtuber\)
```
```
chikuwa \(vtuber\), cat ears, animal ear fluff, cat tail, hooded jacket, green hoodie, hood down, paw print, center opening, partially unzipped, full-length zipper, cat print, flower ornament, drawstring, white bikini, bow bikini, patterned clothing, collar, neck bell, jingle bell, white thighhighs, tail ribbon, hairclip, paw hair ornament, hair bow, hair ribbon, orange ribbon, antenna hair, twin braids, gradient hair, long hair, white hair, pink hair, purple eyes
```

[Crimvael - Ishuzoku Reviewers](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jF9ADQpD) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/SNhcCQ2.png) | ![](https://i.imgur.com/VAEmSyr.png) | ![](https://i.imgur.com/BbCmNjv.png)

```
crimvael
```
```
crimvael, floating, strapless, white dress, bike shorts, sandals, angel wings, halo, long hair, blonde hair, blue eyes
```

[Cyan - Show By Rock!!]() | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/e26ts26.png) | ![](https://i.imgur.com/aQmanQX.png) | ![](https://i.imgur.com/CCcLWKb.png)

```
cyan \(show by rock!!\)
```
```
cyan \(show by rock!!\), fang, guitar, black dress, petticoat, frills, long sleeves, lolita fashion, cat girl, cat ears, cat tail, jingle bell, pink bowtie, maid headdress, striped thighhighs, mary janes, curly hair, ringlets, black hair, green eyes
```

### D
[Diona - Genshin Impact](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zQNGxDAQ) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/PGsGuRn.png) | ![](https://i.imgur.com/L2mYJBO.png) | ![](https://i.imgur.com/hQfnoAa.png)

```
diona \(genshin impact\)
```
```
diona \(genshin impact\), loli, fang, cat girl, animal ear fluff, tail ribbon, hat, belt pouch, puffy detached sleeves, white gloves, paw print, puffy shorts, midriff, navel, boots, bangs pinned back, forehead, thick eyebrows, short hair, pink hair, green eyes
```

### F
[Faputa - Made in Abyss](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KV1B0TwL) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/lqoVRHT.png) | ![](https://i.imgur.com/3rIhaSk.png) | ![](https://i.imgur.com/25um8Zf.png)

```
faputa
```
```
faputa, loli, flat chest, goggles around breasts, shoulder strap, open mouth, sharp teeth, monster girl, extra arms, fewer digits, claws, multiple tails, very dark skin, animal ears, body fur, white fur, hair between eyes, short hair, white hair, yellow eyes
```

### G
[Geega - VShojo](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PA0g2aSA) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/gb2v7I6.png) | ![](https://i.imgur.com/ZsujT2k.png) | ![](https://i.imgur.com/Wet7pHW.png)

```
geega \(vtuber\)
```
```
geega \(vtuber\), sleeveless shirt, collared shirt, white shirt, red necktie, detached sleeves, strap, black skirt, cape, mismatched gloves, pantyhose, black footwear, demon tail, eyepatch, pointy ears, head wings, bat hair ornament, ahoge, half updo, grey hair, red eyes 
```

### J
[Jahy - Jahy-sama wa Kujikenai!](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bE8kBQbD) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/NeUib6S.png) | ![](https://i.imgur.com/GQXKL6U.png) | ![](https://i.imgur.com/f6E9i48.png)

```
jahy
```
```
jahy, loli, t-shirt, oversized shirt, white shirt, necklace, jewelry, barefoot, fang, dark skin, hair flaps, single braid, long hair, purple hair, black hair, red eyes
```

### K
[Kaai Yuki (Yukopi) - Vocaloid](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mZVQgB6I) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/HMk00Ug.png) | ![](https://i.imgur.com/uW3YSCJ.png) | ![](https://i.imgur.com/yorIjaN.png)

```
kaai yuki
```
```
kaai yuki, loli, blush stickers, school uniform, red dress, pinafore dress, red ascot, backpack, randoseru, bag charm, socks, white socks, brown footwear, mary janes, hair bobbles, bangs, twintails, short hair, black hair, brown eyes
```

[Kamiko Kana (Shrine Fox ver.) - VTuber](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/ic1SAaBR) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/qmhRvEP.png) | ![](https://i.imgur.com/GJb3waU.png) | ![](https://i.imgur.com/x2be7iq.png)

```
kamiko kana
```
```
kamiko kana, loli, fox girl, animal ear fluff, fox tail, japanese clothes, black kimono, off shoulder, spaghetti strap, corset, belt, obi, back bow, white skirt, black thighhighs, ankle ribbon, platform footwear, neck bell, collar, mask on head, hair bell, hair ribbon, jingle bell, red ribbon, hairclip, x hair ornament, thick eyebrows, hair flaps, ahoge, two side up, long hair, streaked hair, white hair, yellow eyes
```

[Klee - Genshin Impact](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WBMEjbxJ) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/E1AKdeA.png) | ![](https://i.imgur.com/RnpgTWs.png) | ![](https://i.imgur.com/QQ293q6.png)

```
klee \(genshin impact\)
```
```
klee \(genshin impact\), loli, upper teeth, smile, clover print, cabbie hat, hat ornament, hat feather, red coat, long sleeves, pocket, brown scarf, backpack, randoseru, bag charm, brown gloves, bloomers, kneehighs, knee boots, brown footwear, pointy ears, ahoge, hair between eyes, sidelocks, low twintails, blonde hair, red eyes 
```

[Klee (Blossoming Starlight) - Genshin Impact](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/ON0DDJgZ) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/5tqlHpB.png) | ![](https://i.imgur.com/1HnZRQA.png) | ![](https://i.imgur.com/xk6m31t.png)

```
klee \(blossoming starlight\) \(genshin impact\)
```
```
klee \(blossoming starlight\) \(genshin impact\), loli, witch hat, vision \(genshin impact\), red dress, corset, waist apron, dress bow, gold trim, puffy short sleeves, bowtie, red bow, glove bow, black gloves, white thighhighs, mary janes, ahoge, low twintails, pointy ears, blonde hair, red eyes 
```

### L
[Lily Hopkins - VTuber](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7F8GTbyD) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/kCKgTjt.png) | ![](https://i.imgur.com/2YWGNHx.png) | ![](https://i.imgur.com/Gh3uxjY.png)

```
lily hopkins
```
```
lily hopkins, loli, flat chest, freckles, broken tooth, upper teeth, frog print, striped shirt, denim shorts, sneakers, green footwear, hairclip, ahoge, short hair, brown hair, multicolored eyes, blue eyes, green eyes
```

[Laimu (Limealicious) - VTuber](Laimu (Limealicious) - VTuber) | Character Prompt | Alt Outfit
:------:|:------:|:------:
![](https://files.catbox.moe/374js7.jpg) | ![](https://files.catbox.moe/sla03o.jpg) | ![](https://files.catbox.moe/g103ak.jpg)

```
laimu \(vtuber\), animal ears, green tail, white jacket, white hoodie, hooded jacket, off-shoulder jacket, puffy long sleeves, cross-laced slit, spaghetti strap, white skirt, paw print, mismatched legwear, asymmetrical legwear, animal ear legwear, tail wrap, sneakers, white footwear, black choker, necklace, lime slice, ahoge, hair between eyes, hair over shoulder, single braid, gradient hair, colored tips, white hair, green hair, green eyes
```
```
laimu \(vtuber\), animal ears, green tail, pink camisole, sleeveless dress, underbust, side slit, arm garter, white skirt, paw print, mismatched legwear, asymmetrical legwear, animal ear legwear, animal print, tail wrap, sneakers, white footwear, black choker, necklace, lime slice, ahoge, hair over shoulder, single braid, hair between eyes, gradient hair, colored tips, white hair, green hair, green eyes
```

### M
[Mao - Endro!](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mR1THD5C) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/9AXozWD.png) | ![](https://i.imgur.com/M3NziRD.png) | ![](https://i.imgur.com/p0SHjbU.png)

```
mao \(endro!\)
```
```
mao \(endro!\), loli, blush stickers, demon girl, demon horns, demon wings, red wings, sleeveless dress, red trim, halterneck, spaghetti strap, orange flower, vertical-striped skirt, multicolored skirt, purple skirt, yellow skirt, brown footwear, center-flap bangs, short hair, red hair, green eyes
```

### N
[Nahida - Genshin Impact](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DZNC1ZZb) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/ZZG8Rn7.png) | ![](https://i.imgur.com/yBjkoLy.png) | ![](https://i.imgur.com/Fb6igXE.png)

```
nahida \(genshin impact\)
```
```
nahida \(genshin impact\), loli, cross-shaped pupils, short dress, white dress, green cape, capelet, detached sleeves, short sleeves, bracelet, white bloomers, stirrup legwear, toeless footwear, hair flower, hair ornament, hair between eyes, gradient hair, green hair, white hair, pointy ears, green eyes
```

[Nanahira - Utaite / VTuber](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KBtDzY4S) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/5wppaHe.png) | ![](https://i.imgur.com/cmwhYDs.png) | ![](https://i.imgur.com/r5gXRWj.png)

```
nanahira
```
```
nanahira, open jacket, green hoodie, sleeve ribbon, hood down, drawstring, choker, criss-cross halter, white dress, full-length zipper, dress bow, asymmetrical legwear, single thighhigh, sneakers, bow hairband, hairpin, x hair ornament, long hair, light brown hair, yellow eyes
```

### Q
[Qiqi - Genshin Impact](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yBESXR6B) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/sPy91gN.png) | ![](https://i.imgur.com/9SETD9I.png) | ![](https://i.imgur.com/mp6hg2t.png)

```
qiqi \(genshin impact\)
```
```
qiqi \(genshin impact\), loli, jiangshi, dress, long sleeves, white thighhighs, qing guanmao, bead necklace, purple headwear, vision \(genshin impact\), ofuda, talisman, braided ponytail, purple eyes, purple eyes
```

### R
[Rizel - Rizelmine](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WEsjiKiI)  | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/cN7pKg8.png) | ![](https://i.imgur.com/E6eKZpN.png) | ![](https://i.imgur.com/jVCTb2s.png)

```
rizel
```
```
rizel, loli, white dress, pink dress, white capelet, large buttons, back bow, ribbon, wrist cuffs, thighhighs, mary janes, headgear, hairpods, hair between eyes, ahoge, short hair, orange hair, blue eyes
```

### S
[Shiro - No Game No Life](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SJtD0D7A) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/pVvC0Dr.png) | ![](https://i.imgur.com/9d1X8Wg.png) | ![](https://i.imgur.com/ZwnULC8.png)

```
shiro \(no game no life\)
```
```
shiro \(no game no life\), loli, school uniform, serafuku, crown, yellow neckerchief, white sailor collar, purple shirt, purple skirt, antenna hair, hair between eyes, very long hair, gradient hair, blue hair, yellow eyes, red eyes
```

[Sango - Pokemon](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mBUAhTKL) | Character Prompt | Longer Prompt
:------:|:------:|:------:
![](https://i.imgur.com/98qBDbj.png) | ![](https://i.imgur.com/njngvvk.png) | ![](https://i.imgur.com/LmfrMKG.png)

```
sango \(pokemon\)
```
```
sango \(pokemon\), halterneck, crop top, off shoulder, sleeves past wrists, black shirt, black skirt, asymmetrical legwear, black choker, belt, x hair ornament, hair scrunchie, twintails, streaked hair, black hair, pink hair, black eyes
```

## Concept Loras

### F
[Flat Chastity Cage](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/TYtjWTIQ) | Prompt
:------:|:------:
![](https://i.imgur.com/rUa4Pc7.png) | ![](https://i.imgur.com/QrvFkTv.png)

```
flat chastity cage, chastity belt
```

### H
[Hugging Own Tail](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/vItFWDBb) | Prompt
:------:|:------:
![](https://i.imgur.com/JtGO4KX.png) | ![](https://i.imgur.com/3A38I5K.png)

```
hugging own tail
```

### M
[Mouth Bubble](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2R8RxQIZ) | Prompt
:------:|:------:
![](https://i.imgur.com/QfmEdqD.png) | ![](https://i.imgur.com/FS61Fh0.png)

```
mouth bubble, tongue out
```

### Q
[Quadruped Prosthesis](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/vYslGbxT) | Prompt
:------:|:------:
![](https://i.imgur.com/3QXCcvy.png) | ![](https://i.imgur.com/BBByaBQ.png)

```
quadruped prosthesis, quadruple amputee, all fours, on ground, animal ears, fang, tail, looking at viewer
```

## Misc Loras

### B
[Breast Mousepad](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LR1lGYKI) | Prompt
:------:|:------:
![](https://i.imgur.com/g7lSTgf.png) | ![](https://i.imgur.com/jqhgQMx.png)

```
breast mousepad, photo \(medium\), mousepad \(object\), mousepad \(medium\)
```

### F
[Figma](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mN9VzY6J) | Prompt
:------:|:------:
![](https://i.imgur.com/7XqJVDf.png) | ![](https://i.imgur.com/Hnabfqn.png)

```
figma, photo \(medium\), figure stage, doll joints
```

### N
[Nendoroid](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/aB11QC4T) | Prompt
:------:|:------:
![](https://i.imgur.com/DlGqJWz.png) | ![](https://i.imgur.com/GT6LfCa.png)

```
nendoroid, photo \(medium\), figure stage, chibi
```

### P
[Pop Up Parade](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mM13VJha) | Prompt
:------:|:------:
![](https://i.imgur.com/G08GjVB.png) | ![](https://i.imgur.com/XX0TFh3.png)

```
figure, photo \(medium\), figure stage
```

### S
[SSBU Character Render (Super Smash Bros. Ultimate)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/vVdE0BqA) | Prompt
:------:|:------:
![](https://i.imgur.com/4MzAHrM.png) | ![](https://i.imgur.com/U3NL4BH.png)

```
3d, full body, fighting stance, white background, simple background
```

## Additional Notes

- I use [Regional Prompter](https://github.com/hako-mikan/sd-webui-regional-prompter#latent)'s "latent" generation setting to generate these previews, activating a single region by adding a BREAK at the end of the prompt. Previously I used [Composable LoRA](https://github.com/opparco/stable-diffusion-webui-composable-lora), but it was abandoned and the [newer fork]() ~~does not function the same~~ has also been abandoned. Be careful if you also use this method, adding more breaks or having a LoRA outside of the BREAK will have weird effects.
- The "longer prompt" from the **[About the Preview Images](https://rentry.org/zp7g6/#about-the-preview-images)** section is:
```
masterpiece, best quality, 1girl, solo, chibi, full body, arms up, closed eyes, open mouth, white outline, pink background, simple background <lora:st_caramelldansen-popotan_unet-1e-3_te-1e-4_dim-8_alpha-8:1> BREAK
```
- If you would like to support me making LoRAs and/or make a request, you can do so on [ko-fi](https://ko-fi.com/hoogyme)