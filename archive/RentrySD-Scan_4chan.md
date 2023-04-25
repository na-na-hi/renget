#Scan 4chan archives for Stable Diffusion related threads:

> - [ ] Wednesday, 1 March 2023
>> - Small update to `strip_links.py` to detect and fix broken addresses.

`Search_Pages.py`
!!!note Change the value of `current_page` to how many pages back you want to scan 5.
```
import os
import time
import requests
from bs4 import BeautifulSoup


def save_links_to_file(links):
    """Save links to a file named `links_saved.txt`."""
    if not links:
        return

    with open("links_saved.txt", "a") as file:
        for link in links:
            file.write(link + "\n")


def remove_duplicate_links():
    """Remove duplicate links from the `links_saved.txt` file."""
    with open("links_saved.txt", "r") as file:
        lines = file.readlines()

    unique_links = set()
    with open("links_saved.txt", "w") as file:
        for line in lines:
            link = line.strip()
            if link not in unique_links:
                unique_links.add(link)
                file.write(link + "\n")

    num_duplicates = len(lines) - len(unique_links)
    if num_duplicates > 0:
        print(f"Removed {num_duplicates} duplicate links from links_saved.txt.")


def get_links_from_page(url):
    """Get all the links starting with prefixes listed in `take_only.txt` found on the given URL."""
    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"}
    try:
        response = requests.get(url, headers=headers, timeout=25)
        response.raise_for_status()
    except (requests.exceptions.Timeout, requests.exceptions.ConnectionError, requests.exceptions.HTTPError):
        print(f"Failed to connect to {url}")
        return []

    soup = BeautifulSoup(response.content, "html.parser")
    links = []
    with open('take_only.txt', 'r') as f:
        valid_prefixes = f.read().splitlines()
    for a_tag in soup.find_all("a", href=True):
        link = a_tag["href"]
        for prefix in valid_prefixes:
            if link.startswith(prefix):
                if "/#" in link:
                    link = link.split("/#")[0]
                if link not in links:
                    links.append(link)
                break

    return links



def main():
    with open("scan_sites.txt") as f:
        sites = [line.strip() for line in f]

    links = set()
    num_skipped = 0

    for site in sites:
        current_page = 5

        while True:
            search_url = f"{site}/page/{current_page}/"
            print(f"Searching for links on {search_url} ...")
            new_links = get_links_from_page(search_url)
            print(f"Found {len(new_links)} new links.")
            for link in new_links:
                if link in links:
                    num_skipped += 1
                    continue
                links.add(link)
                save_links_to_file([link])
            if num_skipped > 0:
                print(f"Skipped {num_skipped} already saved links.")
                num_skipped = 0
            current_page -= 1
            if current_page < 1:
                break

            time.sleep(1)  # wait a bit before searching the next page

    remove_duplicate_links()
    print("Finished saving links.")


if __name__ == "__main__":
    if not os.path.isfile("links_saved.txt"):
        open("links_saved.txt", "w").close()

    main()
```

**Needs:**
`scan_sites.txt`
!!!note Search settings for 4chan archives. Edit as you want. Change date in links. 
```
https://archived.moe/_/search/subject/AI%20DEGENerated/start/2023-02-19/page/
https://archived.moe/_/search/subject/Diffusion%20General/start/2023-02-19/page/
https://archived.moe/_/search/subject/AI-generated/start/start/2023-02-19/page/
https://archived.moe/_/search/subject/AI%20Dynamic%20Storytelling/start/2023-02-19/page/
https://desuarchive.org/_/search/subject/AI%20DEGENerated/start/2023-02-19/page/
https://desuarchive.org/_/search/subject/Diffusion%20General/start/2023-02-19/page/
https://desuarchive.org/_/search/subject/AI-generated/start/2023-02-19/page/
https://desuarchive.org/_/search/subject/AI%20Dynamic%20Storytelling/start/2023-02-19/page/
https://arch.b4k.co/_/search/subject/AI%20DEGENerated/start/2023-02-19/page/
https://arch.b4k.co/_/search/subject/Diffusion%20General/start/2023-02-19/page/
https://arch.b4k.co/_/search/subject/AI-generated/start/2023-02-19/page/
https://arch.b4k.co/_/search/subject/AI%20Dynamic%20Storytelling/start/2023-02-19/page/
https://archive.palanq.win/_/search/subject/AI%20DEGENerated/start/2023-02-19/page/
https://archive.palanq.win/_/search/subject/Diffusion%20General/2023-02-19/page/
https://archive.palanq.win/_/search/subject/AI-generated/start/2023-02-19/page/
https://archive.palanq.win/_/search/subject/AI%20Dynamic%20Storytelling/start/2023-02-19/page/
```

