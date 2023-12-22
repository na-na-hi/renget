# Clewd修改版 功能说明&更新日志
!!! note 原版提供功能请详细查看注释，本说明仅限[修改版](https://github.com/teralomaniac/clewd)的修改与更新内容，教程见[官网Claude2食用方法](https://rentry.org/teralomaniac_clewd)
***
- 目录
[TOC2]
***
## FAQ
1. **相比原版Clewd和其他类似反代，Clewd修改版在发送内容上有什么区别？**
  - Clewd修改版独有的与发送内容相关的功能为`padtxt`、`xmlPlot`和`FullColon`，其中`padtxt`类似功能在部分其他反代上可能已经支持
  - `padtxt`：使用重复无效数据在开始处填充到指定tokens，用于防止黄标过滤
  - `xmlPlot`：优化和增加自定义发送格式
  - `FullColon`：防止A社将发送内容中的`\n\nHuman:`和`\n\nAssistant:`转换为`\n\nH:`和`\n\nA:`

2. **`padtxt`为什么能防止黄标？**
  - 仅限个人推测，A社的内容检测AI可能存在类似slack的窗口长度限制（以前大约12000现在大约6000），超过一定tokens或一定字节数则API无法收到任何输入，从而输出毫不相关的内容，padtxt利用了这一点，用对模型影响最小的无效重复数据填充至目标值，从而避免黄标，对破限也有一定作用

3. **`xmlPlot`为什么要进行role合并？**
  - Claude模型传入格式与GPT模型的json不同，是单纯的字符串格式，而区分用户和AI内容标志为前缀的`\n\nHuman:`和`\n\nAssistant:`，例如：
```text
Human: Hello

Assistant: Hi
```
    意味着AI认为你输入了`Hello`，它回应了`Hi`，但是如果出现以下连续role的情况：
```text
Human: Hello

Human: Claude

Assistant: Hi

Assistant: Human
```
    AI会对特殊标签`\n\nHuman:`和`\n\nAssistant:`（Stop Sequences）产生错误理解，可能使AI输出不符合Stop Sequences格式的Human或Assistant（Stop Sequences仅限在一个competition中完整输出才有效），导致最终输出中出现Human:或Assistant:

  - 同时Claude与GPT不同，只有Human和Assistant两种role，而非GPT的user、assistant和system三种，因此只能将system与user合并到Human，避免出现要求被写在Assistant内，导致AI认为自己提出了要求的情况

4. **`FullColon`为什么要防止`\n\nHuman:`和`\n\nAssistant:`被转换为`\n\nH:`和`\n\nA:`？**
  - 首先说明A社为什么要将发送内容中的`\n\nHuman:`和`\n\nAssistant:`转换为`\n\nH:`和`\n\nA:`，这是由于一个完整的Claude API接收格式大致如下
```text
Human: Hello

Assistant: Hi

Human: 我想瑟瑟

Assistant:
```
    接受此格式后AI便会接着写出回应，而对于官网或者slack等等来说，所有的前缀`\n\nHuman:`和`\n\nAssistant:`都将自动附加，如果用户发送内容内包含`\n\nHuman:`和`\n\nAssistant:`可能导致格式混乱，所以A社进行了替换，使其从真正的对话变为像H:A:对话示例的形式

  - 上文中已经提到区分用户和AI内容标志为前缀的`\n\nHuman:`和`\n\nAssistant:`，如果被转换为`\n\nH:`和`\n\nA:`，则模型实际输入的内容如下：
```text
Human: H: Hello

A: Hi

H: 我想瑟瑟

A:

Assistant:
```
    当然，部分其他反代也会做去掉首尾的Human和Assistant的功能，但这不能解决HA转换问题，转换后大致如下：
```text
Human: Hello

A: Hi

H: 我想瑟瑟

Assistant:
```
    意味着AI会认为你输入了所有的H:和A:，而与它自身无关，所以它在输出时只是模仿你提供的H:和A:格式。这就是为什么没有FullColon时，AI会输出超长的HA对话。FullColon避免了这一点，使得发送格式理论上等同Claude API（转换为tokens后与API的前缀无区别，除了不能使用Assistant Prefix）

5. **`xmlPlot`具体功能说明**
> 以下功能按顺序执行，[历史版本](https://rentry.org/teralomaniac_xmlPlot)
>
> 4.6(12)更新：越狱倒置功能去除，card与example补全功能去除，功能触发标签统一为`<|说明|>`格式，所有符合格式标签除`<|curtail|>`与`<|padtxt|>`外使用后替换为`\n\n`（替换包含两端空白符）
>
> 4.7(0)更新：`<|System Role|>`可单独使system role合并为一个`\n\nSystem:`；`<card>`或`<|card|>`不再作为启动标签
>
> 4.7(1)更新：正则改为分三次执行，用order属性区分
	- **一次正则替换**
		- 格式`<regex order=1>"正则表达式" : "替换内容"<\/regex>`，例如`<regex order=1>"/a/gm" : "b"<\/regex>`意味将正则表达式/a/gm找到的内容替换为b
   - **一次role合并**
       - 将连续的system和user role合并为一个Human，连续的assistant role合并为一个Assistant（OpenAI格式转Claude格式）
		==注意== 此功能优先级最高，会影响后面相关功能
		> 任意位置使用`<|Merge Disable|>`可关闭此功能，关闭后为默认逻辑（连续的相同role会合并，3个或以上的只保留2个）
		>
		> 任意位置使用`<|System Role|>`可单独使system role合并为一个`\n\nSystem:`
		>
		> 任意位置使用`<|Merge Human Disable|>`可使user和system role不参与合并，此时system提示词不一定出现在Human:内并且允许存在连续Human:出现
		>
		> 任意位置使用`<|Merge Assistant Disable|>`可单独使assistant role不参与合并，此时允许存在连续Assistant:出现
    - **自由深度插入**
		- 格式`/<@(\d+)>.*?</@\1>`，例如`<@1>Hello world</@1>`意味着将Hello world插入深度1（最后的Assistant之下），如果`@2`就是插入深度2（倒数第二个Human之下），依次类推。注意这里的深度与酒馆的深度不同，是经过role合并后的深度
        ==注意== *由于PrevAssistant与PrevHuman的逻辑较为混乱，现在这两种tags将被转换为`<@1>`和`<@2>`使用*
    - **二次正则替换（默认）**
		- 格式`<regex>"正则表达式" : "替换内容"<\/regex>`或者`<regex order=2>"正则表达式" : "替换内容"<\/regex>`，除顺序外与一次无异
	- **二次role合并**
		- 与role合并功能无异，以防以上处理后出现遗漏
	- **三次正则替换**
		- 格式`<regex order=3>"正则表达式" : "替换内容"<\/regex>`，除顺序外与一次无异
   - **Plain Prompt**
       - `\n\nPlainPrompt:`或`\n\nHuman: *PlainPrompt:`后的所有内容将以prompt形式而非附加txt形式发送（不保留`\n\nPlainPrompt:`），如果最后一句包含`<|Plain Prompt Enable|>`（不会保留在发送数据中）则替换最后的`\n\nHuman:`为`\n\nPlainPrompt:`
   - **消除空XML tags或多余的\n**
       - 删除仅包含空白符的<hidden>、<META>、<card>、<example>以及他们的说明，将多于三个连续的\n替换为\n\n，将xmlPlot使用的tags和被包裹内容间只保留一个\n
	   - `<|curtail|>`：将相邻的空白符全部合并为一个\n（一般用于消除两个提示间的空行）
       - `<|padtxt|>`  将padtxt用占位符替换<|padtxt|>标签所在位置

6. **API模式功能说明**（版本4.6(12)）
> 能为API提供xmlPlot与FullColon格式预处理以及设置api_rProxy镜像来绕过API地域限制，酒馆ProxyPassword换成apikey开启API模式
   - `xmlPlot` 提供格式预处理，功能与使用cookie类似，API模式有以下独有功能：
       - 智能首尾：相比酒馆原版逻辑，`xmlPlot`会自动判断role顺序来添加首尾的`\n\nHuman:`和`\n\nAssistant:`，使OAI格式也能做到claude格式下的Assistant Prefix，同时claude2.1下第一个role为user以外时自动启用sys-prompt；
       - `<|noAssistant|>` 提示中任意位置包含该标签即可开启，去除最后的空`\n\nAssistant:`，结合FullColon并让最后的role为Human可以做到Human示例仿写
       - `<|reverseHA|>` 提示中任意位置包含该标签即可开启，反转所有`Assistant`和`Human`，结合FullColon可以做到role反转破限 ~~克劳德：成为人类~~
       - `<|padtxt|>`  包含该标签时才会在api启用padtxt，并用占位符替换<|padtxt|>标签所在位置
   - `FullColon` 相比使用cookie，仅在第一个role不为Human或最后的role不为Assistant时生效，用于解除role顺序的限制

7.  **Clewd API模式与酒馆的简要异同**（版本4.6(12)）
> 注意：酒馆与Clewd最终发送内容均为OpenAI初始格式转换而来，这里仅说明Clewd与酒馆在 OAI to Claude 转换上的差异
   - **酒馆逻辑**
        - 非2.1时，提示词首位加上`\n\nHuman:`和`\n\nAssistant:`（开启Exclude Assistant suffix时不添加`\n\nAssistant:`，但必须手动添加最后的`\n\nAssistant:`保证最后的role为Assistant），user转换为`\n\nHuman:`前缀，assistant转化为`\n\nAssistant:`前缀，示例对话中为`\n\nH:`和`\n\nA:`，system转换为`\n\n`（无前缀）
        - 2.1时，相比非2.1会使用系统提示，规则为第一个user或assistant之前的所有system转换为`\n\n`并用作系统提示，剩下的部分按非2.1格式处理
   - **Clewd逻辑**（默认开启xmlPlot和FullColon，部分功能可用特殊标签开启或关闭）
        - 非2.1时，连续的system和user合并为一个`\n\nHuman:`前缀，连续的assistant合并为一个`\n\nAssistant:`前缀，示例对话中为`\n\nH:`和`\n\nA:`（示例对话无合并）最后添加首位的`\n\nHuman:`，**并判断最后一个role是否为Assistant（`\n\nHuman:`和`\n\nAssistant:`谁在最后），如果不是则末尾添加`\n\nAssistant:`（相当于自动判断的Exclude Assistant suffix功能）**
        - 2.1时，相比非2.1会使用系统提示，规则为第一个user或assistant之前的所有system转换为`\n\n`并用作系统提示（该部分同酒馆）**但剩下的部分按非2.1格式处理时，不会为首位添加`\n\nHuman:`**
    - **Clewd解决的问题**
        - role合并等xmlPlot预处理功能（同cookie，详见 3.`xmlPlot`为什么要进行role合并 与 5.`xmlPlot`具体功能说明）
        - Exclude Assistant suffix的自动判断
        - FullColon绕过role顺序限制（详见 6.API模式功能说明）
        - 使用系统提示时，可以避免酒馆自动添加首位`\n\nHuman:`来的空Human:问题

## Clewd 4.7修改版
- Clewd 4.7(1) added: 当酒馆中模型选择"claude-2.0"或"claude-2.1"时，会自动轮换到对应模型cookie，选择其他任意模型则默认不更换，酒馆换模型后的第一次请求clewd可能会提示轮询中（Polling）报错，为正常现象；`xmlPlot`功能更改，见`xmlPlot`功能说明

- Clewd 4.7(0) added: 增加pro账号的模型选择，其中部分不支持模型将被自动转换为相近模型，与原版相比需要打开`PassParams`使用，注意打开后一般账号只能使用claude-2.1，否则会提示invalid model模型错误，多次模型错误可能引起封号；`xmlPlot`功能更改，见`xmlPlot`功能说明

## Clewd 4.6修改版
- Clewd 4.6(13) added: api模式增加多Key随机使用模式，只需要将多个Key写入Proxy Password；添加非镜像时cookie切换时间间隔，使每次切换不少于15s

- Clewd 4.6(12) fixed: 优化xmlPlot以及api提示词处理逻辑；在无可用cookie时启用apiKey-Only模式

- Clewd 4.6(11) added: 可以为api提供格式预处理，酒馆Proxy Password换成api key即可切换为api模式，此时提示将变为`模型名 [api]`

- Clewd 4.6(10) fixed: 更换更精确的tokens计数方法，增加`Cookiecounter`清理Cookie方式，-2为仅保留原版claude-2模型，-201为仅保留claude-2.0-magenta模型

- Clewd 4.6(9) added: 增加模型检测

- Clewd 4.6(7) added: 新增`<regex>`，详细用法见上文xmlPlot说明

- Clewd 4.6(5) added: 增加ProxyPassword项用于反代密码设置，在config.js中填写后或设置ProxyPassword环境变量生效，云端需用https

- 基于原版4.6修改，原版修复prompt处理bug和增加ARMv7支持

  - 新增`CookieIndex`，可以决定首次登录的Cookie，1为第一个、2为第二个依次类推；默认值0则与之前相同，为随机登录（更换Cookie均为顺序更换）

  - 自动更换cookie时消除同一账号的重复cookie

  - 登录时预先检查是否到达对话次数上限
> 关于更换cookie时的提示：
>1. 红字提示（删除提示）
>> Overlap!：在更换cookie过程中，发现同一账号的重复cookie，删除该cookie
>> Unverified!：未通过验证（短信或老号）的账号，删除该cookie
>> Expired!：无效或失效cookie（过期或者登出等原因导致），删除该cookie
>> Banned!：账号被封禁，一般状态为read-only，删除该cookie
>2. 紫字提示（跳过提示）
>> Restricted!：账号黄标警告中，跳过该cookie
>> Exceeded limit!：账号到达对话上限，跳过该cookie
>3. 白字提示
>> index：表示当前cookie在数组中的位置
>> length：表示cookie数组中的cookie个数（仅限`Cookiecounter`为-1时）
>> progress：表示cookie数组的清理进度（仅限`Cookiecounter`为-1时）

## Clewd 4.5修改版
- 基于原版4.5修改，`Superfetch`流式传输已可以正常使用，新增/更改以下功能

  - `VPNfree`取消，改为`rProxy`，可在`config.js`内自定义镜像网址

  - fixed: 减少原版流式传输可能出现非法字符�的概率

  - 新增`Cookiecounter`选项，0为报错更换Cookie，正数为依据响应次数更换Cookie（报错依旧更换），-1为自动轮询清除无效Cookie，可在`config.js`内自定义

  - `xmlPlot` 新增功能
	- `</hidden>` 触发（启用xmlPlot世界书即可，空标签会被自动删除），功能说明:
      - 将Assistant:下被<hidden></hidden>标签包裹的内容移入上一个Human:中，以保证不会出现对Assistant的要求写在Assistant的回复中的情况
      - 将末尾为`/Assistant: *.$/`的越狱（例如`Assistant: ❤`）移入最后的Human:之前
      - ==注意== 如果越狱末尾为`/Assistant: *.$/`，则越狱开头必须设置为`Human:`，否则将出现严重错误
	- `\n\nPrevHuman:` 触发，功能说明:
      - 将PrevHuman:后的内容移入上一个Human:的末尾

  - `xmlPlot2` 设置xmlPlot为2启用
	- `\n\nPrevHuman:` 触发，将最后的Human:以prompt形式而非附加txt形式发送

## Clewd 3.8.5修改版
- 基于原版3.8.5修改，新增/更改以下功能

  - `VPNfree`默认开启并不再单独设置开关，在`Superfetch`关闭时为开启，如接受无流式可在`config.js`开启`Superfetch`

  - `padtxt` 现在可更改tokens阈值（约数）

  - 新增 faststart.bat/sh 快速启动（仅限非第一次启动）

## Clewd 3.4修改版
- 基于原版3.4修改，新增/更改以下功能

  - 基本上是原作者修复了3.3的原版bug，但由于大部分修改版3.3修过了，所以区别不大，原版取消了有bug的自定义发送格式，并据说流式传输速度更快（个人感知不明显）

## Clewd 3.3修改版
- 基于原版3.3修改，大更改，必须按照教程重新配置，新增/更改以下功能

  - 更换为OpenAI接收格式，支持RisuAI流式传输，本地接入RisuAI.xyz需要打开`localtunnel`并使用tunnel URL

  - `CookieArray`，报错时自动更换Cookie，并在触发read-only时自动删除该Cookie，请在clewd关闭后修改`config.js`中`CookieArray`项

  - `padtxt`，默认为半随机字符串，可以在`config.js`中`padtxt_placeholder`项自定义可覆盖默认设置

  - 自定义发送格式，原版功能，与xmlPlot冲突，~~需要自定义者请关闭xmlPlot后自行修改`"Settings": {}`之后的5项~~，有bug，请不要使用该原版功能，并改动最后5项

## Clewd 2.7修改版
- 基于原版2.7修改，新增/更改以下功能

  - `VPNfree` 开启后将使用国内镜像站 claudeai.ai 代替 claude.ai，不再需要代理连接，速度较慢

  - `xmlPlot`，增加判断，即使有`<card>`，如果上下文中没有`</plot>`，则不会增加`<plot>`标签；新增`<extra_prompt>`，使用方法为加入sd prompt等额外提示的开头，可以自动顶替越狱（仅限自用破限系列），避免sd prompt和越狱冲突；新增`<illustration>`，自动将任何位置的插图DLC转移到越狱中

  - `padtxt`，更改为半随机字符串（随机+重复），如需自定义内容，则改为`var placeholder = '';`，并在`''`中填入你的内容

  - `localtunnel`，现默认关闭，PC端有接入外部网站需求者，自行设置为`true`开启

## Clewd 2.6修改版
!!! info [PC修改版Clewd](https://files.catbox.moe/ylna0i.zip) | [安卓修改版Clewd](https://files.catbox.moe/ql86pl.zip) 
- 基于原版2.6修改，相比2.4降低了流式传输的卡顿，新增/更改以下功能

  - `ReplaceSamples`（原`AdaptClaude`）原版已更改为2.4修改版类似逻辑，更改发送数据中==所有==的H:为Human:，A:为Assistant:，由于`FullColon`开启时不会出现HA，默认关闭，如需要，可以设置为`true`

  - `const BufferSize = 8;`，由8改为1，进一步降低流式卡顿并减少传输错误，~~虽然原版说明8以下会造成`ReplaceSamples`出错，但理论上目前该功能仅用于发送，真实性存疑~~，原版写错了，是`PreventImperson`（原版防HA，由于`FullColon`开启时不会出现HA，默认关闭）需要开启`PreventImperson`者可以考虑改回8

  - `xmlPlot`，修正群组bug，修正特殊情况没有`<card>`也会触发`xmlPlot`

## Clewd 2.4修改版
- 基于原版2.4修改，相比1.6版或原版，新增/更改以下功能（如需自行设置可在```clewd.js```中更改```const Settings = {};```部分）

  - `FullColon`，7.30新增修改版功能，根源性防止H:/A:，疑似原理为防止Human与Assistant被暗改为H与A，默认开启，不建议关闭

  - `padtxt`，修改版功能，自动补全tokens超过10000，默认开启，如不需要，可以设置为```false```

  - `RemoveFirstH`，7.27新增，修改版功能，去除最开始的Human或H，默认开启，如不需要，可以设置为```false```

  - `xmlPlot`，已修正群组bug，修改版功能，增加标识符：剧情开始`<plot>`、示例对话开始与结束`<example>` `</example>`、人物设定结束指示`</card>`，默认开启，如不需要，可以设置为```false```，使用自用V2.7以上破限必须开启，其他xml格式破限根据情况使用（仅在提示包含`<card>`时触发）

  - `localtunnel`，修改版功能，提供外网访问url（安卓版已去除）

  - `PromptExperiment`，原版txt发送，修改版改为更接近在官网复制粘贴的形式而不是随机文件名，默认开启， 不建议关闭

  - `PreventImperson`，原版“H：”截断，默认开启，如不需要，可以设置为```false```

  - `AdaptClaude`，7.23修正，根据clewd作者与a社的说明，应使用Human/Assistant唯二对话者格式，H/A仅在示例对话中使用，更改此功能为：**更改发送格式中示例对话后的H与System为Human，A为Assistant**，默认开启，如不需要，可以设置为```false```

  - `DeleteChats`，7.23修正，修复了功能无法使用的原版的bug，原版功能，每次登录清空==所有==对话，对话结束删除当前对话，默认关闭，如需要，可以设置为```true```

  - `RetryRegenerate`，原版功能，使用自带的重新生成，默认关闭，如需要，可以设置为```true```

## Clewd 1.6修改版
!!! info [Clewd 1.6修改版](https://files.catbox.moe/qg2g3s.js) ,配合原版1.6分支使用
- 提供原版没有的txt发送与“H：”截断功能（```AntiHA```选项），稳定版，流式传输速度与“H：”截断较2.x版本更好（目前2.4版本以上已较为稳定，可以尝试使用）