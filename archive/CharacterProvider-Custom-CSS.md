## Minimalistic Custom CSS
*Current version: 1.4 | (21.11.2023)*
*No backgrounds only. Author's note window will show through AI settings due to opacity.*
- - -
####
#### Result:
![](https://files.catbox.moe/587ecp.gif)

##### **Changes**
> Changes were made on SillyTavern 1.10.5
1 - All shadows and border radiuses for shelves are disabled.
2 - Character card border radiuses are now consistent with the rest of the interface (7px).
3 - New table styles.
4 - Placeholder is aligned to the left now.
5 - Scrollbar border radiuses are fixed; changed their sizes and colors.
6 - Ugly glossy glowy buttons are gone (for good).
7 - Chat text margings are lightly bigger now.
8 - Bg color changed to be the same as color as the UI.
9 - Range headings and the Character's image in card settings are aligned to the left now.
10 - Annoying proxy warning is disabled.
11 - Smaller sidebars.
12 - Bigger send field. 
13 - Sidebars have hover opacity.

##### **Code**
!!! Copypaste this text from the code block below into `User Settings` -> `Custom CSS` and press `Reload Chat`
```css
#left-nav-panel,#right-nav-panel{opacity:.5;transition:.1s linear;max-width:500px}#left-nav-panel:hover,#right-nav-panel:hover{opacity:1;transition:.1s linear}.mes_text p,.range-block{margin-bottom:15px}#chat,#left-nav-panel,#quickReplyBar,#right-nav-panel,#send_form,#top-bar{border:0!important}#left-nav-panel{margin-top:0!important}#send_form{padding-bottom:15px!important;padding-top:15px!important}#quickReplyBar{padding-bottom:10px!important}table{background-color:var(--black30a);border-style:none}tr:nth-child(2n){background-color:var(--grey10)}th{background-color:#282828}td,th{border:1px solid #323232!important;color:var(--grey70)}#right-nav-panel,#top-bar,.drawer-content{box-shadow:none!important;border-radius:0}::-webkit-scrollbar{width:14px}::-webkit-scrollbar-thumb{background-color:#232323!important;border-radius:0;box-shadow:none}#send_textarea{color:var(--SmartThemeEmColor)!important}::placeholder{color:var(--SmartThemeBodyColor)!important;text-align:left!important}body.big-avatars .avatar img{border-radius:7px}.avatar img,.hotswapAvatar img{box-shadow:none!important}#extensions_settings .inline-drawer-toggle.inline-drawer-header,#extensions_settings2 .inline-drawer-toggle.inline-drawer-header,#user-settings-block h4,h4{background-image:none!important}body{background-color:var(--SmartThemeBlurTintColor)}.mes_text p{line-height:160%;font-size:15px}.range-block-title{text-align:left}body.big-avatars .avatar{align-items:start}#ReverseProxyWarningMessage{display:none!important}hr{background-image:none;background-color:var(--SmartThemeBorderColor);margin:15px 0}
```

##### **My current colorscheme**
Main Text: `A09189`
Italics Text: `A09189`
Quoted Text: `EBE1D5`
Text Shadow: -
Chat Background: `1A1A1A`
UI Background: `1A1A1A`
UI Border: `2C2C2C`


##### **Images**

**Full Interface (Before):**

![](https://files.catbox.moe/c42o13.png)

[View full image](https://files.catbox.moe/c42o13.png)

**Full Interface (After):**

![](https://files.catbox.moe/2910ja.png)

[View full image](https://files.catbox.moe/2910ja.png)

**Ugly Buttons (Before):**

![](https://files.catbox.moe/vh0xui.png)

**Ugly Buttons (After):**

![](https://files.catbox.moe/cu64sa.png)