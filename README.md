# 为翻越长城做的小小贡献
### 基于docker和shell的全自动shadowsock服务端安装指南

这是一个基于docker和shell脚本的shadowsocks自动安装程序。
暂时，你需要一个>=14.04+的Ubuntu的系统来使用它。

不用担心是否需要足够的知识去安装，shell自动化脚本会自动安装依赖，在安装好后请按照之后的提示启动docker即可。

## 快速开始
```
// 首先请clone项目代码
# git clone https://github.com/import-yuefeng/ShadowsocksDocker

# cd ShadowsocksDocker

// 接下来确保你的Linux内核版本>=3.8.0
// 请通过如下办法查询：
# uname -a
.....

// 确认之后请执行shell脚本installDocker.sh
// 执行办法如下：
# chmod +x ./installDocker.sh
# ./installDocker.sh
.....

// 当安装好后请继续下一步
```

## 使用docker
```
// 接下来的内容讲解如何使用下载的docker镜像

# docker run -p 1289:1289 -d catone/shadowsocks:0.0.1 -s 0.0.0.0 -p 1289 -k yourpasswd -m rc4-md5
// catone/shadowsocks 原版
# docker run -p 1289:1289 -d catone/shadowsocks:libev_1 ss-server -s 0.0.0.0 -p 1289 -k yourpasswd -m rc4-md5
// shadowsocks libev 版本
# docker run -p 1289:1289 -d catone/shadowsocks:alpine.1 shadowsocks -s 0.0.0.0 -p 1289 -k yourpasswd -m rc4-md5
// docker image 体积最小

// 对于参数的解释，第一个p参数是指定宿主机的访问docker容器的映射端口和对接的docker容器端口，也就是shadowsocks端口。
// 根据需求选择。

// -d表示docker container 可以在daemon模式下运行，不需要修改

// catone/shadowsocks:0.0.1 表示从docker hub pull的镜像，根据需要选择修改

// -s 选项表示shadowsocks 绑定的ip地址

// -p 就是映射的docker容器端口，与前面的相同即可

// -k 就是你想要设置的shadowsocks预共享密码

// -m 就是你选择的数据传输加密/解密方式

```


## 出现错误？
请在本项目issue提出，它将很快得到回复。
或者在“关于我”中联系我，非常感谢。

## 关于我
我是Cat.1，你可以[在这关注我的GitHub](github.com/import-yuefeng)，如果有相关的问题/事情 可以直接联系我的Email：zhuyuefeng0@gmail.com
