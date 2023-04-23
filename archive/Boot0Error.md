###[ERROR] Fatal error: [NXBOOT] Couldn't parse boot0: !
***
If you updated via ChoidujourNX on SX OS then you will have a corrupt BOOT0.
Ensure that your SysNAND is on the same version as your EmuNAND and do the following to resolve the issue:
1. Boot into Hekate.
2. Select **Tools**.
3. Select **Backup eMMC**.
4. Select **eMMC BOOT0 & BOOT1**.
5. Once done, power off your device and connect your SD card to your PC.
In your `/backup/xxxxxxxx/` folder, move your `BOOT0` and `BOOT1` files into the `/backup/xxxxxxxx/restore/` folder.
6. Boot into Hekate and select **Tools**.
7. Select **Restore eMMC**.
8. Select **SD emuMMC Raw Partition** and make sure its **ON**.
9. Select **SD emuMMC BOOT0 & BOOT1**.

Once the process is done, you may boot into Hekate and launch into Atmosphere.

***
######[⬅️ Go Back 🦝](https://rentry.org/SwitchFAQ)