`take_only.txt`
!!!note No need to edit. Just all board.
```
https://archived.moe/3/thread/
https://archived.moe/a/thread/
https://archived.moe/aco/thread/
https://archived.moe/adv/thread/
https://archived.moe/an/thread/
https://archived.moe/asp/thread/
https://archived.moe/b/thread/
https://archived.moe/bant/thread/
https://archived.moe/biz/thread/
https://archived.moe/c/thread/
https://archived.moe/can/thread/
https://archived.moe/cgl/thread/
https://archived.moe/ck/thread/
https://archived.moe/cm/thread/
https://archived.moe/co/thread/
https://archived.moe/cock/thread/
https://archived.moe/con/thread/
https://archived.moe/d/thread/
https://archived.moe/diy/thread/
https://archived.moe/e/thread/
https://archived.moe/f/thread/
https://archived.moe/fa/thread/
https://archived.moe/fap/thread/
https://archived.moe/fit/thread/
https://archived.moe/fitlit/thread/
https://archived.moe/g/thread/
https://archived.moe/gd/thread/
https://archived.moe/gif/thread/
https://archived.moe/h/thread/
https://archived.moe/hc/thread/
https://archived.moe/his/thread/
https://archived.moe/hm/thread/
https://archived.moe/hr/thread/
https://archived.moe/i/thread/
https://archived.moe/ic/thread/
https://archived.moe/int/thread/
https://archived.moe/jp/thread/
https://archived.moe/k/thread/
https://archived.moe/lgbt/thread/
https://archived.moe/lit/thread/
https://archived.moe/m/thread/
https://archived.moe/mlp/thread/
https://archived.moe/mlpol/thread/
https://archived.moe/mo/thread/
https://archived.moe/mtv/thread/
https://archived.moe/mu/thread/
https://archived.moe/n/thread/
https://archived.moe/news/thread/
https://archived.moe/o/thread/
https://archived.moe/out/thread/
https://archived.moe/outaoc/thread/
https://archived.moe/p/thread/
https://archived.moe/po/thread/
https://archived.moe/pol/thread/
https://archived.moe/pw/thread/
https://archived.moe/q/thread/
https://archived.moe/qa/thread/
https://archived.moe/qb/thread/
https://archived.moe/qst/thread/
https://archived.moe/r/thread/
https://archived.moe/r9k/thread/
https://archived.moe/s/thread/
https://archived.moe/s4s/thread/
https://archived.moe/sci/thread/
https://archived.moe/soc/thread/
https://archived.moe/sp/thread/
https://archived.moe/spa/thread/
https://archived.moe/t/thread/
https://archived.moe/tg/thread/
https://archived.moe/toy/thread/
https://archived.moe/trash/thread/
https://archived.moe/trv/thread/
https://archived.moe/tv/thread/
https://archived.moe/u/thread/
https://archived.moe/v/thread/
https://archived.moe/vg/thread/
https://archived.moe/vint/thread/
https://archived.moe/vip/thread/
https://archived.moe/vm/thread/
https://archived.moe/vmg/thread/
https://archived.moe/vp/thread/
https://archived.moe/vr/thread/
https://archived.moe/vrpg/thread/
https://archived.moe/vdt/thread/
https://archived.moe/vt/thread/
https://archived.moe/w/thread/
https://archived.moe/wg/thread/
https://archived.moe/wsg/thread/
https://archived.moe/wsr/thread/
https://archived.moe/x/thread/
https://archived.moe/xs/thread/
https://archived.moe/y/thread/
https://archived.moe/de/thread/
https://archived.moe/rp/thread/
https://archived.moe/talk/thread/
https://desuarchive.org/a/thread/
https://desuarchive.org/aco/thread/
https://desuarchive.org/an/thread/
https://desuarchive.org/c/thread/
https://desuarchive.org/cgl/thread/
https://desuarchive.org/co/thread/
https://desuarchive.org/d/thread/
https://desuarchive.org/fit/thread/
https://desuarchive.org/g/thread/
https://desuarchive.org/his/thread/
https://desuarchive.org/int/thread/
https://desuarchive.org/k/thread/
https://desuarchive.org/m/thread/
https://desuarchive.org/mlp/thread/
https://desuarchive.org/mu/thread/
https://desuarchive.org/q/thread/
https://desuarchive.org/qa/thread/
https://desuarchive.org/r9k/thread/
https://desuarchive.org/tg/thread/
https://desuarchive.org/trash/thread/
https://desuarchive.org/vr/thread/
https://desuarchive.org/wsg/thread/
https://desuarchive.org/desu/thread/
https://desuarchive.org/meta/thread/
https://arch.b4k.co/g/thread/
https://arch.b4k.co/mlp/thread/
https://arch.b4k.co/qb/thread/
https://arch.b4k.co/v/thread/
https://arch.b4k.co/vg/thread/
https://arch.b4k.co/vm/thread/
https://arch.b4k.co/vmg/thread/
https://arch.b4k.co/vp/thread/
https://arch.b4k.co/vrpg/thread/
https://arch.b4k.co/vst/thread/
https://arch.b4k.co/meta/thread/
https://archive.palanq.win/bant/thread/
https://archive.palanq.win/c/thread/
https://archive.palanq.win/con/thread/
https://archive.palanq.win/e/thread/
https://archive.palanq.win/i/thread/
https://archive.palanq.win/n/thread/
https://archive.palanq.win/news/thread/
https://archive.palanq.win/out/thread/
https://archive.palanq.win/p/thread/
https://archive.palanq.win/pw/thread/
https://archive.palanq.win/qst/thread/
https://archive.palanq.win/toy/thread/
https://archive.palanq.win/vip/thread/
https://archive.palanq.win/vp/thread/
https://archive.palanq.win/vt/thread/
https://archive.palanq.win/w/thread/
https://archive.palanq.win/wg/thread/
https://archive.palanq.win/wsr/thread/
https://archive.palanq.win/meta/thread/
```

