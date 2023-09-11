## /ag/ - Ass General

Ass WebM collection (At 2100 WebMs, or just over 10 hours of content.): https://mega.nz/folder/lNYDgQSK#qcuzcmcXStXiDUy0rjon3A

## /tg/ Tits General

Tits WebM collection (At 1000 WebMs): https://mega.nz/folder/xEwwxKaD#csYF6cbdr3NId2xAbilZug

## /fg/ - Fellatio General

Fellatio WebM Collection (At 62 WebMs): https://mega.nz/folder/VZ4WER6b#5bMUs2dPUKLPc5JqpZeeeQ

## HELP WANTED

Need help with setting up a torrent version of the collection, if anyone from /t/ can lend a hand that'd be cool. I'm not technically illiterate but torrent related stuff isn't an area of expertise for me. Drop by the discord and let me know what I need to do. Seeders will also probably be needed too.

## Miscellaneous

Thread Archive: https://mega.nz/folder/ozElyDxB#Ed0JYq3Ibjb75G8d-rQ4MQ

/gif/ Discord Server: https://discord.gg/QcdKr95R2z

Tools I use:
[Vidupe - Find duplicate WebMs in large collections.](https://github.com/kristiankoskimaki/vidupe)
[WebM Converter - Convert other video file types into WebMs.](https://github.com/WebMBro/WebMConverter)
[LosslessCut - Edit WebMs.](https://github.com/mifi/lossless-cut)
[GChan - Scrape 4chan boards for archiving purposes.](https://github.com/Issung/GChan)
[MP3Tag - Edit WebM metadata.](https://www.mp3tag.de/en/)
[Handbrake - Encoding nonsense, I don't mess with this often.](https://handbrake.fr/)

Fancy tools:
[Flowframe - If you have a good GPU, you can use this to increase the FPS of your WebMs.](https://nmkd.itch.io/flowframes)
[Topaz Video AI - AI upscaling for videos.](https://filecr.com/windows/topaz-video-enhance-ai/?id=064142456300)

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