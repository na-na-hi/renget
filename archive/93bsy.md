Regex file scanner script
```python
"""
This script scans the source text file for lines which match any of a
user-provided set of regex patterns, and if that line is not already in the
archive, copy that line into the archive file.
"""
import re
import os

# This is the file you want the script to read
source_filepath = '~/.bash_history'

# This is the file you want the script to copy matching lines into
# This file will be created if it doesn't already exist
archive_filepath = './archive.txt'

# This is the file which lists all of your regex patterns
patterns_filepath = './patterns.txt'

# ---------- #

# Load the archive so it can later be tested against for duplicate lines
archive = []
with open(os.path.expanduser(archive_filepath), 'a+') as archive_file:
    archive_file.seek(0)
    archive = [line.strip() for line in archive_file]

# Load the regex patterns
patterns = []
with open(os.path.expanduser(patterns_filepath), 'r') as patterns_file:
    patterns_file.seek(0)
    patterns = [line.strip() for line in patterns_file]

# Look for new matching lines in the source file
with open(os.path.expanduser(source_filepath), 'r') as source_file:
    for line in source_file:
        line = line.strip()
        for pattern in patterns:
            if re.search(pattern, line) and line not in archive:
                archive.append(line)
                break

# Save the updated archive
with open(os.path.expanduser(archive_filepath), 'w') as archive_file:
    archive_file.writelines(line + "\n" for line in archive)

```

Example pattern file with a few random patterns:
```
^source.*activate
echo
python

```