**Saves to:** `links_saved.txt`

#Strip links from the saved threads:

`strip_links.py`
!!!note Don't need to edit. It compares found links to the one on my rentry and saves what is new.
```
import os
import re
import requests
from bs4 import BeautifulSoup

def fix_links(text):
    # Regular expression to match common ways of bypassing link regulations
    pattern = re.compile(r"(https?://\S+\.\S+)")
    
    # Replace common link bypasses with actual links
    text = re.sub(r"(https?://\S+)\s*<dot>\s*(\S+)", r"\1.\2", text)
    text = re.sub(r"(https?://\S+)\s*\(dot\)\s*(\S+)", r"\1.\2", text)
    text = re.sub(r"(https?://\S+)\s*\[dot\]\s*(\S+)", r"\1.\2", text)
    text = re.sub(r"(https?://\S+)\s*{dot}\s*(\S+)", r"\1.\2", text)
    text = re.sub(r"(https?://\S+)\s*\|\s*(\S+)", r"\1.\2", text)
    text = re.sub(r"(https?://\S+)\s*space\s*(\S+)", r"\1/\2", text)
    
    # Replace spaces in links with %20
    text = re.sub(r"(https?://\S+)\s+(\S+)", r"\1%20\2", text)
    
    return text
    
# STEP 1: Delete old files and create new ones
files = ['links_found.txt', 'links_old.txt', 'links_new.txt', 'skipped.txt', 'skipped_2nd.txt', 'skipped_3rd.txt']
for file in files:
    if os.path.exists(file):
        os.remove(file)
    open(file, 'w').close()

print('Step 1: Deleted old files and created new ones')

# STEP 2: Find links on main website and save to links_old.txt
main_site = open('main_site.txt').read().strip()
response = requests.get(main_site, headers={'User-Agent': 'Mozilla/5.0'})
soup = BeautifulSoup(response.content, 'html.parser')
with open('links_old.txt', 'w') as f:
    for link in soup.find_all('a', href=True):
        href = link['href'].strip()
        if href.startswith('https://') or href.startswith('magnet:?xt'):
            # Fix the link and write it to the file
            fixed_href = fix_links(href)[0] # Assume that there is only one link per anchor tag
            f.write(fixed_href + '\n')

print('Step 2: Found links on main website and saved to links_old.txt')

# STEP 3: Find links on secondary websites and save to links_found.txt
sites = open('sites.txt').read().strip().split()
skip_sites = open('skip_sites.txt').read().strip().split()
skip_extensions = open('skip_extensions.txt').read().strip().split()
force_sites = open('force_sites.txt').read().strip().split()

num_skipped_links = 0
num_added_links = 0
for site in sites:
    if site in skip_sites:
        print(f'Skipping site {site}...')
        continue
    try:
        response = requests.get(site, headers={'User-Agent': 'Mozilla/5.0'}, timeout=25)
        soup = BeautifulSoup(response.content, 'html.parser')
        added_links = []
        skipped_links = []
        for link in soup.find_all('a', href=True):
            href = link['href'].strip()
            if any(href.endswith(ext) for ext in skip_extensions):
                num_skipped_links += 1
                skipped_links.append(href)
                continue
            if href.startswith('https://') or href.startswith('magnet:?xt'):
                domain = re.search(r'(?<=https://)(.+?)(?=/|$)', href)
                if domain and domain.group(1) in force_sites:
                    added_links.append(href)
                    num_added_links += 1
                elif href not in open('links_old.txt').read() and \
                     not any(href.startswith(skip) for skip in skip_sites) and \
                     not any(href.startswith(old) or href.startswith(old + '/') for old in open('links_old.txt').read().split()):
                    fixed_link = fix_links(href)
                    added_links.append(fixed_link)
                    num_added_links += 1
                else:
                    num_skipped_links += 1
                    skipped_links.append(href)
        with open('links_found.txt', 'a') as f:
            for link in added_links:
                f.write(link + '\n')
        print(f"Site {site} - Added {len(added_links)} links. Skipped {len(skipped_links)} links.")
    except Exception as e:
        print(f'Error: Could not connect to site {site}')
        print(e)
        with open('skipped.txt', 'a') as f:
            f.write(site + '\n')

print(f'Step 3: Found links on secondary websites. Skipped {num_skipped_links} links. Added {num_added_links} links.')



# STEP 4: Copy links from links_found.txt to links_new.txt
with open('links_found.txt', 'r') as f:
    found_links = [line.strip() for line in f]

new_links = []
skipped_links = []
for link in found_links:
    if link in open('links_old.txt').read():
        skipped_links.append(link)
    elif link not in new_links:
        new_links.append(link)

with open('links_new.txt', 'a') as f:
    for link in new_links:
        f.write(link + '\n')

print(f'Step 4: Copied {len(new_links)} new links from links_found.txt to links_new.txt')

if skipped_links:
    with open('skipped_2nd.txt', 'w') as f:
        f.write('\n'.join(skipped_links))

    print(f'Skipped {len(skipped_links)} duplicate links. '
          f'They were saved to skipped_2nd.txt')

else:
    print('No duplicate links were found.')

# STEP 5: Remove duplicates and sort links_new.txt
with open('links_old.txt') as old_file:
    old_links = old_file.read().splitlines()

with open('links_found.txt') as new_file:
    added_links = []
    skipped_links = []
    for link in new_file:
        link = link.strip()
        if link not in old_links:
            added_links.append(link)
        else:
            skipped_links.append(link)

with open('links_new.txt', 'w') as f:
    for link in sorted(set(added_links)):
        f.write(link + '\n')

if len(skipped_links) > 0:
    with open('skipped_3rd.txt', 'w') as f:
        for link in skipped_links:
            f.write(link + '\n')
    print(f'Skipped {len(skipped_links)} duplicate links. See skipped_3rd.txt for details.')
else:
    if os.path.exists('skipped_3rd.txt'):
        os.remove('skipped_3rd.txt')
    print('No duplicate links were found.')

if len(added_links) > 0:
    print(f'Added {len(added_links)} new links.')
else:
    print('No new links were found.')

print('Step 5: Completed')
```

