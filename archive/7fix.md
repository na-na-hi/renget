# Windows 7 Compatibility Fixes (WIP)
*The majority of compatibility issues in Windows 7 are caused by simple version checks designed to preemptively inhibit use out of a worry future features might break compatibility later on. This is not the fault of developers, but rather fearmongering from Microsoft causing them to assume maintaining legacy support would be a monumental task.*
*In other cases it is due to simple API extensions which could have been easily backported in an update*
*For now, there are a handful of easy workarounds which should get software up and running*

[TOC3]
### CreateFile2 Error
This tends to be a problem in DX12 games (notably Unreal Engine titles)
![](https://i.imgur.com/eAYW8M7.png)
- **Step 1:**
Download Explorer Suite so you can edit the .exe
https://ntcore.com/?page_id=388
- **Step 2:**
Drag your .exe into CFF Explorer
(For Unreal games this should be in /Binaries/Win64)
If it asks you to load only the first 40mb select NO
- **Step 3:**
Navigate to **`Import Directory => KERNEL32.dll  => Createfile2`**
Change **`CreateFile2`** to **`CreateFileW`**
Save
![](https://i.imgur.com/zgUNj16.png)
- **Your program should now be working!**
![](https://i.imgur.com/H33FJvg.png)
### DX12-only Games
In addition to using the fix above, some titles are DirectX12 *exclusive* will have to be tricked into using the Vulkan renderer
- **Step 1:**
Download and extract `dxvk-2.2.tar.gz` from https://github.com/doitsujin/dxvk/releases/tag/v2.2
- **Step 2:**
Copy all files from the `/x64` folder and paste them into the `/Binaries/Win64` folder of your game (Or equivalent .dll Binaries folder)
### api-ms-win Error
This is common on applications which require a newer version of Python (3.0+) such as Blender
- **Step 1:**
Download and extract https://github.com/nalexandru/api-ms-win-core-path-HACK/releases/tag/0.3.1
- **Step 2:**
Copy the **x86** dll into `C:\Windows\SysWOW64` and the **x64** dll into `C:\Windows\System32`
Restart your Computer
### Version Blocks/Anything Else
VxKex is essentially 'forward compatibility' which allows you to spoof your system to appear as Windows 10 to a program and/or utilize W10+ exclusive .dll extensions to get programs running
- **Step 1:** Download `KexSetup_x64Rel.exe` from https://github.com/vxiiduu/VxKex/releases/tag/Version0.0.0.3
Complete the installer and restart your computer
- **Step 2:**
Right click and open properties on any executable, navigate to the VxKex tab
Select whether you want VxKex .dll extensions, W10 spoofing, or both and apply
![](https://i.imgur.com/NXl5t3I.png)
Note: VxKex is experimental, enabling VxKex extensions may create new errors on programs that might work without needing it