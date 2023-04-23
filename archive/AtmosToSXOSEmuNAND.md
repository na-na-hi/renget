###How to migrate your Atmosphere emuNAND to SXOS (file based)
!!! Danger SXOS only supports firmware version 11.0.0 or lower.
####What you'll need:
***
SXOS | SXOS license 
:--: | :--:
[Download](https://sx.xecuter.com/download/SXOS_beta_v3.1.0.zip) | Your license.dat file


####Migration Steps:
***
Create a folder named `sxos` in the root of your SD card, and create a second folder within the `sxos` folder named `emunand`.
You should now have a folder structure that looks like this:
`/sxos/emunand/`.

Now access the following folder `/emuMMC/XXXX/eMMC/`. From there, rename the files inside like this:


```
BOOT0 -> boot0.bin

BOOT1 -> boot1.bin

00 -> full.00.bin

01 -> full.01.bin

02 -> full.02.bin

03 -> full.03.bin

04 -> full.04.bin

05 -> full.05.bin

06 -> full.06.bin

07 -> full.07.bin
```

Once you're done copy everything you renamed to the folder `/sxos/emunand/`.
After that go back to the folder `/emuMMC/XXXX/` and rename the folder labeled `Nintendo` to `Emutendo`. Once you're done, move that folder back to the root of your SD card.
Finally place your `license.dat` and your `boot.dat` files in the root of your SD card.
Now you will be able to boot into your emuNAND using SXOS.

***
######[⬅️ Go Back 🦝](https://rentry.org/CFWGuides)
