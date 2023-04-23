```python
#!/usr/bin/env python3
# /h/ was here

# modified to work with ckpt files and newer version of torch

import io
import zipfile
import argparse
import pickle
import collections
import torch
import numpy
import _codecs

def encode(*args):
    out = _codecs.encode(*args)
    print(f'encode({args}) = {out}')
    return out

class RestrictedUnpickler(pickle.Unpickler):
    def persistent_load(self, saved_id):
        assert saved_id[0] == 'storage'
        return torch.ByteStorage()

    def find_class(self, module, name):
        print(f'find class {module} {name}')
        if module == 'collections' and name == 'OrderedDict':
            return getattr(collections, name)
        if module == 'torch._utils' and name == '_rebuild_tensor_v2':
            return torch._utils._rebuild_tensor_v2
        if module == 'torch' and name in ['FloatStorage', 'HalfStorage']:
            return torch.FloatStorage
        if module == 'numpy.core.multiarray' and name == 'scalar':
            return numpy.core.multiarray.scalar
        if module == 'numpy' and name == 'dtype':
            return numpy.dtype
        if module == '_codecs' and name == 'encode':
            return encode
        # Forbid everything else.
        raise pickle.UnpicklingError("global '%s/%s' is forbidden" %
                                     (module, name))

def restricted_loads(s):
    """Helper function analogous to pickle.loads()."""
    return RestrictedUnpickler(io.BytesIO(s)).load()

# To test that it catches this RCE:
# restricted_loads(b"cos\nsystem\n(S'echo hello world'\ntR.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('file', type=str)
    args = parser.parse_args()

    # unzip model.ckpt archive/data.pkl
    with zipfile.ZipFile(args.file, 'r') as ckf:
        with ckf.open('archive/data.pkl', 'r') as f:
            st = f.read()
    d = restricted_loads(st)
    print(dir(d))
    print(d.keys())
    print(d['callbacks'])
```

### Usage
Paste the script above to a file named "safeunpickle.py" then run:

`python safeunpickle.py "path/to/file.ckpt"`

Replace the `path/to/file.ckpt` with the actual path to your ckpt file.
