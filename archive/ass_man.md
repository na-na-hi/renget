## /ag/ - Ass General

Ass WebM collection (At 1973 WebMs): https://mega.nz/folder/lNYDgQSK#qcuzcmcXStXiDUy0rjon3A

## /tg/ Tits General

Tits WebM collection (At 800 WebMs): https://mega.nz/folder/xEwwxKaD#csYF6cbdr3NId2xAbilZug

## /fg/ - Fellatio General

Fellatio WebM Collection (At 62 WebMs): https://mega.nz/folder/VZ4WER6b#5bMUs2dPUKLPc5JqpZeeeQ

## Miscellaneous

Thread Archive: https://mega.nz/folder/ozElyDxB#Ed0JYq3Ibjb75G8d-rQ4MQ

/gif/ Discord Server: https://discord.gg/QcdKr95R2z

Tools I use:
[Vidupe - Find duplicate WebMs in large collections.](https://github.com/kristiankoskimaki/vidupe)
[WebM Converter - Convert other video file types into WebMs.](https://github.com/WebMBro/WebMConverter)
[LosslessCut - Edit WebMs.](https://github.com/mifi/lossless-cut)
[GChan - Scrape 4chan boards for archiving purposes.](https://github.com/Issung/GChan)

Fancy tools:
[Flowframe - If you have a good GPU, you can use this to increase the FPS of your WebMs.](https://nmkd.itch.io/flowframes)

### Batch command to rename files in sequential order:

@echo off
setlocal enabledelayedexpansion

set "prefix=a"
set "counter=1"

for %%A in (*) do (
    if not "%%A"=="%~nx0" (
        ren "%%A" "!prefix!!counter!%%~xA"
        set /a "counter+=1"
    )
)

endlocal