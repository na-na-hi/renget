## Custom CSS
*Current version: 1.0 | (21.11.2023)*

- - -
####
##### **Changes**
1 - All shadows and border radiuses for shelves are disabled.
2 - Character card radiuses are now consistent with the rest interface (7px).
3 - New table styles.
4 - Placeholder is aligned to the left now.
5 - Scrollbar border radiuses are gone; changed their sizes and colors.
6 - Ugly glossy slowy buttons are gone.

##### **Code**
!!! Copypaste this text from the code block below into `User Settings` -> `Custom CSS` and press `Reload Interface`
```css
table {
background-color: var(--black30a);
border-style: none;
}

tr:nth-child(even) {
background-color: var(--grey10);
}

th {
background-color: rgb(40, 40, 40);
}

th, td {
border: 1px solid rgb(50, 50, 50) !important;
color: var(--grey70)
}

.drawer-content, #right-nav-panel, #top-bar {
box-shadow: none !important;
border-radius: 0px;
}

::-webkit-scrollbar{
width: 14px;
}

::-webkit-scrollbar-thumb {
background-color: rgb(50, 50, 50) !important;
border-radius: 0px;
}


::placeholder {
text-align: left !important;
}

body.big-avatars .avatar img {
border-radius: 7px
}

.hotswapAvatar img, .avatar img
{
box-shadow: none !important;
}

#extensions_settings .inline-drawer-toggle.inline-drawer-header, #extensions_settings2 .inline-drawer-toggle.inline-drawer-header, #user-settings-block h4, h4{
background-image: none !important;
}
```

##### **Images**

**Full Interface (Before):**

![](https://files.catbox.moe/a38nvu.png)

[View full image](https://files.catbox.moe/a38nvu.png)

**Full Interface (After):**

![](https://files.catbox.moe/e5fvyl.png)

[View full image](https://files.catbox.moe/e5fvyl.png)

**Ugly Buttons (Before):**

![](https://files.catbox.moe/vh0xui.png)

**Ugly Buttons (After):**

![](https://files.catbox.moe/cu64sa.png)