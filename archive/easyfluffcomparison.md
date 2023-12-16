# EasyFluff Artist Comparison

## Script for adding artist name captions to images
Taken from https://rentry.org/o5nsi

```python
# This script assumes that all of your files are in PNG format and
# that there is a single unweighted 'by artist' in the entire prompt.

# CONFIG
FONT_PATH = "C:\Windows\Fonts\Arial.ttf"
FONT_SIZE = 60

TEXT_COLOR = "white"
TEXT_STROKE_WIDTH = 6
TEXT_STROKE_COLOR = "black"
TEXT_ORIGIN = (8, 8)

OUTPUT_DIR = "overlay"

KEEP_METADATA = True

# SCRIPT
import sys, os, re
from PIL import Image, ImageDraw, ImageFont
from PIL.PngImagePlugin import PngInfo

artistRegex = re.compile("by (.+?)(?:,|$)")
font = ImageFont.truetype(FONT_PATH, FONT_SIZE)

# make sure the output directory exists and is a directory
if os.path.exists(OUTPUT_DIR):
    if not os.path.isdir(OUTPUT_DIR):
        raise ValueError(f"OUTPUT_DIR ({OUTPUT_DIR}) exists and is not a directory.")
else:
    os.mkdir(OUTPUT_DIR)
 
# get a list of all of the pngs in the current directory
filenames = [x for x in os.listdir('.') if os.path.isfile(x) and x.endswith('.png')]

# create all of the overlayed images
for filename in filenames:
    try:
        print(filename, end=" ", flush=True)
        image = Image.open(filename)
        
        # get the artist name from the metadata
        params = image.text["parameters"]
        match = re.search(artistRegex, params)
        if not match:
            print("!!! artist not found !!!")
            continue
        artist = match.group(1)
        
        # overlay the artist name
        draw = ImageDraw.Draw(image)
        draw.text(TEXT_ORIGIN, artist, fill=TEXT_COLOR, stroke_fill=TEXT_STROKE_COLOR, stroke_width=TEXT_STROKE_WIDTH, font=font)
        
        # create a new PngInfo object with the metadata from current file
        metadata = PngInfo()
        if KEEP_METADATA:
            for key, value in image.text.items():
                metadata.add_text(key, value)
        
        image.save(f"{OUTPUT_DIR}/{os.path.basename(filename)}", pnginfo=metadata)
        print(f"by {artist}")
    except Exception as e:
        print(repr(e))
```

## Base SD 1.5
EasyFluff V11 - https://mega.nz/folder/kigBCaYZ#2x3Wy44-3h05fVodrYlBcQ/folder/R6xi0YJQ

## Top 1000 Artists
1) EasyFluff V11 - https://mega.nz/folder/kigBCaYZ#2x3Wy44-3h05fVodrYlBcQ/folder/8ygQGQLL
2) Currently being worked on by Hyena anon, covers the following wildcard: https://files.catbox.moe/hua623.txt

## The rest
Made while making sure not to cover the same artists as 2) above. There may be overlap with 1), however.

List of all e621 artists with at least 10 posts (truncating the number of artists immensely already), sorted by number of posts on e621 and without conditional dnp, unknown artist, third-party edit, sound warning and anonymous artist: https://files.catbox.moe/mjs8jh.txt

Same as above, but without the artists already covered by the top 1000 above: https://files.catbox.moe/ztq0lp.txt
It should be noted that the splits down below were made from this text file, with the current order being maintained. This means that the splits below represent, for example, artist no. 1 to 1000 with the highest post count, even if the galleries are in alphabetical order.

If you want to pitch in, keep in mind to not sort the file alphabetically until you reduced it to the lines you want to test. Sorting first, then splitting the file will cause overlaps.


**#1 to #1000** - EasyFluff V10.1 used
Grids (100 per grid): https://pixeldrain.com/l/2LNF8gXG
Artists alphabetically: https://pixeldrain.com/l/z6k74Xd3

**#1001 to 2000** - EasyFluff V10.1 used
Grids (100 per grid): https://pixeldrain.com/l/zkHtm1U3
Artists alphabetically: https://pixeldrain.com/l/fuhQbuyq

**#2001 to 3000** - EasyFluff V10.1 used
Grids (100 per grid): https://pixeldrain.com/l/qqLZwQtf
Artists alphabetically: https://pixeldrain.com/l/tCcukFZR

## Artists that do humans well
https://files.catbox.moe/32x54o.jpg 
Prompt: (by <artist>:1.2), a female (elf:1.1) girl worshipping a (canine penis:1.1), slim body, (blue eyes),(blonde ponytail), humanoid pointy ears, nipples,( penis on face:1.1), (penis awe:1.1), penis worship, disembodied penis, erection, female focus, human on anthro,
BREAK (canine penis, sheath, big balls, knot, big penis, red penis:1.2), (musk, musk clouds, musky cock,:1.1)
Negative prompt: boring_e621_fluffyrock_v4, (humanoid penis, fellatio, penis in mouth,:1.1) (black nose:1.0)

## Male-centric artist examples
full resolution: https://files.catbox.moe/1wk85z.jpg
base prompt: https://files.catbox.moe/th0k0m.png