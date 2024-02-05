## Minimalistic Custom CSS
*Current version: 2.6 | (4.02.2024)*
*No backgrounds only. PC only. Author's note window will show through AI settings due to opacity.*
- - -
####
#### V1:
![](https://files.catbox.moe/587ecp.gif)

#### V2 compared to standard CSS:
![](https://files.catbox.moe/39bc63.gif)
*(Sorry, this gif is a bit heavy. Wait for a while...)*

##### **Changes (V2)**
> Changes were made on SillyTavern 1.10.10
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
14 - Message blocks.
15 - Images will not break chat.
16 - <code>, <small>, <blockquote> are reimagined for RP

- - -

##### **Code V1**
!!! Copypaste this text from the code block below into `User Settings` -> `Custom CSS` and press `Reload Chat`
```css
#left-nav-panel,#right-nav-panel{opacity:.5;transition:.1s linear;max-width:500px}#left-nav-panel:hover,#right-nav-panel:hover{opacity:1;transition:.1s linear}.mes_text p,.range-block{margin-bottom:15px}#chat,#left-nav-panel,#quickReplyBar,#right-nav-panel,#send_form,#top-bar{border:0!important}#left-nav-panel{margin-top:0!important}#send_form{padding-bottom:15px!important;padding-top:15px!important}#quickReplyBar{padding-bottom:10px!important}table{background-color:var(--black30a);border-style:none}tr:nth-child(2n){background-color:var(--grey10)}th{background-color:#282828}td,th{border:1px solid #323232!important;color:var(--grey70)}#right-nav-panel,#top-bar,.drawer-content{box-shadow:none!important;border-radius:0}::-webkit-scrollbar{width:14px}::-webkit-scrollbar-thumb{background-color:#232323!important;border-radius:0;box-shadow:none}#send_textarea{color:var(--SmartThemeEmColor)!important}::placeholder{color:var(--SmartThemeBodyColor)!important;text-align:left!important}body.big-avatars .avatar img{border-radius:7px}.avatar img,.hotswapAvatar img{box-shadow:none!important}#extensions_settings .inline-drawer-toggle.inline-drawer-header,#extensions_settings2 .inline-drawer-toggle.inline-drawer-header,#user-settings-block h4,h4{background-image:none!important}body{background-color:var(--SmartThemeBlurTintColor)}.mes_text p{line-height:160%;font-size:15px}.range-block-title{text-align:left}body.big-avatars .avatar{align-items:start}#ReverseProxyWarningMessage{display:none!important}hr{background-image:none;background-color:var(--SmartThemeBorderColor);margin:15px 0}
```

##### **V1 Colors**
Main Text: `A09189`
Italics Text: `A09189`
Quoted Text: `EBE1D5`
Text Shadow: -
Chat Background: `1A1A1A`
UI Background: `1A1A1A`
UI Border: `2C2C2C`

**Turn off the damn text shadows!**

- - -

##### **Code V2.6**
!!! Copypaste this text from the code block below into `User Settings` -> `Custom CSS` and press `Reload Chat`
```css
details{background-color:#202020;padding:12px;border-radius:4px}::-webkit-scrollbar{width:14px}::-webkit-scrollbar-thumb{background-color:#202020!important;border-radius:0;box-shadow:none}#chat,textarea{scrollbar-width:auto;scrollbar-color:#202020 transparent}code,small{color:var(--SmartThemeBodyColor)!important}blockquote,td,th{color:var(--grey70)}code{background-color:#0f0f0f!important;line-height:130%}blockquote{border-radius:5px;border-left:0 solid!important}body,p,textarea{font-family:Noto Sans;font-style:normal;font-weight:400!important}.name_text,q{font-weight:500!important}#form_sheld{margin:0}body.big-avatars .avatar img{border:none!important}.name_text{color:var(--SmartThemeQuoteColor);font-size:15px}::selection{color:#000;background-color:grey}.swipe_left.fa-solid.fa-chevron-left,.swipe_right.fa-solid.fa-chevron-right{margin-bottom:14px}.swipe_right.fa-solid.fa-chevron-right{margin-right:7px}.mes.last_mes{padding-bottom:20px}#top-bar{background-color:#111!important}#send_form{background-color:#111;border-radius:0!important;padding-right:12px;padding-left:12px;padding-bottom:15px!important;padding-top:15px!important}.mes_text p{line-height:140%;font-size:15px}.mes_block{background-color:#151515;margin-left:14px;padding:18px 18px 0;border-radius:7px}#left-nav-panel,#right-nav-panel{opacity:.5;transition:.1s linear;max-width:500px}#left-nav-panel:hover,#right-nav-panel:hover{opacity:1;transition:.1s linear}.mes_text p,.range-block{margin-bottom:15px}#chat,#left-nav-panel,#quickReplyBar,#right-nav-panel,#send_form,#top-bar{border:0!important}#left-nav-panel{margin-top:0!important}#quickReplyBar{padding-bottom:10px!important}table{background-color:var(--black30a);border-style:none;width:100%}tr:nth-child(2n){background-color:var(--grey10)}th{background-color:#282828}td,th{border:1px solid #323232!important}#right-nav-panel,#top-bar,.drawer-content{box-shadow:none!important;border-radius:0}#send_textarea{color:var(--SmartThemeEmColor)!important}::placeholder{color:var(--SmartThemeBodyColor)!important;text-align:left!important}body.big-avatars .avatar img{border-radius:7px}.avatar img,.hotswapAvatar img{box-shadow:none!important}#extensions_settings .inline-drawer-toggle.inline-drawer-header,#extensions_settings2 .inline-drawer-toggle.inline-drawer-header,#user-settings-block h4,h4{background-image:none!important}body{background-color:var(--SmartThemeBlurTintColor)}.range-block-title{text-align:left}body.big-avatars .avatar{align-items:start}#ReverseProxyWarningMessage{display:none!important}hr{background-image:none;background-color:var(--SmartThemeBorderColor);margin:20px 0;opacity:100%;height:2px}.mes_block img{width:100%;height:auto;border-radius:5px}
```

##### **V2 Colors**
Main Text: `909090`
Italics Text: `C7C7C7`
Quoted Text: `C7C7C7`
Text Shadow: -
Chat Background: `0E0E0E`
UI Background: `0E0E0E`
UI Border: `202020`

**Turn off the damn text shadows!**

- - -

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