###render
- 第一步，注册 [render平台](https://render.com)，进入 [dashboard界面](https://dashboard.render.com)，新建一个web service

-> ![Image description](https://cdn.cp.adobe.io/content/2/dcx/204b5e80-8d42-4fd0-b3aa-7d6af2236133/rendition/preview.jpg/version/2/format/jpg/dimension/width/size/800) <-

- 第二步，最下方填入Clewd修改版的仓库地址`https://github.com/teralomaniac/clewd`（同步更新）

-> ![Image description](https://cdn.cp.adobe.io/content/2/dcx/b67304e5-5b6a-4049-988d-f01f353c81c2/rendition/preview.jpg/version/0/format/jpg/dimension/width/size/800) <-

- 第三步，配置Clewd，build和start指令分别填入```npm install``` 和 `bash start.sh`（图中的`node clewd.js`为2.7版使用，≥3.x使用`bash start.sh`），==branch自选分支==，在Advanced中添加key变量名```Cookie```（图中没有，找不到在第五步改也可以）==注意大小写==，内容为你的Cookie：[获取方法](https://rentry.org/teralomaniac_clewd#%E5%87%86%E5%A4%87%E5%B7%A5%E4%BD%9C)

-> ![Image description](https://cdn.cp.adobe.io/content/2/dcx/99c36b08-2ca1-4fdb-b0b1-42c93bfe2609/rendition/preview.jpg/version/3/format/jpg/dimension/width/size/1200) <-

- 第四步，复制项目地址，后缀加上**`/v1`**填入酒馆反向代理（例如下图最后填入的就是`https://clewd-nya.onrender.com/v1`），**任意设置proxy password（必填）**，不要开启酒馆**传统**流式处理（不是流式响应）选项

-> ![Image description](https://files.catbox.moe/whdt3g.jpeg) <-

- 第五步（可选），修改Cookie与功能开关，在Environment选项里，设置key变量名为`Cookie`和你需要更改默认设置的功能名**（Cookie下面的padtxt和Antistall仅为示例，非必要）**，后面为变量值value，==注意大小写==

- ≥3.x如果需要设置多个Cookie，则设置变量名为`CookieArray`并以逗号隔开所有Cookie填入变量值（格式`Cookie1,Cookie2,Cookie3`，没有括号`[]`和引号`"`）**数组Cookie请仅填入`sessionKey=sk-ant-sid01-xxxxx`部分，去掉Cookie其他用分号隔开的部分** （4.5之后写入格式兼容PC端在config.js内的写入格式）

-> ![Image description](https://files.catbox.moe/ytwtxs.png) <-

- 备注：如果clewd服务异常停止，可以用重建刷新

-> ![Image description](https://cdn.cp.adobe.io/content/2/dcx/2d77f198-dda4-41b3-aa32-b0236f12218b/rendition/preview.jpg/version/1/format/jpg/dimension/width/size/800) <-
***