# Indulging in the pleasures of VR

## An introduction

### What this guide is

I wrote a short post recently on my VR indulgement workflow, and was
asked to write a more detailed version. This is a brief description of a
full-pipeline (obtain/process/serve/watch) workflow that works well for
me, and probably for anyone else.

### Short disclaimer

VR porn is awesome. You'll know when you try it. It is incredibly potent
and feels like you are hacking your brain. It is hyperreal; it is
somehow better than the real thing. That makes it a double-edged sword,
know what you're getting into.

## Choosing a viewer

I won't overcomplicate this because it's out of the scope of this guide.
Instead I will just give a short summary. It is up to you to pick your
viewer and an app to play movies from network streams.

### My quick recommendations:

- Patrician's choice: Valve Index. Hands down the best. But expensive.
- Midrange choice: Oculus. Need I say more?
- If you're broke and lazy, use your smartphone with a \$20 cardboard +
  strap. Remember that you get what you pay for.

## Getting movies

### PornoLab

PornoLab is my source of choice for obtaining movies. They are
semi-private and require maintaining a ratio. For the most efficient
browsing, search on the forum topic specific to 3D/Virtual Reality
videos.

### RARBG

A public tracker with a rather limited selection of movies, potentially
useful as a fallback.

## Encoding movies (optional)

If you are satisfied with the typical \~16GB H264 5K movies released by
most studios, you can skip this step.

However, if you think you can do better, you're probably right. Below
are the encoding settings I use. These settings pretty reliably get me
2048p (2048x2048 per eye) encodes between 2-5 GB per hour, or about
20-30% the size of the originals.

### My encode settings

- Encoder: x265 10bit
- CRF: 20
- Preset: Slow
- Additional: Two-Pass on
- Resolution: 4096x2048 (2048p)
- Audio: Passthrough

### Handbrake preset

Here is a [pastebin](https://web.archive.org/web/20230512234422/https://pastebin.com/raw/PyLcEqVF) of my HandBrake preset.

### Encode with HandBrakeCLI

I run encodes on my server using the HandBrake CLI:

``` bash
HandBrakeCLI --preset-import-file "~/Handbrake/HQ 4096x2048 VR180 x265.json" -Z "HQ 4096x2048 VR180 x265" -i input_movie_vr.mp4 -o output_movie_vr.mkv
```

## Serving movies

If you have a movie collection, you probably don't want to store your
movies directly on your device but rather on a NAS of some sort. I
recommend simply setting up a basic Raspberry Pi + HDD based file
server. Alternatively, Backblaze B2 is both fast and affordable.

## Watching movies

### Real headsets

For any real headset: use your PCVR setup and standard movie players.

### Cheap mobile VR

Use the HeadVR app, it is VLC with VR output, and supports network
streams well.