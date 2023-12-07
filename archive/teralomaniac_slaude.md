# slaude修改版说明
!!! info 仅为 [slaude修改版](https://github.com/teralomaniac/slaude/) 说明，slaude配置请自行参考原版教程
!!! note 添加clewd修改版的FullColon、xmlPlot与localtunnel功能
>修改版功能开关在config.js中，其中xmlPlot没有Plain Prompt和<file-attachment-contents>等官网claude2专用功能

##云slaude
###CodeSandbox
> 1. 在 [CodeSandbox](https://codesandbox.io/dashboard) Dashboard中选择Import repository，连结GitHub账号，填入slaude修改版的仓库地址`https://github.com/teralomaniac/slaude/`
> 2. 将前5项写入左上角Settings中的Env Variables中的环境变量，名称没有下划线，或者直接写入config.js
> 3. tasks中使用`start`启动
> 4. 更新在GitHub使用Sync fork后自动同步，如果没有同步则手动在CodeSandbox Terminal中使用 `git pull`

###render
> 1. 在 [render](https://dashboard.render.com/) Dashboard中选择web service，填入slaude修改版的仓库地址`https://github.com/teralomaniac/slaude/`
> 2. build和start指令分别填入npm install 和 node app.js，在Advanced中添加将前5项环境变量，名称没有下划线
> 3. 保活使用项目地址加/v1/models作为监控url

##关联内容
!!! info [Clewd修改版](https://github.com/teralomaniac/clewd)