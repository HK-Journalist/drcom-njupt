# drcom-njupt
## 使用 cURL 命令自动登录校园网
**2020-09-09更新：**
* 本学期系统似乎做出了一些改动，`wlanacip`和`wlanacname`两项不能同时为`null`，至少需要指定一项，这个例子中指定了`wlanacname=XL-BRAS-SR8806-X`，可以根据情况自行修改
* 删掉了一些没用的参数
---
请将运营商、学号、密码替换成相应内容

其中，将“运营商”替换成：
* 电信 = `njxy`
* 移动 = `cmcc`

如果要使用校园网，请将`@运营商`、`%40运营商`删除即可

参考：
>[Dr.COM校园网多设备解决方案——路由器 Padavan/LuCI 固件自动网页认证+Telegram Bot 定时发送连接情况](https://jakting.com/archives/drcom-autologin-padavan-tgbot.html)