# Artist name overlay script (Python)
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