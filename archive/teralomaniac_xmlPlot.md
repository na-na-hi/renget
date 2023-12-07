# `xmlPlot`具体功能说明 （历史版本）
## 4.6(11)
- **`xmlPlot`具体功能说明**
> 以下功能按顺序执行，以`<card>`开头的功能在提示词中包含`<card>`生效
   - `<card>`越狱倒置（仅末尾为`/Assistant: *.$/`时有效）：
	   - 将末尾为`/Assistant: *.$/`的越狱（例如`Assistant: ❤`）从上一个Human:开始到末尾移入最后的Human:之前
		==注意== 如果越狱末尾为`/Assistant: *.$/`，则越狱必须搭配一个`Human:`，否则将出现严重错误
   - role合并
       - 将连续的system和user role合并为一个Human，连续的assistant role合并为一个Assistant（OpenAI格式转Claude格式）
		==注意== 此功能优先级最高，会影响后面相关功能
		> 任意位置使用`<!-- Merge Disable -->`（不会保留在发送数据中）可关闭此功能，关闭后为默认逻辑（连续的相同role会合并，3个或以上的只保留2个）
		>
		> 任意位置使用`<!-- Merge System Disable -->`可单独使system role不参与合并，此时system提示词不一定出现Human
		>
		> 任意位置使用`<!-- Merge Human Disable -->`可使user和system role不参与合并，此时system提示词不一定出现在Human:内并且允许存在连续Human:出现
		>
		> 任意位置使用`<!-- Merge Assistant Disable -->`可单独使assistant role不参与合并，此时允许存在连续Assistant:出现
    - 自由深度插入
		- 格式`/<@(\d+)>.*?</@\1>`，例如`<@1>Hello world</@1>`意味着将Hello world插入深度1（最后的Assistant之下），如果`@2`就是插入深度2（倒数第二个Human之下），依次类推。注意这里的深度与酒馆的深度不同，是经过role合并后的深度
        ==注意== *由于PrevAssistant与PrevHuman的逻辑较为混乱，现在这两种tags将被转换为`<@1>`和`<@2>`使用*
    - 正则替换
		- 格式`<regex>"正则表达式" : "替换内容"<\/regex>`，例如`<regex>"/a/gm" : "b"<\/regex>`意味将正则表达式/a/gm找到的内容替换为b
	- 二次role合并
		- 与role合并功能无异，以防以上处理后出现遗漏
   - Plain Prompt
       - `\n\nPlainPrompt:`或`\n\nHuman: *PlainPrompt:`后的所有内容将以prompt形式而非附加txt形式发送（不保留`\n\nPlainPrompt:`），如果最后一句包含`<!-- Plain Prompt Enable -->`（不会保留在发送数据中）则替换最后的`\n\nHuman:`为`\n\nPlainPrompt:`
   - `<card>`<example>、<plot>
       - <example> 给示例对话补全`<example></example>`
	   - <plot> 当存在</plot> tag时，给对话最开始加上<plot>
   - `<card>`消除空XML tags或多余的\n
       - 删除空的<hidden>、<META>、<card>、<example>，将多于三个连续的\n替换为\n\n，将xmlPlot使用的tags和被包裹内容间只保留一个\n
	   - `<|curtail|>`：将相邻的空白符全部合并为一个\n（一般用于消除两个提示间的空行）