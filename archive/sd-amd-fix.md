## SD AMD Fix
### Issue
Using the official pytorch installed by `pip install torch --extra-index-url https://download.pytorch.org/whl/rocm5.2`. You will see something like this every time you run the webui: `MIOpen(HIP): Warning [SQLiteBase] Missing system database file: gfx1030_20.kdb Performance may degrade...`. If you dont see this then this fix wont do anything.

The issue is that the MIOpen in the pytorch wheel is compiled in embedded mode, so the kernel db cannot be written to disk (or read from disk). Meaning every time you load or do a new convolution in a session you will need to compile the relevant kernels. So we need to replace it, in the arch4edu repo there is a precompiled MIOpen package we will use. 

### Solution
First make sure you are in the `stable-diffusion-webui` folder.
Then uncomment [arch4edu] and the line under it in: `sudo vim /etc/pacman.conf` (if this is missing then google how to enable arch4edu)
Then install miopen: `sudo pacman -Sy miopen-hip`
Then steal the binary: `cp /opt/rocm/miopen/lib/libMIOpen.so $(python -m site --user-site)/torch/lib/libMIOpen.so`
Or if you use the venv: `cp /opt/rocm/miopen/lib/libMIOpen.so ./venv/lib/python*/site-packages/torch/lib/libMIOpen.so`

This binary is still linked to the other libs in `/opt/rocm/miopen/lib`, so dont uninstall the miopen package.
If your terminal is being spammed with info from MIOpen then set `export MIOPEN_LOG_LEVEL=4`.

### Effect
After the fix you will notice long pauses when first generating in a new resolution, this is MIOpen compiling kernels for that resolution, once it has completed they are saved to disk so all subsequent generations at that resolution start immediately. Disable Live previews if you are running out of VRAM during compilation. 

FYI. Its writing to a `.ukdb` (user kernel db?) database in `~/.cache/miopen/`, there are also some other related files written in `~/.config/miopen/`. Replacing this `.ukdb` with the precompiled `.kdb` doesn't help with compilations. If you want to see what MIOpen is doing, enable logging with `export MIOPEN_LOG_LEVEL=5` (or higher).
