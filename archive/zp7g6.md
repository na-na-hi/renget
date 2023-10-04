# The フギミ LoRA Collection

This Rentry serves as an easier way to preview the [LoRAs I have uploaded to MEGA](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA). Anything linked below can also be found through this main link. ==Only a .safetensors file is needed to use any LoRA==. Extra info can be found in the metadata or other files provided alongside the .safetensors file.

**[Changelog](https://pastebin.com/0nW739JH)** *last updated October 4 2023*

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
![](https://i.imgur.com/KwwSR6q.jpg) | ![](https://i.imgur.com/47a7iWF.jpg)
[Allcharacters18](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DddAUZoS) | [Ataruman](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mIkl3IpD)
![](https://i.imgur.com/Po6aPSO.jpg) | ![](https://i.imgur.com/zAuH7Cz.jpg)
[Average-Hanzo](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3U8UgKLb) | []()
![](https://i.imgur.com/ilDHMN3.jpg) | ![]()

### B
[Babu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bI1nxJqR) | [BIGxixi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7c1zTQRY)
:------:|:------:
![](https://i.imgur.com/pfaB5IZ.jpg) | ![](https://i.imgur.com/fpDz4XW.jpg)
[Bluesechi (Thumbnails)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PRtmkDgZ) | [Bukurote](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DctkWbbA)
![](https://i.imgur.com/iTJ55hf.jpg) | ![](https://i.imgur.com/tskonrZ.jpg)

### C
[Caramelldansen (Popotan Game Opening)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PJ8yTDrZ) | [Coro Fae](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/CZ1yDSCS)
:------:|:------:
![](https://i.imgur.com/6xmoXgn.jpg) | ![](https://i.imgur.com/tnjgqsT.jpg)

### D
[Dagasi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mR83gKgJ) | [Daido](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jQ1A1QiL)
:------:|:------:
![](https://i.imgur.com/sUNB755.jpg) | ![](https://i.imgur.com/ma8LMHR.jpg)
[Donguri](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SEsQkJjY) | [Dorontabi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/6NUmVBwY)
![](https://i.imgur.com/rx0fiNM.jpg) | ![](https://i.imgur.com/BJSrVOb.jpg)
[Dragonya](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PZlmTTIJ) | [Dried Jellyfish (Full-h-hans)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GJMy0RbR)
![](https://i.imgur.com/KIKo3sA.jpg) | ![](https://i.imgur.com/Be0wBkV.jpg)

### E
[Egami](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mM1kUZIS) | [Esearu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/TUkxRJhS)
:------:|:------:
![](https://i.imgur.com/NxyNz6B.jpg) | ![](https://i.imgur.com/TMeTmao.jpg)

### F
[Fallenshadow](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GN8UAJaD) | [Fishine](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7U1H2ThZ)
:------:|:------:
![](https://i.imgur.com/AfuK3AV.jpg) | ![](https://i.imgur.com/4TUF8oW.jpg)
[Fuyukawa](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fV9yharB) | []()
![](https://i.imgur.com/pELYyf2.jpg) | ![]()

### G
[Gedoudan (Gedou Danshaku)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WBkGHAZY) | [Gemba](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rMMylZyJ)
:------:|:------:
![](https://i.imgur.com/V8eCAGn.jpg) | ![](https://i.imgur.com/FGhSUul.jpg)
[Gin Mitsu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2c8T0LSD) | [Gishiki](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DIkCwA7b)
![](https://i.imgur.com/anxydTD.jpg) | ![](https://i.imgur.com/yyutJyS.jpg)
[GreatM8](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/HdliTRiL) | [GreatoDoggo](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PE1RnTjI)
![](https://i.imgur.com/OWZH8D5.jpg) | ![](https://i.imgur.com/HGDIwEF.jpg)
[Guizhencao (Oniharigusa)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/CRsSUSLb) | []()
![](https://i.imgur.com/FE3Ef3D.jpg) | ![]()

### H
[Hamada](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fckilSYB) | [Henreader](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jAlhTKia)
:------:|:------:
![](https://i.imgur.com/iiqL0kJ.jpg) | ![](https://i.imgur.com/nJarptl.jpg)
[Henrybird](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/Oc1TSIhK) | [Highlow](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PdsnhBBY)
![](https://i.imgur.com/tP351cC.jpg) | ![](https://i.imgur.com/1LJ5FOX.jpg)
[Hiro Hiroki](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2Zk1yT6B) | []()
![](https://i.imgur.com/uiLXoxb.jpg) | ![]()

### I
[Imamura Ryou](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3Jl0xQYT) | [Innerkey](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nEklWaSD)
:------:|:------:
![](https://i.imgur.com/MA8xhgR.jpg) | ![](https://i.imgur.com/CqXwhqa.jpg)

### J
[Jcm2](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WYsCgRQT) | [Jima](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rRlgADQL)
:------:|:------:
![](https://i.imgur.com/yhwQ01C.jpg) | ![](https://i.imgur.com/yhWtaXf.jpg)
[JJ.JJ](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yUdSTZBY) | [John Zhang](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zQsBiTRL)
![](https://i.imgur.com/U5Bb5xW.jpg)| ![](https://i.imgur.com/M0L86ik.jpg)
[Jyuiro (e10)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rFtAhRJb) | []()
![](https://i.imgur.com/CVKmjqd.jpg) | ![]()

### K
[Kahlua](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/TU0QyJyI) | [Kaipo](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KJMCnToR)
:------:|:------:
![](https://i.imgur.com/zw9OQQW.jpg) | ![](https://i.imgur.com/P64wT4c.jpg)
[Kanzaki Muyu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2MlHhYgC) | [Kareya](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eIkXELAZ)
![](https://i.imgur.com/PO5y73B.jpg) | ![](https://i.imgur.com/CRQj9js.jpg)
[Kinhasu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DQtRDYLS) | [Kokaki Mumose](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/CQ03UChK)
![](https://i.imgur.com/kYNwWS6.jpg) | ![](https://i.imgur.com/4ThWmO1.jpg)
[Kokuto](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/OUl0kYJQ) | [Konpeto](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/vFMWSTxI)
![](https://i.imgur.com/fhAvqnv.jpg) | ![](https://i.imgur.com/Y8TRqbW.jpg)
[Koyori](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rQk3xJjY) | [Krill](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jclh3RYY)
![](https://i.imgur.com/rxLIJbJ.jpg) | ![](https://i.imgur.com/Etsr77U.jpg)
[Kuroboshi Kouhahu (Takeshi Iizuka)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3Z0jWZYD) | [Kuroi Suna](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eZkmyRBS)
![](https://i.imgur.com/9dvYB8l.jpg) | ![](https://i.imgur.com/kRqm6sG.jpg)

### L
[Laserflip](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jAkzHSTb) | []()
:------:|:------:
![](https://i.imgur.com/lNJwSmE.jpg) | ![]()

### M
[MaidForge](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GBlmTYoS) | [Maniacbox](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zU0mWTDI)
:------:|:------:
![](https://i.imgur.com/OsIp14Q.jpg) | ![](https://i.imgur.com/1TiH9kl.jpg)
[Mannack](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2F8lCDIL) | [Masato Ishio](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zY8BjD7J)
![](https://i.imgur.com/yOyslXS.jpg) | ![](https://i.imgur.com/HLKgwTW.jpg)
[Matokechi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7IsjmZDR) | [Menthako](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/7IsQFbIA)
![](https://i.imgur.com/jjraNuK.jpg) | ![](https://i.imgur.com/XdSGOUl.jpg)
[Meyu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/6M8SRSSD) | [Mochikushi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bNsDGboI)
![](https://i.imgur.com/eLnwVTs.jpg) | ![](https://i.imgur.com/4VSQkMY.jpg)
[Moemaru](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SRkwCBYK) | [Mukuton](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LV9VxZzA)
![](https://i.imgur.com/5efkdmi.jpg) | ![](https://i.imgur.com/BvyiKDn.jpg)
[Musouduki](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/qJsEhDRR) | []()
![](https://i.imgur.com/X8D4CQx.jpg) | ![]()

### N
[Naijiaer (NJER)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/aNtCDIyJ) | [Najucaju](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zJsEiTZS)
:------:|:------:
![](https://i.imgur.com/jeJsNah.jpg) | ![](https://i.imgur.com/uXYlUa2.jpg)
[Namako (Takorin)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DAVmEBbR) | [Nanameyomi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fQ1l1QwI)
![](https://i.imgur.com/N7K35Qy.jpg) | ![](https://i.imgur.com/cnKswDT.jpg)
[Nanja](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LQkwzbbI) | [Nezumin](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GUtnHBBL)
![](https://i.imgur.com/DRKETfw.jpg) | ![](https://i.imgur.com/g6KC95Z.jpg)
[Niko (Tama)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eIkCwJwQ) | [NLO (Nanashi)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bd0XmYZZ)
![](https://i.imgur.com/LA2jaIL.jpg) | ![](https://i.imgur.com/DUlrXq9.jpg)

### O
[ObserverZ (Cloaking19)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GEkUAbKS) | [Ogipote](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LA0W0Rab)
:------:|:------:
![](https://i.imgur.com/8uQoiBK.jpg) | ![](https://i.imgur.com/KEsES6g.jpg)
[Oke Yazawa](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KI023SjZ) | [Onion](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/XI90nBbZ)
![](https://i.imgur.com/8fjy5LP.jpg) | ![](https://i.imgur.com/njLCQFR.jpg)
[Opossumachine](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/iB1zTQAI) | [Orenjipiru](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fItRkLLL)
![](https://i.imgur.com/taBewmU.jpg) | ![](https://i.imgur.com/hjCUnd7.jpg)

### P
[Padoruu](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zBUmXJ4T) | [Pedocchi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LI0lDZ4Q)
:------:|:------:
![](https://i.imgur.com/4LtqH2W.jpg) | ![](https://i.imgur.com/d8m77Xj.jpg)
[Poisonous Biscuit (Himeri)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PFlRkDAI) | [Popotan (Game CG)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rMNSlLxQ)
![](https://i.imgur.com/rpLuJxv.jpg) | ![](https://i.imgur.com/1rT1ZS4.jpg)
[Puchiya (Hoshino Fuuta)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/uMsUwK6K) | []()
![](https://i.imgur.com/jeyXTpL.jpg) | ![]()

### R
[Ririko](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DE11wLCb) | [Rouka](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fZFWyRrS)
:------:|:------:
![](https://i.imgur.com/jnO2VkF.jpg) | ![](https://i.imgur.com/63scFgz.jpg)
[Ryota](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yF8RhI4a) | []()
![](https://i.imgur.com/DdldNqe.jpg) | ![]()

### S
[S16xue](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jMUUyDRS) | [Sakamoto Ahiru](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mBkBDLDY)
:------:|:------:
![](https://i.imgur.com/tmeVodR.jpg) | ![](https://i.imgur.com/WOBabGW.jpg)
[Sakuya Tsuitachi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eAtkHB4T) | [Samuneko](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/HMtCXIZC)
![](https://i.imgur.com/8aygNv4.jpg) | ![](https://i.imgur.com/dHTiqmd.jpg)
[Sayori (Neko Works)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/DUsBHAAa) | [Setmen](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zZ1ymRrQ)
![](https://i.imgur.com/hrgmSNN.jpg) | ![](https://i.imgur.com/9iyhpwo.jpg)
[Shacho (Nagatukiinn)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nF91TSiC) | [Shimejinameko](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rYtVGQbS) 
![](https://i.imgur.com/16fU2ma.jpg) | ![](https://i.imgur.com/WqGfo7j.jpg)
[Shokuyou Mogura](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rB1iEQhI) | [Sirfy](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WY9ywK7Q)
![](https://i.imgur.com/6yc4u7q.jpg) | ![](https://i.imgur.com/Ubw7Ax5.jpg)
[Spaga](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/HMsQTSDC) | [Sy4](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bBkkBBzS)
![](https://i.imgur.com/8LiEEpZ.jpg) | ![](https://i.imgur.com/VO5URgE.jpg)

### T
[Tamanoi Peromekuri](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WUt12DZR) | [Tamaya](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bFllFYQK)
:------:|:------:
![](https://i.imgur.com/WUxATbm.jpg) | ![](https://i.imgur.com/12SU1I1.jpg)
[Toketou](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SZsxWTRK) | [Tousaki Shiina](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fQ1mhQgZ)
![](https://i.imgur.com/W4VPzbN.jpg) | ![](https://i.imgur.com/Zb4YyE9.jpg)
[Tsubasa](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/uRUkgB4Y) | [Tsukushi Akihito](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nJtE2bYb)
![](https://i.imgur.com/pbdWiJb.jpg) | ![](https://i.imgur.com/TdqZj5G.jpg)

### U
[Uminotaco](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KU8wFJDQ) | [Usitora Tatsumi](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/eddm2RgA)
:------:|:------:
![](https://i.imgur.com/gAxHy4F.jpg) | ![](https://i.imgur.com/WHLQGXZ.jpg)

### V
[Vachelor](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3Q9mmCKJ) | [Vachelor (Color)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rMs13BaD)
:------:|:------:
![](https://i.imgur.com/mvivBxe.jpg) | ![](https://i.imgur.com/T6jhOkX.jpg)
[Von Franken](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/XM0VnLiQ) | []()
![](https://i.imgur.com/fCzWe8V.jpg) | ![]()

### W
[Wangyq](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yQ0SyBLB) | [Watanon](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/jF0XARCA)
:------:|:------:
![](https://i.imgur.com/b4LelOJ.jpg) | ![](https://i.imgur.com/iSOhtcg.jpg)
[Waterkuma](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rUkHjK6C) | [Waymay](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/ucUC3DJI)
![](https://i.imgur.com/jH0V99l.jpg) | ![](https://i.imgur.com/5LpcziB.jpg)

### Y
[Yosola PL](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/ydFAQJLD) | [Yousan](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2QlkRDRQ)
:------:|:------:
![](https://i.imgur.com/5ogAIE4.jpg) | ![](https://i.imgur.com/gcJYgm4.jpg)

### Z
[z282g](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/PM9GSSrS) | []()
:------:|:------:
![](https://i.imgur.com/KwBkUI9.jpg) | ![]()

### \#
[1=2 (oet)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/ac9gBBQA) | []()
:------:|:------:
![](https://i.imgur.com/UCLYin0.jpg) | ![]()

## Multi (Style+Character) Loras

### A
[Amashiro Natsuki (Nachoneko / Nekoha Shizuku - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zN8SHBKA) | Nachoneko | Nekoha Shizuku
:------:|:------:|:------:
![](https://i.imgur.com/5Yr836d.png) | ![](https://i.imgur.com/3tqCwyH.png) | ![](https://i.imgur.com/wrvjm2n.png)

```
nachoneko, paw print, cat ears, cat tail, double-parted bangs, long hair, grey hair, blue eyes
```
```
nekoha shizuku, cat ears, cat tail, hair ornament, side ponytail, very long hair, blue hair, blue eyes
```

### B
[Boukoku Daitouryou (Sasaki Saku - Nijisanji)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/WI1hyCCL) | Sasaki Saku
:------:|:------:
![](https://i.imgur.com/Tv7tGJf.png) | ![](https://i.imgur.com/ulLH6qc.png)

```
sasaki saku, open jacket, white jacket, raglan sleeves, drawstring, dress shirt, pink shirt, bowtie, red bow, miniskirt, plaid skirt, green skirt, single earring, drop earrings, hairclip, hair ornament, ahoge, crossed bangs, single sidelock, hair behind ear, short hair, streaked hair, pink hair, red eyes
```

### F

[FIZ-ROT (Dagger / Zazie - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/2AkkwDxA) | Dagger (†) | Zazie
:------:|:------:|:------:
![](https://i.imgur.com/1R3NnqW.png) | ![](https://i.imgur.com/6JRhiSq.png) | ![](https://i.imgur.com/dIhTqnM.png)

```
dagger \(fizrotart\), fangs, cross hair ornament, swept bangs, twintails, short hair, black hair, red eyes
```
```
zazie, dark skin, egyptian, gold, tattoo, facial tattoo, hairclip, hair ornament, blunt bangs, short hair, black hair, yellow eyes
```

### G
[Gulp (Imp - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fJsQGKxZ) | Imp
:------:|:------:
![](https://i.imgur.com/4tSmvKB.png) | ![](https://i.imgur.com/rcqD3Ef.png)

```
minigirl, demon girl, flat chest, demon wings, demon tail, oni horns, pointy ears, grey skin, sidelocks, twintails, black hair, brown eyes
```

### H
[Hansharu (Happy Bunny - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/rY1E1SLS) | Happy Bunny
:------:|:------:
![](https://i.imgur.com/ke6z0NU.png) | ![](https://i.imgur.com/W9KaBhx.png)

```
happy bunny, loli, large hands, oversized forearms, claws, fewer digits, mask, bald, forehead mark, pink bodysuit, white leotard, elbow gloves, white gloves, white thighhighs, white footwear, red bowtie, heart cutout, rabbit ears, yellow eyes, no pupils
```

### J
[Jungle (Ponpoko - VTuber)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/fVk0nJYJ) | Ponpoko
:------:|:------:
![](https://i.imgur.com/umYm7aF.png) | ![](https://i.imgur.com/HBT1ER1.png)

```
ponpoko \(vtuber\), :3, raccoon girl, raccoon ears, raccoon tail, animal nose, leaf on head, blunt bangs, short hair, grey hair, grey eyes
```

### K
[Kanchiyo (Nagatoro Hayase - Ijiranaide, Nagatoro-san)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LJ0EzSAJ) | Nagatoro Hayase
:------:|:------:
![](https://i.imgur.com/Q5nyGF3.png) | ![](https://i.imgur.com/1PDO2yr.png)

```
nagatoro hayase, fangs, dark skin, earclip, hairclip, asymmetrical bangs, long hair, black hair, brown eyes
```

[Koahri (Ninomae Ina'nis - Hololive)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/SI93iCgK) | Ninomae Ina'nis
:------:|:------:
![](https://i.imgur.com/Pbu8lXR.png) | ![](https://i.imgur.com/8zkhQk2.png)

```
ninomae ina'nis, petite, animal ears, tentacle hair, blunt bangs, very long hair, purple hair, purple eyes
```

### L
[Luicent (Elisia Valfelto - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/LA0gza6a) | Elisia Valfelto
:------:|:------:
![](https://i.imgur.com/ITnxaor.png) | ![](https://i.imgur.com/AONo9Sa.png)

```
elisia valfelto, hair intakes, long hair, brown hair, blue eyes
```

### M
[Mery (Chitanda / Oreki - Hyouka)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/mRMwSZhR) | Chitanda | Oreki
:------:|:------:|:------:
![](https://i.imgur.com/XdAv4es.png) | ![](https://i.imgur.com/4goHr20.png) | ![](https://i.imgur.com/qp6Bmjv.png)

```
1girl, solo, chitanda eru, long hair, black hair, purple eyes
```
```
1boy, solo, oreki houtarou, short hair, brown hair, green eyes
```

[Moritan (Homura / Madoka - Madoka Magica)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/KQknkDAI) | Homura | Madoka
:------:|:------:|:------:
![](https://i.imgur.com/vcfc9nA.png) | ![](https://i.imgur.com/d47lF3u.png) | ![](https://i.imgur.com/LtiWvGf.png)

```
akemi homura, hairband, long hair, black hair, purple eyes, looking at viewer
```
```
kaname madoka, hair ribbon, short hair, short twintails, pink hair, pink eyes, looking at viewer
```

### O
[Orukaniumu (Tsukuyomi Ai – Voiceroid)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/GRkhwIRZ) | Tsukuyomi Ai
:------:|:------:
![](https://i.imgur.com/MUNsEGO.png) | ![](https://i.imgur.com/idBLZS0.png)

```
tsukuyomi ai, loli, blush, sharp teeth, collared dress, pink dress, heart brooch, detached sleeves, sleeves past fingers, bare shoulders, hair bobbles, low twintails, hair between eyes, long hair, brown hair, purple eyes
```

### P
[Porforever (Digitan - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/TZtTFDyI) | Digitan
:------:|:------:
![](https://i.imgur.com/YNPTd6T.png) | ![](https://i.imgur.com/56Rk2aO.png)

```
digitan \(porforever\), loli, fang, wristwatch, dress shirt, collared shirt, pink shirt, bare shoulders, open clothes, off-shoulder, short sleeves, partially unzipped, blue jacket, drawstring, striped socks, shoes, power symbol, electric plug, tail, headphones, lightning bolt symbol, hair between eyes, sidelocks, long hair, white hair, star-shaped pupils, aqua eyes, aqua nails
```

### S
[Seicoh (Usada Pekora - Hololive)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/3F03hbwD) | Usada Pekora
:------:|:------:
![](https://i.imgur.com/VrvhDA3.png) | ![](https://i.imgur.com/eGDgku6.png)

```
usada pekora, one-piece swimsuit, rabbit ears, hair bow, carrot hair ornament, twin braids, twintails, long hair, two-tone hair, blue hair, thick eyebrows, multicolored eyes, yellow eyes, bunny-shaped pupils
```

[Shark'd (Gawr Gura - Hololive)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/zY1QSAzQ) | Gawr Gura
:------:|:------:
![](https://i.imgur.com/ESAs9eS.png) | ![](https://i.imgur.com/KGqaGJy.png)

```
gawr gura, shark tail, blue hoodie, shark hood, hood down, bike shorts, shark hair ornament, sharp teeth, two side up, short hair, streaked hair, white hair, blue eyes
```

[Shennai Misha (Mochizuki Anna - THE iDOLM@ASTER)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/XNsUmDCQ) | Mochizuki Anna
:------:|:------:
![](https://i.imgur.com/ljK0Wrv.png) | ![](https://i.imgur.com/3Tn0wBY.png)

```
mochizuki anna, loli, school uniform, ahoge, hair between eyes, long hair, purple hair, green eyes
```

[So-taro (Eiko Carol - Final Fantasy)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/OR12jSyS) | Eiko Carol
:------:|:------:
![](https://i.imgur.com/ObFAk34.png) | ![](https://i.imgur.com/kiGOUJr.png)

```
eiko carol, loli, red sweater, high collar, puffy long sleeves, red gloves, pink bodysuit, yellow overalls, breastplate, belt, leg belt, hair bow, yellow bow, mini wings, single horn, short hair, purple hair, green eyes
```

### T
[Trente (Brown Succubus-chan - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/nNkgjBwK) | Brown Succubus-chan
:------:|:------:
![](https://i.imgur.com/MR9xz6S.png) | ![](https://i.imgur.com/EUIzm4i.png)

```
brown succubus-chan \(trente\), loli, open mouth, smile, fang, blush, dark skin, maid bikini, frilled bikini, detached collar, maid headdress, highleg bikini, demon wings, demon tail, head wings, ear piercing, pointy ears, twintails, black hair, yellow eyes
```

### U
[Utsusumi Kio (Makaino Ririmu – Nijisanji)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/HJdEQLIL) | Makaino Ririmu
:------:|:------:
![](https://i.imgur.com/HAI59hS.png) | ![](https://i.imgur.com/kZybbAx.png)

```
makaino ririmu, loli, eyepatch, pink jacket, sailor collar, red neckerchief, white shirt, open jacket, off shoulder, sleeves past wrists, pleated skirt, blue skirt, blue belt, red collar, handbag, red bag, leg tattoo, hair ribbon, black ribbon, two side up, long hair, streaked hair, grey hair, red eyes, pointy ears
```

### Y

[Yumegwagwagwa (Sweets Girl - OC)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/bF93yJLA) | Sweets Girl
:------:|:------:
![](https://i.imgur.com/Zb8GgGc.png) | ![](https://i.imgur.com/img42pP.png)

```
sweets girl, emaciated, lolita fashion, lolita hairband, white dress, collar, detached sleeves, white gloves, white thighhighs, hime cut, very long hair, black hair, purple eyes
```

### Z
[Zirba (Illya / Chloe - Fate)](https://mega.nz/folder/2FlygZLC#ZsBLBv4Py3zLWHOejvF2EA/folder/yY8QlbAT) | Illya | Chloe
:------:|:------:|:------:
![](https://i.imgur.com/qU5lNBP.png) | ![](https://i.imgur.com/Fjxxton.png) | ![](https://i.imgur.com/N18T05g.png)

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