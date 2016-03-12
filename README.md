# JMSDevAndProSetting
## Swift开发Xcode部署配置
### 步骤
####    1.打开项目`Info`，配置`Configurations`
<img src="https://github.com/xiaobs/JMShareSource/raw/master/screenshots/Swift/JMSDevAndProSetting/1.jpg?raw=true" height=480">
####    2.打开项目`Build Settings`，添加`User-Defined`(`MTL_ENABLE_DEBUG_INFO`中的`Key`与第一步配置的名称保持一致)
<img src="https://github.com/xiaobs/JMShareSource/raw/master/screenshots/Swift/JMSDevAndProSetting/2.jpg?raw=true" height=480">
####    3.打开`Info.plist`，添加`Configuration Setting`字段设置值为`$(MTL_ENABLE_DEBUG_INFO)`
<img src="https://github.com/xiaobs/JMShareSource/raw/master/screenshots/Swift/JMSDevAndProSetting/3.jpg?raw=true" height=480">
####    4.添加两个`plist`文件(名称要与第二步配置的`value`保持一致)，对应开发与生产环境的字段配置信息
<img src="https://github.com/xiaobs/JMShareSource/raw/master/screenshots/Swift/JMSDevAndProSetting/4.jpg?raw=false" height=480">
####    5.选择`Edit Scheme`来切换开发和生产环境，进行测试
<img src="https://github.com/xiaobs/JMShareSource/raw/master/screenshots/Swift/JMSDevAndProSetting/5.jpg?raw=true" height=480">

## 作者
James.xiao
