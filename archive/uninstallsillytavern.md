#How to fully uninstall SillyTavern on Windows 10!!!

**Feel free to "fork" this guide and make it more proper!!! I don't know what I'm talking about!!!**

This guide is for people who used up *8 GB* just installing SillyTavern on a computer with basically zero coding things already installed (Git etc.)

Here's what I did! I cleared up roughly 8 GB so I'm assuming everything's perfectly deleted and gone!

1. Delete the SillyTavern folder
2. Uninstall node via `Apps & features/add and remove programs`
3. Uninstall all Python instances that were installed around the day I installed Silly Tavern via `Apps & features/add and remove programs`
4. Delete ProgramData/chocolatey (I think it's safe??? An anon said it's the normal way to delete it i think?) (this was installed when installing node)
5. uninstall visual studio build tools (this and the next two were installed by node in the "Tools for Native Modules" part!) via `Apps & features/add and remove programs`
6. uninstall visual studio installer via `Apps & features/add and remove programs`
7. uninstall git via `Apps & features/add and remove programs`

now, putting together the info in the Apps & features/add and remove programs settings in windows 10, and stuff in windirstat, it doesn't LOOK like most of the stuff up there adds up to 8 GB... but it does somehow!!! i checked `settings > storage` afterwards and idk!!! it just werks!!!

I have 8 GB of free space freed up now!!! yay!!

![](https://files.catbox.moe/y9ei2b.png)