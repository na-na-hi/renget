```py
import sys
import os
from glob import glob

def model_hash(filename):
    try:
        with open(filename, "rb") as file:
            import hashlib
            m = hashlib.sha256()

            file.seek(0x100000)
            m.update(file.read(0x10000))
            return m.hexdigest()[0:8]
    except FileNotFoundError:
        return 'NOFILE'


def main(dirpth):
  for filepath in glob(f'{dirpth}/*.ckpt'):
    filename = os.path.basename(filepath)
    model = model_hash(filepath)
    print(f'{model}  {filename}')

if __name__ == "__main__":
  main(sys.argv[1])
```

`model-list.py`とか名前つけて↑のコードを保存

`python model-list.py models/Stable-diffusion`
みたいに使う

`python model-list.py models/Stable-diffusion > model-list.txt`
ってやると結果が`model-list.txt`に保存されます
