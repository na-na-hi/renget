#云酒馆 + 云Clewd 教程
!!! danger 本教程及 [Clewd修改版](https://github.com/teralomaniac/clewd) 禁止转发任何包含收费项目的群组/论坛或用于收费项目，警惕任何高风险cookie购买服务（黑名单：AI新服务）
!!! 本教程所有内容采用 CC BY-NC 4.0 许可协议进行许可 [协议内容](https://creativecommons.org/licenses/by-nc/4.0/deed.zh-hans)
!!! info [获取Cookie参考主教程](https://rentry.org/teralomaniac_clewd) 本教程较为简略，可同步参考 [Render部署Nodejs应用](https://www.freecodecamp.org/chinese/news/how-to-deploy-nodejs-application-with-render) 并善用谷歌、GPT等工具
!!! note [Claude破限群](http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=DMbVO8GPhUtu-Kr3vKdZ1fGyNZz2j0VH&authKey=vANqh0NzT3EqbTQpI3TP%2BCp0Z1cpdxHlAMRJFQajRvEc1%2BmPX03Bq7vH6TaYgERU&noverify=0&group_code=704819371) | [类脑Discord频道](https://discord.com/invite/B7Wr25Z7BZ)
***
- **目录**
[TOC2]
***
##云酒馆
###Replit
!!! 由于近期疑似存在脚本爬虫盗取，不推荐使用replit酒馆
- [3分钟视频地址](https://zhwk2-my.sharepoint.com/:v:/g/personal/teralomaniac_zhwk2_onmicrosoft_com/ETW4m1kMFSBClSQRYdKqpo0BH4e6qCaw4NJ8RjCjobD4hQ?e=MlVB8Q)

> SillyTavern官方支持 [Replit](https://replit.com) 搭建云酒馆，注意几点
>> 1. 创建Repl时选Github，填入 [官方SillyTavern](https://github.com/SillyTavern/SillyTavern) 的地址，创建完点击顶部绿色的 **Run** ，第一次时间较长，请耐心等待，然后直到运行完显示 `listening on http://0.0.0.0:8000/` 后点击顶部的 **Stop** 停止。
> 
>> 2. 自行选择是否设置密码，免费Repl强制开源，推荐设置密码
>> - 设置密码：修改左侧栏内的 `config.conf` 中的 `3` `const whitelistMode =` 为 `false`，`4` `const basicAuthMode =` 为 `true`，`5` `const basicAuthUser =` 为 `{username: process.env.username, password: process.env.password}`，然后在左侧栏下方 **Secrets** 里添加 `username` 和 `password` 两个变量，值自由设置为你登录酒馆时的密码。
>>
>> - 不设置密码：修改左侧栏内的 `config.conf` 中的 `3` `const whitelistMode =` 为 `false`，`16` `const securityOverride =` 为 `true`
> 
>> 3. 刷新页面重新点击顶部的 **Run** 启动，启动后，右边窗口的地址应该就可以访问酒馆了，然后地址自己去 [uptimerobot](https://uptimerobot.com) 添加保活，基本和目录最后的render保活一样。酒馆有设置密码的，advanced设置里多添加一个登录认证（basic），填入你自己设置的酒馆账号密码。更新酒馆在shell中使用 `git pull --rebase --autostash`
> 
> 如果创建时用了我的分支`https://github.com/teralomaniac/SillyTavern`而不是官方，则无需配置config.conf，但必须在Secrets中设置账号密码才能使用
>
> ==注意== 新版酒馆可能存在无法自动创建config和settings文件导致红字报错问题，需要将这两个文件从default文件夹分别移到根目录和public文件夹中

###CodeSandbox
!!! info 相比Replit性能更好，更安全，但备份文件需要VS Code连接ssh（或者.gitignore注释法注释public文件夹）
> 1. 在 [CodeSandbox](https://codesandbox.io/dashboard) Dashboard中选择Import repository，连结GitHub账号，填入SillyTavern的仓库地址（如果已经在Github fork过可以填自己的仓库地址）`https://github.com/SillyTavern/SillyTavern`
> 2. 将default文件夹中的config.conf移到根目录用于修改，模仿上面Replit中步骤2设置账号密码（左上角Settings中的Env Variables），或者直接写入config.conf（没有免费强制开源限制，因此可以直接将账号密码写入config.conf）
> 3. 终端中使用`bash start.sh`启动
> 4. 更新在GitHub使用Sync fork后自动同步，如果没有同步则手动在CodeSandbox Terminal中使用 `git pull`
>
> ==tips== .codesandbox文件夹中可以自定义tasks（command项设置为`bash start.sh`）此后可使用左下终端图标中的tasks启动
> 
> ==注意== 如果fork了我的分支`https://github.com/teralomaniac/SillyTavern`而不是官方，则无需配置config.conf和tasks，但必须在Env Variables中设置账号密码才能使用

***
##云Clewd
###Replit
!!! info 相比render须手动指令更新，但可以查看log.txt或修改文件
> 1. 注册Replit账号后fork [Replit用clewd修改版](https://replit.com/@teralomaniac/clewd?v=1)（默认test分支，`git checkout master`切换为主分支，`git checkout -b test origin/test`切换回test分支）
> 2. 左侧栏下方 **Secrets** 里添加 `Cookie` 或 `CookieArray`，写法同config.js中填入的内容。不要直接把Cookie写在config.js，除非你想让你的Cookie被开源
> 3. 点击顶部的 **Run** 启动，==弹出窗口== 的 **页面地址**（点击New tab）后缀加上`/v1`后使用**（不是0.0.0.0或者FAQ那个）**
> 4. 更新在shell中使用 `bash update.sh`
>
> ==注意== 4.6(5)已经更新ProxyPassword设置，建议 **Secrets** 里添加ProxyPassword后用于酒馆反代密码，避免反代盗用，设置密码必须使用https
>
> ==tips== 想尝试自己手动创建而非fork的，使用`npm init -y && npm i --save-dev node@20 npm@10 && npm config set prefix=$(pwd)/node_modules/node && export PATH=$(pwd)/node_modules/node/bin:$PATH`更新node

###CodeSandbox
!!! info 界面与replit类似，须fork并手动更新，界面可访问未写在.gitignore的文件（通过VS Code可访问所有文件）
> 1. 在 [CodeSandbox](https://codesandbox.io/dashboard) Dashboard中选择Import repository，连结GitHub账号，填入Clewd修改版的仓库地址（如果已经在Github fork过可以填自己的仓库地址）`https://github.com/teralomaniac/clewd`，创建完顶部可选择分支
> 2. 终端中使用`bash start.sh`或tasks中的`start`启动生成config.js后，用#注释掉.gitignore中的config.js，左上菜单restart branch出现config.js（之后可以去掉注释）或者通过VS Code访问，然后与本地部署相同方式配置config.js（没有免费强制开源限制，因此可以直接将cookie写入config.js）[可参考主教程](https://rentry.org/teralomaniac_clewd#pc%E9%83%A8%E7%BD%B2)  
> 3. 左下终端图标中点击tasks中的`start`或者终端中使用`bash start.sh`启动，**==弹出窗口==的项目地址后缀加上`/v1`后使用**（不是Terminal里那个）
> 4. 更新在GitHub使用Sync fork后自动同步，如果没有同步则手动在CodeSandbox Terminal中使用 `bash update.sh`
>
> ==关于log.txt== 用#注释掉.gitignore中的log.txt，左上菜单restart branch后出现（之后可以去掉注释）或者通过VS Code访问
>
> ==注意== 直接写入config.js的cookie可能存在无法清理的情况，如果需要解决，备份并删除界面中的config.js，然后使用VS Code配置config.js

###Hugging Face (docker)
!!! info 只能手动更新，无log.txt
> 1. 复制（Duplicate this Space） [clewd抱脸空间](https://huggingface.co/spaces/teralomaniac/clewd) 并选择Public
> 2. 在Settings的Variables and secrets中创建secret变量（Cookie或CookieArray）
> 3. 使用Embed this Space创建链接加上`/v1`后使用
> 4. 更新使用手动上传文件，或者链接远程git仓库使用push更新，注意Readme文件不要覆盖更新，Hugging Face的Readme为配置文件
>
> ==tips== 想尝试自己手动创建而非Duplicate的，将docker文件夹内的文件移到根目录，config中ip与端口改为0.0.0.0和7860

###render（目前无法使用）
!!! info [留档](https://rentry.org/teralomaniac_render_clewd)

##保活 [uptimerobot](https://uptimerobot.com)
!!! info CodeSandbox似乎禁止了常见的保活网站，有需要的自建网站监控，或者直接浏览器定时刷新插件刷新反代地址
> 以下以render为例，Replit同理，无需另外设置render或Replit。**酒馆可能被保活打断，可以适当延长周期时间（14分钟），或者更改`start.sh`最后一句为`node $(dirname "$0")/server.js  --disableCsrf`（注意去掉了一层引号）**
注册uptimerobot新建monitor，url填入第四步的项目地址，例如`https://地址前缀.onrender.com`/`https://地址前缀.用户名.repl.co`，名称随意，可以勾选邮箱以收取宕机提醒

-> ![Image description](https://files.catbox.moe/kwgp9n.jpeg) <-