**Needs**:

`main_site.txt`
!!!note There you put links to the sites you want copmpare the ones found on 4chan's archives.
```
https://rentry.org/RentrySD
```

`sites.txt` = `links_saved`
!!!note Rename the file, or edit the code to save it/use the correct one. Named differently for backups.

`skip_extensions.txt`
!!!note Put what links to ignore. It just uses the past part of the links. Does not look for the whole links. And python, so size matters.
```
.jpg
.JPG
.png
.PNG
.webm
.WEBM
.gif
.GIF
```

`force_sites.txt`
!!!note Those are the prefix links for whitelisted links. (forced to save anyway)
```
https://catbox.moe
https://litterbox.catbox.moe
https://pixeldrain.com
https://catgirlsare.sexy
https://anopic.net
https://uguu.se
https://file.io
https://ufile.io
https://gofile.cc
https://anonymfile.com
https://anonfiles.com
https://zippyshare.com
https://zipshare.com
https://mediafire.com
https://mega.nz
https://imagevenue.com
https://wupfile.com
https://emload.com
https://tmpfiles.org
https://imgdb.net
```

`skip_sites.txt`
!!!note Edit as you want. The sites you do not want at all. First 4 are the archive sites. To not create unnecessary copies.
```
https://archived.moe
https://desuarchive.org
https://arch.b4k.co
https://archive.palanq.win
https://www.google.com/searchbyimage?
https://archiveofsins.com
https://danbooru.donmai.us
https://gelbooru.com
https://twitter.com
https://mobile.twitter.com
https://www.pixiv.net
https://www.youtube.com
https://youtu.be
https://www.tiktok.com
https://youtube.com
https://yugipedia.com
https://youpoll.me
https://www.twitch.tv
https://www.patreon.com
https://www.deviantart.com
https://www.artstation.com
https://vocaroo.com
https://voca.ro
https://rule34.xxx
https://nhentai.net
https://m.youtube.com
https://litter.catbox.moe
https://m.twitch.tv
https://lexica.art
https://imgur.com
https://i.imgur.io
https://hanime.tv
https://exhentai.org
https://en.wikipedia.org
https://en.m.wikipedia.org
https://e621.net
https://e-hentai.org
https://boards.4channel.org
https://boards.4chan.org
https://aetherroom.club
```

**It creates**:
!!!warning All of those will be deleted every time you start the script.
- `links_found.txt` - All links found (before compared to main site).
- `links_new.txt` - Links after the comparison.
- `links_old.txt` - Links used for comparison (taken for the sites listed in `main_site.txt`).
- `skipped.txt` - This is list of thread it was not able to connect, so you will be able to retry it later.
- `skipped_2nd.txt` - This is list of links that was "erased" when comparing them to the sites listed in `main_site.txt`.
- `skipped_3rd.txt` - This is list of links that was removed from `links_new.txt` due to duplication.

##Requirements
`requirements.txt`
```
beautifulsoup4
requests
```