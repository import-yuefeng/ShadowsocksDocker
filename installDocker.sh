#!/bin/bash
# installDocker.sh

echo ''
echo '将卸载所有旧docker，并安装docker-ce最新版本'
echo ''
echo '暂时只支持安装Ubuntu环境'
echo ''
echo '本程序会为apt-get增加中科大镜像源'
echo ''

sudo apt-get update
sudo apt-get install -y \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get update

sudo apt-get install -y docker-ce unzip

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "恭喜，如果没有错误，证明docker 安装完成！"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

echo "Please select your Ubuntu version"
echo "1. 14.04 | 2. 16.04+"

read yourSelect

if test $[yourSelect] -eq 1; then
    sudo service docker start
else if test $[yourSelect] -eq 2; then
    sudo systemctl start docker
else
    echo 错误输入！

fi

unzip shadowsocks.zip

echo 请确认你的docker是否有输出版本信息，此外请检查是否有启动docker hello world镜像。如果有则证明安装完成，否则安装失败！请手动调试！


docker --version

docker run hello world




