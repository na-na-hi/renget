# Ass-Man's Rentry Page

## /ag/ - Ass General

Ass WebM collection (At 2300 WebMs, almost 11 hours of content.): https://mega.nz/folder/lNYDgQSK#qcuzcmcXStXiDUy0rjon3A

## /tg/ - Tits General

Tits WebM collection (At 1000 WebMs): https://mega.nz/folder/xEwwxKaD#csYF6cbdr3NId2xAbilZug

Unsorted WebMs (2735 files left to sort through): https://mega.nz/folder/BZg0SYgB#OksCtTLJr_EwDrMnWqm7qA

## /fg/ - Fellatio General

Fellatio WebM Collection (At 170 WebMs): https://mega.nz/folder/VZ4WER6b#5bMUs2dPUKLPc5JqpZeeeQ

## Other collections

Titjob collection (Mostly unsorted): https://mega.nz/folder/hQ5FHTqK#8TTPAk0qkSS3nxywyo_IiQ

Ebony Chick collection: https://mega.nz/folder/ld5wyCwB#FGgpk5MMjXdrfmw0XpLrXw

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
[Mega Desktop App - A lot of good tools for maintaining a collection, and a free 5 GB added to your account.](https://mega.io/)
[Coomer.party - A website that hosts onlyfans content for free.](https://coomer.party/)
[Coom-dl - A tool for scraping coomer.party](https://github.com/notFaad/coom-dl)

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

##Special Thanks to...

Ziplineattack from the discord for sharing his collection. If it weren't for him, the collection would be a lot smaller. Rock on dude.