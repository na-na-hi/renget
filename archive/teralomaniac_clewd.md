# 官网Claude2食用方法（搭配Clewd使用）
!!! danger 本教程及 [Clewd修改版](https://github.com/teralomaniac/clewd) 禁止转发任何收费群组/论坛或用于收费项目，警惕任何高风险cookie购买服务，以及破坏中文AI开源共享环境倒卖免费资源抹去署名的群组（黑名单：AI新服务、浅睡(鲑鱼)、赛博女友制作人）

!!! 本教程所有内容采用 CC BY-NC 4.0 许可协议进行许可 [协议内容](https://creativecommons.org/licenses/by-nc/4.0/deed.zh-hans)

!!! info 本教程内容及Clewd修改版为原创，限 [Claude破限群](http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=DMbVO8GPhUtu-Kr3vKdZ1fGyNZz2j0VH&authKey=vANqh0NzT3EqbTQpI3TP%2BCp0Z1cpdxHlAMRJFQajRvEc1%2BmPX03Bq7vH6TaYgERU&noverify=0&group_code=704819371) | [类脑Discord频道](https://discord.com/invite/B7Wr25Z7BZ)  内可无需注明出处，其余任何形式引用请附带此网址

!!! note 目前更新版本4.8，功能说明及历史版本请查看 [Release Notes](https://rentry.org/teralomaniac_clewd_ReleaseNotes)

## Clewd配置
##### 准备工作
- 下载并安装 [Node.JS](https://nodejs.org/en) ==≥20.4.0/Current== 以及 [git](https://gitforwindows.org/) ==≥2.41.==
- 官网注册 [Claude.ai](https://claude.ai) ，==注册必须用us/uk代理==
- 转到 [Claude.ai](https://claude.ai/chats) - 打开开发人员工具/检查（ctrl + shift + I 或 F12）转到`网络`/`Network`选项卡，然后==开启一个新聊天页面发送任意对话==
- 找到 `chat_conversations` 然后复制 ==整个== `Cookie:` 后的内容，很长约400字，将其保存。或使用浏览器自带的Cookie查看器/Cookie Editer扩展等，将其中sessionKey项复制出，并按`sessionKey=sk-ant-sid01-xxxxx`格式组合保存
- ==注意== cookie退出登录时失效，因此必须使用删除cookie或者隐身窗口方式更换账号

-> ![Image description](https://files.catbox.moe/ucntn9.jpg) <-

##### PC部署
- Clewd下载
> ==≤2.7== 下载 [Clewd2.7修改版](https://github.com/teralomaniac/clewd/tree/2.7) - 将准备工作中的Cookie粘贴到 `clewd.js` 文件中 `const Cookies = '';` 的 `''` 之间，并按需要更改`const Settings = { };`，如不需要则保持默认
>
> ==≥3.3== 下载 [Clewd最新修改版](https://github.com/teralomaniac/clewd) - 运行 `start.bat` 后出现 `config.js`，将准备工作中的Cookie粘贴到该文件中 `"Cookie": ""` 的 `""` 之间；如果多个Cookie则按照字符串数组格式写入 `"CookieArray": []` 中（格式`["Cookie1","Cookie2","Cookie3"]`）使用CookieArray时，`"Cookie": ""` 中的Cookie将不再被使用
>
>（仅限通过git指令或github客户端获取才可使用update.bat更新，更新可能会清除自定义设置）
- 选择以下任意一种Clewd连接claude官网的方法
> 使用==tun/tap模式==代理
>
> 镜像站（无需代理）：设置 `VPNfree` 为 `true`（2.x版在 `clewd.js` 3.x版在 `config.js` ，不保证可用），4.3以上请在`rProxy`中自行设置
>
> 使用 [云Clewd](https://rentry.org/teralomaniac_clewd_render#%E4%BA%91clewd)（跳过下面一个步骤）
- 运行 `start.bat` 确保出现 `Logged in { name: '你的账户名', capabilities: [ 'chat', [length]:  ] }` 后，将 `http://127.0.0.1:8444/v1` 填入酒馆的 `OpenAI 反向代理`/ Risu聊天机器人Reverse Proxy的 `反向代理 URL`
>注意：[RisuAI.xyz](https://risuai.xyz) 需要在打开localtunnel后在`反向代理 URL`填入tunnel URL而非以上地址（2.x版在 `clewd.js` 3.x版在 `config.js` ），2.x版不支持Risu流式传输，并且本地版也只能使用tunnel URL
- 模型选择
> ==≤2.7== proxy password随意填写（必填），模型选择 ==claude-2== 
>
>==≥3.3== 模型选择 ==openai任意模型== （Risu在Force Proxy Format as OpenAI打开后，也可选择Reverse Proxy中 ==包括claude任意模型==）
- 提示：酒馆下载 [SillyTavern Releases](https://github.com/SillyTavern/SillyTavern/releases) 或按 [SillyTavern官网](https://docs.sillytavern.app/installation/windows) 安装，运行`start.bat`即可，如果不知道酒馆是什么，请自行搜索相关教程，或选择性参考 [视频](https://b23.tv/tv68i6O) SillyTavern配置部分（无需参考slaude配置和模型选择部分）

##### 移动设备
- 参考[云酒馆+云Clewd教程](https://rentry.org/teralomaniac_clewd_render)或Discord频道其他相关内容
- ==注意== 安卓termux不兼容4.x的superfetch，请换用云端，或关闭superfetch并设置rProxy镜像站，3.8.5superfetch可用但无法流式传输

##FAQ
!!! ==错误排查==：如果使用clash的[tun模式](https://docs.cfw.lbyczf.com/contents/tun.html)，clewd控制台出现例如timeout报错，请检查tun模式是否开启正确（例如clash里的“连接”是否有tun显示，以下图clash verge中的连接为示例）如果没有，检查是否安装==服务模式==或者以==管理员运行==clash，v2rayN出现tun模式不生效也请尝试管理员运行（不要使用黑名单模式）
-> ![Image description](https://files.catbox.moe/7ejjz9.png) <-
!!! note clash中tun/tap全局代理一般情况使用==规则模式==即可，无需使用==全局模式==选项，如代理提供商采用黑名单规则则请尝试使用==全局模式==或使用==订阅转换网站==将订阅转换为绕过大陆规则

- **Set "Chat Completion" to OpenAI:** 字面意思，将发送格式Chat Completion改为OpenAI，勾选Show "External" models后可选择claude-2（选择其他OpenAI也不会造成返回内容影响，该选项仅影响酒馆内的token数显示和模型图标显示）

- **Forbidden/403报错:** 请尝试更新最新版解决，如无法解决则多为Cookie失效，请更换Cookie（在网页退出登录会导致Cookie失效，请不要退出）

- ==出现H:/A:== **解决方法：**`const Settings = { };`中设置`PreventImperson`或`FullColon`为`true`（`FullColon`为默认开启），如果`PreventImperson`经常抽风依然出现H：，请在正则表达式(regex)中添加 `/\n\nH(uman)?:.*/s`，仅勾选用于AI output

- **消除破限词头词尾方法：**正则表达式(regex)中添加 ```/{{词头词尾}}.*/s``` ，仅勾选用于AI output。（根据你的破限词头不同可能有变，此为抛砖引玉，自用破限用正则请查看下文）

- **pulling request model/changing cookie：**更换模型与cookie时的提示，并非报错（注意仅在选择claude-2.0/2.1等cookie可用模型时才会触发自动切换对应模型cookie）

- **prompt is too long：**提示词超过长度限制（免费cookie 25k、pro 190k tokens），请设置tokens上限不超过指定范围

- **endpoint disabled：**版本过低，请更新

#####Hint
- 当要转折或代替角色行动时，建议你的角色输出后换行（shift+enter）两次后再描述。
- 某些XML tags可以截断claude的输出，例如<META>和<EOT>等，claude在输出这些tags时输出会被立即截断。

##自用预设 V4.x：
!!! info [版本说明与历史破限](https://rentry.org/teralomaniac_jb_history)
> 最新测试/正式版预设：[V4.x](https://discord.com/channels/1134557553011998840/1185059580552675378) （[类脑Discord频道](https://discord.com/invite/B7Wr25Z7BZ)）
> 
> [Risu预设4.0beta1](https://files.catbox.moe/mb1dro.json) Risu可以不用最新的clewd，但由于NSFW和越狱只有一个开关，所以NSFW没有写入，如需要推荐自行写在你的personal里面

##可选插件DLC：
!!! info 以下文字版更新较慢，如需最新版下载自用预设中的全局世界书
- **随机事件DLC：**
> **使用说明：**放入全局世界书，设置常数，作者注释之后，适当提高排序，概率设置为10-20或自行测试
``` html
## The “<RandomEvent>” is the rule for generating random events.
<RandomEvent>
0. Insert a random event at the right time in the next few responses.
1. Random events should occur in logical situations.
2. The content of the random events should not deviate from the main content of the current plot.
3. Random events can be positive or negative.
</RandomEvent>
```
- **插图DLC：**
> **使用说明：**先上传图片到[catbox](https://catbox.moe)，然后将说明+后缀填入`<illustration_list>`，说明请使用汉字等非数字字母，以下为示例
> 
> ==正则(regex)== （从上到下依次排列）`/<(illustration|img)>.*[^0-9A-Za-z\.\s</>]+/gm`替换为`<center><img src=https://files.catbox.moe/`；`/<\/(illustration|img)>/g`替换为`? width=50% /></center>`（50%可以修改为你需要的图片宽度）所有正则同时勾选用于AI output 和 Only Format Display
> ==酒馆≥1.11.5正则== [1.11.5专用正则下载](https://files.catbox.moe/t8o9ix.json)
``` html
## The “<illustration>” is the rule for inserting illustrations.
<illustration>
Assistant should insert illustrations that are appropriate and timely according to the content and scenes of the plot.
Assistant must output the filenames in the “<illustration_list>” exactly and completely, and tag it with <img></img> XML tags.
format: <img>{{filename}}</img>
</illustration>

<illustration_list>
高兴: 高兴h1te9t.png
害怕: 害怕5enlof.png
生气: 生气zsr78z.png
Angry: Angry_zsr78z.png （英文写法示例，注意加上下划线等符号分隔）
</illustration_list>
```
- **音频DLC（使用方法参照插图DLC）：**
> 提示词（插入位置参考插图DLC）
```xml
<!-- Rule for inserting soundtrack -->
<soundtrack_rule>
- Assistant should insert a soundtrack in reply that matches the current scene, depending on the content of the plot.
- Assistant must output the filenames in the “<soundtrack_list>” exactly and completely, and tag it with <audio></audio> XML tags.
Format: <audio>{{filename}}</audio>
</soundtrack_rule>

<soundtrack_list>
日常317yzl.mp3
</soundtrack_list>
```
    > 正则（勾选参照图3）
  ==audio1==
>> Find Regex: `/<audio>.*?(?=[0-9A-Za-z]{6}\.[0-9a-z]+<\/audio>)/gm`
>> 替换为（颜色、标题框、大小均可自定义）
```html
<center>
<hr />
<font color='#A2B5CD' size='4'>
== <|deleteaudio|>$& ==
</font>
<audio>
```
  ==audio2==
>> Find Regex: `/(?<=<audio>).*?(?=<\/audio>)/gm`
>> 替换为（默认循环，删除loop可去除循环）
```html
<|deleteaudio|><audio loop controls src='https://files.catbox.moe/$&'>
  <a href='https://files.catbox.moe/$&'> Download audio </a>
</audio>
<hr />
</center><|deleteaudio|>
```
  ==audio3==
>> Find Regex: `/(<\/?audio>)?<\|deleteaudio\|>(<\/?audio>)?/gm`
>> 替换为空

- **通用状态栏DLC：**
> **使用说明：先去除下面\`\`\`前的`\`**，放入全局世界书中，关键字\`\`\`json，次要关键字</status>，插入字符定义后，Rule项可自行添加修改，然后将Form项中的内容（<status>到</status>，包括这两个tags）**填上内容数值后**放入角色第一句（选择json是为了显示颜色，可以任意更换其他格式）
>
> ==注意== 
> - 通用状态栏无需针对不同角色卡定制修改，仅需更改角色第一句中的项目即可
> - 第一句没有状态栏则不会触发，无需手动关闭
> - risu需要添加修改显示<\/?status>替换为空的正则，否则无法正确显示
``` html
## Insert the “<status>” as a fenced code block (```) at the end of your response as requested in “<StatusBlock>”.
<StatusBlock>
- Rule:
Each {{value}} change within ±3 (±1D3).
- Form:
<status>
\```json
『 {{dayofweek}} - {{timeslots}} - {{location}} - {{weather}} ……etc. 』
💋 好感度: {{value}}/100
🥵 性欲值: {{value}}/100
👚 服装: {{clothing state}}
💭 情绪: {{emotion state}}
🤔 对{{user}}的想法: {{thoughts on {{user}}}} 
……etc.
\```
</status>
</StatusBlock>
```

- **旧状态栏正则去除 （ <regex>标签使用教学/需clewd4.6(7)以上）：**
> **提示词**任意位置添加以下正则， 则代表保留最后五次状态栏
`<regex>"/(?!.*?\n\[Start a new Chat\]\n)\n<StatusBlock>\n.*?\n</StatusBlock>\n(?=(.*?\n<StatusBlock>\n.*?\n</StatusBlock>\n){5})/gs" : ""</regex>`
> 详解：
  1.  <regex>标签的意义为`<regex>"正则" : "替换内容"</regex>`，会根据正则内容对全文进行正则替换后再发送，<regex>标签及内容会在输出中被隐藏不会发送至官网
  2. `/正则/gs`的g表示全局搜索（不止匹配一次）、s表示包含换行符（通配符`.`包含换行符）
  3. `(?!.*?\n\[Start a new Chat\]\n)` 正向否定预查，代表匹配内容之后不包含[Start a new Chat]（意味着不会影响对话开始前的状态栏要求提示词）
  4. `\n<StatusBlock>\n.*?\n</StatusBlock>\n` 匹配内容（以状态栏DLC的状态栏为例）
  5. `(?=(.*?\n<StatusBlock>\n.*?\n</StatusBlock>\n){5})` 正向肯定预查，代表匹配内容之后还有五个匹配内容（`{5}`代表匹配5次），所以保留最后五个状态栏
***
##关联内容
!!! info [slaude修改版](https://rentry.org/teralomaniac_slaude) | [PreOC](https://rentry.org/teralomaniac_PreOC) | [API养号](https://github.com/teralomaniac/Claude-auto-test)
***
##赞助通道
!!! info [赞助通道](https://rentry.org/teralomaniac_sponsor)