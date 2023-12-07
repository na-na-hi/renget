# ==[PreOC](https://github.com/teralomaniac/PreOC)==
## -> Openai to Claude 反向代理预处理 <-
!!! 仅进行预处理，另需Openai to Claude反向代理
!!! info 关联内容 [Clewd修改版](https://rentry.org/teralomaniac_clewd)
### 使用方法
- 在cloudflare workers部署work后，将worker.js内的代码复制到快速编辑，修改反向代理url后部署，项目地址用作新的反代地址即可
### 预处理说明
> 功能细则详见 [FAQ](https://rentry.org/teralomaniac_clewd_releasenotes#faq)
- 添加了与Clewd修改版相同的`FullColon`与除plain prompt（使一部分内容以prompt而非附加文件形式发送）之外的`xmlPlot`功能