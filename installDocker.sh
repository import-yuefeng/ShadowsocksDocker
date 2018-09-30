#!/bin/bash
# installDocker.sh

printf "${GREEN}"
echo ''
echo '将卸载所有旧docker，并安装docker-ce最新版本'
echo ''
echo '暂时只支持安装Ubuntu环境'
echo ''
echo '本程序会为apt-get增加中科大镜像源'
echo ''
printf "${NORMAL}"

sudo apt-get update
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
sudo apt-get update
sudo apt-get install \
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

sudo apt-get install -y docker-ce

echo >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
echo >恭喜，如果没有错误，证明docker 安装完成！>
echo >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

echo Please select your Ubuntu version
echo 1. 14.04 \n 2. 16.04+
read yourSelect
if test $[yourSelect] -eq 1; then
    sudo service docker start
else if test $[yourSelect] -eq 2; then
    sudo systemctl start docker
else
    echo 错误输入！

echo 请确认你的docker是否有输出版本信息，如果有则证明安装完成，否则安装失败！请手动调试！

sudo docker --version






